{{ config({"materialized": "table"}) }}

with personal_info_agg as 
(
    select * from {{ref("raw_view_with4")}}

)

select id,name, count(*) as number 
from personal_info_agg
group by id,name
