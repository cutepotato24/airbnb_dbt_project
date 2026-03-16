-- snapshots/raw_hosts_snapshots.sql
{% snapshot scd_raw_hosts %}
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
FROM {{ source('airbnb', 'hosts') }}
{% endsnapshot %}