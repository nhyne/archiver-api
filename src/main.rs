#![feature(proc_macro_hygiene)]

// Rocket web server
#![feature(decl_macro)]
#[macro_use] extern crate rocket;
#[macro_use] extern crate rocket_contrib;
#[macro_use] extern crate serde_derive;

// Diesel ORM
#[macro_use]
extern crate diesel;
extern crate dotenv;

use diesel::prelude::*;
use diesel::pg::PgConnection;
use dotenv::dotenv;
use std::env;

mod archive;
mod schema;
use self::archive::{Archive, NewArchive, RocketArchive};
use rocket_contrib::json::{Json, JsonValue};
use rocket_contrib::uuid::Uuid as RocketUUID;
use chrono::prelude::{Utc};
use uuid::Uuid;

use diesel::result::Error;

#[post("/new", format="json", data="<input_archive>")]
fn new(input_archive: Json<RocketArchive>) -> JsonValue {
    use schema::archives;
    let connection = establish_connection();
    let target_url = &input_archive.target_url;
    let new_id = Uuid::new_v4();
    let new_archive = NewArchive{
        id: new_id,
        original_link: target_url,
        archive_timestamp: Utc::now(),
    };
    // TODO: Handle this result properly
    let something : Result<Archive, Error> = diesel::insert_into(archives::table)
        .values(&new_archive)
        .get_result(&connection);
//        .expect("Error saving new archive");
//    println!("would create: {:#?}", new_archive);
    json!({ "status": "ok" })
}

#[get("/<id>", format="json")]
fn get(id: RocketUUID) -> Json<Archive> {
    use schema::archives;
    use schema::archives::dsl::*;

    // must convert rocketUUId to standard Uuid

    let connection = establish_connection();
    let random_uuid = Uuid::new_v4();
    let selected = archives::table.filter(id.eq(random_uuid)).select((archives::id, archives::original_link)).first::<(Uuid, String)>(&connection);
    println!("{:#?}", selected);
    Json(Archive{
        id: Uuid::new_v4(),
        original_link: String::from("something"),
        archive_timestamp: Utc::now(),
    })
}

fn rocket() -> rocket::Rocket {
    rocket::ignite().mount("/archives", routes![new, get])
}

fn establish_connection() -> PgConnection {
    dotenv().ok();

    let database_url = env::var("DATABASE_URL")
        .expect("DATABASE_URL must be set");
    PgConnection::establish(&database_url)
        .expect(&format!("Error connecting to {}", database_url))
}

fn main() {
    use self::schema::archives::dsl::*;
    let connection = establish_connection();
    let results = archives.limit(5)
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
