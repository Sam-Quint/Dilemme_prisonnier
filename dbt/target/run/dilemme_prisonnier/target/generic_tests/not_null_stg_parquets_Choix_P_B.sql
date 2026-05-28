
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select Choix_P_B
from "dilemme_prisonnier"."main"."stg_parquets"
where Choix_P_B is null



  
  
      
    ) dbt_internal_test