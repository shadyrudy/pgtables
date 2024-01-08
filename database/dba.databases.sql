-- Title: dba.databases
-- The table dba.databases contains information about databases in a server.
-- This includes database name, size, and the time the record was last updated.
-- The table is denormalized and should be updated on a regular basis.
-- The columns are as follows:
-- database_id - integer, primary key, auto increment
-- server_name - varchar(255)
-- database_name - varchar(255)
-- database_size_bytes - bigint
-- database_size - varchar(255)
-- last_updated - timestamp
create table dba.databases (
    database_id serial primary key,
    server_name varchar(255) not null,
    database_name varchar(255) not null,
    database_size_bytes bigint,
    database_size varchar(255),
    last_updated timestamp not null default current_timestamp    
);