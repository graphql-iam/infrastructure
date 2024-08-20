--liquibase formatted sql

--changeset leppinger:0004-create-roles-with-policies-view

create view roles_with_policies as
select
    r.name,
    json_agg(json_build_object('name', pws.name, 'version', pws.version, 'statements', pws.statements)) as policies
from roles r
         join roles_policies rp on r.id = rp.role_id
         join policies_with_statements pws on rp.policy_id = pws.id
group by r.name;

--rollback DROP VIEW roles_with_policies;