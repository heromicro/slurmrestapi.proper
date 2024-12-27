-module(slurmrestapi_v0_0_41_openapi_ping_array_resp_pings_inner).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_ping_array_resp_pings_inner/0]).

-export([slurmrestapi_v0_0_41_openapi_ping_array_resp_pings_inner/1]).

-export_type([slurmrestapi_v0_0_41_openapi_ping_array_resp_pings_inner/0]).

-type slurmrestapi_v0_0_41_openapi_ping_array_resp_pings_inner() ::
  [ {'hostname', binary() }
  | {'pinged', binary() }
  | {'latency', integer() }
  | {'mode', binary() }
  ].


slurmrestapi_v0_0_41_openapi_ping_array_resp_pings_inner() ->
    slurmrestapi_v0_0_41_openapi_ping_array_resp_pings_inner([]).

slurmrestapi_v0_0_41_openapi_ping_array_resp_pings_inner(Fields) ->
  Default = [ {'hostname', binary() }
            , {'pinged', binary() }
            , {'latency', integer() }
            , {'mode', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

