-module(slurmrestapi_v0_0_40_user_short).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_user_short/0]).

-export([slurmrestapi_v0_0_40_user_short/1]).

-export_type([slurmrestapi_v0_0_40_user_short/0]).

-type slurmrestapi_v0_0_40_user_short() ::
  [ {'adminlevel', list(binary()) }
  | {'defaultaccount', binary() }
  | {'defaultwckey', binary() }
  ].


slurmrestapi_v0_0_40_user_short() ->
    slurmrestapi_v0_0_40_user_short([]).

slurmrestapi_v0_0_40_user_short(Fields) ->
  Default = [ {'adminlevel', list(binary()) }
            , {'defaultaccount', binary() }
            , {'defaultwckey', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

