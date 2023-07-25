{{
    config( materialized = 'table' )
}}

with teams as (

    select
        'Lakers' as team, cast('2023-07-25 17:10:00' as timestamp) AS data_created

    union all

    select
        'Clippers' as team, cast('2023-07-25 17:10:00' as timestamp) AS data_created

    union all

    select
        '76ers' as team, cast('2023-07-25 17:10:00' as timestamp) AS data_created

    union all

    select
        'Heat' as team, cast('2023-07-25 17:10:00' as timestamp) AS data_created

    union all

    select
        'Bulls' as team, cast('2023-07-25 17:10:00' as timestamp) AS data_created

)

select * from teams