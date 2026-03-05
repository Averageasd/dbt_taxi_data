with green_tripdata AS (
    SELECT * FROM {{ ref('staging_green_tripdata') }}
),
yellow_tripdata AS ( 
     SELECT * FROM {{ ref('staging_yellow_data')}} 
),
trips_unioned as (
    select * from green_tripdata
    union all
    select * from yellow_tripdata
)

select * from trips_unioned