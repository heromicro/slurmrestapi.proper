-module(slurmrestapi_v0_0_39_qos_limits_min_tres).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_qos_limits_min_tres/0]).

-export([slurmrestapi_v0_0_39_qos_limits_min_tres/1]).

-export_type([slurmrestapi_v0_0_39_qos_limits_min_tres/0]).

-type slurmrestapi_v0_0_39_qos_limits_min_tres() ::
  [ {'per', slurmrestapi_v0_0_39_qos_limits_min_tres_per:slurmrestapi_v0_0_39_qos_limits_min_tres_per() }
  ].


slurmrestapi_v0_0_39_qos_limits_min_tres() ->
    slurmrestapi_v0_0_39_qos_limits_min_tres([]).

slurmrestapi_v0_0_39_qos_limits_min_tres(Fields) ->
  Default = [ {'per', slurmrestapi_v0_0_39_qos_limits_min_tres_per:slurmrestapi_v0_0_39_qos_limits_min_tres_per() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

