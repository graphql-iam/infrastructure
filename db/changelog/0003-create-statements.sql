--liquibase formatted sql

--changeset leppinger:0003-create-statements

CREATE TABLE statements (
    id uuid not null primary key,
    attachedPolicyId uuid not null references policies on delete cascade,
    sid text,
    action text not null,
    effect text not null,
    resource text not null,
    condition jsonb
);

--rollback DROP TABLE statements;