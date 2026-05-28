
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select Run
from "dilemme_prisonnier"."main"."stg_parquets"
where Run is null



  
  
      
    ) dbt_internal_test