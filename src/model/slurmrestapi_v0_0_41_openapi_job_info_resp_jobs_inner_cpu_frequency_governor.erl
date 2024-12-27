-module(slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpu_frequency_governor).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpu_frequency_governor/0]).

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpu_frequency_governor/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpu_frequency_governor/0]).

-type slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpu_frequency_governor() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpu_frequency_governor() ->
    slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpu_frequency_governor([]).

slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpu_frequency_governor(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

