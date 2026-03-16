-- snapshots/raw_listings_snapshots.sql
{% snapshot scd_raw_listings %}
{{
    config(
        target_schema='snapshots',
        unique_key='id',
        strategy='timestamp',
        updated_at='updated_at::timestamp',
        hard_deletes='invalidate'
    )
}}

SELECT *
FROM {{ source('airbnb', 'listings') }}
{% endsnapshot %}