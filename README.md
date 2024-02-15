# pgtables
A collection of tables for postgresql.

# Project Description
The following tables are used to collect metadata on postgresql. 
The following tables assume an outside process imports data at least once per day. 

## Project Outline
Each folder within the project represents different parts of the collection.

### Database
Tables for database specific information.
This includes
1. Database Name
2. Database Size
3. Backup information
4. Database specific configuration
5. Database Permissions

### Server
Tables for server level specific information.
This includes:
1. General Server information
    1. OS Version
    2. Memory information
    3. Processor information
2. Installed software
    1. Software version
3. Database Server Configurations
    1. File locations
4. Backup Information
    1. Backup Schedule
    2. Backup Sizes
    3. Backup success / failure

### Table
Tables for table specific information.
This includes:
1. Table sizes
2. Index sizes
3. Table usage

### Users
User information at the server level including
1. User Name
2. Server Name
3. Super User
4. Create DB
5. Inheritance
6. Create Roles
7. Can Login
8. Connection Limit
9. Password valud until
10. Role Membership
11. User specific configs

### Grants
Infromation on grants to roles
This includes:
1. Server Name
2. Database Name
3. Grantor
4. Grantee
5. Object
6. Specific Grant


# Version History
## 2023-01-08
Initial commit

## 2023-01-17
Added dba.table_usage
Renamed dba.table to dba.tables.

## 2023-01-18
Added index size and row count columns to dba.tables.

## 2024-02-07
Added dba.users table to hold server level user information. 

## 2024-02-15
Renamed the table dba.index to dba.indexes. The word "index" is a reserved word.