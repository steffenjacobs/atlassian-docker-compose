CREATE USER jirauser WITH PASSWORD 'jira-pw';
CREATE DATABASE jiradb;
GRANT ALL PRIVILEGES ON DATABASE jiradb TO jirauser;

CREATE USER confluenceuser WITH PASSWORD 'confluence-pw';
CREATE DATABASE confluencedb;
GRANT ALL PRIVILEGES ON DATABASE confluencedb TO confluenceuser;

CREATE USER bitbucketuser WITH PASSWORD 'bitbucket-pw';
CREATE DATABASE  bitbucketdb;
GRANT ALL PRIVILEGES ON DATABASE bitbucketdb TO bitbucketuser;

CREATE USER bamboouser WITH PASSWORD 'bamboo-pw';
CREATE DATABASE bamboodb;
GRANT ALL PRIVILEGES ON DATABASE bamboodb TO bamboouser;
