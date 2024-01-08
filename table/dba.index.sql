-- Title: dba.index
-- The table dba.index contains information about indexes in a database.
-- This includes index name, size, and the time the record was last updated.
-- The table is denormalized and should be updated on a regular basis.
-- The columns are as follows:
-- index_id - integer, primary key, auto increment
-- server_name - varchar(255)
-- database_name - varchar(255)
-- schema_name - varchar(255)
-- table_name - varchar(255)
-- index_name - varchar(255)
-- index_size_bytes - bigint
-- index_size - varchar(255)
-- last_updated - timestamp
create table dba.index (
    index_id serial primary key,
    server_name varchar(255) not null,
    database_name varchar(255) not null,
    schema_name varchar(255) not null,
    table_name varchar(255) not null,
    index_name varchar(255) not null,
    index_size_bytes bigint,
    index_size varchar(255),
    last_updated timestamp not null default current_timestamp    
);