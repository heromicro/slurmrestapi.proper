-module(slurmrestapi_v0_0_40_openapi_users_resp).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_openapi_users_resp/0]).

-export([slurmrestapi_v0_0_40_openapi_users_resp/1]).

-export_type([slurmrestapi_v0_0_40_openapi_users_resp/0]).

-type slurmrestapi_v0_0_40_openapi_users_resp() ::
  [ {'users', list(slurmrestapi_v0_0_40_user:slurmrestapi_v0_0_40_user()) }
  | {'meta', slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta() }
  | {'errors', list(slurmrestapi_v0_0_40_openapi_error:slurmrestapi_v0_0_40_openapi_error()) }
  | {'warnings', list(slurmrestapi_v0_0_40_openapi_warning:slurmrestapi_v0_0_40_openapi_warning()) }
  ].


slurmrestapi_v0_0_40_openapi_users_resp() ->
    slurmrestapi_v0_0_40_openapi_users_resp([]).

slurmrestapi_v0_0_40_openapi_users_resp(Fields) ->
  Default = [ {'users', list(slurmrestapi_v0_0_40_user:slurmrestapi_v0_0_40_user()) }
            , {'meta', slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta() }
            , {'errors', list(slurmrestapi_v0_0_40_openapi_error:slurmrestapi_v0_0_40_openapi_error()) }
            , {'warnings', list(slurmrestapi_v0_0_40_openapi_warning:slurmrestapi_v0_0_40_openapi_warning()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

