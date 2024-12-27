-module(slurmrestapi_v0_0_40_openapi_meta).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_openapi_meta/0]).

-export([slurmrestapi_v0_0_40_openapi_meta/1]).

-export_type([slurmrestapi_v0_0_40_openapi_meta/0]).

-type slurmrestapi_v0_0_40_openapi_meta() ::
  [ {'plugin', slurmrestapi_v0_0_40_openapi_meta_plugin:slurmrestapi_v0_0_40_openapi_meta_plugin() }
  | {'client', slurmrestapi_v0_0_40_openapi_meta_client:slurmrestapi_v0_0_40_openapi_meta_client() }
  | {'command', list(binary()) }
  | {'slurm', slurmrestapi_v0_0_40_openapi_meta_slurm:slurmrestapi_v0_0_40_openapi_meta_slurm() }
  ].


slurmrestapi_v0_0_40_openapi_meta() ->
    slurmrestapi_v0_0_40_openapi_meta([]).

slurmrestapi_v0_0_40_openapi_meta(Fields) ->
  Default = [ {'plugin', slurmrestapi_v0_0_40_openapi_meta_plugin:slurmrestapi_v0_0_40_openapi_meta_plugin() }
            , {'client', slurmrestapi_v0_0_40_openapi_meta_client:slurmrestapi_v0_0_40_openapi_meta_client() }
            , {'command', list(binary()) }
            , {'slurm', slurmrestapi_v0_0_40_openapi_meta_slurm:slurmrestapi_v0_0_40_openapi_meta_slurm() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

