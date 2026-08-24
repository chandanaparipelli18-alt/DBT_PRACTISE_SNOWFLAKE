select
    host_id,
    {{ Inticap_macro('host_name') }} as host_name,
    host_since,
    {{ yes_or_no('is_superhost') }} as is_superhost
from {{ ref('hosts') }}