{{
    config(
        materialized = 'view'
    )
}}

with src_hosts as (
        SELECT * FROM {{ref('src_hosts')}}
)

SELECT
        id as host_id,
        CASE WHEN 
            "name" IS NULL THEN 'Anonymous'
        ELSE "name"
        END AS host_name,
        is_superhost,
        created_date,
        updated_date
FROM src_hosts