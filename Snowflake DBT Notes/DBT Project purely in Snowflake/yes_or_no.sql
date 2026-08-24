{% macro yes_or_no(col) %}

case 
when {{col}}  in ('yes','true') then 1
when {{col}}  in ('no','false') then 0
end

{% endmacro %}