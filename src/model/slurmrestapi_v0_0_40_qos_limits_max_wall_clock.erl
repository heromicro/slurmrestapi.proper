-module(slurmrestapi_v0_0_40_qos_limits_max_wall_clock).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_qos_limits_max_wall_clock/0]).

-export([slurmrestapi_v0_0_40_qos_limits_max_wall_clock/1]).

-export_type([slurmrestapi_v0_0_40_qos_limits_max_wall_clock/0]).

-type slurmrestapi_v0_0_40_qos_limits_max_wall_clock() ::
  [ {'per', slurmrestapi_v0_0_40_qos_limits_max_wall_clock_per:slurmrestapi_v0_0_40_qos_limits_max_wall_clock_per() }
  ].


slurmrestapi_v0_0_40_qos_limits_max_wall_clock() ->
    slurmrestapi_v0_0_40_qos_limits_max_wall_clock([]).

slurmrestapi_v0_0_40_qos_limits_max_wall_clock(Fields) ->
  Default = [ {'per', slurmrestapi_v0_0_40_qos_limits_max_wall_clock_per:slurmrestapi_v0_0_40_qos_limits_max_wall_clock_per() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

