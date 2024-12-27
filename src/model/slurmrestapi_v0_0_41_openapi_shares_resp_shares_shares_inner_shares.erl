-module(slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_shares).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_shares/0]).

-export([slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_shares/1]).

-export_type([slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_shares/0]).

-type slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_shares() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_shares() ->
    slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_shares([]).

slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_shares(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

