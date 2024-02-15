with rating_production as (
    select 
        rating, count(rating) as productions
    from {{ ref('process_netflix') }}
        group by rating
        order by productions desc

),

final as (
select * from rating_production
WHERE rating NOT IN ('66 min', '84 min', '74 min')
)


select * from final