with productions_by_country as (
    select 
        country, count(country) as productions
    from {{ ref('process_netflix') }}
        group by country
        order by productions desc

),

final as (
select * from productions_by_country
)


select * from final