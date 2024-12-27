-module(slurmrestapi_v0_0_39_step_nodes).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_step_nodes/0]).

-export([slurmrestapi_v0_0_39_step_nodes/1]).

-export_type([slurmrestapi_v0_0_39_step_nodes/0]).

-type slurmrestapi_v0_0_39_step_nodes() ::
  [ {'list', list(binary()) }
  ].


slurmrestapi_v0_0_39_step_nodes() ->
    slurmrestapi_v0_0_39_step_nodes([]).

slurmrestapi_v0_0_39_step_nodes(Fields) ->
  Default = [ {'list', list(binary()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

