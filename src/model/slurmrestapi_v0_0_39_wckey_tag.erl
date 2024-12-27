-module(slurmrestapi_v0_0_39_wckey_tag).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_wckey_tag/0]).

-export([slurmrestapi_v0_0_39_wckey_tag/1]).

-export_type([slurmrestapi_v0_0_39_wckey_tag/0]).

-type slurmrestapi_v0_0_39_wckey_tag() ::
  [ {'wckey', binary() }
  | {'flags', list(binary()) }
  ].


slurmrestapi_v0_0_39_wckey_tag() ->
    slurmrestapi_v0_0_39_wckey_tag([]).

slurmrestapi_v0_0_39_wckey_tag(Fields) ->
  Default = [ {'wckey', binary() }
            , {'flags', list(binary()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

