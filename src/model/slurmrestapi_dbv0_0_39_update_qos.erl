-module(slurmrestapi_dbv0_0_39_update_qos).

-include("slurmrestapi.hrl").

-export([slurmrestapi_dbv0_0_39_update_qos/0]).

-export([slurmrestapi_dbv0_0_39_update_qos/1]).

-export_type([slurmrestapi_dbv0_0_39_update_qos/0]).

-type slurmrestapi_dbv0_0_39_update_qos() ::
  [ {'qos', list(slurmrestapi_v0_0_39_qos:slurmrestapi_v0_0_39_qos()) }
  ].


slurmrestapi_dbv0_0_39_update_qos() ->
    slurmrestapi_dbv0_0_39_update_qos([]).

slurmrestapi_dbv0_0_39_update_qos(Fields) ->
  Default = [ {'qos', list(slurmrestapi_v0_0_39_qos:slurmrestapi_v0_0_39_qos()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

