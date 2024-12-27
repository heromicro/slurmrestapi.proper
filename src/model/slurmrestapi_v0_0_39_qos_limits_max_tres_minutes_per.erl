-module(slurmrestapi_v0_0_39_qos_limits_max_tres_minutes_per).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_qos_limits_max_tres_minutes_per/0]).

-export([slurmrestapi_v0_0_39_qos_limits_max_tres_minutes_per/1]).

-export_type([slurmrestapi_v0_0_39_qos_limits_max_tres_minutes_per/0]).

-type slurmrestapi_v0_0_39_qos_limits_max_tres_minutes_per() ::
  [ {'qos', list(slurmrestapi_v0_0_39_tres:slurmrestapi_v0_0_39_tres()) }
  | {'job', list(slurmrestapi_v0_0_39_tres:slurmrestapi_v0_0_39_tres()) }
  | {'account', list(slurmrestapi_v0_0_39_tres:slurmrestapi_v0_0_39_tres()) }
  | {'user', list(slurmrestapi_v0_0_39_tres:slurmrestapi_v0_0_39_tres()) }
  ].


slurmrestapi_v0_0_39_qos_limits_max_tres_minutes_per() ->
    slurmrestapi_v0_0_39_qos_limits_max_tres_minutes_per([]).

slurmrestapi_v0_0_39_qos_limits_max_tres_minutes_per(Fields) ->
  Default = [ {'qos', list(slurmrestapi_v0_0_39_tres:slurmrestapi_v0_0_39_tres()) }
            , {'job', list(slurmrestapi_v0_0_39_tres:slurmrestapi_v0_0_39_tres()) }
            , {'account', list(slurmrestapi_v0_0_39_tres:slurmrestapi_v0_0_39_tres()) }
            , {'user', list(slurmrestapi_v0_0_39_tres:slurmrestapi_v0_0_39_tres()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

