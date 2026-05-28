
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select taux_trahison_mutuelle
from "dilemme_prisonnier"."main"."mart_matchup_trahison_mutuelle"
where taux_trahison_mutuelle is null



  
  
      
    ) dbt_internal_test