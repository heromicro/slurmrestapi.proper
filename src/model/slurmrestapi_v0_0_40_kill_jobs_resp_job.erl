-module(slurmrestapi_v0_0_40_kill_jobs_resp_job).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_kill_jobs_resp_job/0]).

-export([slurmrestapi_v0_0_40_kill_jobs_resp_job/1]).

-export_type([slurmrestapi_v0_0_40_kill_jobs_resp_job/0]).

-type slurmrestapi_v0_0_40_kill_jobs_resp_job() ::
  [ {'error', slurmrestapi_v0_0_40_kill_jobs_resp_job_error:slurmrestapi_v0_0_40_kill_jobs_resp_job_error() }
  | {'step_id', binary() }
  | {'job_id', slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val() }
  | {'federation', slurmrestapi_v0_0_40_kill_jobs_resp_job_federation:slurmrestapi_v0_0_40_kill_jobs_resp_job_federation() }
  ].


slurmrestapi_v0_0_40_kill_jobs_resp_job() ->
    slurmrestapi_v0_0_40_kill_jobs_resp_job([]).

slurmrestapi_v0_0_40_kill_jobs_resp_job(Fields) ->
  Default = [ {'error', slurmrestapi_v0_0_40_kill_jobs_resp_job_error:slurmrestapi_v0_0_40_kill_jobs_resp_job_error() }
            , {'step_id', binary() }
            , {'job_id', slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val() }
            , {'federation', slurmrestapi_v0_0_40_kill_jobs_resp_job_federation:slurmrestapi_v0_0_40_kill_jobs_resp_job_federation() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

