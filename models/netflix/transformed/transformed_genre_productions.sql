with genre_production as (
    select genre
    from {{ ref('process_netflix') }},
    UNNEST(SPLIT(genre, ',')) AS genre

),

final as (
select 
    genre, count(genre) as productions
from genre_production
    group by genre
    order by count(genre) desc
)


select * from final