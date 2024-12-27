-module(slurmrestapi_v0_0_39_partition_info_nodes).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_partition_info_nodes/0]).

-export([slurmrestapi_v0_0_39_partition_info_nodes/1]).

-export_type([slurmrestapi_v0_0_39_partition_info_nodes/0]).

-type slurmrestapi_v0_0_39_partition_info_nodes() ::
  [ {'total', integer() }
  ].


slurmrestapi_v0_0_39_partition_info_nodes() ->
    slurmrestapi_v0_0_39_partition_info_nodes([]).

slurmrestapi_v0_0_39_partition_info_nodes(Fields) ->
  Default = [ {'total', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

