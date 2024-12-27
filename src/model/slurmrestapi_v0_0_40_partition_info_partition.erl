-module(slurmrestapi_v0_0_40_partition_info_partition).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_partition_info_partition/0]).

-export([slurmrestapi_v0_0_40_partition_info_partition/1]).

-export_type([slurmrestapi_v0_0_40_partition_info_partition/0]).

-type slurmrestapi_v0_0_40_partition_info_partition() ::
  [ {'state', list(binary()) }
  ].


slurmrestapi_v0_0_40_partition_info_partition() ->
    slurmrestapi_v0_0_40_partition_info_partition([]).

slurmrestapi_v0_0_40_partition_info_partition(Fields) ->
  Default = [ {'state', list(binary()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

