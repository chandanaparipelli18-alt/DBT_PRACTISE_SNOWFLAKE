{% macro parse_number(col) %}
case
  when regexp_like(upper(trim({{ col }})), '^ND[0-9]+$') then null
  else try_to_number(regexp_replace(trim({{ col }}),'[^0-9.\-]',''),38,10)
end
{% endmacro %}
