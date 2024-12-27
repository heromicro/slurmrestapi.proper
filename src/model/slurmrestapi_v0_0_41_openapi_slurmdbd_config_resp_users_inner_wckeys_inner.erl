-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner/0]).

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner() ::
  [ {'accounting', list(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner_accounting_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner_accounting_inner()) }
  | {'cluster', binary() }
  | {'id', integer() }
  | {'name', binary() }
  | {'user', binary() }
  | {'flags', list(binary()) }
  ].


slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner() ->
    slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner([]).

slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner(Fields) ->
  Default = [ {'accounting', list(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner_accounting_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner_accounting_inner()) }
            , {'cluster', binary() }
            , {'id', integer() }
            , {'name', binary() }
            , {'user', binary() }
            , {'flags', list(binary()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

