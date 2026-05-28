
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select pct_cooperation
from "dilemme_prisonnier"."main"."mart_taux_cooperation"
where pct_cooperation is null



  
  
      
    ) dbt_internal_test