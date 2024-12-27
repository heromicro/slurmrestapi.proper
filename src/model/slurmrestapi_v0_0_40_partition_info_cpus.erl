-module(slurmrestapi_v0_0_40_partition_info_cpus).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_partition_info_cpus/0]).

-export([slurmrestapi_v0_0_40_partition_info_cpus/1]).

-export_type([slurmrestapi_v0_0_40_partition_info_cpus/0]).

-type slurmrestapi_v0_0_40_partition_info_cpus() ::
  [ {'task_binding', integer() }
  | {'total', integer() }
  ].


slurmrestapi_v0_0_40_partition_info_cpus() ->
    slurmrestapi_v0_0_40_partition_info_cpus([]).

slurmrestapi_v0_0_40_partition_info_cpus(Fields) ->
  Default = [ {'task_binding', integer() }
            , {'total', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

