with personal_info as (

    select id,name
    from clientevents.public.raw_personal
)

select * from personal_info