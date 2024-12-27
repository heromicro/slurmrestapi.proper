-module(slurmrestapi_v0_0_39_partition_info_minimums).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_partition_info_minimums/0]).

-export([slurmrestapi_v0_0_39_partition_info_minimums/1]).

-export_type([slurmrestapi_v0_0_39_partition_info_minimums/0]).

-type slurmrestapi_v0_0_39_partition_info_minimums() ::
  [ {'nodes', integer() }
  ].


slurmrestapi_v0_0_39_partition_info_minimums() ->
    slurmrestapi_v0_0_39_partition_info_minimums([]).

slurmrestapi_v0_0_39_partition_info_minimums(Fields) ->
  Default = [ {'nodes', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

