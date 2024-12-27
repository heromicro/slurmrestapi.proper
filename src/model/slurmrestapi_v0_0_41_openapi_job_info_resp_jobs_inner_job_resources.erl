-module(slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources/0]).

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources/0]).

-type slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources() ::
  [ {'select_type', list(binary()) }
  | {'nodes', slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes() }
  | {'cpus', integer() }
  | {'threads_per_core', slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_threads_per_core:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_threads_per_core() }
  ].


slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources() ->
    slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources([]).

slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources(Fields) ->
  Default = [ {'select_type', list(binary()) }
            , {'nodes', slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes() }
            , {'cpus', integer() }
            , {'threads_per_core', slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_threads_per_core:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_threads_per_core() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

