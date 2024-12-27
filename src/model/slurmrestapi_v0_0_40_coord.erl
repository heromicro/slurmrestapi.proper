-module(slurmrestapi_v0_0_40_coord).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_coord/0]).

-export([slurmrestapi_v0_0_40_coord/1]).

-export_type([slurmrestapi_v0_0_40_coord/0]).

-type slurmrestapi_v0_0_40_coord() ::
  [ {'name', binary() }
  | {'direct', boolean() }
  ].


slurmrestapi_v0_0_40_coord() ->
    slurmrestapi_v0_0_40_coord([]).

slurmrestapi_v0_0_40_coord(Fields) ->
  Default = [ {'name', binary() }
            , {'direct', boolean() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

