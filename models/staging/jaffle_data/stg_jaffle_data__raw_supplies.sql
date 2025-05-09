{{
    config(
        materialized='table'
    )
}}

with 

source as (

    select * from {{ source('jaffle_data', 'raw_supplies') }}

),

renamed as (

    select
        id,
        name,
        cost,
        perishable,
        sku

    from source

)

select * from renamed
