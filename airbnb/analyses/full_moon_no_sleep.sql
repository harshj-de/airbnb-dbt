SELECT
    is_full_moon,
    review_sentiment,
    COUNT(*) AS reviews,
    ROUND(100 *COUNT(*) / SUM(COUNT(*))
        OVER(
            PARTITION BY is_full_moon
        ),2) AS pct_within_group
FROM {{ref('mart_fullmoon_reviews')}}
GROUP BY is_full_moon, review_sentiment
ORDER BY is_full_moon, review_sentiment