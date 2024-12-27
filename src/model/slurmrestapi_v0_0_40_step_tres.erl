-module(slurmrestapi_v0_0_40_step_tres).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_step_tres/0]).

-export([slurmrestapi_v0_0_40_step_tres/1]).

-export_type([slurmrestapi_v0_0_40_step_tres/0]).

-type slurmrestapi_v0_0_40_step_tres() ::
  [ {'requested', slurmrestapi_v0_0_40_step_tres_requested:slurmrestapi_v0_0_40_step_tres_requested() }
  | {'consumed', slurmrestapi_v0_0_40_step_tres_consumed:slurmrestapi_v0_0_40_step_tres_consumed() }
  | {'allocated', list(slurmrestapi_v0_0_40_tres:slurmrestapi_v0_0_40_tres()) }
  ].


slurmrestapi_v0_0_40_step_tres() ->
    slurmrestapi_v0_0_40_step_tres([]).

slurmrestapi_v0_0_40_step_tres(Fields) ->
  Default = [ {'requested', slurmrestapi_v0_0_40_step_tres_requested:slurmrestapi_v0_0_40_step_tres_requested() }
            , {'consumed', slurmrestapi_v0_0_40_step_tres_consumed:slurmrestapi_v0_0_40_step_tres_consumed() }
            , {'allocated', list(slurmrestapi_v0_0_40_tres:slurmrestapi_v0_0_40_tres()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

