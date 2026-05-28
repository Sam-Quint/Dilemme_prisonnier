
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select phase
from "dilemme_prisonnier"."main"."mart_evolution_early_late"
where phase is null



  
  
      
    ) dbt_internal_test