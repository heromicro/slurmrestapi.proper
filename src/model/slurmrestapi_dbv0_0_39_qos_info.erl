-module(slurmrestapi_dbv0_0_39_qos_info).

-include("slurmrestapi.hrl").

-export([slurmrestapi_dbv0_0_39_qos_info/0]).

-export([slurmrestapi_dbv0_0_39_qos_info/1]).

-export_type([slurmrestapi_dbv0_0_39_qos_info/0]).

-type slurmrestapi_dbv0_0_39_qos_info() ::
  [ {'meta', slurmrestapi_dbv0_0_39_meta:slurmrestapi_dbv0_0_39_meta() }
  | {'warnings', list(slurmrestapi_dbv0_0_39_warning:slurmrestapi_dbv0_0_39_warning()) }
  | {'errors', list(slurmrestapi_dbv0_0_39_error:slurmrestapi_dbv0_0_39_error()) }
  | {'qos', list(slurmrestapi_v0_0_39_qos:slurmrestapi_v0_0_39_qos()) }
  ].


slurmrestapi_dbv0_0_39_qos_info() ->
    slurmrestapi_dbv0_0_39_qos_info([]).

slurmrestapi_dbv0_0_39_qos_info(Fields) ->
  Default = [ {'meta', slurmrestapi_dbv0_0_39_meta:slurmrestapi_dbv0_0_39_meta() }
            , {'warnings', list(slurmrestapi_dbv0_0_39_warning:slurmrestapi_dbv0_0_39_warning()) }
            , {'errors', list(slurmrestapi_dbv0_0_39_error:slurmrestapi_dbv0_0_39_error()) }
            , {'qos', list(slurmrestapi_v0_0_39_qos:slurmrestapi_v0_0_39_qos()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

