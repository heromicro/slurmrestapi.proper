-module(slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_run_seconds_inner_value).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_run_seconds_inner_value/0]).

-export([slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_run_seconds_inner_value/1]).

-export_type([slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_run_seconds_inner_value/0]).

-type slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_run_seconds_inner_value() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_run_seconds_inner_value() ->
    slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_run_seconds_inner_value([]).

slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_run_seconds_inner_value(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

