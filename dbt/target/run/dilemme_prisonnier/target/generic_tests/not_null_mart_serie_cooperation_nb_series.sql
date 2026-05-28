
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select nb_series
from "dilemme_prisonnier"."main"."mart_serie_cooperation"
where nb_series is null



  
  
      
    ) dbt_internal_test