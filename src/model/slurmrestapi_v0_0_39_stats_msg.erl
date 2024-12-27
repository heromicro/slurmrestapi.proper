-module(slurmrestapi_v0_0_39_stats_msg).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_stats_msg/0]).

-export([slurmrestapi_v0_0_39_stats_msg/1]).

-export_type([slurmrestapi_v0_0_39_stats_msg/0]).

-type slurmrestapi_v0_0_39_stats_msg() ::
  [ {'parts_packed', integer() }
  | {'req_time', integer() }
  | {'req_time_start', integer() }
  | {'server_thread_count', integer() }
  | {'agent_queue_size', integer() }
  | {'agent_count', integer() }
  | {'agent_thread_count', integer() }
  | {'dbd_agent_queue_size', integer() }
  | {'gettimeofday_latency', integer() }
  | {'schedule_cycle_max', integer() }
  | {'schedule_cycle_last', integer() }
  | {'schedule_cycle_total', integer() }
  | {'schedule_cycle_mean', integer() }
  | {'schedule_cycle_mean_depth', integer() }
  | {'schedule_cycle_per_minute', integer() }
  | {'schedule_queue_length', integer() }
  | {'jobs_submitted', integer() }
  | {'jobs_started', integer() }
  | {'jobs_completed', integer() }
  | {'jobs_canceled', integer() }
  | {'jobs_failed', integer() }
  | {'jobs_pending', integer() }
  | {'jobs_running', integer() }
  | {'job_states_ts', integer() }
  | {'bf_backfilled_jobs', integer() }
  | {'bf_last_backfilled_jobs', integer() }
  | {'bf_backfilled_het_jobs', integer() }
  | {'bf_cycle_counter', integer() }
  | {'bf_cycle_mean', integer() }
  | {'bf_depth_mean', integer() }
  | {'bf_depth_mean_try', integer() }
  | {'bf_cycle_sum', integer() }
  | {'bf_cycle_last', integer() }
  | {'bf_last_depth', integer() }
  | {'bf_last_depth_try', integer() }
  | {'bf_depth_sum', integer() }
  | {'bf_depth_try_sum', integer() }
  | {'bf_queue_len', integer() }
  | {'bf_queue_len_mean', integer() }
  | {'bf_queue_len_sum', integer() }
  | {'bf_table_size', integer() }
  | {'bf_table_size_mean', integer() }
  | {'bf_when_last_cycle', integer() }
  | {'bf_active', boolean() }
  | {'rpcs_by_message_type', list(slurmrestapi_v0_0_40_stats_msg_rpcs_by_type_inner:slurmrestapi_v0_0_40_stats_msg_rpcs_by_type_inner()) }
  | {'rpcs_by_user', list(slurmrestapi_v0_0_40_stats_msg_rpcs_by_user_inner:slurmrestapi_v0_0_40_stats_msg_rpcs_by_user_inner()) }
  ].


slurmrestapi_v0_0_39_stats_msg() ->
    slurmrestapi_v0_0_39_stats_msg([]).

slurmrestapi_v0_0_39_stats_msg(Fields) ->
  Default = [ {'parts_packed', integer() }
            , {'req_time', integer() }
            , {'req_time_start', integer() }
            , {'server_thread_count', integer() }
            , {'agent_queue_size', integer() }
            , {'agent_count', integer() }
            , {'agent_thread_count', integer() }
            , {'dbd_agent_queue_size', integer() }
            , {'gettimeofday_latency', integer() }
            , {'schedule_cycle_max', integer() }
            , {'schedule_cycle_last', integer() }
            , {'schedule_cycle_total', integer() }
            , {'schedule_cycle_mean', integer() }
            , {'schedule_cycle_mean_depth', integer() }
            , {'schedule_cycle_per_minute', integer() }
            , {'schedule_queue_length', integer() }
            , {'jobs_submitted', integer() }
            , {'jobs_started', integer() }
            , {'jobs_completed', integer() }
            , {'jobs_canceled', integer() }
            , {'jobs_failed', integer() }
            , {'jobs_pending', integer() }
            , {'jobs_running', integer() }
            , {'job_states_ts', integer() }
            , {'bf_backfilled_jobs', integer() }
            , {'bf_last_backfilled_jobs', integer() }
            , {'bf_backfilled_het_jobs', integer() }
            , {'bf_cycle_counter', integer() }
            , {'bf_cycle_mean', integer() }
            , {'bf_depth_mean', integer() }
            , {'bf_depth_mean_try', integer() }
            , {'bf_cycle_sum', integer() }
            , {'bf_cycle_last', integer() }
            , {'bf_last_depth', integer() }
            , {'bf_last_depth_try', integer() }
            , {'bf_depth_sum', integer() }
            , {'bf_depth_try_sum', integer() }
            , {'bf_queue_len', integer() }
            , {'bf_queue_len_mean', integer() }
            , {'bf_queue_len_sum', integer() }
            , {'bf_table_size', integer() }
            , {'bf_table_size_mean', integer() }
            , {'bf_when_last_cycle', integer() }
            , {'bf_active', boolean() }
            , {'rpcs_by_message_type', list(slurmrestapi_v0_0_40_stats_msg_rpcs_by_type_inner:slurmrestapi_v0_0_40_stats_msg_rpcs_by_type_inner()) }
            , {'rpcs_by_user', list(slurmrestapi_v0_0_40_stats_msg_rpcs_by_user_inner:slurmrestapi_v0_0_40_stats_msg_rpcs_by_user_inner()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

