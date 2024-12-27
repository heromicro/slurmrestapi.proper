-module(slurmrestapi_v0_0_39_qos_limits_min).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_qos_limits_min/0]).

-export([slurmrestapi_v0_0_39_qos_limits_min/1]).

-export_type([slurmrestapi_v0_0_39_qos_limits_min/0]).

-type slurmrestapi_v0_0_39_qos_limits_min() ::
  [ {'tres', slurmrestapi_v0_0_39_qos_limits_min_tres:slurmrestapi_v0_0_39_qos_limits_min_tres() }
  ].


slurmrestapi_v0_0_39_qos_limits_min() ->
    slurmrestapi_v0_0_39_qos_limits_min([]).

slurmrestapi_v0_0_39_qos_limits_min(Fields) ->
  Default = [ {'tres', slurmrestapi_v0_0_39_qos_limits_min_tres:slurmrestapi_v0_0_39_qos_limits_min_tres() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

