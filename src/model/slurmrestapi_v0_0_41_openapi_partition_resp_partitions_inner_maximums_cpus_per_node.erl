-module(slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_cpus_per_node).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_cpus_per_node/0]).

-export([slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_cpus_per_node/1]).

-export_type([slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_cpus_per_node/0]).

-type slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_cpus_per_node() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_cpus_per_node() ->
    slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_cpus_per_node([]).

slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_cpus_per_node(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

