-- created_at: 2026-05-28T14:46:11.253212400+00:00
-- finished_at: 2026-05-28T14:46:11.254829600+00:00
-- elapsed: 1ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_frequence_personnalite_total_rounds.735a0a02a4
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_frequence_personnalite_total_rounds.735a0a02a4", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select total_rounds
from "dilemme_prisonnier"."main"."mart_frequence_personnalite"
where total_rounds is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.253214500+00:00
-- finished_at: 2026-05-28T14:46:11.254834400+00:00
-- elapsed: 1ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_tournois_stats_ID_Tournoi.8b328d8f37
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_tournois_stats_ID_Tournoi.8b328d8f37", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select ID_Tournoi
from "dilemme_prisonnier"."main"."mart_tournois_stats"
where ID_Tournoi is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.253337200+00:00
-- finished_at: 2026-05-28T14:46:11.254829900+00:00
-- elapsed: 1ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_evolution_early_late_taux_libre.261abdb9b6
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_evolution_early_late_taux_libre.261abdb9b6", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select taux_libre
from "dilemme_prisonnier"."main"."mart_evolution_early_late"
where taux_libre is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.253212500+00:00
-- finished_at: 2026-05-28T14:46:11.254830100+00:00
-- elapsed: 1ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_meilleur_adversaire_meilleur_adversaire.059d32b6fb
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_meilleur_adversaire_meilleur_adversaire.059d32b6fb", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select meilleur_adversaire
from "dilemme_prisonnier"."main"."mart_meilleur_adversaire"
where meilleur_adversaire is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.254363100+00:00
-- finished_at: 2026-05-28T14:46:11.254939800+00:00
-- elapsed: 576us
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_distribution_resultats_pct_prison.1dfe517e3e
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_distribution_resultats_pct_prison.1dfe517e3e", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select pct_prison
from "dilemme_prisonnier"."main"."mart_distribution_resultats"
where pct_prison is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.254351800+00:00
-- finished_at: 2026-05-28T14:46:11.254950300+00:00
-- elapsed: 598us
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_exploitation_personnalite.90e45be496
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_exploitation_personnalite.90e45be496", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select personnalite
from "dilemme_prisonnier"."main"."mart_exploitation"
where personnalite is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.253697+00:00
-- finished_at: 2026-05-28T14:46:11.255004600+00:00
-- elapsed: 1ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_distribution_resultats_personnalite.7e8e8ffce5
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_distribution_resultats_personnalite.7e8e8ffce5", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select personnalite
from "dilemme_prisonnier"."main"."mart_distribution_resultats"
where personnalite is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.253406+00:00
-- finished_at: 2026-05-28T14:46:11.255176400+00:00
-- elapsed: 1ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_pire_matchup_perso_2.a30a898e2b
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_pire_matchup_perso_2.a30a898e2b", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select perso_2
from "dilemme_prisonnier"."main"."mart_pire_matchup"
where perso_2 is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.253212400+00:00
-- finished_at: 2026-05-28T14:46:11.255306700+00:00
-- elapsed: 2ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_meilleur_matchup_perso_2.8adf38c720
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_meilleur_matchup_perso_2.8adf38c720", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select perso_2
from "dilemme_prisonnier"."main"."mart_meilleur_matchup"
where perso_2 is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.253448700+00:00
-- finished_at: 2026-05-28T14:46:11.255386700+00:00
-- elapsed: 1ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_taux_cooperation_taux_cooperation.c17057585e
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_taux_cooperation_taux_cooperation.c17057585e", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select taux_cooperation
from "dilemme_prisonnier"."main"."mart_taux_cooperation"
where taux_cooperation is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.253256100+00:00
-- finished_at: 2026-05-28T14:46:11.255445800+00:00
-- elapsed: 2ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_matchup_cooperation_mutuelle_personnalite.b7ac8cf357
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_matchup_cooperation_mutuelle_personnalite.b7ac8cf357", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select personnalite
from "dilemme_prisonnier"."main"."mart_matchup_cooperation_mutuelle"
where personnalite is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.253212300+00:00
-- finished_at: 2026-05-28T14:46:11.255493400+00:00
-- elapsed: 2ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_classement_liberte_personnalite.49cee1410d
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_classement_liberte_personnalite.49cee1410d", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select personnalite
from "dilemme_prisonnier"."main"."mart_classement_liberte"
where personnalite is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.255209900+00:00
-- finished_at: 2026-05-28T14:46:11.255850+00:00
-- elapsed: 640us
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_nb_tournois_par_matchup_perso_2.f4e528bf3c
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_nb_tournois_par_matchup_perso_2.f4e528bf3c", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select perso_2
from "dilemme_prisonnier"."main"."mart_nb_tournois_par_matchup"
where perso_2 is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.253560500+00:00
-- finished_at: 2026-05-28T14:46:11.255993700+00:00
-- elapsed: 2ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_serie_cooperation_longueur_moyenne.614dd7d4f4
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_serie_cooperation_longueur_moyenne.614dd7d4f4", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select longueur_moyenne
from "dilemme_prisonnier"."main"."mart_serie_cooperation"
where longueur_moyenne is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.253215600+00:00
-- finished_at: 2026-05-28T14:46:11.256228700+00:00
-- elapsed: 3ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_distribution_resultats_pct_libre.9177ff8943
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_distribution_resultats_pct_libre.9177ff8943", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select pct_libre
from "dilemme_prisonnier"."main"."mart_distribution_resultats"
where pct_libre is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.253791800+00:00
-- finished_at: 2026-05-28T14:46:11.256374900+00:00
-- elapsed: 2ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_matchup_liberte_adversaire.fdd802b28f
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_matchup_liberte_adversaire.fdd802b28f", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select adversaire
from "dilemme_prisonnier"."main"."mart_matchup_liberte"
where adversaire is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.255425700+00:00
-- finished_at: 2026-05-28T14:46:11.256414800+00:00
-- elapsed: 989us
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_classement_liberte_classement.ecb33eb705
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_classement_liberte_classement.ecb33eb705", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select classement
from "dilemme_prisonnier"."main"."mart_classement_liberte"
where classement is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.253402900+00:00
-- finished_at: 2026-05-28T14:46:11.256125700+00:00
-- elapsed: 2ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_reaction_apres_trahison_nb_trahisons_subies.3d07271f58
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_reaction_apres_trahison_nb_trahisons_subies.3d07271f58", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select nb_trahisons_subies
from "dilemme_prisonnier"."main"."mart_reaction_apres_trahison"
where nb_trahisons_subies is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.255923400+00:00
-- finished_at: 2026-05-28T14:46:11.256534700+00:00
-- elapsed: 611us
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_matchup_trahison_mutuelle_taux_trahison_mutuelle.559035ffd2
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_matchup_trahison_mutuelle_taux_trahison_mutuelle.559035ffd2", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select taux_trahison_mutuelle
from "dilemme_prisonnier"."main"."mart_matchup_trahison_mutuelle"
where taux_trahison_mutuelle is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.256504700+00:00
-- finished_at: 2026-05-28T14:46:11.257056900+00:00
-- elapsed: 552us
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_personnalite_global_personnalite.901b0de421
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_personnalite_global_personnalite.901b0de421", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select personnalite
from "dilemme_prisonnier"."main"."mart_personnalite_global"
where personnalite is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.256583400+00:00
-- finished_at: 2026-05-28T14:46:11.257128800+00:00
-- elapsed: 545us
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_matchup_trahison_mutuelle_adversaire.8cb673eb7b
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_matchup_trahison_mutuelle_adversaire.8cb673eb7b", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select adversaire
from "dilemme_prisonnier"."main"."mart_matchup_trahison_mutuelle"
where adversaire is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.257501400+00:00
-- finished_at: 2026-05-28T14:46:11.258156400+00:00
-- elapsed: 655us
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_nb_tournois_par_matchup_perso_1.aa413af490
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_nb_tournois_par_matchup_perso_1.aa413af490", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select perso_1
from "dilemme_prisonnier"."main"."mart_nb_tournois_par_matchup"
where perso_1 is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.253653300+00:00
-- finished_at: 2026-05-28T14:46:11.258388600+00:00
-- elapsed: 4ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.unique_mart_distribution_resultats_personnalite.5ba5e03508
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.unique_mart_distribution_resultats_personnalite.5ba5e03508", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    personnalite as unique_field,
    count(*) as n_records

