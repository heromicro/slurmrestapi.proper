-module(slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_defaults).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_defaults/0]).

-export([slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_defaults/1]).

-export_type([slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_defaults/0]).

-type slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_defaults() ::
  [ {'memory_per_cpu', integer() }
  | {'partition_memory_per_cpu', slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_defaults_partition_memory_per_cpu:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_defaults_partition_memory_per_cpu() }
  | {'partition_memory_per_node', slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_defaults_partition_memory_per_node:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_defaults_partition_memory_per_node() }
  | {'time', slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_defaults_time:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_defaults_time() }
  | {'job', binary() }
  ].


slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_defaults() ->
    slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_defaults([]).

slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_defaults(Fields) ->
  Default = [ {'memory_per_cpu', integer() }
            , {'partition_memory_per_cpu', slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_defaults_partition_memory_per_cpu:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_defaults_partition_memory_per_cpu() }
            , {'partition_memory_per_node', slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_defaults_partition_memory_per_node:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_defaults_partition_memory_per_node() }
            , {'time', slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_defaults_time:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_defaults_time() }
            , {'job', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

