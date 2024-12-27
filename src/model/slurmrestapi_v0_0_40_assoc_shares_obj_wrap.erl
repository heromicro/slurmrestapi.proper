-module(slurmrestapi_v0_0_40_assoc_shares_obj_wrap).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_assoc_shares_obj_wrap/0]).

-export([slurmrestapi_v0_0_40_assoc_shares_obj_wrap/1]).

-export_type([slurmrestapi_v0_0_40_assoc_shares_obj_wrap/0]).

-type slurmrestapi_v0_0_40_assoc_shares_obj_wrap() ::
  [ {'id', integer() }
  | {'cluster', binary() }
  | {'name', binary() }
  | {'parent', binary() }
  | {'partition', binary() }
  | {'shares_normalized', slurmrestapi_v0_0_40_float64_no_val:slurmrestapi_v0_0_40_float64_no_val() }
  | {'shares', slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val() }
  | {'tres', slurmrestapi_v0_0_40_assoc_shares_obj_wrap_tres:slurmrestapi_v0_0_40_assoc_shares_obj_wrap_tres() }
  | {'effective_usage', float() }
  | {'usage_normalized', slurmrestapi_v0_0_40_float64_no_val:slurmrestapi_v0_0_40_float64_no_val() }
  | {'usage', integer() }
  | {'fairshare', slurmrestapi_v0_0_40_assoc_shares_obj_wrap_fairshare:slurmrestapi_v0_0_40_assoc_shares_obj_wrap_fairshare() }
  | {'type', list(binary()) }
  ].


slurmrestapi_v0_0_40_assoc_shares_obj_wrap() ->
    slurmrestapi_v0_0_40_assoc_shares_obj_wrap([]).

slurmrestapi_v0_0_40_assoc_shares_obj_wrap(Fields) ->
  Default = [ {'id', integer() }
            , {'cluster', binary() }
            , {'name', binary() }
            , {'parent', binary() }
            , {'partition', binary() }
            , {'shares_normalized', slurmrestapi_v0_0_40_float64_no_val:slurmrestapi_v0_0_40_float64_no_val() }
            , {'shares', slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val() }
            , {'tres', slurmrestapi_v0_0_40_assoc_shares_obj_wrap_tres:slurmrestapi_v0_0_40_assoc_shares_obj_wrap_tres() }
            , {'effective_usage', float() }
            , {'usage_normalized', slurmrestapi_v0_0_40_float64_no_val:slurmrestapi_v0_0_40_float64_no_val() }
            , {'usage', integer() }
            , {'fairshare', slurmrestapi_v0_0_40_assoc_shares_obj_wrap_fairshare:slurmrestapi_v0_0_40_assoc_shares_obj_wrap_fairshare() }
            , {'type', list(binary()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

