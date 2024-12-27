-module(slurmrestapi_v0_0_39_step_tasks).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_step_tasks/0]).

-export([slurmrestapi_v0_0_39_step_tasks/1]).

-export_type([slurmrestapi_v0_0_39_step_tasks/0]).

-type slurmrestapi_v0_0_39_step_tasks() ::
  [ {'count', integer() }
  ].


slurmrestapi_v0_0_39_step_tasks() ->
    slurmrestapi_v0_0_39_step_tasks([]).

slurmrestapi_v0_0_39_step_tasks(Fields) ->
  Default = [ {'count', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

