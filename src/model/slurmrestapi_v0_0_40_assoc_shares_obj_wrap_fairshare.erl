-module(slurmrestapi_v0_0_40_assoc_shares_obj_wrap_fairshare).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_assoc_shares_obj_wrap_fairshare/0]).

-export([slurmrestapi_v0_0_40_assoc_shares_obj_wrap_fairshare/1]).

-export_type([slurmrestapi_v0_0_40_assoc_shares_obj_wrap_fairshare/0]).

-type slurmrestapi_v0_0_40_assoc_shares_obj_wrap_fairshare() ::
  [ {'factor', float() }
  | {'level', float() }
  ].


slurmrestapi_v0_0_40_assoc_shares_obj_wrap_fairshare() ->
    slurmrestapi_v0_0_40_assoc_shares_obj_wrap_fairshare([]).

slurmrestapi_v0_0_40_assoc_shares_obj_wrap_fairshare(Fields) ->
  Default = [ {'factor', float() }
            , {'level', float() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

