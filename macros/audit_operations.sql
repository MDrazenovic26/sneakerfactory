{% macro insert_audits(action_name) -%}

insert into sneakerfactory.silver.dbt_audits (audit_type) 

values('{{ action_name }}');

commit;

{%- endmacro %}