-module(slurmrestapi_v0_0_39_coord).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_coord/0]).

-export([slurmrestapi_v0_0_39_coord/1]).

-export_type([slurmrestapi_v0_0_39_coord/0]).

-type slurmrestapi_v0_0_39_coord() ::
  [ {'name', binary() }
  | {'direct', boolean() }
  ].


slurmrestapi_v0_0_39_coord() ->
    slurmrestapi_v0_0_39_coord([]).

slurmrestapi_v0_0_39_coord(Fields) ->
  Default = [ {'name', binary() }
            , {'direct', boolean() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

