-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp/0]).

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp() ::
  [ {'clusters', list(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner()) }
  | {'tres', list(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner()) }
  | {'accounts', list(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner()) }
  | {'users', list(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner()) }
  | {'qos', list(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner()) }
  | {'wckeys', list(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner()) }
  | {'associations', list(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner()) }
  | {'instances', list(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_instances_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_instances_inner()) }
  | {'meta', slurmrestapi_v0_0_41_openapi_shares_resp_meta:slurmrestapi_v0_0_41_openapi_shares_resp_meta() }
  | {'errors', list(slurmrestapi_v0_0_41_openapi_shares_resp_errors_inner:slurmrestapi_v0_0_41_openapi_shares_resp_errors_inner()) }
  | {'warnings', list(slurmrestapi_v0_0_41_openapi_shares_resp_warnings_inner:slurmrestapi_v0_0_41_openapi_shares_resp_warnings_inner()) }
  ].


slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp() ->
    slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp([]).

slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp(Fields) ->
  Default = [ {'clusters', list(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner()) }
            , {'tres', list(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner()) }
            , {'accounts', list(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner()) }
            , {'users', list(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner()) }
            , {'qos', list(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner()) }
            , {'wckeys', list(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner()) }
            , {'associations', list(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner()) }
            , {'instances', list(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_instances_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_instances_inner()) }
            , {'meta', slurmrestapi_v0_0_41_openapi_shares_resp_meta:slurmrestapi_v0_0_41_openapi_shares_resp_meta() }
            , {'errors', list(slurmrestapi_v0_0_41_openapi_shares_resp_errors_inner:slurmrestapi_v0_0_41_openapi_shares_resp_errors_inner()) }
            , {'warnings', list(slurmrestapi_v0_0_41_openapi_shares_resp_warnings_inner:slurmrestapi_v0_0_41_openapi_shares_resp_warnings_inner()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

