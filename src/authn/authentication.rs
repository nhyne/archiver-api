use std::collections::HashMap;
use rocket::Outcome;
use rocket::http::Status;
use rocket::request::{self, Request, FromRequest};

pub struct AuthenticatedJWT(String);

#[derive(Debug)]
pub enum JWTError {
    Missing,
    Invalid,
    BadCount,
}

impl<'a, 'r> FromRequest<'a, 'r> for AuthenticatedJWT {
    type Error = JWTError;

    fn from_request(request: &'a Request<'r>) -> request::Outcome<Self, Self::Error> {
        let keys: Vec<_> = request.headers().get("Authorization").collect();
        match keys.len() {
            0 => Outcome::Failure((Status::BadRequest, JWTError::Missing)),
            1 if is_valid(keys[0]) => Outcome::Success(AuthenticatedJWT(keys[0].to_string())),
            1 => Outcome::Failure((Status::Unauthorized, JWTError::Invalid)),
            _ => Outcome::Failure((Status::BadRequest, JWTError::BadCount)),
        }
    }
}

// This function needs to call to user service
fn is_valid(_jwt: &str) -> bool {
    false
}

//async fn validate_jwt(_jwt: &str) -> Result<(), Box<dyn std::error::Error>> {
//    let new_post = reqwest::Client::new()
//        .post("http://user-api.user/api/users/verify_jwt")
////        .body('_ jwt)
//        .send();
//    println!("{:#?}", new_post);
//    Ok(())
//}
