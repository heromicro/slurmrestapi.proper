-module(slurmrestapi_dbv0_0_39_wckey_info).

-include("slurmrestapi.hrl").

-export([slurmrestapi_dbv0_0_39_wckey_info/0]).

-export([slurmrestapi_dbv0_0_39_wckey_info/1]).

-export_type([slurmrestapi_dbv0_0_39_wckey_info/0]).

-type slurmrestapi_dbv0_0_39_wckey_info() ::
  [ {'meta', slurmrestapi_dbv0_0_39_meta:slurmrestapi_dbv0_0_39_meta() }
  | {'errors', list(slurmrestapi_dbv0_0_39_error:slurmrestapi_dbv0_0_39_error()) }
  | {'wckeys', list(slurmrestapi_v0_0_39_wckey:slurmrestapi_v0_0_39_wckey()) }
  ].


slurmrestapi_dbv0_0_39_wckey_info() ->
    slurmrestapi_dbv0_0_39_wckey_info([]).

slurmrestapi_dbv0_0_39_wckey_info(Fields) ->
  Default = [ {'meta', slurmrestapi_dbv0_0_39_meta:slurmrestapi_dbv0_0_39_meta() }
            , {'errors', list(slurmrestapi_dbv0_0_39_error:slurmrestapi_dbv0_0_39_error()) }
            , {'wckeys', list(slurmrestapi_v0_0_39_wckey:slurmrestapi_v0_0_39_wckey()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

