-- metricflow_time_spine.sql
with

days as (

    select null as date_day

),

cast_to_date as (

    select cast(date_day as date) as date_day

    from days

)

select * from cast_to_date
