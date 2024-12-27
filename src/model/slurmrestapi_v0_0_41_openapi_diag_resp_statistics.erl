-module(slurmrestapi_v0_0_41_openapi_diag_resp_statistics).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_diag_resp_statistics/0]).

-export([slurmrestapi_v0_0_41_openapi_diag_resp_statistics/1]).

-export_type([slurmrestapi_v0_0_41_openapi_diag_resp_statistics/0]).

-type slurmrestapi_v0_0_41_openapi_diag_resp_statistics() ::
  [ {'parts_packed', integer() }
  | {'req_time', slurmrestapi_v0_0_41_openapi_diag_resp_statistics_req_time:slurmrestapi_v0_0_41_openapi_diag_resp_statistics_req_time() }
  | {'req_time_start', slurmrestapi_v0_0_41_openapi_diag_resp_statistics_req_time_start:slurmrestapi_v0_0_41_openapi_diag_resp_statistics_req_time_start() }
  | {'server_thread_count', integer() }
  | {'agent_queue_size', integer() }
  | {'agent_count', integer() }
  | {'agent_thread_count', integer() }
  | {'dbd_agent_queue_size', integer() }
  | {'gettimeofday_latency', integer() }
  | {'schedule_cycle_max', integer() }
  | {'schedule_cycle_last', integer() }
  | {'schedule_cycle_sum', integer() }
  | {'schedule_cycle_total', integer() }
  | {'schedule_cycle_mean', integer() }
  | {'schedule_cycle_mean_depth', integer() }
  | {'schedule_cycle_per_minute', integer() }
  | {'schedule_cycle_depth', integer() }
  | {'schedule_exit', slurmrestapi_v0_0_41_openapi_diag_resp_statistics_schedule_exit:slurmrestapi_v0_0_41_openapi_diag_resp_statistics_schedule_exit() }
  | {'schedule_queue_length', integer() }
  | {'jobs_submitted', integer() }
  | {'jobs_started', integer() }
  | {'jobs_completed', integer() }
  | {'jobs_canceled', integer() }
  | {'jobs_failed', integer() }
  | {'jobs_pending', integer() }
  | {'jobs_running', integer() }
  | {'job_states_ts', slurmrestapi_v0_0_41_openapi_diag_resp_statistics_job_states_ts:slurmrestapi_v0_0_41_openapi_diag_resp_statistics_job_states_ts() }
  | {'bf_backfilled_jobs', integer() }
  | {'bf_last_backfilled_jobs', integer() }
  | {'bf_backfilled_het_jobs', integer() }
  | {'bf_cycle_counter', integer() }
  | {'bf_cycle_mean', integer() }
  | {'bf_depth_mean', integer() }
  | {'bf_depth_mean_try', integer() }
  | {'bf_cycle_sum', integer() }
  | {'bf_cycle_last', integer() }
  | {'bf_cycle_max', integer() }
  | {'bf_exit', slurmrestapi_v0_0_41_openapi_diag_resp_statistics_bf_exit:slurmrestapi_v0_0_41_openapi_diag_resp_statistics_bf_exit() }
  | {'bf_last_depth', integer() }
  | {'bf_last_depth_try', integer() }
  | {'bf_depth_sum', integer() }
  | {'bf_depth_try_sum', integer() }
  | {'bf_queue_len', integer() }
  | {'bf_queue_len_mean', integer() }
  | {'bf_queue_len_sum', integer() }
  | {'bf_table_size', integer() }
  | {'bf_table_size_sum', integer() }
  | {'bf_table_size_mean', integer() }
  | {'bf_when_last_cycle', slurmrestapi_v0_0_41_openapi_diag_resp_statistics_bf_when_last_cycle:slurmrestapi_v0_0_41_openapi_diag_resp_statistics_bf_when_last_cycle() }
  | {'bf_active', boolean() }
  | {'rpcs_by_message_type', list(slurmrestapi_v0_0_41_openapi_diag_resp_statistics_rpcs_by_message_type_inner:slurmrestapi_v0_0_41_openapi_diag_resp_statistics_rpcs_by_message_type_inner()) }
  | {'rpcs_by_user', list(slurmrestapi_v0_0_41_openapi_diag_resp_statistics_rpcs_by_user_inner:slurmrestapi_v0_0_41_openapi_diag_resp_statistics_rpcs_by_user_inner()) }
  | {'pending_rpcs', list(slurmrestapi_v0_0_41_openapi_diag_resp_statistics_pending_rpcs_inner:slurmrestapi_v0_0_41_openapi_diag_resp_statistics_pending_rpcs_inner()) }
  | {'pending_rpcs_by_hostlist', list(slurmrestapi_v0_0_41_openapi_diag_resp_statistics_pending_rpcs_by_hostlist_inner:slurmrestapi_v0_0_41_openapi_diag_resp_statistics_pending_rpcs_by_hostlist_inner()) }
  ].


