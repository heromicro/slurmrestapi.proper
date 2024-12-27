-module(slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts/0]).

-export([slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts/1]).

-export_type([slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts/0]).

-type slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts() ::
  [ {'resume', slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts_resume:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts_resume() }
  | {'suspend', slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts_suspend:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts_suspend() }
  ].


slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts() ->
    slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts([]).

slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts(Fields) ->
  Default = [ {'resume', slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts_resume:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts_resume() }
            , {'suspend', slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts_suspend:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts_suspend() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

