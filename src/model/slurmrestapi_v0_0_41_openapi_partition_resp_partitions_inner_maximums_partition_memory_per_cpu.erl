-module(slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_partition_memory_per_cpu).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_partition_memory_per_cpu/0]).

-export([slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_partition_memory_per_cpu/1]).

-export_type([slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_partition_memory_per_cpu/0]).

-type slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_partition_memory_per_cpu() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_partition_memory_per_cpu() ->
    slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_partition_memory_per_cpu([]).

slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_partition_memory_per_cpu(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

