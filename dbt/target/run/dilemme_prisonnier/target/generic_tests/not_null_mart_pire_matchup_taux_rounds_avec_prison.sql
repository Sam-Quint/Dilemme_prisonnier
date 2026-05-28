
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select taux_rounds_avec_prison
from "dilemme_prisonnier"."main"."mart_pire_matchup"
where taux_rounds_avec_prison is null



  
  
      
    ) dbt_internal_test