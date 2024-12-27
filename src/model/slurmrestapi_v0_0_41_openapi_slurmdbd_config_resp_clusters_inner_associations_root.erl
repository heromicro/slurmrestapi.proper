-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner_associations_root).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner_associations_root/0]).

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner_associations_root/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner_associations_root/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner_associations_root() ::
  [ {'account', binary() }
  | {'cluster', binary() }
  | {'partition', binary() }
  | {'user', binary() }
  | {'id', integer() }
  ].


slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner_associations_root() ->
    slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner_associations_root([]).

slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner_associations_root(Fields) ->
  Default = [ {'account', binary() }
            , {'cluster', binary() }
            , {'partition', binary() }
            , {'user', binary() }
            , {'id', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

