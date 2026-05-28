
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select adversaire
from "dilemme_prisonnier"."main"."mart_matchup_cooperation_mutuelle"
where adversaire is null



  
  
      
    ) dbt_internal_test