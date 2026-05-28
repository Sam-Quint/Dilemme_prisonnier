
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select taux_libre_fin
from "dilemme_prisonnier"."main"."mart_evolution_early_late"
where taux_libre_fin is null



  
  
      
    ) dbt_internal_test