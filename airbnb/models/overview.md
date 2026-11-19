{% docs __overview__ %}
# Airbnb pipeline

Course project following Zoltan Toth's dbt Bootcamp, on Snowflake.

## Layers

| Layer | Models | Materialization |
|---|---|---|
| Sources | raw_listings, raw_hosts, raw_reviews | Snowflake tables (RAW) |
| src | src_listings, src_hosts, src_reviews | ephemeral |
| dim | dim_listings_cleansed, dim_hosts_cleansed, dim_listings_w_hosts | view / table |
| fct | fct_reviews | incremental |
| mart | mart_fullmoon_reviews | table |

![Lineage](assets/lineage.png)
{% enddocs %}