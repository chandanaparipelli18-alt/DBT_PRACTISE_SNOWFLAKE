{% macro parse_date(col) %}
coalesce(
  try_to_date(trim({{ col }}),'DD/MM/YYYY'),
  try_to_date(trim({{ col }}),'DD-MM-YYYY'),
  try_to_date(trim({{ col }}),'YYYY-MM-DD')
)
{% endmacro %}