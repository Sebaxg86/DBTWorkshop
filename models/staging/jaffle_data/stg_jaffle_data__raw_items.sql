with 

source as (

    select * from {{ source('jaffle_data', 'raw_items') }}

),

renamed as (

    select
        id,
        order_id,
        sku

    from source

)

select * from renamed
