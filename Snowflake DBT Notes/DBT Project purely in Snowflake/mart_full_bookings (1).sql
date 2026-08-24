select
    b.booking_id,
    b.listing_id,
    b.booking_date,
    b.nights_booked,
    b.booking_amount,
    b.cleaning_fee,
    l.listing_name,
    l.price_per_night,
    l.city,
    h.host_id,
    h.host_name,
    h.host_since,
    h.is_superhost
from {{ ref('stg_bookings') }} b
left join {{ ref('stg_listings') }} l
    on b.listing_id = l.listing_id
left join {{ ref('stg_hosts') }} h
    on l.host_id = h.host_id
