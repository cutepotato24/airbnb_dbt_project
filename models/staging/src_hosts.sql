with src_hosts as 
                (SELECT * FROM "STAGING".hosts)

SELECT 
        id::text as id,
        "name",
        is_superhost,
        created_at::timestamp as created_date,
        updated_at::timestamp as updated_date
FROM src_hosts