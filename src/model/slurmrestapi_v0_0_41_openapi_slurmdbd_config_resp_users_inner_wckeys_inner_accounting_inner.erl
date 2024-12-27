-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner_accounting_inner).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner_accounting_inner/0]).

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner_accounting_inner/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner_accounting_inner/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner_accounting_inner() ::
  [ {'allocated', slurmrestapi_v0_0_40_accounting_allocated:slurmrestapi_v0_0_40_accounting_allocated() }
  | {'id', integer() }
  | {'start', integer() }
  | {'TRES', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner_accounting_inner_tres:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner_accounting_inner_tres() }
  ].


slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner_accounting_inner() ->
    slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner_accounting_inner([]).

slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner_accounting_inner(Fields) ->
  Default = [ {'allocated', slurmrestapi_v0_0_40_accounting_allocated:slurmrestapi_v0_0_40_accounting_allocated() }
            , {'id', integer() }
            , {'start', integer() }
            , {'TRES', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner_accounting_inner_tres:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner_accounting_inner_tres() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

