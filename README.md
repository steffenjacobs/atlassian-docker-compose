# Atlassian Docker Compose

This contains a docker-compose configuration Atlassian JIRA, Confluence, Bitbucket and Bamboo running with separate databases on PostgreSQL. Each application comes with it's own user and database and docker volume. 

## Requirements
This application needs `git` and `docker-compose`

    sudo apt get install docker-compose --y
    sudo apt-get install git --y

## Getting started
1. `git clone https://github.com/steffenjacobs/atlassian-docker-compose.git`
2. Set some secure passwords in `.env` and `pg-init-scripts/init.sql`
3. `docker-compose up`

To stop the application: `docker-compose down`

## Access
|Application|URL|
|--|--|
|JIRA|http://localhost:9001|
|Confluence |http://localhost:9002|
|Bitbucket |http://localhost:9003|
|Bamboo |http://localhost:9004|
The PostgreSQL database is only accessible from inside the cluster on port `5432`.

## Configuration
During configuration of the applications via the setup procedure, use the following database settings:

    host: atl_database
    port: 5432
    database: <app>db
    database user: <app>user
    database user password: <password specified in init.sql>

To fully clean reset an application, you have to delete the associated docker volume and clean the associated database.
