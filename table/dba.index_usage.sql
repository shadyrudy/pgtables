-- Title: dba.index_usage
-- The table dba.index_usage contains information about table usage in a database.
-- This includes schema name, table name, sequentaial scans, sequential tuple scans,
-- index scans, index tuples fetched, and the time the record was last updated.
-- The table is denormalized and should be updated on a regular basis.
-- The columns are as follows:
-- index_usage_id - integer, primary key, auto increment
-- server_name - varchar(255)
-- database_name - varchar(255)
-- schema_name - varchar(255)
-- table_name - varchar(255)
-- index_name - varchar(255)
-- sequential_scans - bigint
-- sequential_tuple_scans - bigint
-- index_scans - bigint
-- index_tuple_fetches - bigint
-- last_updated - timestamp
create table dba.index_usage (
    index_usage_id serial primary key,
    server_name varchar(255) not null,
    database_name varchar(255) not null,
    schema_name varchar(255) not null,
    table_name varchar(255) not null,
    index_name varchar(255) not null,
    index_scans bigint,
    index_tuples_read bigint,
    index_tuples_fetched bigint,
    last_updated timestamp not null default current_timestamp    
);
