-- Title: dba.table_usage
-- The table dba.table_usage contains information about table usage in a database.
-- This includes schema name, table name, sequentaial scans, sequential tuple scans,
-- index scans, index tuples fetched, and the time the record was last updated.
-- The table is denormalized and should be updated on a regular basis.
-- The columns are as follows:
-- table_usage_id - integer, primary key, auto increment
-- server_name - varchar(255)
-- database_name - varchar(255)
-- schema_name - varchar(255)
-- table_name - varchar(255)
-- sequential_scans - bigint
-- sequential_tuple_scans - bigint
-- index_scans - bigint
-- index_tuple_fetches - bigint
-- last_updated - timestamp
create table dba.table_usage (
    table_usage_id serial primary key,
    server_name varchar(255) not null,
    database_name varchar(255) not null,
    schema_name varchar(255) not null,
    table_name varchar(255) not null,
    sequential_scans bigint,
    sequential_tuple_scans bigint,
    index_scans bigint,
    index_tuple_fetches bigint,
    last_updated timestamp not null default current_timestamp    
);
