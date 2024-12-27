-module(slurmrestapi_v0_0_40_wckey).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_wckey/0]).

-export([slurmrestapi_v0_0_40_wckey/1]).

-export_type([slurmrestapi_v0_0_40_wckey/0]).

-type slurmrestapi_v0_0_40_wckey() ::
  [ {'accounting', list(slurmrestapi_v0_0_40_accounting:slurmrestapi_v0_0_40_accounting()) }
  | {'cluster', binary() }
  | {'id', integer() }
  | {'name', binary() }
  | {'user', binary() }
  | {'flags', list(binary()) }
  ].


slurmrestapi_v0_0_40_wckey() ->
    slurmrestapi_v0_0_40_wckey([]).

slurmrestapi_v0_0_40_wckey(Fields) ->
  Default = [ {'accounting', list(slurmrestapi_v0_0_40_accounting:slurmrestapi_v0_0_40_accounting()) }
            , {'cluster', binary() }
            , {'id', integer() }
            , {'name', binary() }
            , {'user', binary() }
            , {'flags', list(binary()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

