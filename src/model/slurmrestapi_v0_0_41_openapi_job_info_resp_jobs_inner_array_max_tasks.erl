-module(slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_array_max_tasks).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_array_max_tasks/0]).

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_array_max_tasks/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_array_max_tasks/0]).

-type slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_array_max_tasks() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_array_max_tasks() ->
    slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_array_max_tasks([]).

slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_array_max_tasks(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

