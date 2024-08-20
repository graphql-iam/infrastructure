-- Create graphql_iam database and user
CREATE DATABASE graphql_iam_db;
CREATE USER graphql_iam_user WITH ENCRYPTED PASSWORD 'graphql_iam_pass';
GRANT ALL PRIVILEGES ON DATABASE graphql_iam_db TO graphql_iam_user;
ALTER DATABASE graphql_iam_db OWNER TO graphql_iam_user;
GRANT ALL ON SCHEMA public TO graphql_iam_user;

-- Create keycloak database and user
CREATE DATABASE keycloak_db;
CREATE USER keycloak_user WITH ENCRYPTED PASSWORD 'keycloak_pass';
GRANT ALL PRIVILEGES ON DATABASE keycloak_db TO keycloak_user;
ALTER DATABASE keycloak_db OWNER TO keycloak_user;
GRANT ALL ON SCHEMA public TO graphql_iam_user;
