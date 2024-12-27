-module(slurmrestapi_v0_0_39_pings).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_pings/0]).

-export([slurmrestapi_v0_0_39_pings/1]).

-export_type([slurmrestapi_v0_0_39_pings/0]).

-type slurmrestapi_v0_0_39_pings() ::
  [ {'meta', slurmrestapi_v0_0_39_meta:slurmrestapi_v0_0_39_meta() }
  | {'errors', list(slurmrestapi_v0_0_39_error:slurmrestapi_v0_0_39_error()) }
  | {'warnings', list(slurmrestapi_v0_0_39_warning:slurmrestapi_v0_0_39_warning()) }
  | {'pings', list(slurmrestapi_v0_0_39_controller_ping:slurmrestapi_v0_0_39_controller_ping()) }
  ].


slurmrestapi_v0_0_39_pings() ->
    slurmrestapi_v0_0_39_pings([]).

slurmrestapi_v0_0_39_pings(Fields) ->
  Default = [ {'meta', slurmrestapi_v0_0_39_meta:slurmrestapi_v0_0_39_meta() }
            , {'errors', list(slurmrestapi_v0_0_39_error:slurmrestapi_v0_0_39_error()) }
            , {'warnings', list(slurmrestapi_v0_0_39_warning:slurmrestapi_v0_0_39_warning()) }
            , {'pings', list(slurmrestapi_v0_0_39_controller_ping:slurmrestapi_v0_0_39_controller_ping()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

