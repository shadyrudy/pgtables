-- Title: dba.users
-- The following table stores sever users. The rows in the tabler
-- are similar to the output from \du+
-- The columns are as follows:
-- user_id - integer, primary key, auto increment
-- server_name - varchar(255)
-- rolname - varchar(255)
-- rolsuper - bool
-- rolinherit - bool
-- rolcreaterole - bool
-- rolcreatedb - bool
-- rolcanlogin - bool
-- rolreplication - bool
-- rolconnlimit - int4
-- rolvaliduntil - timestamp
-- memberof - text[]
-- rolconfig - text[]
-- last_updated - timestamp not null default current_timestamp
-- The columns memberof and rolconfig are arrays of text, and accept multiple values.

create table dba.users (
  user_id serial primary key,
  server_name varchar(255),
  rolname varchar(255),
  rolsuper bool,
  rolinherit bool,
  rolcreaterole bool,
  rolcreatedb bool,
  rolcanlogin bool,
  rolreplication bool,
  rolconnlimit int4,
  rolvaliduntil timestamp,
  memberof text[],
  rolconfig text[],
  last_updated timestamp not null default current_timestamp
);