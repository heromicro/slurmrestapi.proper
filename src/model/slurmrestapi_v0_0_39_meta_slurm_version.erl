-module(slurmrestapi_v0_0_39_meta_slurm_version).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_meta_slurm_version/0]).

-export([slurmrestapi_v0_0_39_meta_slurm_version/1]).

-export_type([slurmrestapi_v0_0_39_meta_slurm_version/0]).

-type slurmrestapi_v0_0_39_meta_slurm_version() ::
  [ {'major', integer() }
  | {'micro', integer() }
  | {'minor', integer() }
  ].


slurmrestapi_v0_0_39_meta_slurm_version() ->
    slurmrestapi_v0_0_39_meta_slurm_version([]).

slurmrestapi_v0_0_39_meta_slurm_version(Fields) ->
  Default = [ {'major', integer() }
            , {'micro', integer() }
            , {'minor', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

