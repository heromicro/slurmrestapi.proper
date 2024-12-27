-module(slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_max_nodes).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_max_nodes/0]).

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_max_nodes/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_max_nodes/0]).

-type slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_max_nodes() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_max_nodes() ->
    slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_max_nodes([]).

slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_max_nodes(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

