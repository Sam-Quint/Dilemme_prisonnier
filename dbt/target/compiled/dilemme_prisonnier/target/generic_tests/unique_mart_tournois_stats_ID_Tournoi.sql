
    
    

select
    ID_Tournoi as unique_field,
    count(*) as n_records

from "dilemme_prisonnier"."main"."mart_tournois_stats"
where ID_Tournoi is not null
group by ID_Tournoi
having count(*) > 1


