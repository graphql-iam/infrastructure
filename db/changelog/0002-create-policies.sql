--liquibase formatted sql

--changeset leppinger:0002-create-policies

CREATE TABLE policies(
    id uuid not null primary key,
    name text unique,
    version text not null
);

--rollback DROP TABLE policies;