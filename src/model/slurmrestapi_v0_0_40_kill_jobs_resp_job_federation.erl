-module(slurmrestapi_v0_0_40_kill_jobs_resp_job_federation).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_kill_jobs_resp_job_federation/0]).

-export([slurmrestapi_v0_0_40_kill_jobs_resp_job_federation/1]).

-export_type([slurmrestapi_v0_0_40_kill_jobs_resp_job_federation/0]).

-type slurmrestapi_v0_0_40_kill_jobs_resp_job_federation() ::
  [ {'sibling', binary() }
  ].


slurmrestapi_v0_0_40_kill_jobs_resp_job_federation() ->
    slurmrestapi_v0_0_40_kill_jobs_resp_job_federation([]).

slurmrestapi_v0_0_40_kill_jobs_resp_job_federation(Fields) ->
  Default = [ {'sibling', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

