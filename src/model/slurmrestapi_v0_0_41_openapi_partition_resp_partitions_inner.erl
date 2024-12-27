-module(slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner/0]).

-export([slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner/1]).

-export_type([slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner/0]).

-type slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner() ::
  [ {'nodes', slurmrestapi_v0_0_40_partition_info_nodes:slurmrestapi_v0_0_40_partition_info_nodes() }
  | {'accounts', slurmrestapi_v0_0_40_partition_info_accounts:slurmrestapi_v0_0_40_partition_info_accounts() }
  | {'groups', slurmrestapi_v0_0_40_partition_info_groups:slurmrestapi_v0_0_40_partition_info_groups() }
  | {'qos', slurmrestapi_v0_0_40_partition_info_qos:slurmrestapi_v0_0_40_partition_info_qos() }
  | {'alternate', binary() }
  | {'tres', slurmrestapi_v0_0_40_partition_info_tres:slurmrestapi_v0_0_40_partition_info_tres() }
  | {'cluster', binary() }
  | {'select_type', list(binary()) }
  | {'cpus', slurmrestapi_v0_0_40_partition_info_cpus:slurmrestapi_v0_0_40_partition_info_cpus() }
  | {'defaults', slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_defaults:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_defaults() }
  | {'grace_time', integer() }
  | {'maximums', slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums() }
  | {'minimums', slurmrestapi_v0_0_40_partition_info_minimums:slurmrestapi_v0_0_40_partition_info_minimums() }
  | {'name', binary() }
  | {'node_sets', binary() }
  | {'priority', slurmrestapi_v0_0_40_partition_info_priority:slurmrestapi_v0_0_40_partition_info_priority() }
  | {'timeouts', slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts() }
  | {'partition', slurmrestapi_v0_0_40_partition_info_partition:slurmrestapi_v0_0_40_partition_info_partition() }
  | {'suspend_time', slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_suspend_time:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_suspend_time() }
  ].


slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner() ->
    slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner([]).

slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner(Fields) ->
  Default = [ {'nodes', slurmrestapi_v0_0_40_partition_info_nodes:slurmrestapi_v0_0_40_partition_info_nodes() }
            , {'accounts', slurmrestapi_v0_0_40_partition_info_accounts:slurmrestapi_v0_0_40_partition_info_accounts() }
            , {'groups', slurmrestapi_v0_0_40_partition_info_groups:slurmrestapi_v0_0_40_partition_info_groups() }
            , {'qos', slurmrestapi_v0_0_40_partition_info_qos:slurmrestapi_v0_0_40_partition_info_qos() }
            , {'alternate', binary() }
            , {'tres', slurmrestapi_v0_0_40_partition_info_tres:slurmrestapi_v0_0_40_partition_info_tres() }
            , {'cluster', binary() }
            , {'select_type', list(binary()) }
            , {'cpus', slurmrestapi_v0_0_40_partition_info_cpus:slurmrestapi_v0_0_40_partition_info_cpus() }
            , {'defaults', slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_defaults:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_defaults() }
            , {'grace_time', integer() }
            , {'maximums', slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums() }
            , {'minimums', slurmrestapi_v0_0_40_partition_info_minimums:slurmrestapi_v0_0_40_partition_info_minimums() }
            , {'name', binary() }
            , {'node_sets', binary() }
            , {'priority', slurmrestapi_v0_0_40_partition_info_priority:slurmrestapi_v0_0_40_partition_info_priority() }
            , {'timeouts', slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts() }
            , {'partition', slurmrestapi_v0_0_40_partition_info_partition:slurmrestapi_v0_0_40_partition_info_partition() }
            , {'suspend_time', slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_suspend_time:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_suspend_time() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

