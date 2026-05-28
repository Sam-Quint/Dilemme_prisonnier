
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select avg_taux_libre
from "dilemme_prisonnier"."main"."mart_personnalite_global"
where avg_taux_libre is null



  
  
      
    ) dbt_internal_test