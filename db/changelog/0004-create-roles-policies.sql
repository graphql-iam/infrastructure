--liquibase formatted sql

--changeset leppinger:0004-create-roles-policies

CREATE TABLE roles_policies (
    id uuid not null primary key,
    role_id uuid not null references roles,
    policy_id uuid not null references policies
);

--rollback DROP TABLE roles_policies;