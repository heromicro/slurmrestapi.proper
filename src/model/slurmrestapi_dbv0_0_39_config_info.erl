-module(slurmrestapi_dbv0_0_39_config_info).

-include("slurmrestapi.hrl").

-export([slurmrestapi_dbv0_0_39_config_info/0]).

-export([slurmrestapi_dbv0_0_39_config_info/1]).

-export_type([slurmrestapi_dbv0_0_39_config_info/0]).

-type slurmrestapi_dbv0_0_39_config_info() ::
  [ {'meta', slurmrestapi_dbv0_0_39_meta:slurmrestapi_dbv0_0_39_meta() }
  | {'errors', list(slurmrestapi_dbv0_0_39_error:slurmrestapi_dbv0_0_39_error()) }
  | {'warnings', list(slurmrestapi_dbv0_0_39_warning:slurmrestapi_dbv0_0_39_warning()) }
  | {'tres', list(slurmrestapi_v0_0_39_tres:slurmrestapi_v0_0_39_tres()) }
  | {'accounts', list(slurmrestapi_v0_0_39_account:slurmrestapi_v0_0_39_account()) }
  | {'associations', list(slurmrestapi_v0_0_39_assoc:slurmrestapi_v0_0_39_assoc()) }
  | {'users', list(slurmrestapi_v0_0_39_user:slurmrestapi_v0_0_39_user()) }
  | {'qos', list(slurmrestapi_v0_0_39_qos:slurmrestapi_v0_0_39_qos()) }
  | {'wckeys', list(slurmrestapi_v0_0_39_wckey:slurmrestapi_v0_0_39_wckey()) }
  | {'clusters', list(slurmrestapi_v0_0_39_cluster_rec:slurmrestapi_v0_0_39_cluster_rec()) }
  ].


slurmrestapi_dbv0_0_39_config_info() ->
    slurmrestapi_dbv0_0_39_config_info([]).

slurmrestapi_dbv0_0_39_config_info(Fields) ->
  Default = [ {'meta', slurmrestapi_dbv0_0_39_meta:slurmrestapi_dbv0_0_39_meta() }
            , {'errors', list(slurmrestapi_dbv0_0_39_error:slurmrestapi_dbv0_0_39_error()) }
            , {'warnings', list(slurmrestapi_dbv0_0_39_warning:slurmrestapi_dbv0_0_39_warning()) }
            , {'tres', list(slurmrestapi_v0_0_39_tres:slurmrestapi_v0_0_39_tres()) }
            , {'accounts', list(slurmrestapi_v0_0_39_account:slurmrestapi_v0_0_39_account()) }
            , {'associations', list(slurmrestapi_v0_0_39_assoc:slurmrestapi_v0_0_39_assoc()) }
            , {'users', list(slurmrestapi_v0_0_39_user:slurmrestapi_v0_0_39_user()) }
            , {'qos', list(slurmrestapi_v0_0_39_qos:slurmrestapi_v0_0_39_qos()) }
            , {'wckeys', list(slurmrestapi_v0_0_39_wckey:slurmrestapi_v0_0_39_wckey()) }
            , {'clusters', list(slurmrestapi_v0_0_39_cluster_rec:slurmrestapi_v0_0_39_cluster_rec()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

