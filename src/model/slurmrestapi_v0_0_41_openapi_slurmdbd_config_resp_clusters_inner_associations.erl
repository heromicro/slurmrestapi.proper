-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner_associations).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner_associations/0]).

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner_associations/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner_associations/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner_associations() ::
  [ {'root', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner_associations_root:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner_associations_root() }
  ].


slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner_associations() ->
    slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner_associations([]).

slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner_associations(Fields) ->
  Default = [ {'root', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner_associations_root:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner_associations_root() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

