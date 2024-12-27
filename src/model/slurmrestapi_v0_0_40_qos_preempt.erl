-module(slurmrestapi_v0_0_40_qos_preempt).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_qos_preempt/0]).

-export([slurmrestapi_v0_0_40_qos_preempt/1]).

-export_type([slurmrestapi_v0_0_40_qos_preempt/0]).

-type slurmrestapi_v0_0_40_qos_preempt() ::
  [ {'list', list(binary()) }
  | {'mode', list(binary()) }
  | {'exempt_time', slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val() }
  ].


slurmrestapi_v0_0_40_qos_preempt() ->
    slurmrestapi_v0_0_40_qos_preempt([]).

slurmrestapi_v0_0_40_qos_preempt(Fields) ->
  Default = [ {'list', list(binary()) }
            , {'mode', list(binary()) }
            , {'exempt_time', slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

