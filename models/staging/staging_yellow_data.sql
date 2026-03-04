with stage_yellow_data AS 
(
    SELECT 
--identifier--
cast(vendorid as int) as vendor_id,
cast(ratecodeid as int) as rate_code_id,
cast(pulocationid as int) as pickup_location_id,
cast(dolocationid as int) as dropoff_location_id,

--timestamp--
tpep_pickup_datetime as pickup_datetime,
tpep_dropoff_datetime as dropoff_datetime,

--trip info--
store_and_fwd_flag,
cast(passenger_count as int) as passenger_count,
cast(trip_distance as numeric) as trip_distance,
1 as trip_type,--only street type taxi--

--payment info
cast(fare_amount as numeric) as fare_amount,
cast(extra as numeric) as extra,
cast(mta_tax as numeric) as mta_tax,
cast(tip_amount as numeric) as tip_amount,
cast(tolls_amount as numeric) as tolls_amount,
cast(improvement_surcharge as numeric) as improvement_surcharge,
0 as ehail_fee, -- yellow taxi always have 0 ehail fee--
cast(total_amount as numeric) as total_amount,
cast(payment_type as integer) as payment_type

from {{source('raw_data', 'yellow_tripdata') }}
)

SELECT * from
stage_yellow_data WHERE vendor_id IS NOT NULL
