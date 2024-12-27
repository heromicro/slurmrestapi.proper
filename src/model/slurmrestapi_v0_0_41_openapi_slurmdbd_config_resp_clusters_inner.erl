-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner/0]).

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner() ::
  [ {'controller', slurmrestapi_v0_0_40_cluster_rec_controller:slurmrestapi_v0_0_40_cluster_rec_controller() }
  | {'flags', list(binary()) }
  | {'name', binary() }
  | {'nodes', binary() }
  | {'select_plugin', binary() }
  | {'associations', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner_associations:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner_associations() }
  | {'rpc_version', integer() }
  | {'tres', list(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner()) }
  ].


slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner() ->
    slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner([]).

slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner(Fields) ->
  Default = [ {'controller', slurmrestapi_v0_0_40_cluster_rec_controller:slurmrestapi_v0_0_40_cluster_rec_controller() }
            , {'flags', list(binary()) }
            , {'name', binary() }
            , {'nodes', binary() }
            , {'select_plugin', binary() }
            , {'associations', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner_associations:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner_associations() }
            , {'rpc_version', integer() }
            , {'tres', list(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

