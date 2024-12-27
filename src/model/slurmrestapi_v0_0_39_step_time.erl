-module(slurmrestapi_v0_0_39_step_time).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_step_time/0]).

-export([slurmrestapi_v0_0_39_step_time/1]).

-export_type([slurmrestapi_v0_0_39_step_time/0]).

-type slurmrestapi_v0_0_39_step_time() ::
  [ {'elapsed', integer() }
  | {'End_', integer() }
  | {'start', integer() }
  | {'suspended', integer() }
  | {'system', slurmrestapi_v0_0_39_step_time_system:slurmrestapi_v0_0_39_step_time_system() }
  | {'total', slurmrestapi_v0_0_39_step_time_system:slurmrestapi_v0_0_39_step_time_system() }
  | {'user', slurmrestapi_v0_0_39_step_time_system:slurmrestapi_v0_0_39_step_time_system() }
  ].


slurmrestapi_v0_0_39_step_time() ->
    slurmrestapi_v0_0_39_step_time([]).

slurmrestapi_v0_0_39_step_time(Fields) ->
  Default = [ {'elapsed', integer() }
            , {'end', integer() }
            , {'start', integer() }
            , {'suspended', integer() }
            , {'system', slurmrestapi_v0_0_39_step_time_system:slurmrestapi_v0_0_39_step_time_system() }
            , {'total', slurmrestapi_v0_0_39_step_time_system:slurmrestapi_v0_0_39_step_time_system() }
            , {'user', slurmrestapi_v0_0_39_step_time_system:slurmrestapi_v0_0_39_step_time_system() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

