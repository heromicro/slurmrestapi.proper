-module(slurmrestapi_v0_0_39_cluster_rec_associations).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_cluster_rec_associations/0]).

-export([slurmrestapi_v0_0_39_cluster_rec_associations/1]).

-export_type([slurmrestapi_v0_0_39_cluster_rec_associations/0]).

-type slurmrestapi_v0_0_39_cluster_rec_associations() ::
  [ {'root', slurmrestapi_v0_0_39_assoc_short:slurmrestapi_v0_0_39_assoc_short() }
  ].


slurmrestapi_v0_0_39_cluster_rec_associations() ->
    slurmrestapi_v0_0_39_cluster_rec_associations([]).

slurmrestapi_v0_0_39_cluster_rec_associations(Fields) ->
  Default = [ {'root', slurmrestapi_v0_0_39_assoc_short:slurmrestapi_v0_0_39_assoc_short() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

