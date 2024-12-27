-module(slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes/0]).

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes/0]).

-type slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes() ::
  [ {'count', integer() }
  | {'select_type', list(binary()) }
  | {'list', binary() }
  | {'whole', boolean() }
  | {'allocation', list(slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes_allocation_inner:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes_allocation_inner()) }
  ].


slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes() ->
    slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes([]).

slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes(Fields) ->
  Default = [ {'count', integer() }
            , {'select_type', list(binary()) }
            , {'list', binary() }
            , {'whole', boolean() }
            , {'allocation', list(slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes_allocation_inner:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes_allocation_inner()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

