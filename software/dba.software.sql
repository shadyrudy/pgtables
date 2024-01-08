-- Title: dba.software
-- The table dba.software contains information about software installed on a server.
-- This includes software name, version, vendor, and any additional notes.
-- The columns are as follows:
-- software_id - integer, primary key, auto increment
-- software_name - varchar(255)
-- software_version - varchar(255)
-- software_vendor - integer
-- software_notes - text
create table dba.software (
    software_id serial primary key,
    software_name varchar(255),
    software_major_version varchar(255),
    software_minor_version varchar(255),
    software_vendor varchar(255),
    software_notes text
);
