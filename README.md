# pgtables
A collection of tables for postgresql.

# Project Description
The following tables are used to collect metadata on postgresql. 
The following tables assume an outside process imports data at least once per day. 

## Project Outline
Each folder within the project represents diffrent parts of the collection.

### Database
Tables for database specific information.
This includes
1. Database Name
2. Database Size
3. Backup information
4. Database specific configuration

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

# Version History
## 2023-01-08
Initial commit
