-module(slurmrestapi_v0_0_39_step_cpu).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_step_cpu/0]).

-export([slurmrestapi_v0_0_39_step_cpu/1]).

-export_type([slurmrestapi_v0_0_39_step_cpu/0]).

-type slurmrestapi_v0_0_39_step_cpu() ::
  [ {'governor', binary() }
  ].


slurmrestapi_v0_0_39_step_cpu() ->
    slurmrestapi_v0_0_39_step_cpu([]).

slurmrestapi_v0_0_39_step_cpu(Fields) ->
  Default = [ {'governor', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

