-module(slurmrestapi_v0_0_40_openapi_slurmdbd_config_resp).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_openapi_slurmdbd_config_resp/0]).

-export([slurmrestapi_v0_0_40_openapi_slurmdbd_config_resp/1]).

-export_type([slurmrestapi_v0_0_40_openapi_slurmdbd_config_resp/0]).

-type slurmrestapi_v0_0_40_openapi_slurmdbd_config_resp() ::
  [ {'clusters', list(slurmrestapi_v0_0_40_cluster_rec:slurmrestapi_v0_0_40_cluster_rec()) }
  | {'tres', list(slurmrestapi_v0_0_40_tres:slurmrestapi_v0_0_40_tres()) }
  | {'accounts', list(slurmrestapi_v0_0_40_account:slurmrestapi_v0_0_40_account()) }
  | {'users', list(slurmrestapi_v0_0_40_user:slurmrestapi_v0_0_40_user()) }
  | {'qos', list(slurmrestapi_v0_0_40_qos:slurmrestapi_v0_0_40_qos()) }
  | {'wckeys', list(slurmrestapi_v0_0_40_wckey:slurmrestapi_v0_0_40_wckey()) }
  | {'associations', list(slurmrestapi_v0_0_40_assoc:slurmrestapi_v0_0_40_assoc()) }
  | {'instances', list(slurmrestapi_v0_0_40_instance:slurmrestapi_v0_0_40_instance()) }
  | {'meta', slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta() }
  | {'errors', list(slurmrestapi_v0_0_40_openapi_error:slurmrestapi_v0_0_40_openapi_error()) }
  | {'warnings', list(slurmrestapi_v0_0_40_openapi_warning:slurmrestapi_v0_0_40_openapi_warning()) }
  ].


slurmrestapi_v0_0_40_openapi_slurmdbd_config_resp() ->
    slurmrestapi_v0_0_40_openapi_slurmdbd_config_resp([]).

slurmrestapi_v0_0_40_openapi_slurmdbd_config_resp(Fields) ->
  Default = [ {'clusters', list(slurmrestapi_v0_0_40_cluster_rec:slurmrestapi_v0_0_40_cluster_rec()) }
            , {'tres', list(slurmrestapi_v0_0_40_tres:slurmrestapi_v0_0_40_tres()) }
            , {'accounts', list(slurmrestapi_v0_0_40_account:slurmrestapi_v0_0_40_account()) }
            , {'users', list(slurmrestapi_v0_0_40_user:slurmrestapi_v0_0_40_user()) }
            , {'qos', list(slurmrestapi_v0_0_40_qos:slurmrestapi_v0_0_40_qos()) }
            , {'wckeys', list(slurmrestapi_v0_0_40_wckey:slurmrestapi_v0_0_40_wckey()) }
            , {'associations', list(slurmrestapi_v0_0_40_assoc:slurmrestapi_v0_0_40_assoc()) }
            , {'instances', list(slurmrestapi_v0_0_40_instance:slurmrestapi_v0_0_40_instance()) }
            , {'meta', slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta() }
            , {'errors', list(slurmrestapi_v0_0_40_openapi_error:slurmrestapi_v0_0_40_openapi_error()) }
            , {'warnings', list(slurmrestapi_v0_0_40_openapi_warning:slurmrestapi_v0_0_40_openapi_warning()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

