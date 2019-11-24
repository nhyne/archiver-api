use rocket::http::Status;
use rocket::request::{self, FromRequest, Request};
use rocket::Outcome;
use std::error::Error;
use std::fmt;

pub struct AuthenticatedJWT(String);

#[derive(Debug)]
struct JWTResponseError(String);

// I really do not want to add this code. I would much rather use a generic HTTP error from another crate.
//   To get myself moving though I'm just copying this.
impl fmt::Display for JWTResponseError {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, "There is an error: {}", self.0)
    }
}

impl Error for JWTResponseError {}

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
fn is_valid(jwt: &str) -> bool {
    validate_jwt(String::from(jwt)).is_ok()
}

fn validate_jwt(auth_header: String) -> Result<(), Box<dyn std::error::Error>> {
    let new_post = reqwest::Client::new()
        //        .post("http://user-api.user/api/users/verify_jwt")
        .post("http://localhost:8001/api/users/verify_jwt")
        .header("Authorization", format!("{}", auth_header))
        .send();
    match new_post {
        Ok(resp) => {
            let response_code = resp.status().as_u16();
            match response_code {
                200 => Ok(()),
                x => Err(Box::new(JWTResponseError(format!(
                    "Got bad response code: {:#?}",
                    x
                )))),
            }
        }
        Err(e) => Err(Box::new(e)),
    }
}