slurmrestapi_v0_0_41_openapi_diag_resp_statistics() ->
    slurmrestapi_v0_0_41_openapi_diag_resp_statistics([]).

slurmrestapi_v0_0_41_openapi_diag_resp_statistics(Fields) ->
  Default = [ {'parts_packed', integer() }
            , {'req_time', slurmrestapi_v0_0_41_openapi_diag_resp_statistics_req_time:slurmrestapi_v0_0_41_openapi_diag_resp_statistics_req_time() }
            , {'req_time_start', slurmrestapi_v0_0_41_openapi_diag_resp_statistics_req_time_start:slurmrestapi_v0_0_41_openapi_diag_resp_statistics_req_time_start() }
            , {'server_thread_count', integer() }
            , {'agent_queue_size', integer() }
            , {'agent_count', integer() }
            , {'agent_thread_count', integer() }
            , {'dbd_agent_queue_size', integer() }
            , {'gettimeofday_latency', integer() }
            , {'schedule_cycle_max', integer() }
            , {'schedule_cycle_last', integer() }
            , {'schedule_cycle_sum', integer() }
            , {'schedule_cycle_total', integer() }
            , {'schedule_cycle_mean', integer() }
            , {'schedule_cycle_mean_depth', integer() }
            , {'schedule_cycle_per_minute', integer() }
            , {'schedule_cycle_depth', integer() }
            , {'schedule_exit', slurmrestapi_v0_0_41_openapi_diag_resp_statistics_schedule_exit:slurmrestapi_v0_0_41_openapi_diag_resp_statistics_schedule_exit() }
            , {'schedule_queue_length', integer() }
            , {'jobs_submitted', integer() }
            , {'jobs_started', integer() }
            , {'jobs_completed', integer() }
            , {'jobs_canceled', integer() }
            , {'jobs_failed', integer() }
            , {'jobs_pending', integer() }
            , {'jobs_running', integer() }
            , {'job_states_ts', slurmrestapi_v0_0_41_openapi_diag_resp_statistics_job_states_ts:slurmrestapi_v0_0_41_openapi_diag_resp_statistics_job_states_ts() }
            , {'bf_backfilled_jobs', integer() }
            , {'bf_last_backfilled_jobs', integer() }
            , {'bf_backfilled_het_jobs', integer() }
            , {'bf_cycle_counter', integer() }
            , {'bf_cycle_mean', integer() }
            , {'bf_depth_mean', integer() }
            , {'bf_depth_mean_try', integer() }
            , {'bf_cycle_sum', integer() }
            , {'bf_cycle_last', integer() }
            , {'bf_cycle_max', integer() }
            , {'bf_exit', slurmrestapi_v0_0_41_openapi_diag_resp_statistics_bf_exit:slurmrestapi_v0_0_41_openapi_diag_resp_statistics_bf_exit() }
            , {'bf_last_depth', integer() }
            , {'bf_last_depth_try', integer() }
            , {'bf_depth_sum', integer() }
            , {'bf_depth_try_sum', integer() }
            , {'bf_queue_len', integer() }
            , {'bf_queue_len_mean', integer() }
            , {'bf_queue_len_sum', integer() }
            , {'bf_table_size', integer() }
            , {'bf_table_size_sum', integer() }
            , {'bf_table_size_mean', integer() }
            , {'bf_when_last_cycle', slurmrestapi_v0_0_41_openapi_diag_resp_statistics_bf_when_last_cycle:slurmrestapi_v0_0_41_openapi_diag_resp_statistics_bf_when_last_cycle() }
            , {'bf_active', boolean() }
            , {'rpcs_by_message_type', list(slurmrestapi_v0_0_41_openapi_diag_resp_statistics_rpcs_by_message_type_inner:slurmrestapi_v0_0_41_openapi_diag_resp_statistics_rpcs_by_message_type_inner()) }
            , {'rpcs_by_user', list(slurmrestapi_v0_0_41_openapi_diag_resp_statistics_rpcs_by_user_inner:slurmrestapi_v0_0_41_openapi_diag_resp_statistics_rpcs_by_user_inner()) }
            , {'pending_rpcs', list(slurmrestapi_v0_0_41_openapi_diag_resp_statistics_pending_rpcs_inner:slurmrestapi_v0_0_41_openapi_diag_resp_statistics_pending_rpcs_inner()) }
            , {'pending_rpcs_by_hostlist', list(slurmrestapi_v0_0_41_openapi_diag_resp_statistics_pending_rpcs_by_hostlist_inner:slurmrestapi_v0_0_41_openapi_diag_resp_statistics_pending_rpcs_by_hostlist_inner()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

