-module(slurmrestapi_v0_0_40_controller_ping).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_controller_ping/0]).

-export([slurmrestapi_v0_0_40_controller_ping/1]).

-export_type([slurmrestapi_v0_0_40_controller_ping/0]).

-type slurmrestapi_v0_0_40_controller_ping() ::
  [ {'hostname', binary() }
  | {'pinged', binary() }
  | {'latency', integer() }
  | {'mode', binary() }
  ].


slurmrestapi_v0_0_40_controller_ping() ->
    slurmrestapi_v0_0_40_controller_ping([]).

slurmrestapi_v0_0_40_controller_ping(Fields) ->
  Default = [ {'hostname', binary() }
            , {'pinged', binary() }
            , {'latency', integer() }
            , {'mode', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

