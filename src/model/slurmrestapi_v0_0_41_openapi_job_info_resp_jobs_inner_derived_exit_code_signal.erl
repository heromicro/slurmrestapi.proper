-module(slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code_signal).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code_signal/0]).

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code_signal/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code_signal/0]).

-type slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code_signal() ::
  [ {'id', slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code_signal_id:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code_signal_id() }
  | {'name', binary() }
  ].


slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code_signal() ->
    slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code_signal([]).

slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code_signal(Fields) ->
  Default = [ {'id', slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code_signal_id:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code_signal_id() }
            , {'name', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

