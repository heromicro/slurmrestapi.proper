-module(slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpu_frequency_minimum).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpu_frequency_minimum/0]).

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpu_frequency_minimum/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpu_frequency_minimum/0]).

-type slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpu_frequency_minimum() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpu_frequency_minimum() ->
    slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpu_frequency_minimum([]).

slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpu_frequency_minimum(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

