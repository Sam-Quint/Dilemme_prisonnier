
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select classement
from "dilemme_prisonnier"."main"."mart_classement_liberte"
where classement is null



  
  
      
    ) dbt_internal_test