from "dilemme_prisonnier"."main"."mart_distribution_resultats"
where personnalite is not null
group by personnalite
having count(*) > 1



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.257994900+00:00
-- finished_at: 2026-05-28T14:46:11.258539500+00:00
-- elapsed: 544us
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_matchup_liberte_taux_libre.6a44bfd339
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_matchup_liberte_taux_libre.6a44bfd339", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select taux_libre
from "dilemme_prisonnier"."main"."mart_matchup_liberte"
where taux_libre is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.258209200+00:00
-- finished_at: 2026-05-28T14:46:11.258798200+00:00
-- elapsed: 589us
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_meilleur_adversaire_taux_libre.69cbf78bf6
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_meilleur_adversaire_taux_libre.69cbf78bf6", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select taux_libre
from "dilemme_prisonnier"."main"."mart_meilleur_adversaire"
where taux_libre is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.258252800+00:00
-- finished_at: 2026-05-28T14:46:11.258802800+00:00
-- elapsed: 550us
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_taux_cooperation_personnalite.5d229d106d
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_taux_cooperation_personnalite.5d229d106d", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select personnalite
from "dilemme_prisonnier"."main"."mart_taux_cooperation"
where personnalite is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.258250600+00:00
-- finished_at: 2026-05-28T14:46:11.258923100+00:00
-- elapsed: 672us
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_tournois_stats_taux_libre_A.34e4900ae8
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_tournois_stats_taux_libre_A.34e4900ae8", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select taux_libre_A
from "dilemme_prisonnier"."main"."mart_tournois_stats"
where taux_libre_A is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.258391400+00:00
-- finished_at: 2026-05-28T14:46:11.258928600+00:00
-- elapsed: 537us
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_taux_cooperation_taux_trahison.674cdcaab6
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_taux_cooperation_taux_trahison.674cdcaab6", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select taux_trahison
from "dilemme_prisonnier"."main"."mart_taux_cooperation"
where taux_trahison is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.258195800+00:00
-- finished_at: 2026-05-28T14:46:11.258936900+00:00
-- elapsed: 741us
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_matchup_trahison_mutuelle_personnalite.9a948829dc
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_matchup_trahison_mutuelle_personnalite.9a948829dc", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select personnalite
from "dilemme_prisonnier"."main"."mart_matchup_trahison_mutuelle"
where personnalite is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.257501400+00:00
-- finished_at: 2026-05-28T14:46:11.259400400+00:00
-- elapsed: 1ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_matchup_taux_peine.03829c8946
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_matchup_taux_peine.03829c8946", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select taux_peine
from "dilemme_prisonnier"."main"."mart_matchup"
where taux_peine is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.259053100+00:00
-- finished_at: 2026-05-28T14:46:11.259569200+00:00
-- elapsed: 516us
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_exploitation_taux_exploitation.16bea97a76
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_exploitation_taux_exploitation.16bea97a76", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select taux_exploitation
from "dilemme_prisonnier"."main"."mart_exploitation"
where taux_exploitation is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.257161500+00:00
-- finished_at: 2026-05-28T14:46:11.259826300+00:00
-- elapsed: 2ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_frequence_personnalite_personnalite.53444983e3
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_frequence_personnalite_personnalite.53444983e3", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select personnalite
from "dilemme_prisonnier"."main"."mart_frequence_personnalite"
where personnalite is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.259103800+00:00
-- finished_at: 2026-05-28T14:46:11.259860100+00:00
-- elapsed: 756us
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_matchup_adversaire.2c224661cb
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_matchup_adversaire.2c224661cb", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select adversaire
from "dilemme_prisonnier"."main"."mart_matchup"
where adversaire is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.257164900+00:00
-- finished_at: 2026-05-28T14:46:11.260649400+00:00
-- elapsed: 3ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_serie_cooperation_perso_2.73f9615551
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_serie_cooperation_perso_2.73f9615551", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select perso_2
from "dilemme_prisonnier"."main"."mart_serie_cooperation"
where perso_2 is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.257150800+00:00
-- finished_at: 2026-05-28T14:46:11.260766600+00:00
-- elapsed: 3ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_serie_cooperation_perso_1.6261146b2e
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_serie_cooperation_perso_1.6261146b2e", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select perso_1
from "dilemme_prisonnier"."main"."mart_serie_cooperation"
where perso_1 is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.260408200+00:00
-- finished_at: 2026-05-28T14:46:11.260985800+00:00
-- elapsed: 577us
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_classement_liberte_taux_libre.ba2bb6610e
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_classement_liberte_taux_libre.ba2bb6610e", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select taux_libre
from "dilemme_prisonnier"."main"."mart_classement_liberte"
where taux_libre is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.256982+00:00
-- finished_at: 2026-05-28T14:46:11.257583700+00:00
-- elapsed: 601us
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_distribution_resultats_pct_peine.f5fac41aa6
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_distribution_resultats_pct_peine.f5fac41aa6", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select pct_peine
from "dilemme_prisonnier"."main"."mart_distribution_resultats"
where pct_peine is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.257275600+00:00
-- finished_at: 2026-05-28T14:46:11.261338600+00:00
-- elapsed: 4ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_tournois_stats_taux_libre_B.65ba33dab0
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_tournois_stats_taux_libre_B.65ba33dab0", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select taux_libre_B
from "dilemme_prisonnier"."main"."mart_tournois_stats"
where taux_libre_B is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.260562600+00:00
-- finished_at: 2026-05-28T14:46:11.261555700+00:00
-- elapsed: 993us
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_pire_adversaire_personnalite.a8d5d0d9c8
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_pire_adversaire_personnalite.a8d5d0d9c8", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select personnalite
from "dilemme_prisonnier"."main"."mart_pire_adversaire"
where personnalite is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.261067800+00:00
-- finished_at: 2026-05-28T14:46:11.261705700+00:00
-- elapsed: 637us
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_meilleur_matchup_taux_double_liberte.3b31d103cc
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_meilleur_matchup_taux_double_liberte.3b31d103cc", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select taux_double_liberte
from "dilemme_prisonnier"."main"."mart_meilleur_matchup"
where taux_double_liberte is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.261318600+00:00
-- finished_at: 2026-05-28T14:46:11.261852+00:00
-- elapsed: 533us
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_pire_adversaire_taux_libre.6cabe6100a
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_pire_adversaire_taux_libre.6cabe6100a", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select taux_libre
from "dilemme_prisonnier"."main"."mart_pire_adversaire"
where taux_libre is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.261335500+00:00
-- finished_at: 2026-05-28T14:46:11.261892400+00:00
-- elapsed: 556us
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_meilleur_matchup_taux_liberte_combine.e67892c91f
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_meilleur_matchup_taux_liberte_combine.e67892c91f", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select taux_liberte_combine
from "dilemme_prisonnier"."main"."mart_meilleur_matchup"
where taux_liberte_combine is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.261549100+00:00
-- finished_at: 2026-05-28T14:46:11.262071900+00:00
-- elapsed: 522us
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_exploitation_adversaire.9bf3c4163a
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_exploitation_adversaire.9bf3c4163a", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select adversaire
from "dilemme_prisonnier"."main"."mart_exploitation"
where adversaire is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.256684700+00:00
-- finished_at: 2026-05-28T14:46:11.262200200+00:00
-- elapsed: 5ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_evolution_early_late_phase.0541ec65dd
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_evolution_early_late_phase.0541ec65dd", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select phase
from "dilemme_prisonnier"."main"."mart_evolution_early_late"
where phase is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.261843+00:00
-- finished_at: 2026-05-28T14:46:11.262456500+00:00
-- elapsed: 613us
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_personnalite_global_avg_taux_libre.fcc15b1186
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_personnalite_global_avg_taux_libre.fcc15b1186", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select avg_taux_libre
from "dilemme_prisonnier"."main"."mart_personnalite_global"
where avg_taux_libre is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.254317600+00:00
-- finished_at: 2026-05-28T14:46:11.262495700+00:00
-- elapsed: 8ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.unique_mart_tournois_stats_ID_Tournoi.2872096cf9
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.unique_mart_tournois_stats_ID_Tournoi.2872096cf9", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
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



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.258886200+00:00
-- finished_at: 2026-05-28T14:46:11.262496700+00:00
-- elapsed: 3ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_reaction_apres_trahison_pct_repond_trahison.c8b3897dda
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_reaction_apres_trahison_pct_repond_trahison.c8b3897dda", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select pct_repond_trahison
from "dilemme_prisonnier"."main"."mart_reaction_apres_trahison"
where pct_repond_trahison is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.262107200+00:00
-- finished_at: 2026-05-28T14:46:11.262708600+00:00
-- elapsed: 601us
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_nb_tournois_par_matchup_nb_tournois.728db85f81
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_nb_tournois_par_matchup_nb_tournois.728db85f81", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select nb_tournois
from "dilemme_prisonnier"."main"."mart_nb_tournois_par_matchup"
where nb_tournois is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.262601300+00:00
-- finished_at: 2026-05-28T14:46:11.263164100+00:00
-- elapsed: 562us
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_nb_tournois_par_matchup_total_rounds.774a23c279
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_nb_tournois_par_matchup_total_rounds.774a23c279", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select total_rounds
from "dilemme_prisonnier"."main"."mart_nb_tournois_par_matchup"
where total_rounds is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.262670500+00:00
-- finished_at: 2026-05-28T14:46:11.263262700+00:00
-- elapsed: 592us
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_meilleur_matchup_perso_1.770034b379
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_meilleur_matchup_perso_1.770034b379", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select perso_1
from "dilemme_prisonnier"."main"."mart_meilleur_matchup"
where perso_1 is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.262735900+00:00
-- finished_at: 2026-05-28T14:46:11.263353800+00:00
-- elapsed: 617us
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_pire_matchup_taux_prison_combine.3d05badf55
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_pire_matchup_taux_prison_combine.3d05badf55", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select taux_prison_combine
from "dilemme_prisonnier"."main"."mart_pire_matchup"
where taux_prison_combine is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.260561800+00:00
-- finished_at: 2026-05-28T14:46:11.265354800+00:00
-- elapsed: 4ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_taux_cooperation_total_rounds.f1f1ae89b1
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_taux_cooperation_total_rounds.f1f1ae89b1", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select total_rounds
from "dilemme_prisonnier"."main"."mart_taux_cooperation"
where total_rounds is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.263233100+00:00
-- finished_at: 2026-05-28T14:46:11.265400500+00:00
-- elapsed: 2ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_matchup_taux_libre.ae7f814b5d
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_matchup_taux_libre.ae7f814b5d", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select taux_libre
from "dilemme_prisonnier"."main"."mart_matchup"
where taux_libre is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.261975900+00:00
-- finished_at: 2026-05-28T14:46:11.265458+00:00
-- elapsed: 3ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.unique_mart_reaction_apres_trahison_personnalite.80617e1f29
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.unique_mart_reaction_apres_trahison_personnalite.80617e1f29", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
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



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.256594+00:00
-- finished_at: 2026-05-28T14:46:11.265486200+00:00
-- elapsed: 8ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.unique_mart_personnalite_global_personnalite.455c0786ff
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.unique_mart_personnalite_global_personnalite.455c0786ff", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    personnalite as unique_field,
    count(*) as n_records

