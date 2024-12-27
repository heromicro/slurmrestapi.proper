-module(slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpu_frequency_maximum).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpu_frequency_maximum/0]).

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpu_frequency_maximum/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpu_frequency_maximum/0]).

-type slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpu_frequency_maximum() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpu_frequency_maximum() ->
    slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpu_frequency_maximum([]).

slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpu_frequency_maximum(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

