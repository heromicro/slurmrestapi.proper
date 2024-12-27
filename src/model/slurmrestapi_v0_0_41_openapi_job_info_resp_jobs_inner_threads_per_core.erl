-module(slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_threads_per_core).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_threads_per_core/0]).

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_threads_per_core/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_threads_per_core/0]).

-type slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_threads_per_core() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_threads_per_core() ->
    slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_threads_per_core([]).

slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_threads_per_core(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

