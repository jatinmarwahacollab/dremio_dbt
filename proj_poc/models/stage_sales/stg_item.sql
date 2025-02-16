with
source as (
    SELECT * FROM Samples."samples.dremio.com"."tpcds_sf1000".item
),
renamed as (
    select
        *
    from source
)
select * from renamed
