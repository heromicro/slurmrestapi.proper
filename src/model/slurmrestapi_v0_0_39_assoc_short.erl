-module(slurmrestapi_v0_0_39_assoc_short).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_assoc_short/0]).

-export([slurmrestapi_v0_0_39_assoc_short/1]).

-export_type([slurmrestapi_v0_0_39_assoc_short/0]).

-type slurmrestapi_v0_0_39_assoc_short() ::
  [ {'account', binary() }
  | {'cluster', binary() }
  | {'partition', binary() }
  | {'user', binary() }
  ].


slurmrestapi_v0_0_39_assoc_short() ->
    slurmrestapi_v0_0_39_assoc_short([]).

slurmrestapi_v0_0_39_assoc_short(Fields) ->
  Default = [ {'account', binary() }
            , {'cluster', binary() }
            , {'partition', binary() }
            , {'user', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

