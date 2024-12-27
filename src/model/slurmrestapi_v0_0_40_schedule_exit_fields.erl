-module(slurmrestapi_v0_0_40_schedule_exit_fields).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_schedule_exit_fields/0]).

-export([slurmrestapi_v0_0_40_schedule_exit_fields/1]).

-export_type([slurmrestapi_v0_0_40_schedule_exit_fields/0]).

-type slurmrestapi_v0_0_40_schedule_exit_fields() ::
  [ {'end_job_queue', integer() }
  | {'default_queue_depth', integer() }
  | {'max_job_start', integer() }
  | {'max_rpc_cnt', integer() }
  | {'max_sched_time', integer() }
  | {'licenses', integer() }
  ].


slurmrestapi_v0_0_40_schedule_exit_fields() ->
    slurmrestapi_v0_0_40_schedule_exit_fields([]).

slurmrestapi_v0_0_40_schedule_exit_fields(Fields) ->
  Default = [ {'end_job_queue', integer() }
            , {'default_queue_depth', integer() }
            , {'max_job_start', integer() }
            , {'max_rpc_cnt', integer() }
            , {'max_sched_time', integer() }
            , {'licenses', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

