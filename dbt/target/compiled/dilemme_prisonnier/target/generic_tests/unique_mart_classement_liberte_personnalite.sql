
    
    

select
    personnalite as unique_field,
    count(*) as n_records

from "dilemme_prisonnier"."main"."mart_classement_liberte"
where personnalite is not null
group by personnalite
having count(*) > 1


