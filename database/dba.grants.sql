-- Title: dba.grants
-- The table dba.grants contains information about grants in a database.
-- This includes grantor, grantee, privilege, and the time the record was last updated.
-- The table is denormalized and should be updated on a regular basis.
-- The columns are as follows:
-- grant_id - integer, primary key, auto increment
-- server_name - varchar(255)
-- database_name - varchar(255)
-- schema_name - varchar(255)
-- object_name - varchar(255)
-- object_type - varchar(255)
-- grantor - varchar(255)
-- grantee - varchar(255)
-- privilege_type - varchar(255)
-- is_grantable - varchar(255)
-- with_hierarchy - varchar(255)
-- last_updated - timestamp
create table dba.grants (
    grant_id serial primary key,
    server_name varchar(255) not null,
    database_name varchar(255) not null,
    schema_name varchar(255) not null,
    object_name varchar(255) not null,
    object_type varchar(255) null,
    grantor varchar(255) not null,
    grantee varchar(255) not null,
    privilege_type varchar(255) not null,
    is_grantable varchar(255) not null,
    with_hierarchy varchar(255) null,
    last_updated timestamp not null default current_timestamp    
);