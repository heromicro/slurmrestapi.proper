-module(slurmrestapi_v0_0_41_openapi_shares_resp_shares).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_shares_resp_shares/0]).

-export([slurmrestapi_v0_0_41_openapi_shares_resp_shares/1]).

-export_type([slurmrestapi_v0_0_41_openapi_shares_resp_shares/0]).

-type slurmrestapi_v0_0_41_openapi_shares_resp_shares() ::
  [ {'shares', list(slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner:slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner()) }
  | {'total_shares', integer() }
  ].


slurmrestapi_v0_0_41_openapi_shares_resp_shares() ->
    slurmrestapi_v0_0_41_openapi_shares_resp_shares([]).

slurmrestapi_v0_0_41_openapi_shares_resp_shares(Fields) ->
  Default = [ {'shares', list(slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner:slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner()) }
            , {'total_shares', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

