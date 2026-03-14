with src_reviews as (
                    SELECT * FROM "STAGING".reviews)

SELECT 
    listing_id::text,
    reviewer_name,
    "date"::timestamp as review_date,
    comments as review_text,
    sentiment as review_sentiment
FROM src_reviews