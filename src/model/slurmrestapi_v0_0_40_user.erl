-module(slurmrestapi_v0_0_40_user).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_user/0]).

-export([slurmrestapi_v0_0_40_user/1]).

-export_type([slurmrestapi_v0_0_40_user/0]).

-type slurmrestapi_v0_0_40_user() ::
  [ {'administrator_level', list(binary()) }
  | {'associations', list(slurmrestapi_v0_0_40_assoc_short:slurmrestapi_v0_0_40_assoc_short()) }
  | {'coordinators', list(slurmrestapi_v0_0_40_coord:slurmrestapi_v0_0_40_coord()) }
  | {'default', slurmrestapi_v0_0_40_user_default:slurmrestapi_v0_0_40_user_default() }
  | {'flags', list(binary()) }
  | {'name', binary() }
  | {'old_name', binary() }
  | {'wckeys', list(slurmrestapi_v0_0_40_wckey:slurmrestapi_v0_0_40_wckey()) }
  ].


slurmrestapi_v0_0_40_user() ->
    slurmrestapi_v0_0_40_user([]).

slurmrestapi_v0_0_40_user(Fields) ->
  Default = [ {'administrator_level', list(binary()) }
            , {'associations', list(slurmrestapi_v0_0_40_assoc_short:slurmrestapi_v0_0_40_assoc_short()) }
            , {'coordinators', list(slurmrestapi_v0_0_40_coord:slurmrestapi_v0_0_40_coord()) }
            , {'default', slurmrestapi_v0_0_40_user_default:slurmrestapi_v0_0_40_user_default() }
            , {'flags', list(binary()) }
            , {'name', binary() }
            , {'old_name', binary() }
            , {'wckeys', list(slurmrestapi_v0_0_40_wckey:slurmrestapi_v0_0_40_wckey()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

