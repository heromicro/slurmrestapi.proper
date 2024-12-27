-module(slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_usage_normalized).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_usage_normalized/0]).

-export([slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_usage_normalized/1]).

-export_type([slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_usage_normalized/0]).

-type slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_usage_normalized() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', float() }
  ].


slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_usage_normalized() ->
    slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_usage_normalized([]).

slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_usage_normalized(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', float() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

