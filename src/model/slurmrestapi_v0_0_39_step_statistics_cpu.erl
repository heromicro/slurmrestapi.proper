-module(slurmrestapi_v0_0_39_step_statistics_cpu).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_step_statistics_cpu/0]).

-export([slurmrestapi_v0_0_39_step_statistics_cpu/1]).

-export_type([slurmrestapi_v0_0_39_step_statistics_cpu/0]).

-type slurmrestapi_v0_0_39_step_statistics_cpu() ::
  [ {'actual_frequency', integer() }
  ].


slurmrestapi_v0_0_39_step_statistics_cpu() ->
    slurmrestapi_v0_0_39_step_statistics_cpu([]).

slurmrestapi_v0_0_39_step_statistics_cpu(Fields) ->
  Default = [ {'actual_frequency', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

