WITH listing AS (
    SELECT * FROM {{ref('dim_listings_cleansed')}}
),
host AS (
    SELECT * FROM {{ref('dim_hosts_cleansed')}}
)
SELECT
    l.listing_id,
    l.listing_name,
    l.room_type,
    l.minimum_nights,
    l.price,
    l.host_id,
    h.host_name,
    h.is_superhost AS host_is_superhost,
    l.created_at,
    l.updated_at    
FROM listing l
LEFT JOIN host h
    ON l.host_id = h.host_id
