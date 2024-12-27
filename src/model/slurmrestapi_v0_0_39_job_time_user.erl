-module(slurmrestapi_v0_0_39_job_time_user).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_job_time_user/0]).

-export([slurmrestapi_v0_0_39_job_time_user/1]).

-export_type([slurmrestapi_v0_0_39_job_time_user/0]).

-type slurmrestapi_v0_0_39_job_time_user() ::
  [ {'microseconds', integer() }
  ].


slurmrestapi_v0_0_39_job_time_user() ->
    slurmrestapi_v0_0_39_job_time_user([]).

slurmrestapi_v0_0_39_job_time_user(Fields) ->
  Default = [ {'microseconds', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

