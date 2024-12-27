-module(slurmrestapi_v0_0_39_step_time).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_step_time/0]).

-export([slurmrestapi_v0_0_39_step_time/1]).

-export_type([slurmrestapi_v0_0_39_step_time/0]).

-type slurmrestapi_v0_0_39_step_time() ::
  [ {'user', slurmrestapi_v0_0_39_step_time_user:slurmrestapi_v0_0_39_step_time_user() }
  ].


slurmrestapi_v0_0_39_step_time() ->
    slurmrestapi_v0_0_39_step_time([]).

slurmrestapi_v0_0_39_step_time(Fields) ->
  Default = [ {'user', slurmrestapi_v0_0_39_step_time_user:slurmrestapi_v0_0_39_step_time_user() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

