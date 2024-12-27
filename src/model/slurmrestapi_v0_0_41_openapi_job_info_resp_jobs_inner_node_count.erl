-module(slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_node_count).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_node_count/0]).

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_node_count/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_node_count/0]).

-type slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_node_count() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_node_count() ->
    slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_node_count([]).

slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_node_count(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

