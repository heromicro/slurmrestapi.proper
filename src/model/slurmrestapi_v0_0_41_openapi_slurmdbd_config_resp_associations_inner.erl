-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner/0]).

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner() ::
  [ {'accounting', list(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner_accounting_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner_accounting_inner()) }
  | {'account', binary() }
  | {'cluster', binary() }
  | {'comment', binary() }
  | {'default', slurmrestapi_v0_0_40_assoc_default:slurmrestapi_v0_0_40_assoc_default() }
  | {'flags', list(binary()) }
  | {'max', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max() }
  | {'id', integer() }
  | {'is_default', boolean() }
  | {'lineage', binary() }
  | {'min', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_min:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_min() }
  | {'parent_account', binary() }
  | {'partition', binary() }
  | {'priority', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_priority:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_priority() }
  | {'qos', list(binary()) }
  | {'shares_raw', integer() }
  | {'user', binary() }
  ].


slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner() ->
    slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner([]).

slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner(Fields) ->
  Default = [ {'accounting', list(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner_accounting_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner_accounting_inner()) }
            , {'account', binary() }
            , {'cluster', binary() }
            , {'comment', binary() }
            , {'default', slurmrestapi_v0_0_40_assoc_default:slurmrestapi_v0_0_40_assoc_default() }
            , {'flags', list(binary()) }
            , {'max', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max() }
            , {'id', integer() }
            , {'is_default', boolean() }
            , {'lineage', binary() }
            , {'min', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_min:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_min() }
            , {'parent_account', binary() }
            , {'partition', binary() }
            , {'priority', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_priority:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_priority() }
            , {'qos', list(binary()) }
            , {'shares_raw', integer() }
            , {'user', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

