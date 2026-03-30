with base_calendar as (
    {{ dbt_date.get_date_dimension('1990-01-01', '2000-12-31') }}
),

final as (
    select
        date_day as date_key,
        year_number as year,
        quarter_of_year as quarter,
        month_of_year as month_number,
        month_name_short as month_name,
        week_of_year,
        day_of_year,
        day_of_week_name_short as day_of_week,
        week_start_date,
        month_start_date,
        quarter_start_date

    from base_calendar
)

select * from final