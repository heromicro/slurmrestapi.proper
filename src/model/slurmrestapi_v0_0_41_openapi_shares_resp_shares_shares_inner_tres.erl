-module(slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres/0]).

-export([slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres/1]).

-export_type([slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres/0]).

-type slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres() ::
  [ {'run_seconds', list(slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_run_seconds_inner:slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_run_seconds_inner()) }
  | {'group_minutes', list(slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_run_seconds_inner:slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_run_seconds_inner()) }
  | {'usage', list(slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_usage_inner:slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_usage_inner()) }
  ].


slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres() ->
    slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres([]).

slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres(Fields) ->
  Default = [ {'run_seconds', list(slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_run_seconds_inner:slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_run_seconds_inner()) }
            , {'group_minutes', list(slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_run_seconds_inner:slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_run_seconds_inner()) }
            , {'usage', list(slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_usage_inner:slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_usage_inner()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

