-module(slurmrestapi_v0_0_40_openapi_users_add_cond_resp).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_openapi_users_add_cond_resp/0]).

-export([slurmrestapi_v0_0_40_openapi_users_add_cond_resp/1]).

-export_type([slurmrestapi_v0_0_40_openapi_users_add_cond_resp/0]).

-type slurmrestapi_v0_0_40_openapi_users_add_cond_resp() ::
  [ {'association_condition', slurmrestapi_v0_0_40_users_add_cond:slurmrestapi_v0_0_40_users_add_cond() }
  | {'user', slurmrestapi_v0_0_40_user_short:slurmrestapi_v0_0_40_user_short() }
  | {'meta', slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta() }
  | {'errors', list(slurmrestapi_v0_0_40_openapi_error:slurmrestapi_v0_0_40_openapi_error()) }
  | {'warnings', list(slurmrestapi_v0_0_40_openapi_warning:slurmrestapi_v0_0_40_openapi_warning()) }
  ].


slurmrestapi_v0_0_40_openapi_users_add_cond_resp() ->
    slurmrestapi_v0_0_40_openapi_users_add_cond_resp([]).

slurmrestapi_v0_0_40_openapi_users_add_cond_resp(Fields) ->
  Default = [ {'association_condition', slurmrestapi_v0_0_40_users_add_cond:slurmrestapi_v0_0_40_users_add_cond() }
            , {'user', slurmrestapi_v0_0_40_user_short:slurmrestapi_v0_0_40_user_short() }
            , {'meta', slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta() }
            , {'errors', list(slurmrestapi_v0_0_40_openapi_error:slurmrestapi_v0_0_40_openapi_error()) }
            , {'warnings', list(slurmrestapi_v0_0_40_openapi_warning:slurmrestapi_v0_0_40_openapi_warning()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

