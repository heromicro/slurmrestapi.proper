-module(slurmrestapi_v0_0_40_step_step).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_step_step/0]).

-export([slurmrestapi_v0_0_40_step_step/1]).

-export_type([slurmrestapi_v0_0_40_step_step/0]).

-type slurmrestapi_v0_0_40_step_step() ::
  [ {'id', binary() }
  | {'name', binary() }
  ].


slurmrestapi_v0_0_40_step_step() ->
    slurmrestapi_v0_0_40_step_step([]).

slurmrestapi_v0_0_40_step_step(Fields) ->
  Default = [ {'id', binary() }
            , {'name', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

