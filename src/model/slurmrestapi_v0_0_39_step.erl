-module(slurmrestapi_v0_0_39_step).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_step/0]).

-export([slurmrestapi_v0_0_39_step/1]).

-export_type([slurmrestapi_v0_0_39_step/0]).

-type slurmrestapi_v0_0_39_step() ::
  [ {'time', slurmrestapi_v0_0_39_step_time:slurmrestapi_v0_0_39_step_time() }
  | {'exit_code', slurmrestapi_v0_0_39_job_exit_code:slurmrestapi_v0_0_39_job_exit_code() }
  | {'nodes', slurmrestapi_v0_0_39_step_nodes:slurmrestapi_v0_0_39_step_nodes() }
  | {'tasks', slurmrestapi_v0_0_39_step_tasks:slurmrestapi_v0_0_39_step_tasks() }
  | {'pid', binary() }
  | {'CPU', slurmrestapi_v0_0_39_step_cpu:slurmrestapi_v0_0_39_step_cpu() }
  | {'kill_request_user', binary() }
  | {'state', binary() }
  | {'statistics', slurmrestapi_v0_0_39_step_statistics:slurmrestapi_v0_0_39_step_statistics() }
  | {'step', slurmrestapi_v0_0_39_job_reservation:slurmrestapi_v0_0_39_job_reservation() }
  | {'task', slurmrestapi_v0_0_39_step_task:slurmrestapi_v0_0_39_step_task() }
  | {'tres', slurmrestapi_v0_0_39_step_tres:slurmrestapi_v0_0_39_step_tres() }
  ].


slurmrestapi_v0_0_39_step() ->
    slurmrestapi_v0_0_39_step([]).

slurmrestapi_v0_0_39_step(Fields) ->
  Default = [ {'time', slurmrestapi_v0_0_39_step_time:slurmrestapi_v0_0_39_step_time() }
            , {'exit_code', slurmrestapi_v0_0_39_job_exit_code:slurmrestapi_v0_0_39_job_exit_code() }
            , {'nodes', slurmrestapi_v0_0_39_step_nodes:slurmrestapi_v0_0_39_step_nodes() }
            , {'tasks', slurmrestapi_v0_0_39_step_tasks:slurmrestapi_v0_0_39_step_tasks() }
            , {'pid', binary() }
            , {'CPU', slurmrestapi_v0_0_39_step_cpu:slurmrestapi_v0_0_39_step_cpu() }
            , {'kill_request_user', binary() }
            , {'state', binary() }
            , {'statistics', slurmrestapi_v0_0_39_step_statistics:slurmrestapi_v0_0_39_step_statistics() }
            , {'step', slurmrestapi_v0_0_39_job_reservation:slurmrestapi_v0_0_39_job_reservation() }
            , {'task', slurmrestapi_v0_0_39_step_task:slurmrestapi_v0_0_39_step_task() }
            , {'tres', slurmrestapi_v0_0_39_step_tres:slurmrestapi_v0_0_39_step_tres() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

