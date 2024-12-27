-module(slurmrestapi_v0_0_40_qos_limits_max_active_jobs).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_qos_limits_max_active_jobs/0]).

-export([slurmrestapi_v0_0_40_qos_limits_max_active_jobs/1]).

-export_type([slurmrestapi_v0_0_40_qos_limits_max_active_jobs/0]).

-type slurmrestapi_v0_0_40_qos_limits_max_active_jobs() ::
  [ {'accruing', slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val() }
  | {'count', slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val() }
  ].


slurmrestapi_v0_0_40_qos_limits_max_active_jobs() ->
    slurmrestapi_v0_0_40_qos_limits_max_active_jobs([]).

slurmrestapi_v0_0_40_qos_limits_max_active_jobs(Fields) ->
  Default = [ {'accruing', slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val() }
            , {'count', slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

