with
source as (
    SELECT * FROM Samples."samples.dremio.com"."tpcds_sf1000".income_band
),
renamed as (
    select
        *
    from source
)
select * from renamed
