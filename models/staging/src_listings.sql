
with src_listings as (
    select *
    from "STAGING".listings
)

select
    id as listing_id,
    name as listing_name,
    listing_url,
    room_type,
    minimum_nights,
    host_id,
    trim(replace(replace(price, '$', ''), ',', ''))::numeric as price,
    created_at::timestamp as created_at,
    updated_at::timestamp as updated_at
from src_listings