-module(slurmrestapi_v0_0_39_step_tres).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_step_tres/0]).

-export([slurmrestapi_v0_0_39_step_tres/1]).

-export_type([slurmrestapi_v0_0_39_step_tres/0]).

-type slurmrestapi_v0_0_39_step_tres() ::
  [ {'allocated', list(slurmrestapi_v0_0_39_tres:slurmrestapi_v0_0_39_tres()) }
  ].


slurmrestapi_v0_0_39_step_tres() ->
    slurmrestapi_v0_0_39_step_tres([]).

slurmrestapi_v0_0_39_step_tres(Fields) ->
  Default = [ {'allocated', list(slurmrestapi_v0_0_39_tres:slurmrestapi_v0_0_39_tres()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

