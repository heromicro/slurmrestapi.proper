-module(slurmrestapi_v0_0_40_openapi_meta_client).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_openapi_meta_client/0]).

-export([slurmrestapi_v0_0_40_openapi_meta_client/1]).

-export_type([slurmrestapi_v0_0_40_openapi_meta_client/0]).

-type slurmrestapi_v0_0_40_openapi_meta_client() ::
  [ {'source', binary() }
  | {'user', binary() }
  | {'group', binary() }
  ].


slurmrestapi_v0_0_40_openapi_meta_client() ->
    slurmrestapi_v0_0_40_openapi_meta_client([]).

slurmrestapi_v0_0_40_openapi_meta_client(Fields) ->
  Default = [ {'source', binary() }
            , {'user', binary() }
            , {'group', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

