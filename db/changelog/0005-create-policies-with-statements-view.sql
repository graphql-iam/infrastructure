--liquibase formatted sql

--changeset leppinger:0004-create-policies-with-statements-view

create view policies_with_statements as
select
    p.id,
    p.name,
    p.version,
    json_agg(json_build_object('sid', s.sid, 'action', s.action, 'effect', s.effect, 'resource', s.resource, 'condition', s.condition)) as statements
from policies p
         join statements s on p.id = s.attachedpolicyid
group by p.id, p.name, p.version;

--rollback DROP VIEW policies_with_statements;