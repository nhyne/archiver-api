#![feature(proc_macro_hygiene)]
// Rocket web server
#![feature(decl_macro)]
#[macro_use]
extern crate rocket;
#[macro_use]
extern crate rocket_contrib;
#[macro_use]
extern crate serde_derive;

extern crate openssl;

// Diesel ORM
#[macro_use]
extern crate diesel;
extern crate dotenv;

use diesel::pg::PgConnection;
use diesel::prelude::*;
use dotenv::dotenv;
use std::env;

mod db;
mod responses;
use archiver_api::db::archive::{Archive, NewArchive, RocketArchive};
use chrono::prelude::{DateTime, Utc};
use rocket_contrib::json::{Json, JsonValue};
use rocket_contrib::uuid::Uuid as RocketUUID;
use uuid::Uuid;

use rocket::http::Status;
use rocket::response::status::Custom;

use diesel::result::Error;

#[post("/new", format = "json", data = "<input_archive>")]
fn new(input_archive: Json<RocketArchive>) -> Result<Json<Archive>, Custom<Json<responses::Error>>> {
    use archiver_api::db::schema::archives;
    let connection = establish_connection();
    let target_url = &input_archive.target_url;
    let new_id = Uuid::new_v4();
    let new_archive = NewArchive::new(target_url );
    // TODO: Handle this result properly
    let something: Result<Archive, Error> = diesel::insert_into(archives::table)
        .values(&new_archive)
        .get_result(&connection);
    //        .expect("Error saving new archive");
    //    println!("would create: {:#?}", new_archive);

    match something {
        //        Ok(arch) => Ok(Json(arch)),
        Ok(arch) => Ok(Json(arch)),
        Err(e) => Err(Custom(
            Status::InternalServerError,
            Json(responses::Error {
                message: e.to_string(),
            }),
        )),
    }
}

#[get("/<query_id>", format = "json")]
fn get(query_id: RocketUUID) -> Option<Json<Archive>> {
    use archiver_api::db::schema::archives;
    use archiver_api::db::schema::archives::dsl::*;
    use std::str::FromStr;

    // must convert rocketUUId to standard Uuid
    // TODO: Handle this error properly
    // TODO: Find a better way to cast
    let selected_id = Uuid::from_str(&format!("{}", query_id)).unwrap();

    let connection = establish_connection();

    // TODO: Handle this error properly
    let selected = archives::table
        .find(selected_id)
        .select((
            archives::id,
            archives::original_link,
            archives::archive_timestamp,
        ))
        .first::<(Uuid, String, DateTime<Utc>)>(&connection);
    match selected {
        Ok(arch) => Some(Json(Archive {
            id: arch.0,
            original_link: arch.1,
            archive_timestamp: arch.2,
        })),
        Err(_) => None,
    }
}

#[delete("/<query_id>")]
fn delete(query_id: RocketUUID) -> JsonValue {
    use archiver_api::db::schema::archives;
    use archiver_api::db::schema::archives::dsl::*;
    use std::str::FromStr;

    let connection = establish_connection();
    let selected_id = Uuid::from_str(&format!("{}", query_id)).unwrap();
    let deleted = diesel::delete(archives::table.find(selected_id)).execute(&connection);
    json!({ "status": "ok" })
}

fn rocket() -> rocket::Rocket {
    rocket::ignite().mount("/archives", routes![new, get, delete])
}

// TODO: Use database pooling
fn establish_connection() -> PgConnection {
    dotenv().ok();

    let database_url = env::var("DATABASE_URL").expect("DATABASE_URL must be set");
    PgConnection::establish(&database_url).expect(&format!("Error connecting to {}", database_url))
}

fn main() {
    use archiver_api::db::schema::archives::dsl::*;
    let connection = establish_connection();
    let results = archives
        .limit(5)
        .load::<Archive>(&connection)
        .expect("Error loading archives");

    println!("Displaying {} archives", results.len());
    for arch in results {
        println!("{}", arch.original_link);
        println!("----------\n");
        println!("{}", arch.archive_timestamp);
    }

    rocket().launch();
}
