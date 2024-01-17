-- Title: dba.server
-- The table dba.server contains information about database servers. 
-- Though this could be expanded to include other types of servers.
-- This includes server name, location, IP address, OS, and any additional notes.
-- The columns are as follows:
-- server_id - integer, primary key, auto increment
-- server_name - varchar(255)
-- server_location - varchar(255)
-- server_ip - varchar(255)
-- server_os - varchar(255)
-- server_memory_GB - integer
-- server_cpu_cores - integer
-- server_type - varchar(255)
-- server_notes - text
-- server_purchased - date
-- server_expired - date
-- server_created - timestamp
-- server_status should be a foreign key that references the server_status_id column in the server_status table.
-- server_type should be a foreign key that references the server_type_id column in the server_type table.
-- last_updated - timestamp
create table dba.servers (
    server_id serial primary key,
    server_name varchar(255),
    server_location varchar(255),
    server_ip varchar(255),
    server_os varchar(255),
    server_memory_GB integer,
    server_cpu_cores integer,
    server_notes text,
    server_created date,
    server_retired date,
    server_status integer references dba.server_status(server_status_id),
    server_type integer references dba.server_type(server_type_id),
    last_updated timestamp not null default current_timestamp
);