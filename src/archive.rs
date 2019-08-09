#[derive(Serialize, Deserialize)]
pub struct Archive {
    pub id: Option<i64>,
    pub owner_id: i64,
    pub original_link: String,
    pub archive_link: String,
}
