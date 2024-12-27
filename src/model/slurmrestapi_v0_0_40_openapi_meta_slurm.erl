-module(slurmrestapi_v0_0_40_openapi_meta_slurm).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_openapi_meta_slurm/0]).

-export([slurmrestapi_v0_0_40_openapi_meta_slurm/1]).

-export_type([slurmrestapi_v0_0_40_openapi_meta_slurm/0]).

-type slurmrestapi_v0_0_40_openapi_meta_slurm() ::
  [ {'version', slurmrestapi_v0_0_40_openapi_meta_slurm_version:slurmrestapi_v0_0_40_openapi_meta_slurm_version() }
  | {'release', binary() }
  | {'cluster', binary() }
  ].


slurmrestapi_v0_0_40_openapi_meta_slurm() ->
    slurmrestapi_v0_0_40_openapi_meta_slurm([]).

slurmrestapi_v0_0_40_openapi_meta_slurm(Fields) ->
  Default = [ {'version', slurmrestapi_v0_0_40_openapi_meta_slurm_version:slurmrestapi_v0_0_40_openapi_meta_slurm_version() }
            , {'release', binary() }
            , {'cluster', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

