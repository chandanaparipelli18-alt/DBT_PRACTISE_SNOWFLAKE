select 
id,
{{ Inticap_macro('message') }} as message
from 

 {{ ref('stg_test') }}