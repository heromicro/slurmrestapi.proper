-module(slurmrestapi_v0_0_39_partition_info_timeouts).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_partition_info_timeouts/0]).

-export([slurmrestapi_v0_0_39_partition_info_timeouts/1]).

-export_type([slurmrestapi_v0_0_39_partition_info_timeouts/0]).

-type slurmrestapi_v0_0_39_partition_info_timeouts() ::
  [ {'suspend', slurmrestapi_v0_0_39_uint16_no_val:slurmrestapi_v0_0_39_uint16_no_val() }
  ].


slurmrestapi_v0_0_39_partition_info_timeouts() ->
    slurmrestapi_v0_0_39_partition_info_timeouts([]).

slurmrestapi_v0_0_39_partition_info_timeouts(Fields) ->
  Default = [ {'suspend', slurmrestapi_v0_0_39_uint16_no_val:slurmrestapi_v0_0_39_uint16_no_val() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