from "dilemme_prisonnier"."main"."mart_personnalite_global"
where personnalite is not null
group by personnalite
having count(*) > 1



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.253212300+00:00
-- finished_at: 2026-05-28T14:46:11.265523600+00:00
-- elapsed: 12ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_stg_parquets_Choix_P_A.f7092ece98
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_stg_parquets_Choix_P_A.f7092ece98", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select Choix_P_A
from "dilemme_prisonnier"."main"."stg_parquets"
where Choix_P_A is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.253212400+00:00
-- finished_at: 2026-05-28T14:46:11.265554500+00:00
-- elapsed: 12ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_stg_parquets_Choix_P_B.7f0bc450c4
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_stg_parquets_Choix_P_B.7f0bc450c4", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select Choix_P_B
from "dilemme_prisonnier"."main"."stg_parquets"
where Choix_P_B is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.257231600+00:00
-- finished_at: 2026-05-28T14:46:11.265961900+00:00
-- elapsed: 8ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_serie_cooperation_longueur_max.c111b6b88f
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_serie_cooperation_longueur_max.c111b6b88f", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select longueur_max
from "dilemme_prisonnier"."main"."mart_serie_cooperation"
where longueur_max is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.264693100+00:00
-- finished_at: 2026-05-28T14:46:11.266282100+00:00
-- elapsed: 1ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_evolution_early_late_personnalite.dfd25bc2cb
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_evolution_early_late_personnalite.dfd25bc2cb", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select personnalite
from "dilemme_prisonnier"."main"."mart_evolution_early_late"
where personnalite is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.265745500+00:00
-- finished_at: 2026-05-28T14:46:11.266477800+00:00
-- elapsed: 732us
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_pire_adversaire_pire_adversaire.e2930d7f89
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_pire_adversaire_pire_adversaire.e2930d7f89", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select pire_adversaire
from "dilemme_prisonnier"."main"."mart_pire_adversaire"
where pire_adversaire is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.264679+00:00
-- finished_at: 2026-05-28T14:46:11.266777+00:00
-- elapsed: 2ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_matchup_personnalite.a8622e41bb
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_matchup_personnalite.a8622e41bb", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select personnalite
from "dilemme_prisonnier"."main"."mart_matchup"
where personnalite is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.263181300+00:00
-- finished_at: 2026-05-28T14:46:11.266937700+00:00
-- elapsed: 3ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_frequence_personnalite_nb_tournois.c00fa69f37
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_frequence_personnalite_nb_tournois.c00fa69f37", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select nb_tournois
from "dilemme_prisonnier"."main"."mart_frequence_personnalite"
where nb_tournois is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.264957600+00:00
-- finished_at: 2026-05-28T14:46:11.267009100+00:00
-- elapsed: 2ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_pire_matchup_perso_1.0ab47df692
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_pire_matchup_perso_1.0ab47df692", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select perso_1
from "dilemme_prisonnier"."main"."mart_pire_matchup"
where perso_1 is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.266354+00:00
-- finished_at: 2026-05-28T14:46:11.267018200+00:00
-- elapsed: 664us
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_pire_matchup_taux_rounds_avec_prison.24dc9ddca3
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_pire_matchup_taux_rounds_avec_prison.24dc9ddca3", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select taux_rounds_avec_prison
from "dilemme_prisonnier"."main"."mart_pire_matchup"
where taux_rounds_avec_prison is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.264564700+00:00
-- finished_at: 2026-05-28T14:46:11.267018300+00:00
-- elapsed: 2ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_matchup_liberte_personnalite.d3a90088f2
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_matchup_liberte_personnalite.d3a90088f2", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select personnalite
from "dilemme_prisonnier"."main"."mart_matchup_liberte"
where personnalite is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.266838300+00:00
-- finished_at: 2026-05-28T14:46:11.267850100+00:00
-- elapsed: 1ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_matchup_taux_prison.863f5466c6
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_matchup_taux_prison.863f5466c6", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select taux_prison
from "dilemme_prisonnier"."main"."mart_matchup"
where taux_prison is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.264558300+00:00
-- finished_at: 2026-05-28T14:46:11.267906400+00:00
-- elapsed: 3ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_serie_cooperation_nb_series.eec5aa16b9
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_serie_cooperation_nb_series.eec5aa16b9", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select nb_series
from "dilemme_prisonnier"."main"."mart_serie_cooperation"
where nb_series is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.264877300+00:00
-- finished_at: 2026-05-28T14:46:11.268102800+00:00
-- elapsed: 3ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_evolution_early_late_taux_prison.86c6413b26
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_evolution_early_late_taux_prison.86c6413b26", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select taux_prison
from "dilemme_prisonnier"."main"."mart_evolution_early_late"
where taux_prison is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.264585700+00:00
-- finished_at: 2026-05-28T14:46:11.268161200+00:00
-- elapsed: 3ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_reaction_apres_trahison_personnalite.06b8b9da1b
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_reaction_apres_trahison_personnalite.06b8b9da1b", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select personnalite
from "dilemme_prisonnier"."main"."mart_reaction_apres_trahison"
where personnalite is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.267947700+00:00
-- finished_at: 2026-05-28T14:46:11.268924500+00:00
-- elapsed: 976us
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_reaction_apres_trahison_pct_repond_cooperation.cc9ca06476
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_reaction_apres_trahison_pct_repond_cooperation.cc9ca06476", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select pct_repond_cooperation
from "dilemme_prisonnier"."main"."mart_reaction_apres_trahison"
where pct_repond_cooperation is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.265273300+00:00
-- finished_at: 2026-05-28T14:46:11.269105900+00:00
-- elapsed: 3ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_matchup_cooperation_mutuelle_taux_cooperation_mutuelle.22344baaae
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_matchup_cooperation_mutuelle_taux_cooperation_mutuelle.22344baaae", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select taux_cooperation_mutuelle
from "dilemme_prisonnier"."main"."mart_matchup_cooperation_mutuelle"
where taux_cooperation_mutuelle is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.265245800+00:00
-- finished_at: 2026-05-28T14:46:11.269379400+00:00
-- elapsed: 4ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_matchup_cooperation_mutuelle_adversaire.29dae8e793
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_matchup_cooperation_mutuelle_adversaire.29dae8e793", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select adversaire
from "dilemme_prisonnier"."main"."mart_matchup_cooperation_mutuelle"
where adversaire is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.258597400+00:00
-- finished_at: 2026-05-28T14:46:11.270490900+00:00
-- elapsed: 11ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.unique_mart_frequence_personnalite_personnalite.5341b51342
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.unique_mart_frequence_personnalite_personnalite.5341b51342", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    personnalite as unique_field,
    count(*) as n_records

