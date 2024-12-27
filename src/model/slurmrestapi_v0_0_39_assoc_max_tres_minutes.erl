-module(slurmrestapi_v0_0_39_assoc_max_tres_minutes).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_assoc_max_tres_minutes/0]).

-export([slurmrestapi_v0_0_39_assoc_max_tres_minutes/1]).

-export_type([slurmrestapi_v0_0_39_assoc_max_tres_minutes/0]).

-type slurmrestapi_v0_0_39_assoc_max_tres_minutes() ::
  [ {'per', slurmrestapi_v0_0_39_assoc_max_tres_minutes_per:slurmrestapi_v0_0_39_assoc_max_tres_minutes_per() }
  | {'total', list(slurmrestapi_v0_0_39_tres:slurmrestapi_v0_0_39_tres()) }
  ].


slurmrestapi_v0_0_39_assoc_max_tres_minutes() ->
    slurmrestapi_v0_0_39_assoc_max_tres_minutes([]).

slurmrestapi_v0_0_39_assoc_max_tres_minutes(Fields) ->
  Default = [ {'per', slurmrestapi_v0_0_39_assoc_max_tres_minutes_per:slurmrestapi_v0_0_39_assoc_max_tres_minutes_per() }
            , {'total', list(slurmrestapi_v0_0_39_tres:slurmrestapi_v0_0_39_tres()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

