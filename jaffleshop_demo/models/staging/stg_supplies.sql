with

source as (

    select * from {{ source('ecom', 'raw_supplies') }}

),

renamed as (

    select

        ----------  ids
        md5(cast(coalesce(cast(id as VARCHAR), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(sku as VARCHAR), '_dbt_utils_surrogate_key_null_') as VARCHAR)) as supply_uuid,
        id as supply_id,
        sku as product_id,

        ---------- text
        name as supply_name,

        ---------- numerics
        {{ cents_to_dollars('cost') }} as supply_cost,

        ---------- booleans
        perishable as is_perishable_supply

    from source

)

select * from renamed
