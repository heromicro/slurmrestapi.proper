-module(slurmrestapi_v0_0_39_cluster_rec_controller).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_cluster_rec_controller/0]).

-export([slurmrestapi_v0_0_39_cluster_rec_controller/1]).

-export_type([slurmrestapi_v0_0_39_cluster_rec_controller/0]).

-type slurmrestapi_v0_0_39_cluster_rec_controller() ::
  [ {'port', integer() }
  ].


slurmrestapi_v0_0_39_cluster_rec_controller() ->
    slurmrestapi_v0_0_39_cluster_rec_controller([]).

slurmrestapi_v0_0_39_cluster_rec_controller(Fields) ->
  Default = [ {'port', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

