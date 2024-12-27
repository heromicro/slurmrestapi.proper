-module(slurmrestapi_v0_0_41_openapi_diag_resp_statistics_schedule_exit).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_diag_resp_statistics_schedule_exit/0]).

-export([slurmrestapi_v0_0_41_openapi_diag_resp_statistics_schedule_exit/1]).

-export_type([slurmrestapi_v0_0_41_openapi_diag_resp_statistics_schedule_exit/0]).

-type slurmrestapi_v0_0_41_openapi_diag_resp_statistics_schedule_exit() ::
  [ {'end_job_queue', integer() }
  | {'default_queue_depth', integer() }
  | {'max_job_start', integer() }
  | {'max_rpc_cnt', integer() }
  | {'max_sched_time', integer() }
  | {'licenses', integer() }
  ].


slurmrestapi_v0_0_41_openapi_diag_resp_statistics_schedule_exit() ->
    slurmrestapi_v0_0_41_openapi_diag_resp_statistics_schedule_exit([]).

slurmrestapi_v0_0_41_openapi_diag_resp_statistics_schedule_exit(Fields) ->
  Default = [ {'end_job_queue', integer() }
            , {'default_queue_depth', integer() }
            , {'max_job_start', integer() }
            , {'max_rpc_cnt', integer() }
            , {'max_sched_time', integer() }
            , {'licenses', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

