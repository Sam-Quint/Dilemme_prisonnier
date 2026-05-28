
    
    

select
    personnalite as unique_field,
    count(*) as n_records

from "dilemme_prisonnier"."main"."mart_taux_cooperation"
where personnalite is not null
group by personnalite
having count(*) > 1


