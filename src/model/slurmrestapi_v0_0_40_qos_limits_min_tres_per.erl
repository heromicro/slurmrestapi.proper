-module(slurmrestapi_v0_0_40_qos_limits_min_tres_per).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_qos_limits_min_tres_per/0]).

-export([slurmrestapi_v0_0_40_qos_limits_min_tres_per/1]).

-export_type([slurmrestapi_v0_0_40_qos_limits_min_tres_per/0]).

-type slurmrestapi_v0_0_40_qos_limits_min_tres_per() ::
  [ {'job', list(slurmrestapi_v0_0_40_tres:slurmrestapi_v0_0_40_tres()) }
  ].


slurmrestapi_v0_0_40_qos_limits_min_tres_per() ->
    slurmrestapi_v0_0_40_qos_limits_min_tres_per([]).

slurmrestapi_v0_0_40_qos_limits_min_tres_per(Fields) ->
  Default = [ {'job', list(slurmrestapi_v0_0_40_tres:slurmrestapi_v0_0_40_tres()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

