-module(slurmrestapi_v0_0_39_partition_info_qos).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_partition_info_qos/0]).

-export([slurmrestapi_v0_0_39_partition_info_qos/1]).

-export_type([slurmrestapi_v0_0_39_partition_info_qos/0]).

-type slurmrestapi_v0_0_39_partition_info_qos() ::
  [ {'allowed', binary() }
  | {'deny', binary() }
  | {'assigned', binary() }
  ].


slurmrestapi_v0_0_39_partition_info_qos() ->
    slurmrestapi_v0_0_39_partition_info_qos([]).

slurmrestapi_v0_0_39_partition_info_qos(Fields) ->
  Default = [ {'allowed', binary() }
            , {'deny', binary() }
            , {'assigned', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

