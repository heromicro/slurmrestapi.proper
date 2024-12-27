-module(slurmrestapi_v0_0_39_user).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_user/0]).

-export([slurmrestapi_v0_0_39_user/1]).

-export_type([slurmrestapi_v0_0_39_user/0]).

-type slurmrestapi_v0_0_39_user() ::
  [ {'administrator_level', list(binary()) }
  | {'associations', list(slurmrestapi_v0_0_39_assoc_short:slurmrestapi_v0_0_39_assoc_short()) }
  | {'coordinators', list(slurmrestapi_v0_0_39_coord:slurmrestapi_v0_0_39_coord()) }
  | {'default', slurmrestapi_v0_0_39_user_default:slurmrestapi_v0_0_39_user_default() }
  | {'flags', list(binary()) }
  | {'name', binary() }
  | {'old_name', binary() }
  | {'wckeys', list(slurmrestapi_v0_0_39_wckey:slurmrestapi_v0_0_39_wckey()) }
  ].


slurmrestapi_v0_0_39_user() ->
    slurmrestapi_v0_0_39_user([]).

slurmrestapi_v0_0_39_user(Fields) ->
  Default = [ {'administrator_level', list(binary()) }
            , {'associations', list(slurmrestapi_v0_0_39_assoc_short:slurmrestapi_v0_0_39_assoc_short()) }
            , {'coordinators', list(slurmrestapi_v0_0_39_coord:slurmrestapi_v0_0_39_coord()) }
            , {'default', slurmrestapi_v0_0_39_user_default:slurmrestapi_v0_0_39_user_default() }
            , {'flags', list(binary()) }
            , {'name', binary() }
            , {'old_name', binary() }
            , {'wckeys', list(slurmrestapi_v0_0_39_wckey:slurmrestapi_v0_0_39_wckey()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

