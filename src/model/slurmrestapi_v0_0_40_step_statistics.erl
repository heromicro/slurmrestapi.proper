-module(slurmrestapi_v0_0_40_step_statistics).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_step_statistics/0]).

-export([slurmrestapi_v0_0_40_step_statistics/1]).

-export_type([slurmrestapi_v0_0_40_step_statistics/0]).

-type slurmrestapi_v0_0_40_step_statistics() ::
  [ {'CPU', slurmrestapi_v0_0_40_step_statistics_cpu:slurmrestapi_v0_0_40_step_statistics_cpu() }
  | {'energy', slurmrestapi_v0_0_40_step_statistics_energy:slurmrestapi_v0_0_40_step_statistics_energy() }
  ].


slurmrestapi_v0_0_40_step_statistics() ->
    slurmrestapi_v0_0_40_step_statistics([]).

slurmrestapi_v0_0_40_step_statistics(Fields) ->
  Default = [ {'CPU', slurmrestapi_v0_0_40_step_statistics_cpu:slurmrestapi_v0_0_40_step_statistics_cpu() }
            , {'energy', slurmrestapi_v0_0_40_step_statistics_energy:slurmrestapi_v0_0_40_step_statistics_energy() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

