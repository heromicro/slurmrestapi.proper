-module(slurmrestapi_v0_0_39_partition_info_maximums).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_partition_info_maximums/0]).

-export([slurmrestapi_v0_0_39_partition_info_maximums/1]).

-export_type([slurmrestapi_v0_0_39_partition_info_maximums/0]).

-type slurmrestapi_v0_0_39_partition_info_maximums() ::
  [ {'over_time_limit', slurmrestapi_v0_0_39_uint16_no_val:slurmrestapi_v0_0_39_uint16_no_val() }
  ].


slurmrestapi_v0_0_39_partition_info_maximums() ->
    slurmrestapi_v0_0_39_partition_info_maximums([]).

slurmrestapi_v0_0_39_partition_info_maximums(Fields) ->
  Default = [ {'over_time_limit', slurmrestapi_v0_0_39_uint16_no_val:slurmrestapi_v0_0_39_uint16_no_val() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

