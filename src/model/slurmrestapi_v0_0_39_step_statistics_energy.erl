-module(slurmrestapi_v0_0_39_step_statistics_energy).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_step_statistics_energy/0]).

-export([slurmrestapi_v0_0_39_step_statistics_energy/1]).

-export_type([slurmrestapi_v0_0_39_step_statistics_energy/0]).

-type slurmrestapi_v0_0_39_step_statistics_energy() ::
  [ {'consumed', slurmrestapi_v0_0_39_uint64_no_val:slurmrestapi_v0_0_39_uint64_no_val() }
  ].


slurmrestapi_v0_0_39_step_statistics_energy() ->
    slurmrestapi_v0_0_39_step_statistics_energy([]).

slurmrestapi_v0_0_39_step_statistics_energy(Fields) ->
  Default = [ {'consumed', slurmrestapi_v0_0_39_uint64_no_val:slurmrestapi_v0_0_39_uint64_no_val() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

