-module(slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_cpus_per_socket).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_cpus_per_socket/0]).

-export([slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_cpus_per_socket/1]).

-export_type([slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_cpus_per_socket/0]).

-type slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_cpus_per_socket() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_cpus_per_socket() ->
    slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_cpus_per_socket([]).

slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_cpus_per_socket(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

