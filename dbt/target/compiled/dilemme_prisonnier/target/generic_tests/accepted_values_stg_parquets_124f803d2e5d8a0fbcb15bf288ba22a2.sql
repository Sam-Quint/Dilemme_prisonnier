
    
    

with all_values as (

    select
        Resultat_P_B as value_field,
        count(*) as n_records

    from "dilemme_prisonnier"."main"."stg_parquets"
    group by Resultat_P_B

)

select *
from all_values
where value_field not in (
    'Libre','Prison_max','Peine_partagée'
)


