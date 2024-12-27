-module(slurmrestapi_v0_0_39_tres).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_tres/0]).

-export([slurmrestapi_v0_0_39_tres/1]).

-export_type([slurmrestapi_v0_0_39_tres/0]).

-type slurmrestapi_v0_0_39_tres() ::
  [ {'type', binary() }
  | {'name', binary() }
  | {'id', integer() }
  | {'count', integer() }
  ].


slurmrestapi_v0_0_39_tres() ->
    slurmrestapi_v0_0_39_tres([]).

slurmrestapi_v0_0_39_tres(Fields) ->
  Default = [ {'type', binary() }
            , {'name', binary() }
            , {'id', integer() }
            , {'count', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

