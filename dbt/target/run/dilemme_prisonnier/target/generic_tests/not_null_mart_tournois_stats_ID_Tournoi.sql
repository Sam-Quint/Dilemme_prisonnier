
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select ID_Tournoi
from "dilemme_prisonnier"."main"."mart_tournois_stats"
where ID_Tournoi is null



  
  
      
    ) dbt_internal_test