from "dilemme_prisonnier"."main"."mart_frequence_personnalite"
where personnalite is not null
group by personnalite
having count(*) > 1



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.265929400+00:00
-- finished_at: 2026-05-28T14:46:11.270706600+00:00
-- elapsed: 4ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.unique_mart_taux_cooperation_personnalite.5233621ea0
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.unique_mart_taux_cooperation_personnalite.5233621ea0", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    personnalite as unique_field,
    count(*) as n_records

from "dilemme_prisonnier"."main"."mart_taux_cooperation"
where personnalite is not null
group by personnalite
having count(*) > 1



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.265877500+00:00
-- finished_at: 2026-05-28T14:46:11.270741+00:00
-- elapsed: 4ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_mart_meilleur_adversaire_personnalite.3a240e4893
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_mart_meilleur_adversaire_personnalite.3a240e4893", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select personnalite
from "dilemme_prisonnier"."main"."mart_meilleur_adversaire"
where personnalite is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.266843+00:00
-- finished_at: 2026-05-28T14:46:11.270759+00:00
-- elapsed: 3ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.unique_mart_classement_liberte_personnalite.226f98cf61
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.unique_mart_classement_liberte_personnalite.226f98cf61", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    personnalite as unique_field,
    count(*) as n_records

from "dilemme_prisonnier"."main"."mart_classement_liberte"
where personnalite is not null
group by personnalite
having count(*) > 1



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.254581+00:00
-- finished_at: 2026-05-28T14:46:11.272306500+00:00
-- elapsed: 17ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_stg_parquets_ID_Tournoi.90d23381ee
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_stg_parquets_ID_Tournoi.90d23381ee", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select ID_Tournoi
from "dilemme_prisonnier"."main"."stg_parquets"
where ID_Tournoi is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.254055900+00:00
-- finished_at: 2026-05-28T14:46:11.272359200+00:00
-- elapsed: 18ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_stg_parquets_Nb_tour.9bc285ce16
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_stg_parquets_Nb_tour.9bc285ce16", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select Nb_tour
from "dilemme_prisonnier"."main"."stg_parquets"
where Nb_tour is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.254075500+00:00
-- finished_at: 2026-05-28T14:46:11.272566100+00:00
-- elapsed: 18ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_stg_parquets_Run.3675e10d4b
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_stg_parquets_Run.3675e10d4b", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select Run
from "dilemme_prisonnier"."main"."stg_parquets"
where Run is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.255955900+00:00
-- finished_at: 2026-05-28T14:46:11.272555200+00:00
-- elapsed: 16ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_stg_parquets_Player_A.ecd25bf61f
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_stg_parquets_Player_A.ecd25bf61f", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select Player_A
from "dilemme_prisonnier"."main"."stg_parquets"
where Player_A is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.261972400+00:00
-- finished_at: 2026-05-28T14:46:11.273379200+00:00
-- elapsed: 11ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_stg_parquets_Player_B.540ddef824
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_stg_parquets_Player_B.540ddef824", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select Player_B
from "dilemme_prisonnier"."main"."stg_parquets"
where Player_B is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.253376400+00:00
-- finished_at: 2026-05-28T14:46:11.273558600+00:00
-- elapsed: 20ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_stg_parquets_Resultat_P_B.9d6ab739b3
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_stg_parquets_Resultat_P_B.9d6ab739b3", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select Resultat_P_B
from "dilemme_prisonnier"."main"."stg_parquets"
where Resultat_P_B is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.266985100+00:00
-- finished_at: 2026-05-28T14:46:11.274967+00:00
-- elapsed: 7ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_stg_parquets_Resultat_P_A.3af46a3b71
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_stg_parquets_Resultat_P_A.3af46a3b71", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select Resultat_P_A
from "dilemme_prisonnier"."main"."stg_parquets"
where Resultat_P_A is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.265111300+00:00
-- finished_at: 2026-05-28T14:46:11.275016700+00:00
-- elapsed: 9ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.not_null_stg_parquets_Date.9b12a12708
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.not_null_stg_parquets_Date.9b12a12708", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select Date
from "dilemme_prisonnier"."main"."stg_parquets"
where Date is null



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.262890400+00:00
-- finished_at: 2026-05-28T14:46:11.275211800+00:00
-- elapsed: 12ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.accepted_values_stg_parquets_Choix_P_B__Coop_r___Trahir.10b22ee723
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.accepted_values_stg_parquets_Choix_P_B__Coop_r___Trahir.10b22ee723", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with all_values as (

    select
        Choix_P_B as value_field,
        count(*) as n_records

    from "dilemme_prisonnier"."main"."stg_parquets"
    group by Choix_P_B

)

