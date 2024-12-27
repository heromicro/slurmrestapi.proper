-module(slurmrestapi_v0_0_40_assoc_max_tres).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_assoc_max_tres/0]).

-export([slurmrestapi_v0_0_40_assoc_max_tres/1]).

-export_type([slurmrestapi_v0_0_40_assoc_max_tres/0]).

-type slurmrestapi_v0_0_40_assoc_max_tres() ::
  [ {'total', list(slurmrestapi_v0_0_40_tres:slurmrestapi_v0_0_40_tres()) }
  | {'group', slurmrestapi_v0_0_40_assoc_max_tres_group:slurmrestapi_v0_0_40_assoc_max_tres_group() }
  | {'minutes', slurmrestapi_v0_0_40_assoc_max_tres_minutes:slurmrestapi_v0_0_40_assoc_max_tres_minutes() }
  | {'per', slurmrestapi_v0_0_40_assoc_max_tres_per:slurmrestapi_v0_0_40_assoc_max_tres_per() }
  ].


slurmrestapi_v0_0_40_assoc_max_tres() ->
    slurmrestapi_v0_0_40_assoc_max_tres([]).

slurmrestapi_v0_0_40_assoc_max_tres(Fields) ->
  Default = [ {'total', list(slurmrestapi_v0_0_40_tres:slurmrestapi_v0_0_40_tres()) }
            , {'group', slurmrestapi_v0_0_40_assoc_max_tres_group:slurmrestapi_v0_0_40_assoc_max_tres_group() }
            , {'minutes', slurmrestapi_v0_0_40_assoc_max_tres_minutes:slurmrestapi_v0_0_40_assoc_max_tres_minutes() }
            , {'per', slurmrestapi_v0_0_40_assoc_max_tres_per:slurmrestapi_v0_0_40_assoc_max_tres_per() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

