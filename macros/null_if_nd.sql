{% macro null_if_nd(col) %}
case
  when regexp_like(upper(trim({{ col }})), '^ND[0-9]+$') then null
  when nullif(trim({{ col }}), '') is null then null
  else trim({{ col }})
end
{% endmacro %}



