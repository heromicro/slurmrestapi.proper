-module(slurmrestapi_v0_0_39_step_time_system).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_step_time_system/0]).

-export([slurmrestapi_v0_0_39_step_time_system/1]).

-export_type([slurmrestapi_v0_0_39_step_time_system/0]).

-type slurmrestapi_v0_0_39_step_time_system() ::
  [ {'seconds', integer() }
  | {'microseconds', integer() }
  ].


slurmrestapi_v0_0_39_step_time_system() ->
    slurmrestapi_v0_0_39_step_time_system([]).

slurmrestapi_v0_0_39_step_time_system(Fields) ->
  Default = [ {'seconds', integer() }
            , {'microseconds', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

