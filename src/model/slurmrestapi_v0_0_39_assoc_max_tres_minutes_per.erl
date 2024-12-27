-module(slurmrestapi_v0_0_39_assoc_max_tres_minutes_per).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_assoc_max_tres_minutes_per/0]).

-export([slurmrestapi_v0_0_39_assoc_max_tres_minutes_per/1]).

-export_type([slurmrestapi_v0_0_39_assoc_max_tres_minutes_per/0]).

-type slurmrestapi_v0_0_39_assoc_max_tres_minutes_per() ::
  [ {'job', list(slurmrestapi_v0_0_39_tres:slurmrestapi_v0_0_39_tres()) }
  ].


slurmrestapi_v0_0_39_assoc_max_tres_minutes_per() ->
    slurmrestapi_v0_0_39_assoc_max_tres_minutes_per([]).

slurmrestapi_v0_0_39_assoc_max_tres_minutes_per(Fields) ->
  Default = [ {'job', list(slurmrestapi_v0_0_39_tres:slurmrestapi_v0_0_39_tres()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

