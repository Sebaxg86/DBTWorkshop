{{
    config(
        materialized='table'
    )
}}

with 

source as (

    select * from {{ source('jaffle_data', 'raw_costumers') }}

),

renamed as (

    select

    from source

)

select * from renamed
