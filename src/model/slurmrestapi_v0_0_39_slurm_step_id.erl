-module(slurmrestapi_v0_0_39_slurm_step_id).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_slurm_step_id/0]).

-export([slurmrestapi_v0_0_39_slurm_step_id/1]).

-export_type([slurmrestapi_v0_0_39_slurm_step_id/0]).

-type slurmrestapi_v0_0_39_slurm_step_id() ::
  [ {'job_id', integer() }
  | {'step_het_component', integer() }
  | {'step_id', binary() }
  ].


slurmrestapi_v0_0_39_slurm_step_id() ->
    slurmrestapi_v0_0_39_slurm_step_id([]).

slurmrestapi_v0_0_39_slurm_step_id(Fields) ->
  Default = [ {'job_id', integer() }
            , {'step_het_component', integer() }
            , {'step_id', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

