--liquibase formatted sql

--changeset leppinger:0001-create-roles

CREATE TABLE roles(
    id  uuid not null primary key,
    name text not null unique
);

--rollback DROP TABLE roles;