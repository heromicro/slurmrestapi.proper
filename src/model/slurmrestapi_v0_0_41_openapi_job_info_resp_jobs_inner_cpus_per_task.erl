-module(slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpus_per_task).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpus_per_task/0]).

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpus_per_task/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpus_per_task/0]).

-type slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpus_per_task() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpus_per_task() ->
    slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpus_per_task([]).

slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpus_per_task(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

