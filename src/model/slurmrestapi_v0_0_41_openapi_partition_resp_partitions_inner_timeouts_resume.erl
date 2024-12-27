-module(slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts_resume).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts_resume/0]).

-export([slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts_resume/1]).

-export_type([slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts_resume/0]).

-type slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts_resume() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts_resume() ->
    slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts_resume([]).

slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts_resume(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

