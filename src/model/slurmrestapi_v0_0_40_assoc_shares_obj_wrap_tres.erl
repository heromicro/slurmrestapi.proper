-module(slurmrestapi_v0_0_40_assoc_shares_obj_wrap_tres).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_assoc_shares_obj_wrap_tres/0]).

-export([slurmrestapi_v0_0_40_assoc_shares_obj_wrap_tres/1]).

-export_type([slurmrestapi_v0_0_40_assoc_shares_obj_wrap_tres/0]).

-type slurmrestapi_v0_0_40_assoc_shares_obj_wrap_tres() ::
  [ {'run_seconds', list(slurmrestapi_v0_0_40_shares_uint64_tres:slurmrestapi_v0_0_40_shares_uint64_tres()) }
  | {'group_minutes', list(slurmrestapi_v0_0_40_shares_uint64_tres:slurmrestapi_v0_0_40_shares_uint64_tres()) }
  | {'usage', list(slurmrestapi_v0_0_40_shares_float128_tres:slurmrestapi_v0_0_40_shares_float128_tres()) }
  ].


slurmrestapi_v0_0_40_assoc_shares_obj_wrap_tres() ->
    slurmrestapi_v0_0_40_assoc_shares_obj_wrap_tres([]).

slurmrestapi_v0_0_40_assoc_shares_obj_wrap_tres(Fields) ->
  Default = [ {'run_seconds', list(slurmrestapi_v0_0_40_shares_uint64_tres:slurmrestapi_v0_0_40_shares_uint64_tres()) }
            , {'group_minutes', list(slurmrestapi_v0_0_40_shares_uint64_tres:slurmrestapi_v0_0_40_shares_uint64_tres()) }
            , {'usage', list(slurmrestapi_v0_0_40_shares_float128_tres:slurmrestapi_v0_0_40_shares_float128_tres()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

