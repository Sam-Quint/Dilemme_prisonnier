
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select taux_cooperation_mutuelle
from "dilemme_prisonnier"."main"."mart_matchup_cooperation_mutuelle"
where taux_cooperation_mutuelle is null



  
  
      
    ) dbt_internal_test