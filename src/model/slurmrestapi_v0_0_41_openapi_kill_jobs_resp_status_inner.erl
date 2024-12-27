-module(slurmrestapi_v0_0_41_openapi_kill_jobs_resp_status_inner).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_kill_jobs_resp_status_inner/0]).

-export([slurmrestapi_v0_0_41_openapi_kill_jobs_resp_status_inner/1]).

-export_type([slurmrestapi_v0_0_41_openapi_kill_jobs_resp_status_inner/0]).

-type slurmrestapi_v0_0_41_openapi_kill_jobs_resp_status_inner() ::
  [ {'error', slurmrestapi_v0_0_40_kill_jobs_resp_job_error:slurmrestapi_v0_0_40_kill_jobs_resp_job_error() }
  | {'step_id', binary() }
  | {'job_id', slurmrestapi_v0_0_41_openapi_kill_jobs_resp_status_inner_job_id:slurmrestapi_v0_0_41_openapi_kill_jobs_resp_status_inner_job_id() }
  | {'federation', slurmrestapi_v0_0_40_kill_jobs_resp_job_federation:slurmrestapi_v0_0_40_kill_jobs_resp_job_federation() }
  ].


slurmrestapi_v0_0_41_openapi_kill_jobs_resp_status_inner() ->
    slurmrestapi_v0_0_41_openapi_kill_jobs_resp_status_inner([]).

slurmrestapi_v0_0_41_openapi_kill_jobs_resp_status_inner(Fields) ->
  Default = [ {'error', slurmrestapi_v0_0_40_kill_jobs_resp_job_error:slurmrestapi_v0_0_40_kill_jobs_resp_job_error() }
            , {'step_id', binary() }
            , {'job_id', slurmrestapi_v0_0_41_openapi_kill_jobs_resp_status_inner_job_id:slurmrestapi_v0_0_41_openapi_kill_jobs_resp_status_inner_job_id() }
            , {'federation', slurmrestapi_v0_0_40_kill_jobs_resp_job_federation:slurmrestapi_v0_0_40_kill_jobs_resp_job_federation() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

