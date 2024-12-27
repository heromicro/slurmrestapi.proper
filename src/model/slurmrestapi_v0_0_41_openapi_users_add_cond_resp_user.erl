-module(slurmrestapi_v0_0_41_openapi_users_add_cond_resp_user).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_users_add_cond_resp_user/0]).

-export([slurmrestapi_v0_0_41_openapi_users_add_cond_resp_user/1]).

-export_type([slurmrestapi_v0_0_41_openapi_users_add_cond_resp_user/0]).

-type slurmrestapi_v0_0_41_openapi_users_add_cond_resp_user() ::
  [ {'adminlevel', list(binary()) }
  | {'defaultaccount', binary() }
  | {'defaultwckey', binary() }
  ].


slurmrestapi_v0_0_41_openapi_users_add_cond_resp_user() ->
    slurmrestapi_v0_0_41_openapi_users_add_cond_resp_user([]).

slurmrestapi_v0_0_41_openapi_users_add_cond_resp_user(Fields) ->
  Default = [ {'adminlevel', list(binary()) }
            , {'defaultaccount', binary() }
            , {'defaultwckey', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

