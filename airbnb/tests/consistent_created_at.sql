SELECT
    f.listing_id,
    f.review_date,
    l.created_at AS listing_created_at
FROM {{ ref('fct_reviews') }} f
JOIN {{ ref('dim_listings_cleansed') }} l
    ON f.listing_id = l.listing_id
WHERE TO_DATE(f.review_date) < TO_DATE(l.created_at)
LIMIT 10