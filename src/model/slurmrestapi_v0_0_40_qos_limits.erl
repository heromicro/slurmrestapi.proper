-module(slurmrestapi_v0_0_40_qos_limits).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_qos_limits/0]).

-export([slurmrestapi_v0_0_40_qos_limits/1]).

-export_type([slurmrestapi_v0_0_40_qos_limits/0]).

-type slurmrestapi_v0_0_40_qos_limits() ::
  [ {'grace_time', integer() }
  | {'max', slurmrestapi_v0_0_40_qos_limits_max:slurmrestapi_v0_0_40_qos_limits_max() }
  | {'factor', slurmrestapi_v0_0_40_float64_no_val:slurmrestapi_v0_0_40_float64_no_val() }
  | {'min', slurmrestapi_v0_0_40_qos_limits_min:slurmrestapi_v0_0_40_qos_limits_min() }
  ].


slurmrestapi_v0_0_40_qos_limits() ->
    slurmrestapi_v0_0_40_qos_limits([]).

slurmrestapi_v0_0_40_qos_limits(Fields) ->
  Default = [ {'grace_time', integer() }
            , {'max', slurmrestapi_v0_0_40_qos_limits_max:slurmrestapi_v0_0_40_qos_limits_max() }
            , {'factor', slurmrestapi_v0_0_40_float64_no_val:slurmrestapi_v0_0_40_float64_no_val() }
            , {'min', slurmrestapi_v0_0_40_qos_limits_min:slurmrestapi_v0_0_40_qos_limits_min() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

