-- Your SQL goes here
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE archives (
  id UUID PRIMARY KEY default uuid_generate_v4(),
  original_link VARCHAR NOT NULL,
  archive_timestamp TIMESTAMPTZ NOT NULL
);
