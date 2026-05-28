
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    ID_Tournoi as unique_field,
    count(*) as n_records

from "dilemme_prisonnier"."main"."mart_tournois_stats"
where ID_Tournoi is not null
group by ID_Tournoi
having count(*) > 1



  
  
      
    ) dbt_internal_test