-module(slurmrestapi_v0_0_40_openapi_ping_array_resp).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_openapi_ping_array_resp/0]).

-export([slurmrestapi_v0_0_40_openapi_ping_array_resp/1]).

-export_type([slurmrestapi_v0_0_40_openapi_ping_array_resp/0]).

-type slurmrestapi_v0_0_40_openapi_ping_array_resp() ::
  [ {'pings', list(slurmrestapi_v0_0_40_controller_ping:slurmrestapi_v0_0_40_controller_ping()) }
  | {'meta', slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta() }
  | {'errors', list(slurmrestapi_v0_0_40_openapi_error:slurmrestapi_v0_0_40_openapi_error()) }
  | {'warnings', list(slurmrestapi_v0_0_40_openapi_warning:slurmrestapi_v0_0_40_openapi_warning()) }
  ].


slurmrestapi_v0_0_40_openapi_ping_array_resp() ->
    slurmrestapi_v0_0_40_openapi_ping_array_resp([]).

slurmrestapi_v0_0_40_openapi_ping_array_resp(Fields) ->
  Default = [ {'pings', list(slurmrestapi_v0_0_40_controller_ping:slurmrestapi_v0_0_40_controller_ping()) }
            , {'meta', slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta() }
            , {'errors', list(slurmrestapi_v0_0_40_openapi_error:slurmrestapi_v0_0_40_openapi_error()) }
            , {'warnings', list(slurmrestapi_v0_0_40_openapi_warning:slurmrestapi_v0_0_40_openapi_warning()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

