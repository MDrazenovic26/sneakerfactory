{{
    config(
        materialized='table'
        )
}}

with teams as(

    select * from {{ref('example_teams')}}

),

team_locations as(

    select * from {{ref('team_locations')}}

),

pref as (

    select
        ts.team as team,
        tl.city as city,
        tl.state as state,
        cast(null as timestamp) as data_loaded

    from teams as ts

    left join team_locations as tl
        on tl.name = ts.team

),

final as (

    select
        team,
        city,
        state,
        dateadd(hour,9,current_timestamp()) as data_loaded
    from 
        pref
)

    select * from final