-module(slurmrestapi_v0_0_40_partition_info_groups).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_partition_info_groups/0]).

-export([slurmrestapi_v0_0_40_partition_info_groups/1]).

-export_type([slurmrestapi_v0_0_40_partition_info_groups/0]).

-type slurmrestapi_v0_0_40_partition_info_groups() ::
  [ {'allowed', binary() }
  ].


slurmrestapi_v0_0_40_partition_info_groups() ->
    slurmrestapi_v0_0_40_partition_info_groups([]).

slurmrestapi_v0_0_40_partition_info_groups(Fields) ->
  Default = [ {'allowed', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

