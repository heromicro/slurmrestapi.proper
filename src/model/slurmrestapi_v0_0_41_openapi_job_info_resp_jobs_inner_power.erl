-module(slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_power).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_power/0]).

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_power/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_power/0]).

-type slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_power() ::
  [ {'flags', list(slurmrestapi_any_type:slurmrestapi_any_type()) }
  ].


slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_power() ->
    slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_power([]).

slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_power(Fields) ->
  Default = [ {'flags', list(slurmrestapi_any_type:slurmrestapi_any_type()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

