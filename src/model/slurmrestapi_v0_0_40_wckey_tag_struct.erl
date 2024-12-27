-module(slurmrestapi_v0_0_40_wckey_tag_struct).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_wckey_tag_struct/0]).

-export([slurmrestapi_v0_0_40_wckey_tag_struct/1]).

-export_type([slurmrestapi_v0_0_40_wckey_tag_struct/0]).

-type slurmrestapi_v0_0_40_wckey_tag_struct() ::
  [ {'wckey', binary() }
  | {'flags', list(binary()) }
  ].


slurmrestapi_v0_0_40_wckey_tag_struct() ->
    slurmrestapi_v0_0_40_wckey_tag_struct([]).

slurmrestapi_v0_0_40_wckey_tag_struct(Fields) ->
  Default = [ {'wckey', binary() }
            , {'flags', list(binary()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

