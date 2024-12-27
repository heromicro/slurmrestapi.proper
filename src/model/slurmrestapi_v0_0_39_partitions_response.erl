-module(slurmrestapi_v0_0_39_partitions_response).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_partitions_response/0]).

-export([slurmrestapi_v0_0_39_partitions_response/1]).

-export_type([slurmrestapi_v0_0_39_partitions_response/0]).

-type slurmrestapi_v0_0_39_partitions_response() ::
  [ {'meta', slurmrestapi_v0_0_39_meta:slurmrestapi_v0_0_39_meta() }
  | {'errors', list(slurmrestapi_v0_0_39_error:slurmrestapi_v0_0_39_error()) }
  | {'warnings', list(slurmrestapi_v0_0_39_warning:slurmrestapi_v0_0_39_warning()) }
  | {'partitions', list(slurmrestapi_v0_0_39_partition_info:slurmrestapi_v0_0_39_partition_info()) }
  ].


slurmrestapi_v0_0_39_partitions_response() ->
    slurmrestapi_v0_0_39_partitions_response([]).

slurmrestapi_v0_0_39_partitions_response(Fields) ->
  Default = [ {'meta', slurmrestapi_v0_0_39_meta:slurmrestapi_v0_0_39_meta() }
            , {'errors', list(slurmrestapi_v0_0_39_error:slurmrestapi_v0_0_39_error()) }
            , {'warnings', list(slurmrestapi_v0_0_39_warning:slurmrestapi_v0_0_39_warning()) }
            , {'partitions', list(slurmrestapi_v0_0_39_partition_info:slurmrestapi_v0_0_39_partition_info()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

