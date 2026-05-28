
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select taux_libre_A
from "dilemme_prisonnier"."main"."mart_tournois_stats"
where taux_libre_A is null



  
  
      
    ) dbt_internal_test