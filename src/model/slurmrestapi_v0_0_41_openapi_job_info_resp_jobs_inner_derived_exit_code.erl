-module(slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code/0]).

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code/0]).

-type slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code() ::
  [ {'status', list(binary()) }
  | {'return_code', slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code_return_code:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code_return_code() }
  | {'signal', slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code_signal:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code_signal() }
  ].


slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code() ->
    slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code([]).

slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code(Fields) ->
  Default = [ {'status', list(binary()) }
            , {'return_code', slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code_return_code:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code_return_code() }
            , {'signal', slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code_signal:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code_signal() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

