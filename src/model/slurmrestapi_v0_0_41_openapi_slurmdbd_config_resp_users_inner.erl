-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner/0]).

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner() ::
  [ {'administrator_level', list(binary()) }
  | {'associations', list(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner_associations_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner_associations_inner()) }
  | {'coordinators', list(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner_coordinators_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner_coordinators_inner()) }
  | {'default', slurmrestapi_v0_0_40_user_default:slurmrestapi_v0_0_40_user_default() }
  | {'flags', list(binary()) }
  | {'name', binary() }
  | {'old_name', binary() }
  | {'wckeys', list(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner()) }
  ].


slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner() ->
    slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner([]).

slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner(Fields) ->
  Default = [ {'administrator_level', list(binary()) }
            , {'associations', list(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner_associations_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner_associations_inner()) }
            , {'coordinators', list(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner_coordinators_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner_coordinators_inner()) }
            , {'default', slurmrestapi_v0_0_40_user_default:slurmrestapi_v0_0_40_user_default() }
            , {'flags', list(binary()) }
            , {'name', binary() }
            , {'old_name', binary() }
            , {'wckeys', list(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

