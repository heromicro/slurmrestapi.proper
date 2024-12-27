-module(slurmrestapi_v0_0_39_job_time).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_job_time/0]).

-export([slurmrestapi_v0_0_39_job_time/1]).

-export_type([slurmrestapi_v0_0_39_job_time/0]).

-type slurmrestapi_v0_0_39_job_time() ::
  [ {'user', slurmrestapi_v0_0_39_job_time_user:slurmrestapi_v0_0_39_job_time_user() }
  ].


slurmrestapi_v0_0_39_job_time() ->
    slurmrestapi_v0_0_39_job_time([]).

slurmrestapi_v0_0_39_job_time(Fields) ->
  Default = [ {'user', slurmrestapi_v0_0_39_job_time_user:slurmrestapi_v0_0_39_job_time_user() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

