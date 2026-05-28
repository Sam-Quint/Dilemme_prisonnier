
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with all_values as (

    select
        Player_B as value_field,
        count(*) as n_records

    from "dilemme_prisonnier"."main"."stg_parquets"
    group by Player_B

)

select *
from all_values
where value_field not in (
    'Coopérer','Trahir','Hazard','Reflexion'
)



  
  
      
    ) dbt_internal_test