{% macro trim_macro(col) %}
    initcap(lower(trim({{ col }})))
{% endmacro %}
