use chrono::prelude::{DateTime, Utc};
use uuid::Uuid;
use crate::db::schema::archives;

#[derive(Serialize, Deserialize)]
pub struct RocketArchive {
    pub target_url: String,
}

//pub type AllArchive = (Uuid, String, DateTime<Utc>);

#[derive(Serialize, Deserialize, Debug, Queryable)]
pub struct Archive {
    pub id: Uuid,
    //    pub owner_id: i64,
    pub original_link: String,
    //    pub archive_link: String,
    pub archive_timestamp: DateTime<Utc>,
}

#[derive(Insertable)]
#[table_name = "archives"]
pub struct NewArchive<'a> {
    //    pub owner_id: i64,
    pub original_link: &'a String,
    //    pub archive_link: String,
    pub archive_timestamp: DateTime<Utc>,
}
impl NewArchive<'_> {
    pub fn new(original_link: &String) -> NewArchive {
        NewArchive {
            original_link,
            archive_timestamp: Utc::now(),
        }
    }
}
