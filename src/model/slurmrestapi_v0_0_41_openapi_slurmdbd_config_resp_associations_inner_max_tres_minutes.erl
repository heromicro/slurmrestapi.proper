-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_tres_minutes).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_tres_minutes/0]).

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_tres_minutes/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_tres_minutes/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_tres_minutes() ::
  [ {'total', list(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner()) }
  | {'per', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_tres_minutes_per:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_tres_minutes_per() }
  ].


slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_tres_minutes() ->
    slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_tres_minutes([]).

slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_tres_minutes(Fields) ->
  Default = [ {'total', list(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner()) }
            , {'per', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_tres_minutes_per:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_tres_minutes_per() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

