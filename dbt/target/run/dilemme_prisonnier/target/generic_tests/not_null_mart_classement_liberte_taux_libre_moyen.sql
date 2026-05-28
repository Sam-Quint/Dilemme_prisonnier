
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select taux_libre_moyen
from "dilemme_prisonnier"."main"."mart_classement_liberte"
where taux_libre_moyen is null



  
  
      
    ) dbt_internal_test