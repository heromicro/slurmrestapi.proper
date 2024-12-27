-module(slurmrestapi_v0_0_40_partition_info_maximums_oversubscribe).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_partition_info_maximums_oversubscribe/0]).

-export([slurmrestapi_v0_0_40_partition_info_maximums_oversubscribe/1]).

-export_type([slurmrestapi_v0_0_40_partition_info_maximums_oversubscribe/0]).

-type slurmrestapi_v0_0_40_partition_info_maximums_oversubscribe() ::
  [ {'jobs', integer() }
  | {'flags', list(binary()) }
  ].


slurmrestapi_v0_0_40_partition_info_maximums_oversubscribe() ->
    slurmrestapi_v0_0_40_partition_info_maximums_oversubscribe([]).

slurmrestapi_v0_0_40_partition_info_maximums_oversubscribe(Fields) ->
  Default = [ {'jobs', integer() }
            , {'flags', list(binary()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

