-module(slurmrestapi_v0_0_40_openapi_warning).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_openapi_warning/0]).

-export([slurmrestapi_v0_0_40_openapi_warning/1]).

-export_type([slurmrestapi_v0_0_40_openapi_warning/0]).

-type slurmrestapi_v0_0_40_openapi_warning() ::
  [ {'description', binary() }
  | {'source', binary() }
  ].


slurmrestapi_v0_0_40_openapi_warning() ->
    slurmrestapi_v0_0_40_openapi_warning([]).

slurmrestapi_v0_0_40_openapi_warning(Fields) ->
  Default = [ {'description', binary() }
            , {'source', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

