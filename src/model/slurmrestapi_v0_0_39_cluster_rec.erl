-module(slurmrestapi_v0_0_39_cluster_rec).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_cluster_rec/0]).

-export([slurmrestapi_v0_0_39_cluster_rec/1]).

-export_type([slurmrestapi_v0_0_39_cluster_rec/0]).

-type slurmrestapi_v0_0_39_cluster_rec() ::
  [ {'controller', slurmrestapi_v0_0_39_cluster_rec_controller:slurmrestapi_v0_0_39_cluster_rec_controller() }
  | {'flags', list(binary()) }
  | {'name', binary() }
  | {'nodes', binary() }
  | {'select_plugin', binary() }
  | {'associations', slurmrestapi_v0_0_39_cluster_rec_associations:slurmrestapi_v0_0_39_cluster_rec_associations() }
  | {'rpc_version', integer() }
  | {'tres', list(slurmrestapi_v0_0_39_tres:slurmrestapi_v0_0_39_tres()) }
  ].


slurmrestapi_v0_0_39_cluster_rec() ->
    slurmrestapi_v0_0_39_cluster_rec([]).

slurmrestapi_v0_0_39_cluster_rec(Fields) ->
  Default = [ {'controller', slurmrestapi_v0_0_39_cluster_rec_controller:slurmrestapi_v0_0_39_cluster_rec_controller() }
            , {'flags', list(binary()) }
            , {'name', binary() }
            , {'nodes', binary() }
            , {'select_plugin', binary() }
            , {'associations', slurmrestapi_v0_0_39_cluster_rec_associations:slurmrestapi_v0_0_39_cluster_rec_associations() }
            , {'rpc_version', integer() }
            , {'tres', list(slurmrestapi_v0_0_39_tres:slurmrestapi_v0_0_39_tres()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

