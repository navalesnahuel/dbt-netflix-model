with netflix as (
    SELECT * FROM {{ source('data', 'netflix') }}
),

final as (
    SELECT * FROM netflix

)

SELECT * from final
