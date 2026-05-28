
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select Date
from "dilemme_prisonnier"."main"."stg_parquets"
where Date is null



  
  
      
    ) dbt_internal_test