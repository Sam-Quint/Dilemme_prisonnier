
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    personnalite as unique_field,
    count(*) as n_records

from "dilemme_prisonnier"."main"."mart_reaction_apres_trahison"
where personnalite is not null
group by personnalite
having count(*) > 1



  
  
      
    ) dbt_internal_test