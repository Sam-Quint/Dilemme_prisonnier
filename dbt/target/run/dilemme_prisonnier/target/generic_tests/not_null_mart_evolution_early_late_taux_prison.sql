
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select taux_prison
from "dilemme_prisonnier"."main"."mart_evolution_early_late"
where taux_prison is null



  
  
      
    ) dbt_internal_test