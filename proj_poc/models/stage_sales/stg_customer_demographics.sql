with
source as (
    SELECT * FROM Samples."samples.dremio.com"."tpcds_sf1000".customer_demographics
),
renamed as (
    select
        *
    from source
)
select * from renamed
