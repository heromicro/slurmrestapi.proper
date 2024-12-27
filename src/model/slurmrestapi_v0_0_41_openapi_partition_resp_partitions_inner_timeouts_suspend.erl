-module(slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts_suspend).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts_suspend/0]).

-export([slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts_suspend/1]).

-export_type([slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts_suspend/0]).

-type slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts_suspend() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts_suspend() ->
    slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts_suspend([]).

slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts_suspend(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

