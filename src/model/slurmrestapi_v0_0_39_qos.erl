-module(slurmrestapi_v0_0_39_qos).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_qos/0]).

-export([slurmrestapi_v0_0_39_qos/1]).

-export_type([slurmrestapi_v0_0_39_qos/0]).

-type slurmrestapi_v0_0_39_qos() ::
  [ {'description', binary() }
  | {'flags', list(binary()) }
  | {'id', integer() }
  | {'limits', slurmrestapi_v0_0_39_qos_limits:slurmrestapi_v0_0_39_qos_limits() }
  | {'name', binary() }
  | {'preempt', slurmrestapi_v0_0_39_qos_preempt:slurmrestapi_v0_0_39_qos_preempt() }
  | {'priority', integer() }
  | {'usage_factor', slurmrestapi_v0_0_39_float64_no_val:slurmrestapi_v0_0_39_float64_no_val() }
  | {'usage_threshold', slurmrestapi_v0_0_39_float64_no_val:slurmrestapi_v0_0_39_float64_no_val() }
  ].


slurmrestapi_v0_0_39_qos() ->
    slurmrestapi_v0_0_39_qos([]).

slurmrestapi_v0_0_39_qos(Fields) ->
  Default = [ {'description', binary() }
            , {'flags', list(binary()) }
            , {'id', integer() }
            , {'limits', slurmrestapi_v0_0_39_qos_limits:slurmrestapi_v0_0_39_qos_limits() }
            , {'name', binary() }
            , {'preempt', slurmrestapi_v0_0_39_qos_preempt:slurmrestapi_v0_0_39_qos_preempt() }
            , {'priority', integer() }
            , {'usage_factor', slurmrestapi_v0_0_39_float64_no_val:slurmrestapi_v0_0_39_float64_no_val() }
            , {'usage_threshold', slurmrestapi_v0_0_39_float64_no_val:slurmrestapi_v0_0_39_float64_no_val() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

