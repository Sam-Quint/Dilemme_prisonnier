
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select total_rounds
from "dilemme_prisonnier"."main"."mart_nb_tournois_par_matchup"
where total_rounds is null



  
  
      
    ) dbt_internal_test