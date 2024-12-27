-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_jobs_per).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_jobs_per/0]).

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_jobs_per/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_jobs_per/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_jobs_per() ::
  [ {'count', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_active_jobs_count:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_active_jobs_count() }
  | {'accruing', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_active_jobs_accruing:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_active_jobs_accruing() }
  | {'submitted', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_jobs_per_submitted:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_jobs_per_submitted() }
  | {'wall_clock', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_wall_clock_per_job:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_wall_clock_per_job() }
  ].


slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_jobs_per() ->
    slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_jobs_per([]).

slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_jobs_per(Fields) ->
  Default = [ {'count', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_active_jobs_count:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_active_jobs_count() }
            , {'accruing', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_active_jobs_accruing:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_active_jobs_accruing() }
            , {'submitted', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_jobs_per_submitted:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_jobs_per_submitted() }
            , {'wall_clock', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_wall_clock_per_job:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_wall_clock_per_job() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

