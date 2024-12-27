-module(slurmrestapi_v0_0_39_partition_info_defaults).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_partition_info_defaults/0]).

-export([slurmrestapi_v0_0_39_partition_info_defaults/1]).

-export_type([slurmrestapi_v0_0_39_partition_info_defaults/0]).

-type slurmrestapi_v0_0_39_partition_info_defaults() ::
  [ {'job', binary() }
  ].


slurmrestapi_v0_0_39_partition_info_defaults() ->
    slurmrestapi_v0_0_39_partition_info_defaults([]).

slurmrestapi_v0_0_39_partition_info_defaults(Fields) ->
  Default = [ {'job', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

