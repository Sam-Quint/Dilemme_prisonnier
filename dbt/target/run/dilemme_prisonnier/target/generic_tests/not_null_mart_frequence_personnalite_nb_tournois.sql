
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select nb_tournois
from "dilemme_prisonnier"."main"."mart_frequence_personnalite"
where nb_tournois is null



  
  
      
    ) dbt_internal_test