select *
from all_values
where value_field not in (
    'Coopéré','Trahir'
)



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.260509900+00:00
-- finished_at: 2026-05-28T14:46:11.275256300+00:00
-- elapsed: 14ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.accepted_values_stg_parquets_Resultat_P_A__Libre__Prison_max__Peine_partag_e.af9aaa9436
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.accepted_values_stg_parquets_Resultat_P_A__Libre__Prison_max__Peine_partag_e.af9aaa9436", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with all_values as (

    select
        Resultat_P_A as value_field,
        count(*) as n_records

    from "dilemme_prisonnier"."main"."stg_parquets"
    group by Resultat_P_A

)

select *
from all_values
where value_field not in (
    'Libre','Prison_max','Peine_partagée'
)



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.260986400+00:00
-- finished_at: 2026-05-28T14:46:11.275352500+00:00
-- elapsed: 14ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.accepted_values_stg_parquets_Player_A__Coop_rer__Trahir__Hazard__TitforTat__GrimTrigger__RandomTitforTat__Pavlov__Reflexion__LLMLibre__Egoiste__Altruiste.ee6c74612d
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.accepted_values_stg_parquets_Player_A__Coop_rer__Trahir__Hazard__TitforTat__GrimTrigger__RandomTitforTat__Pavlov__Reflexion__LLMLibre__Egoiste__Altruiste.ee6c74612d", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with all_values as (

    select
        Player_A as value_field,
        count(*) as n_records

    from "dilemme_prisonnier"."main"."stg_parquets"
    group by Player_A

)

