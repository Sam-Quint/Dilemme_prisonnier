
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with all_values as (

    select
        Choix_P_A as value_field,
        count(*) as n_records

    from "dilemme_prisonnier"."main"."stg_parquets"
    group by Choix_P_A

)

select *
from all_values
where value_field not in (
    'Coopéré','Trahir'
)



  
  
      
    ) dbt_internal_test