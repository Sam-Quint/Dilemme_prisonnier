
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select taux_libre
from "dilemme_prisonnier"."main"."mart_matchup_liberte"
where taux_libre is null



  
  
      
    ) dbt_internal_test