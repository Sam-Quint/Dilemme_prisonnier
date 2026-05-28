
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select pct_prison
from "dilemme_prisonnier"."main"."mart_distribution_resultats"
where pct_prison is null



  
  
      
    ) dbt_internal_test