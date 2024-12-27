-module(slurmrestapi_v0_0_40_kill_jobs_resp_job_error).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_kill_jobs_resp_job_error/0]).

-export([slurmrestapi_v0_0_40_kill_jobs_resp_job_error/1]).

-export_type([slurmrestapi_v0_0_40_kill_jobs_resp_job_error/0]).

-type slurmrestapi_v0_0_40_kill_jobs_resp_job_error() ::
  [ {'string', binary() }
  | {'code', integer() }
  | {'message', binary() }
  ].


slurmrestapi_v0_0_40_kill_jobs_resp_job_error() ->
    slurmrestapi_v0_0_40_kill_jobs_resp_job_error([]).

slurmrestapi_v0_0_40_kill_jobs_resp_job_error(Fields) ->
  Default = [ {'string', binary() }
            , {'code', integer() }
            , {'message', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

