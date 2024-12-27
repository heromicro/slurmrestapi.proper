-module(slurmrestapi_dbv0_0_39_set_config).

-include("slurmrestapi.hrl").

-export([slurmrestapi_dbv0_0_39_set_config/0]).

-export([slurmrestapi_dbv0_0_39_set_config/1]).

-export_type([slurmrestapi_dbv0_0_39_set_config/0]).

-type slurmrestapi_dbv0_0_39_set_config() ::
  [ {'clusters', list(slurmrestapi_v0_0_39_cluster_rec:slurmrestapi_v0_0_39_cluster_rec()) }
  | {'TRES', list(list()) }
  | {'accounts', list(slurmrestapi_v0_0_39_account:slurmrestapi_v0_0_39_account()) }
  | {'users', list(slurmrestapi_v0_0_39_user:slurmrestapi_v0_0_39_user()) }
  | {'qos', list(slurmrestapi_v0_0_39_qos:slurmrestapi_v0_0_39_qos()) }
  | {'wckeys', list(slurmrestapi_v0_0_39_wckey:slurmrestapi_v0_0_39_wckey()) }
  | {'associations', list(slurmrestapi_v0_0_39_assoc:slurmrestapi_v0_0_39_assoc()) }
  ].


slurmrestapi_dbv0_0_39_set_config() ->
    slurmrestapi_dbv0_0_39_set_config([]).

slurmrestapi_dbv0_0_39_set_config(Fields) ->
  Default = [ {'clusters', list(slurmrestapi_v0_0_39_cluster_rec:slurmrestapi_v0_0_39_cluster_rec()) }
            , {'TRES', list(list()) }
            , {'accounts', list(slurmrestapi_v0_0_39_account:slurmrestapi_v0_0_39_account()) }
            , {'users', list(slurmrestapi_v0_0_39_user:slurmrestapi_v0_0_39_user()) }
            , {'qos', list(slurmrestapi_v0_0_39_qos:slurmrestapi_v0_0_39_qos()) }
            , {'wckeys', list(slurmrestapi_v0_0_39_wckey:slurmrestapi_v0_0_39_wckey()) }
            , {'associations', list(slurmrestapi_v0_0_39_assoc:slurmrestapi_v0_0_39_assoc()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

