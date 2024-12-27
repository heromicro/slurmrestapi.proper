-module(slurmrestapi_v0_0_39_step_step).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_step_step/0]).

-export([slurmrestapi_v0_0_39_step_step/1]).

-export_type([slurmrestapi_v0_0_39_step_step/0]).

-type slurmrestapi_v0_0_39_step_step() ::
  [ {'id', slurmrestapi_v0_0_39_slurm_step_id:slurmrestapi_v0_0_39_slurm_step_id() }
  | {'name', binary() }
  ].


slurmrestapi_v0_0_39_step_step() ->
    slurmrestapi_v0_0_39_step_step([]).

slurmrestapi_v0_0_39_step_step(Fields) ->
  Default = [ {'id', slurmrestapi_v0_0_39_slurm_step_id:slurmrestapi_v0_0_39_slurm_step_id() }
            , {'name', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

