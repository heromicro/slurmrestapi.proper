-module(slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums/0]).

-export([slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums/1]).

-export_type([slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums/0]).

-type slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums() ::
  [ {'cpus_per_node', slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_cpus_per_node:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_cpus_per_node() }
  | {'cpus_per_socket', slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_cpus_per_socket:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_cpus_per_socket() }
  | {'memory_per_cpu', integer() }
  | {'partition_memory_per_cpu', slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_partition_memory_per_cpu:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_partition_memory_per_cpu() }
  | {'partition_memory_per_node', slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_partition_memory_per_node:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_partition_memory_per_node() }
  | {'nodes', slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_nodes:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_nodes() }
  | {'shares', integer() }
  | {'oversubscribe', slurmrestapi_v0_0_40_partition_info_maximums_oversubscribe:slurmrestapi_v0_0_40_partition_info_maximums_oversubscribe() }
  | {'time', slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_time:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_time() }
  | {'over_time_limit', slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_over_time_limit:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_over_time_limit() }
  ].


slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums() ->
    slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums([]).

slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums(Fields) ->
  Default = [ {'cpus_per_node', slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_cpus_per_node:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_cpus_per_node() }
            , {'cpus_per_socket', slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_cpus_per_socket:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_cpus_per_socket() }
            , {'memory_per_cpu', integer() }
            , {'partition_memory_per_cpu', slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_partition_memory_per_cpu:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_partition_memory_per_cpu() }
            , {'partition_memory_per_node', slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_partition_memory_per_node:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_partition_memory_per_node() }
            , {'nodes', slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_nodes:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_nodes() }
            , {'shares', integer() }
            , {'oversubscribe', slurmrestapi_v0_0_40_partition_info_maximums_oversubscribe:slurmrestapi_v0_0_40_partition_info_maximums_oversubscribe() }
            , {'time', slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_time:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_time() }
            , {'over_time_limit', slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_over_time_limit:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_over_time_limit() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

