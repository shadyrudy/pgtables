-- Title: dba.server_type
-- The table dba.server_type contains information about database server types.
-- Though, this could be expanded to include other types of servers including 
-- application servers, web servers, scheduling servers, etc.
-- The columns are as follows:
-- server_type_id - integer, primary key, auto increment
-- server_type_name - varchar(255)
-- Some examples available types are:
-- PostgreSQL - A postgresql database server
-- MongoDB - A mongodb database server
-- SQL Server - A microsoft sql server database server
-- MySQL - A mysql database server
-- Oracle - An oracle database server
-- Application - A generic application server
create table dba.server_type (
    server_type_id serial primary key,
    server_type_name varchar(255)
);