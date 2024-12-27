-module(slurmrestapi_dbv0_0_39_user_info).

-include("slurmrestapi.hrl").

-export([slurmrestapi_dbv0_0_39_user_info/0]).

-export([slurmrestapi_dbv0_0_39_user_info/1]).

-export_type([slurmrestapi_dbv0_0_39_user_info/0]).

-type slurmrestapi_dbv0_0_39_user_info() ::
  [ {'meta', slurmrestapi_dbv0_0_39_meta:slurmrestapi_dbv0_0_39_meta() }
  | {'errors', list(slurmrestapi_dbv0_0_39_error:slurmrestapi_dbv0_0_39_error()) }
  | {'warnings', list(slurmrestapi_dbv0_0_39_warning:slurmrestapi_dbv0_0_39_warning()) }
  | {'users', list(slurmrestapi_v0_0_39_user:slurmrestapi_v0_0_39_user()) }
  ].


slurmrestapi_dbv0_0_39_user_info() ->
    slurmrestapi_dbv0_0_39_user_info([]).

slurmrestapi_dbv0_0_39_user_info(Fields) ->
  Default = [ {'meta', slurmrestapi_dbv0_0_39_meta:slurmrestapi_dbv0_0_39_meta() }
            , {'errors', list(slurmrestapi_dbv0_0_39_error:slurmrestapi_dbv0_0_39_error()) }
            , {'warnings', list(slurmrestapi_dbv0_0_39_warning:slurmrestapi_dbv0_0_39_warning()) }
            , {'users', list(slurmrestapi_v0_0_39_user:slurmrestapi_v0_0_39_user()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

