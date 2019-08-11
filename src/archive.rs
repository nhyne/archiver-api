use chrono::prelude::{DateTime, Utc};
use uuid::Uuid;

#[derive(Serialize, Deserialize)]
#[derive(Debug)]
#[derive(Queryable)]
pub struct Archive {
    pub id: Uuid,
//    pub owner_id: i64,
    pub original_link: String,
//    pub archive_link: String,
    pub archive_timestamp: DateTime<Utc>,
}

impl Archive {
    pub fn new(original_link: String) -> Archive {
        Archive{
            id: Uuid::new_v4(),
            original_link,
            archive_timestamp: Utc::now(),
        }
    }
}
