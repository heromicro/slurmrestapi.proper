-module(slurmrestapi_v0_0_39_qos_limits).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_qos_limits/0]).

-export([slurmrestapi_v0_0_39_qos_limits/1]).

-export_type([slurmrestapi_v0_0_39_qos_limits/0]).

-type slurmrestapi_v0_0_39_qos_limits() ::
  [ {'min', slurmrestapi_v0_0_39_qos_limits_min:slurmrestapi_v0_0_39_qos_limits_min() }
  ].


slurmrestapi_v0_0_39_qos_limits() ->
    slurmrestapi_v0_0_39_qos_limits([]).

slurmrestapi_v0_0_39_qos_limits(Fields) ->
  Default = [ {'min', slurmrestapi_v0_0_39_qos_limits_min:slurmrestapi_v0_0_39_qos_limits_min() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

