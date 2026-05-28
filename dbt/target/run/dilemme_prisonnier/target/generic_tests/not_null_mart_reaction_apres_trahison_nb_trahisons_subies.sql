
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select nb_trahisons_subies
from "dilemme_prisonnier"."main"."mart_reaction_apres_trahison"
where nb_trahisons_subies is null



  
  
      
    ) dbt_internal_test