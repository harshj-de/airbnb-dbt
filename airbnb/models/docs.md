{% docs dim_listings_cleansed__minimum_nights %}
Minimum number of nights a guest must book.

The source sometimes sent **0**, which is impossible (82 listings).
These are converted to **1** in this model.

| Source value | Stored value |
|---|---|
| 0 | 1 |
| 1 or more | unchanged |

Guarded by the `positive_values` test.
{% enddocs %}