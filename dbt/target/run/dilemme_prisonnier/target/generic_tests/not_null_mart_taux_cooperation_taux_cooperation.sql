
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select taux_cooperation
from "dilemme_prisonnier"."main"."mart_taux_cooperation"
where taux_cooperation is null



  
  
      
    ) dbt_internal_test