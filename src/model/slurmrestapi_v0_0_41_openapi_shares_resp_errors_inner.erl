-module(slurmrestapi_v0_0_41_openapi_shares_resp_errors_inner).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_shares_resp_errors_inner/0]).

-export([slurmrestapi_v0_0_41_openapi_shares_resp_errors_inner/1]).

-export_type([slurmrestapi_v0_0_41_openapi_shares_resp_errors_inner/0]).

-type slurmrestapi_v0_0_41_openapi_shares_resp_errors_inner() ::
  [ {'description', binary() }
  | {'error_number', integer() }
  | {'error', binary() }
  | {'source', binary() }
  ].


slurmrestapi_v0_0_41_openapi_shares_resp_errors_inner() ->
    slurmrestapi_v0_0_41_openapi_shares_resp_errors_inner([]).

slurmrestapi_v0_0_41_openapi_shares_resp_errors_inner(Fields) ->
  Default = [ {'description', binary() }
            , {'error_number', integer() }
            , {'error', binary() }
            , {'source', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

