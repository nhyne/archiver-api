#![feature(proc_macro_hygiene)]

#![feature(decl_macro)]
#[macro_use] extern crate rocket;
#[macro_use] extern crate rocket_contrib;
#[macro_use] extern crate serde_derive;

mod archive;
use archive::{Archive};
use rocket_contrib::json::{Json, JsonValue};
use chrono::prelude::{Utc};

#[post("/new", format="json", data="<target_url>")]
fn new(target_url: String) -> JsonValue {
    let new_archive = Archive::new(target_url);
    println!("would create: {:#?}", new_archive);
    json!({ "status": "ok" })
}

#[get("/<id>", format="json")]
fn get(id: u64) -> Json<Archive> {
    Json(Archive{
        id: None,
        original_link: String::from("something"),
        archive_timestamp: Utc::now(),
    })
}

fn rocket() -> rocket::Rocket {
    rocket::ignite().mount("/archives", routes![new, get])
}

fn main() {
    rocket().launch();
}
