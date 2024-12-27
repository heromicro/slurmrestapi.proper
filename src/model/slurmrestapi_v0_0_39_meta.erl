-module(slurmrestapi_v0_0_39_meta).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_meta/0]).

-export([slurmrestapi_v0_0_39_meta/1]).

-export_type([slurmrestapi_v0_0_39_meta/0]).

-type slurmrestapi_v0_0_39_meta() ::
  [ {'plugin', slurmrestapi_dbv0_0_39_meta_plugin:slurmrestapi_dbv0_0_39_meta_plugin() }
  | {'Slurm', slurmrestapi_dbv0_0_39_meta_slurm:slurmrestapi_dbv0_0_39_meta_slurm() }
  ].


slurmrestapi_v0_0_39_meta() ->
    slurmrestapi_v0_0_39_meta([]).

slurmrestapi_v0_0_39_meta(Fields) ->
  Default = [ {'plugin', slurmrestapi_dbv0_0_39_meta_plugin:slurmrestapi_dbv0_0_39_meta_plugin() }
            , {'Slurm', slurmrestapi_dbv0_0_39_meta_slurm:slurmrestapi_dbv0_0_39_meta_slurm() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

