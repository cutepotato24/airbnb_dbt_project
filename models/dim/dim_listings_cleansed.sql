{{
    config(
        materialized = 'view'
    )
}}


with src_listings AS (
    SELECT * FROM {{ref('src_listings')}} --jinja template tag
)

SELECT 
    listing_id::text,
    listing_name,
    listing_url,
    room_type,
    CASE WHEN 
        minimum_nights = 0 THEN 1
    ELSE minimum_nights
    END AS minimum_nights,
    host_id::text,
    price,
    created_at,
    updated_at
FROM src_listings


