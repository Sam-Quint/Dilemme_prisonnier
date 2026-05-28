
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select taux_peine
from "dilemme_prisonnier"."main"."mart_matchup"
where taux_peine is null



  
  
      
    ) dbt_internal_test