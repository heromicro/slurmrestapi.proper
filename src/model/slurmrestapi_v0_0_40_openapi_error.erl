-module(slurmrestapi_v0_0_40_openapi_error).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_openapi_error/0]).

-export([slurmrestapi_v0_0_40_openapi_error/1]).

-export_type([slurmrestapi_v0_0_40_openapi_error/0]).

-type slurmrestapi_v0_0_40_openapi_error() ::
  [ {'description', binary() }
  | {'error_number', integer() }
  | {'error', binary() }
  | {'source', binary() }
  ].


slurmrestapi_v0_0_40_openapi_error() ->
    slurmrestapi_v0_0_40_openapi_error([]).

slurmrestapi_v0_0_40_openapi_error(Fields) ->
  Default = [ {'description', binary() }
            , {'error_number', integer() }
            , {'error', binary() }
            , {'source', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

