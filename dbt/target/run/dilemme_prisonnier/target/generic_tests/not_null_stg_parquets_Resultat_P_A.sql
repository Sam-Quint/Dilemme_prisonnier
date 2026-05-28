
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select Resultat_P_A
from "dilemme_prisonnier"."main"."stg_parquets"
where Resultat_P_A is null



  
  
      
    ) dbt_internal_test