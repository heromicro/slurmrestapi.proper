-module(slurmrestapi_v0_0_39_power_mgmt_data).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_power_mgmt_data/0]).

-export([slurmrestapi_v0_0_39_power_mgmt_data/1]).

-export_type([slurmrestapi_v0_0_39_power_mgmt_data/0]).

-type slurmrestapi_v0_0_39_power_mgmt_data() ::
  [ {'maximum_watts', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
  | {'current_watts', integer() }
  | {'total_energy', integer() }
  | {'new_maximum_watts', integer() }
  | {'peak_watts', integer() }
  | {'lowest_watts', integer() }
  | {'new_job_time', integer() }
  | {'state', integer() }
  | {'time_start_day', integer() }
  ].


slurmrestapi_v0_0_39_power_mgmt_data() ->
    slurmrestapi_v0_0_39_power_mgmt_data([]).

slurmrestapi_v0_0_39_power_mgmt_data(Fields) ->
  Default = [ {'maximum_watts', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
            , {'current_watts', integer() }
            , {'total_energy', integer() }
            , {'new_maximum_watts', integer() }
            , {'peak_watts', integer() }
            , {'lowest_watts', integer() }
            , {'new_job_time', integer() }
            , {'state', integer() }
            , {'time_start_day', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

