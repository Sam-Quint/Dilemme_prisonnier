
    
    

with all_values as (

    select
        Choix_P_B as value_field,
        count(*) as n_records

    from "dilemme_prisonnier"."main"."stg_parquets"
    group by Choix_P_B

)

select *
from all_values
where value_field not in (
    'Coopéré','Trahir'
)


