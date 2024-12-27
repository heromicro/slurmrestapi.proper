-module(slurmrestapi_v0_0_41_openapi_shares_resp_warnings_inner).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_shares_resp_warnings_inner/0]).

-export([slurmrestapi_v0_0_41_openapi_shares_resp_warnings_inner/1]).

-export_type([slurmrestapi_v0_0_41_openapi_shares_resp_warnings_inner/0]).

-type slurmrestapi_v0_0_41_openapi_shares_resp_warnings_inner() ::
  [ {'description', binary() }
  | {'source', binary() }
  ].


slurmrestapi_v0_0_41_openapi_shares_resp_warnings_inner() ->
    slurmrestapi_v0_0_41_openapi_shares_resp_warnings_inner([]).

slurmrestapi_v0_0_41_openapi_shares_resp_warnings_inner(Fields) ->
  Default = [ {'description', binary() }
            , {'source', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

