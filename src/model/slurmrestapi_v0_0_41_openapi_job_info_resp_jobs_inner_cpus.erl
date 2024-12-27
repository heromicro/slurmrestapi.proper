-module(slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpus).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpus/0]).

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpus/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpus/0]).

-type slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpus() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpus() ->
    slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpus([]).

slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpus(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

