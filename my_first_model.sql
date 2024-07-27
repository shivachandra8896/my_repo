-- models/daily1.sql
WITH source_data AS (
    SELECT
        current_date() AS today,
        COUNT(*) AS total_records
    FROM
        {{ source('my_database_my_schema', 'daily') }}  -- Reference to source
)
SELECT
    today,
    total_records
FROM
    source_data
