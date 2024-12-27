-module(slurmrestapi_status).

-include("slurmrestapi.hrl").

-export([slurmrestapi_status/0]).

-export([slurmrestapi_status/1]).

-export_type([slurmrestapi_status/0]).

-type slurmrestapi_status() ::
  [ {'meta', slurmrestapi_v0_0_39_meta:slurmrestapi_v0_0_39_meta() }
  | {'errors', list(slurmrestapi_v0_0_39_error:slurmrestapi_v0_0_39_error()) }
  | {'warnings', list(slurmrestapi_v0_0_39_warning:slurmrestapi_v0_0_39_warning()) }
  ].


slurmrestapi_status() ->
    slurmrestapi_status([]).

slurmrestapi_status(Fields) ->
  Default = [ {'meta', slurmrestapi_v0_0_39_meta:slurmrestapi_v0_0_39_meta() }
            , {'errors', list(slurmrestapi_v0_0_39_error:slurmrestapi_v0_0_39_error()) }
            , {'warnings', list(slurmrestapi_v0_0_39_warning:slurmrestapi_v0_0_39_warning()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

