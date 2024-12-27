-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_tres_group).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_tres_group/0]).

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_tres_group/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_tres_group/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_tres_group() ::
  [ {'minutes', list(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner()) }
  | {'active', list(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner()) }
  ].


slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_tres_group() ->
    slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_tres_group([]).

slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_tres_group(Fields) ->
  Default = [ {'minutes', list(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner()) }
            , {'active', list(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

