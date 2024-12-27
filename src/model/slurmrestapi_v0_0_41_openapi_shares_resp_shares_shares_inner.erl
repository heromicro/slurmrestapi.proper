-module(slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner/0]).

-export([slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner/1]).

-export_type([slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner/0]).

-type slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner() ::
  [ {'id', integer() }
  | {'cluster', binary() }
  | {'name', binary() }
  | {'parent', binary() }
  | {'partition', binary() }
  | {'shares_normalized', slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_shares_normalized:slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_shares_normalized() }
  | {'shares', slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_shares:slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_shares() }
  | {'tres', slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres:slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres() }
  | {'effective_usage', float() }
  | {'usage_normalized', slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_usage_normalized:slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_usage_normalized() }
  | {'usage', integer() }
  | {'fairshare', slurmrestapi_v0_0_40_assoc_shares_obj_wrap_fairshare:slurmrestapi_v0_0_40_assoc_shares_obj_wrap_fairshare() }
  | {'type', list(binary()) }
  ].


slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner() ->
    slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner([]).

slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner(Fields) ->
  Default = [ {'id', integer() }
            , {'cluster', binary() }
            , {'name', binary() }
            , {'parent', binary() }
            , {'partition', binary() }
            , {'shares_normalized', slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_shares_normalized:slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_shares_normalized() }
            , {'shares', slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_shares:slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_shares() }
            , {'tres', slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres:slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres() }
            , {'effective_usage', float() }
            , {'usage_normalized', slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_usage_normalized:slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_usage_normalized() }
            , {'usage', integer() }
            , {'fairshare', slurmrestapi_v0_0_40_assoc_shares_obj_wrap_fairshare:slurmrestapi_v0_0_40_assoc_shares_obj_wrap_fairshare() }
            , {'type', list(binary()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

