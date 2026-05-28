
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select taux_prison_combine
from "dilemme_prisonnier"."main"."mart_pire_matchup"
where taux_prison_combine is null



  
  
      
    ) dbt_internal_test