select *
from all_values
where value_field not in (
    'Coopérer','Trahir','Hazard','TitforTat','GrimTrigger','RandomTitforTat','Pavlov','Reflexion','LLMLibre','Egoiste','Altruiste'
)



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.261800100+00:00
-- finished_at: 2026-05-28T14:46:11.275405400+00:00
-- elapsed: 13ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.accepted_values_stg_parquets_Player_B__Coop_rer__Trahir__Hazard__TitforTat__GrimTrigger__RandomTitforTat__Pavlov__Reflexion__LLMLibre__Egoiste__Altruiste.e130566ef9
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.accepted_values_stg_parquets_Player_B__Coop_rer__Trahir__Hazard__TitforTat__GrimTrigger__RandomTitforTat__Pavlov__Reflexion__LLMLibre__Egoiste__Altruiste.e130566ef9", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with all_values as (

    select
        Player_B as value_field,
        count(*) as n_records

    from "dilemme_prisonnier"."main"."stg_parquets"
    group by Player_B

)

select *
from all_values
where value_field not in (
    'Coopérer','Trahir','Hazard','TitforTat','GrimTrigger','RandomTitforTat','Pavlov','Reflexion','LLMLibre','Egoiste','Altruiste'
)



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.265459400+00:00
-- finished_at: 2026-05-28T14:46:11.277057600+00:00
-- elapsed: 11ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.accepted_values_stg_parquets_Resultat_P_B__Libre__Prison_max__Peine_partag_e.ef2bbf8a7b
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.accepted_values_stg_parquets_Resultat_P_B__Libre__Prison_max__Peine_partag_e.ef2bbf8a7b", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with all_values as (

    select
        Resultat_P_B as value_field,
        count(*) as n_records

    from "dilemme_prisonnier"."main"."stg_parquets"
    group by Resultat_P_B

)

select *
from all_values
where value_field not in (
    'Libre','Prison_max','Peine_partagée'
)



  
  
      
    ) dbt_internal_test;
-- created_at: 2026-05-28T14:46:11.267049900+00:00
-- finished_at: 2026-05-28T14:46:11.277097900+00:00
-- elapsed: 10ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.dilemme_prisonnier.accepted_values_stg_parquets_Choix_P_A__Coop_r___Trahir.96ca54207d
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.dilemme_prisonnier.accepted_values_stg_parquets_Choix_P_A__Coop_r___Trahir.96ca54207d", "profile_name": "dilemme_prisonnier", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with all_values as (

    select
        Choix_P_A as value_field,
        count(*) as n_records

    from "dilemme_prisonnier"."main"."stg_parquets"
    group by Choix_P_A

)

select *
from all_values
where value_field not in (
    'Coopéré','Trahir'
)



  
  
      
    ) dbt_internal_test;
