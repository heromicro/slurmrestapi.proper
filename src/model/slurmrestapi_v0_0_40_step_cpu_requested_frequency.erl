-module(slurmrestapi_v0_0_40_step_cpu_requested_frequency).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_step_cpu_requested_frequency/0]).

-export([slurmrestapi_v0_0_40_step_cpu_requested_frequency/1]).

-export_type([slurmrestapi_v0_0_40_step_cpu_requested_frequency/0]).

-type slurmrestapi_v0_0_40_step_cpu_requested_frequency() ::
  [ {'min', slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val() }
  | {'max', slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val() }
  ].


slurmrestapi_v0_0_40_step_cpu_requested_frequency() ->
    slurmrestapi_v0_0_40_step_cpu_requested_frequency([]).

slurmrestapi_v0_0_40_step_cpu_requested_frequency(Fields) ->
  Default = [ {'min', slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val() }
            , {'max', slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

