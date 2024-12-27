-module(slurmrestapi_v0_0_40_qos_limits_max_tres_per).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_qos_limits_max_tres_per/0]).

-export([slurmrestapi_v0_0_40_qos_limits_max_tres_per/1]).

-export_type([slurmrestapi_v0_0_40_qos_limits_max_tres_per/0]).

-type slurmrestapi_v0_0_40_qos_limits_max_tres_per() ::
  [ {'account', list(slurmrestapi_v0_0_40_tres:slurmrestapi_v0_0_40_tres()) }
  | {'job', list(slurmrestapi_v0_0_40_tres:slurmrestapi_v0_0_40_tres()) }
  | {'node', list(slurmrestapi_v0_0_40_tres:slurmrestapi_v0_0_40_tres()) }
  | {'user', list(slurmrestapi_v0_0_40_tres:slurmrestapi_v0_0_40_tres()) }
  ].


slurmrestapi_v0_0_40_qos_limits_max_tres_per() ->
    slurmrestapi_v0_0_40_qos_limits_max_tres_per([]).

slurmrestapi_v0_0_40_qos_limits_max_tres_per(Fields) ->
  Default = [ {'account', list(slurmrestapi_v0_0_40_tres:slurmrestapi_v0_0_40_tres()) }
            , {'job', list(slurmrestapi_v0_0_40_tres:slurmrestapi_v0_0_40_tres()) }
            , {'node', list(slurmrestapi_v0_0_40_tres:slurmrestapi_v0_0_40_tres()) }
            , {'user', list(slurmrestapi_v0_0_40_tres:slurmrestapi_v0_0_40_tres()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

