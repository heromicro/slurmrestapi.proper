-module(slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code_signal_id).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code_signal_id/0]).

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code_signal_id/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code_signal_id/0]).

-type slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code_signal_id() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code_signal_id() ->
    slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code_signal_id([]).

slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code_signal_id(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

