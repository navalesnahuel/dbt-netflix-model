with year_release_productions as (
    select 
        release_year, count(release_year) as productions
    from {{ ref('process_netflix') }}
        group by release_year
        order by productions desc

),

final as (
select * from year_release_productions

)


select * from final