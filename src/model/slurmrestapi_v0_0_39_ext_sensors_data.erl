-module(slurmrestapi_v0_0_39_ext_sensors_data).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_ext_sensors_data/0]).

-export([slurmrestapi_v0_0_39_ext_sensors_data/1]).

-export_type([slurmrestapi_v0_0_39_ext_sensors_data/0]).

-type slurmrestapi_v0_0_39_ext_sensors_data() ::
  [ {'consumed_energy', slurmrestapi_v0_0_39_uint64_no_val:slurmrestapi_v0_0_39_uint64_no_val() }
  | {'temperature', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
  | {'energy_update_time', integer() }
  | {'current_watts', integer() }
  ].


slurmrestapi_v0_0_39_ext_sensors_data() ->
    slurmrestapi_v0_0_39_ext_sensors_data([]).

slurmrestapi_v0_0_39_ext_sensors_data(Fields) ->
  Default = [ {'consumed_energy', slurmrestapi_v0_0_39_uint64_no_val:slurmrestapi_v0_0_39_uint64_no_val() }
            , {'temperature', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
            , {'energy_update_time', integer() }
            , {'current_watts', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

