-module(slurmrestapi_v0_0_39_meta_slurm).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_meta_slurm/0]).

-export([slurmrestapi_v0_0_39_meta_slurm/1]).

-export_type([slurmrestapi_v0_0_39_meta_slurm/0]).

-type slurmrestapi_v0_0_39_meta_slurm() ::
  [ {'version', slurmrestapi_v0_0_39_meta_slurm_version:slurmrestapi_v0_0_39_meta_slurm_version() }
  | {'release', binary() }
  ].


slurmrestapi_v0_0_39_meta_slurm() ->
    slurmrestapi_v0_0_39_meta_slurm([]).

slurmrestapi_v0_0_39_meta_slurm(Fields) ->
  Default = [ {'version', slurmrestapi_v0_0_39_meta_slurm_version:slurmrestapi_v0_0_39_meta_slurm_version() }
            , {'release', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

