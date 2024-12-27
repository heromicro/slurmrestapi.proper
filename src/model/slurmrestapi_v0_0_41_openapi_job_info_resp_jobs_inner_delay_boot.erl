-module(slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_delay_boot).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_delay_boot/0]).

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_delay_boot/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_delay_boot/0]).

-type slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_delay_boot() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_delay_boot() ->
    slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_delay_boot([]).

slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_delay_boot(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

