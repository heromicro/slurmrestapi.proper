-module(slurmrestapi_v0_0_39_step_cpu).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_step_cpu/0]).

-export([slurmrestapi_v0_0_39_step_cpu/1]).

-export_type([slurmrestapi_v0_0_39_step_cpu/0]).

-type slurmrestapi_v0_0_39_step_cpu() ::
  [ {'requested_frequency', slurmrestapi_v0_0_39_step_cpu_requested_frequency:slurmrestapi_v0_0_39_step_cpu_requested_frequency() }
  | {'governor', binary() }
  ].


slurmrestapi_v0_0_39_step_cpu() ->
    slurmrestapi_v0_0_39_step_cpu([]).

slurmrestapi_v0_0_39_step_cpu(Fields) ->
  Default = [ {'requested_frequency', slurmrestapi_v0_0_39_step_cpu_requested_frequency:slurmrestapi_v0_0_39_step_cpu_requested_frequency() }
            , {'governor', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

