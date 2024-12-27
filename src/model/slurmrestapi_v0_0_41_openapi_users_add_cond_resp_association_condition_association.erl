-module(slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association/0]).

-export([slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association/1]).

-export_type([slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association/0]).

-type slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association() ::
  [ {'comment', binary() }
  | {'defaultqos', binary() }
  | {'grpjobs', slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_grpjobs:slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_grpjobs() }
  | {'grpjobsaccrue', slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_grpjobsaccrue:slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_grpjobsaccrue() }
  | {'grpsubmitjobs', slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_grpsubmitjobs:slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_grpsubmitjobs() }
  | {'grptres', list(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner()) }
  | {'grptresmins', list(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner()) }
  | {'grptresrunmins', list(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner()) }
  | {'grpwall', slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_grpwall:slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_grpwall() }
  | {'maxjobs', slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_maxjobs:slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_maxjobs() }
  | {'maxjobsaccrue', slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_maxjobsaccrue:slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_maxjobsaccrue() }
  | {'maxsubmitjobs', slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_maxsubmitjobs:slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_maxsubmitjobs() }
  | {'maxtresminsperjob', list(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner()) }
  | {'maxtresrunmins', list(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner()) }
  | {'maxtresperjob', list(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner()) }
  | {'maxtrespernode', list(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner()) }
  | {'maxwalldurationperjob', slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_maxwalldurationperjob:slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_maxwalldurationperjob() }
  | {'minpriothresh', slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_minpriothresh:slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_minpriothresh() }
  | {'parent', binary() }
  | {'priority', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_priority:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_priority() }
  | {'qoslevel', list(binary()) }
  | {'fairshare', integer() }
  ].


slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association() ->
    slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association([]).

slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association(Fields) ->
  Default = [ {'comment', binary() }
            , {'defaultqos', binary() }
            , {'grpjobs', slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_grpjobs:slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_grpjobs() }
            , {'grpjobsaccrue', slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_grpjobsaccrue:slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_grpjobsaccrue() }
            , {'grpsubmitjobs', slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_grpsubmitjobs:slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_grpsubmitjobs() }
            , {'grptres', list(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner()) }
            , {'grptresmins', list(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner()) }
            , {'grptresrunmins', list(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner()) }
            , {'grpwall', slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_grpwall:slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_grpwall() }
            , {'maxjobs', slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_maxjobs:slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_maxjobs() }
            , {'maxjobsaccrue', slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_maxjobsaccrue:slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_maxjobsaccrue() }
            , {'maxsubmitjobs', slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_maxsubmitjobs:slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_maxsubmitjobs() }
            , {'maxtresminsperjob', list(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner()) }
            , {'maxtresrunmins', list(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner()) }
            , {'maxtresperjob', list(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner()) }
            , {'maxtrespernode', list(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner()) }
            , {'maxwalldurationperjob', slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_maxwalldurationperjob:slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_maxwalldurationperjob() }
            , {'minpriothresh', slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_minpriothresh:slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_minpriothresh() }
            , {'parent', binary() }
            , {'priority', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_priority:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_priority() }
            , {'qoslevel', list(binary()) }
            , {'fairshare', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

