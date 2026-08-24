select
    listing_id,
    {{ Inticap_macro('property_type') }} as listing_name,
    host_id,
    price_per_night,
    city
from {{ ref('listings') }}

