-- Title: dba.tables
-- The table dba.tables contains information about tables in a database.
-- This includes table name, size, and the time the record was last updated.
-- The table is denormalized and should be updated on a regular basis.
-- The columns are as follows:
-- table_id - integer, primary key, auto increment
-- server_name - varchar(255)
-- database_name - varchar(255)
-- schema_name - varchar(255)
-- table_name - varchar(255)
-- table_size_bytes - bigint
-- table_size - varchar(255)
-- last_updated - timestamp
create table dba.tables (
    table_id serial primary key,
    server_name varchar(255) not null,
    database_name varchar(255) not null,
    schema_name varchar(255) not null,
    table_name varchar(255) not null,
    table_size_bytes bigint,
    table_size varchar(255),
    last_updated timestamp not null default current_timestamp    
);