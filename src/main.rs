#![feature(proc_macro_hygiene)]

#![feature(decl_macro)]
#[macro_use] extern crate rocket;
#[macro_use] extern crate rocket_contrib;
#[macro_use] extern crate serde_derive;

mod archive;
use archive::{Archive};
use rocket_contrib::json::{Json, JsonValue};

type ID = usize;

#[post("/new", format="json", data="<target_url>")]
fn new(target_url: String) -> JsonValue {
    println!("{}", target_url);
    json!({ "status": "ok" })
}

//#[get("/")]
//fn read() -> Json<Archive> {
//    Json(json!([
//        "hero 1",
//        "hero 2"
//    ]))
//}
//
//#[put("/<id>", format="json", data="<archive>")]
//fn update(id: i32, hero: Json<Hero>) -> Json<Hero> {
//    hero
//}
//
//#[delete("/<id>")]
//fn delete(id: i32) -> Json<JsonValue> {
//    Json(json!({"status": "ok"}))
//}
//
//#[get("/<name>/<age>")]
//fn hello(name: String, age: u8) -> String {
//    format!("Hello, {} year old named {}!", age, name)
//}

fn main() {
    rocket::ignite().mount("/archives", routes![new]).launch();
}
