-module(slurmrestapi_v0_0_39_qos_limits_max_wall_clock_per).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_qos_limits_max_wall_clock_per/0]).

-export([slurmrestapi_v0_0_39_qos_limits_max_wall_clock_per/1]).

-export_type([slurmrestapi_v0_0_39_qos_limits_max_wall_clock_per/0]).

-type slurmrestapi_v0_0_39_qos_limits_max_wall_clock_per() ::
  [ {'qos', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
  | {'job', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
  ].


slurmrestapi_v0_0_39_qos_limits_max_wall_clock_per() ->
    slurmrestapi_v0_0_39_qos_limits_max_wall_clock_per([]).

slurmrestapi_v0_0_39_qos_limits_max_wall_clock_per(Fields) ->
  Default = [ {'qos', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
            , {'job', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

