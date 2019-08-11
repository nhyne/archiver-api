-- Your SQL goes here
CREATE TABLE archives (
  id UUID PRIMARY KEY,
  original_link VARCHAR NOT NULL,
  archive_timestamp TIMESTAMPTZ NOT NULL
);
