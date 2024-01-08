-- Title: dba.server_status
-- The table dba.server_status contains current status of a server
-- The columns are as follows:
-- server_status_id - integer, primary key, auto increment
-- server_status_name - varchar(255)
-- Some example statuses are:
-- Active: The server is active and can be used for new connections
-- Disabled: The server is disabled and cannot be used for new connections
-- Retired: The server is retired and cannot be used for new connections
-- Maintenance: The server is in maintenance mode and cannot be used for new connections
-- Building: The server is in build mode and cannot be used for new connections
-- Testing: The server is in testing mode and cannot be used for new connections
create table dba.server_status (
    server_status_id serial primary key,
    server_status_name varchar(255)
);
