-module(slurmrestapi_v0_0_39_partition_info_priority).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_partition_info_priority/0]).

-export([slurmrestapi_v0_0_39_partition_info_priority/1]).

-export_type([slurmrestapi_v0_0_39_partition_info_priority/0]).

-type slurmrestapi_v0_0_39_partition_info_priority() ::
  [ {'job_factor', integer() }
  | {'tier', integer() }
  ].


slurmrestapi_v0_0_39_partition_info_priority() ->
    slurmrestapi_v0_0_39_partition_info_priority([]).

slurmrestapi_v0_0_39_partition_info_priority(Fields) ->
  Default = [ {'job_factor', integer() }
            , {'tier', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

