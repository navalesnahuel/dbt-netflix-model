with titles as (
    SELECT 
        show_id,
        title,
        SPLIT(country, ',')[OFFSET(0)] AS country,
        rating,
        release_year,
        description,
        listed_in as genre
    FROM {{ ref('staging_netflix') }}
    WHERE country is not NULL
),

final as (
    SELECT * 
    FROM titles
    WHERE rating IS NOT NULL  

)

select * from final
