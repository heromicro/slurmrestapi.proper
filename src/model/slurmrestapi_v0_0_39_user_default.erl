-module(slurmrestapi_v0_0_39_user_default).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_user_default/0]).

-export([slurmrestapi_v0_0_39_user_default/1]).

-export_type([slurmrestapi_v0_0_39_user_default/0]).

-type slurmrestapi_v0_0_39_user_default() ::
  [ {'wckey', binary() }
  ].


slurmrestapi_v0_0_39_user_default() ->
    slurmrestapi_v0_0_39_user_default([]).

slurmrestapi_v0_0_39_user_default(Fields) ->
  Default = [ {'wckey', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

