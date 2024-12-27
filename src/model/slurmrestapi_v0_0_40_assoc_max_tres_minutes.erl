-module(slurmrestapi_v0_0_40_assoc_max_tres_minutes).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_assoc_max_tres_minutes/0]).

-export([slurmrestapi_v0_0_40_assoc_max_tres_minutes/1]).

-export_type([slurmrestapi_v0_0_40_assoc_max_tres_minutes/0]).

-type slurmrestapi_v0_0_40_assoc_max_tres_minutes() ::
  [ {'total', list(slurmrestapi_v0_0_40_tres:slurmrestapi_v0_0_40_tres()) }
  | {'per', slurmrestapi_v0_0_40_qos_limits_min_tres_per:slurmrestapi_v0_0_40_qos_limits_min_tres_per() }
  ].


slurmrestapi_v0_0_40_assoc_max_tres_minutes() ->
    slurmrestapi_v0_0_40_assoc_max_tres_minutes([]).

slurmrestapi_v0_0_40_assoc_max_tres_minutes(Fields) ->
  Default = [ {'total', list(slurmrestapi_v0_0_40_tres:slurmrestapi_v0_0_40_tres()) }
            , {'per', slurmrestapi_v0_0_40_qos_limits_min_tres_per:slurmrestapi_v0_0_40_qos_limits_min_tres_per() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

