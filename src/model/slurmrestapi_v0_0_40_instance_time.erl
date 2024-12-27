-module(slurmrestapi_v0_0_40_instance_time).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_instance_time/0]).

-export([slurmrestapi_v0_0_40_instance_time/1]).

-export_type([slurmrestapi_v0_0_40_instance_time/0]).

-type slurmrestapi_v0_0_40_instance_time() ::
  [ {'time_end', integer() }
  | {'time_start', integer() }
  ].


slurmrestapi_v0_0_40_instance_time() ->
    slurmrestapi_v0_0_40_instance_time([]).

slurmrestapi_v0_0_40_instance_time(Fields) ->
  Default = [ {'time_end', integer() }
            , {'time_start', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

