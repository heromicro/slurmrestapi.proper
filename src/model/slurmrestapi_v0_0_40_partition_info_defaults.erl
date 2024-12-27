-module(slurmrestapi_v0_0_40_partition_info_defaults).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_partition_info_defaults/0]).

-export([slurmrestapi_v0_0_40_partition_info_defaults/1]).

-export_type([slurmrestapi_v0_0_40_partition_info_defaults/0]).

-type slurmrestapi_v0_0_40_partition_info_defaults() ::
  [ {'memory_per_cpu', integer() }
  | {'partition_memory_per_cpu', slurmrestapi_v0_0_40_uint64_no_val:slurmrestapi_v0_0_40_uint64_no_val() }
  | {'partition_memory_per_node', slurmrestapi_v0_0_40_uint64_no_val:slurmrestapi_v0_0_40_uint64_no_val() }
  | {'time', slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val() }
  | {'job', binary() }
  ].


slurmrestapi_v0_0_40_partition_info_defaults() ->
    slurmrestapi_v0_0_40_partition_info_defaults([]).

slurmrestapi_v0_0_40_partition_info_defaults(Fields) ->
  Default = [ {'memory_per_cpu', integer() }
            , {'partition_memory_per_cpu', slurmrestapi_v0_0_40_uint64_no_val:slurmrestapi_v0_0_40_uint64_no_val() }
            , {'partition_memory_per_node', slurmrestapi_v0_0_40_uint64_no_val:slurmrestapi_v0_0_40_uint64_no_val() }
            , {'time', slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val() }
            , {'job', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

