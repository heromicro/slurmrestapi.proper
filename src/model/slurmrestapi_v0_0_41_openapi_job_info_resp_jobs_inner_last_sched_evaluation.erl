-module(slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_last_sched_evaluation).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_last_sched_evaluation/0]).

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_last_sched_evaluation/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_last_sched_evaluation/0]).

-type slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_last_sched_evaluation() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_last_sched_evaluation() ->
    slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_last_sched_evaluation([]).

slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_last_sched_evaluation(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

