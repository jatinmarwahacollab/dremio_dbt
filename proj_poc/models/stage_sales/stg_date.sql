with
source as (
    SELECT * FROM Samples."samples.dremio.com"."tpcds_sf1000".date_dim
),
renamed as (
    select
        *
    from source
)
select * from renamed
