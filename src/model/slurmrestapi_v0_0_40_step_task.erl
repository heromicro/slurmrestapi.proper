-module(slurmrestapi_v0_0_40_step_task).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_step_task/0]).

-export([slurmrestapi_v0_0_40_step_task/1]).

-export_type([slurmrestapi_v0_0_40_step_task/0]).

-type slurmrestapi_v0_0_40_step_task() ::
  [ {'distribution', binary() }
  ].


slurmrestapi_v0_0_40_step_task() ->
    slurmrestapi_v0_0_40_step_task([]).

slurmrestapi_v0_0_40_step_task(Fields) ->
  Default = [ {'distribution', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

