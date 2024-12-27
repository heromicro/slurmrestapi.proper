-module(slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_usage_inner).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_usage_inner/0]).

-export([slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_usage_inner/1]).

-export_type([slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_usage_inner/0]).

-type slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_usage_inner() ::
  [ {'name', binary() }
  | {'value', integer() }
  ].


slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_usage_inner() ->
    slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_usage_inner([]).

slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_usage_inner(Fields) ->
  Default = [ {'name', binary() }
            , {'value', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

