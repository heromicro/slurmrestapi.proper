-module(slurmrestapi_v0_0_39_job_info).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_job_info/0]).

-export([slurmrestapi_v0_0_39_job_info/1]).

-export_type([slurmrestapi_v0_0_39_job_info/0]).

-type slurmrestapi_v0_0_39_job_info() ::
  [ {'account', binary() }
  | {'accrue_time', integer() }
  | {'admin_comment', binary() }
  | {'allocating_node', binary() }
  | {'array_job_id', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
  | {'array_task_id', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
  | {'array_max_tasks', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
  | {'array_task_string', binary() }
  | {'association_id', integer() }
  | {'batch_features', binary() }
  | {'batch_flag', boolean() }
  | {'batch_host', binary() }
  | {'flags', list(binary()) }
  | {'burst_buffer', binary() }
  | {'burst_buffer_state', binary() }
  | {'cluster', binary() }
  | {'cluster_features', binary() }
  | {'command', binary() }
  | {'comment', binary() }
  | {'container', binary() }
  | {'container_id', binary() }
  | {'contiguous', boolean() }
  | {'core_spec', integer() }
  | {'thread_spec', integer() }
  | {'cores_per_socket', slurmrestapi_v0_0_39_uint16_no_val:slurmrestapi_v0_0_39_uint16_no_val() }
  | {'billable_tres', slurmrestapi_v0_0_39_float64_no_val:slurmrestapi_v0_0_39_float64_no_val() }
  | {'cpus_per_task', slurmrestapi_v0_0_39_uint16_no_val:slurmrestapi_v0_0_39_uint16_no_val() }
  | {'cpu_frequency_minimum', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
  | {'cpu_frequency_maximum', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
  | {'cpu_frequency_governor', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
  | {'cpus_per_tres', binary() }
  | {'cron', binary() }
  | {'deadline', integer() }
  | {'delay_boot', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
  | {'dependency', binary() }
  | {'derived_exit_code', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
  | {'eligible_time', integer() }
  | {'end_time', integer() }
  | {'excluded_nodes', binary() }
  | {'exit_code', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
  | {'extra', binary() }
  | {'failed_node', binary() }
  | {'features', binary() }
  | {'federation_origin', binary() }
  | {'federation_siblings_active', binary() }
  | {'federation_siblings_viable', binary() }
  | {'gres_detail', list(binary()) }
  | {'group_id', integer() }
  | {'group_name', binary() }
  | {'het_job_id', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
  | {'het_job_id_set', binary() }
  | {'het_job_offset', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
  | {'job_id', integer() }
  | {'job_resources', slurmrestapi_v0_0_39_job_res:slurmrestapi_v0_0_39_job_res() }
  | {'job_size_str', list(binary()) }
  | {'job_state', binary() }
  | {'last_sched_evaluation', integer() }
  | {'licenses', binary() }
  | {'mail_type', list(binary()) }
  | {'mail_user', binary() }
  | {'max_cpus', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
  | {'max_nodes', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
  | {'mcs_label', binary() }
  | {'memory_per_tres', binary() }
  | {'name', binary() }
  | {'network', binary() }
  | {'nodes', binary() }
  | {'nice', integer() }
  | {'tasks_per_core', slurmrestapi_v0_0_39_uint16_no_val:slurmrestapi_v0_0_39_uint16_no_val() }
  | {'tasks_per_tres', slurmrestapi_v0_0_39_uint16_no_val:slurmrestapi_v0_0_39_uint16_no_val() }
  | {'tasks_per_node', slurmrestapi_v0_0_39_uint16_no_val:slurmrestapi_v0_0_39_uint16_no_val() }
  | {'tasks_per_socket', slurmrestapi_v0_0_39_uint16_no_val:slurmrestapi_v0_0_39_uint16_no_val() }
  | {'tasks_per_board', slurmrestapi_v0_0_39_uint16_no_val:slurmrestapi_v0_0_39_uint16_no_val() }
  | {'cpus', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
  | {'node_count', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
  | {'tasks', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
  | {'partition', binary() }
  | {'prefer', binary() }
  | {'memory_per_cpu', slurmrestapi_v0_0_39_uint64_no_val:slurmrestapi_v0_0_39_uint64_no_val() }
  | {'memory_per_node', slurmrestapi_v0_0_39_uint64_no_val:slurmrestapi_v0_0_39_uint64_no_val() }
  | {'minimum_cpus_per_node', slurmrestapi_v0_0_39_uint16_no_val:slurmrestapi_v0_0_39_uint16_no_val() }
  | {'minimum_tmp_disk_per_node', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
  | {'power', slurmrestapi_v0_0_39_job_info_power:slurmrestapi_v0_0_39_job_info_power() }
  | {'preempt_time', integer() }
  | {'preemptable_time', integer() }
  | {'pre_sus_time', integer() }
  | {'hold', boolean() }
  | {'priority', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
  | {'profile', list(binary()) }
  | {'qos', binary() }
  | {'reboot', boolean() }
  | {'required_nodes', binary() }
  | {'minimum_switches', integer() }
  | {'requeue', boolean() }
  | {'resize_time', integer() }
  | {'restart_cnt', integer() }
  | {'resv_name', binary() }
  | {'scheduled_nodes', binary() }
  | {'selinux_context', binary() }
  | {'shared', list(binary()) }
  | {'exclusive', list(binary()) }
  | {'oversubscribe', boolean() }
  | {'show_flags', list(binary()) }
  | {'sockets_per_board', integer() }
  | {'sockets_per_node', slurmrestapi_v0_0_39_uint16_no_val:slurmrestapi_v0_0_39_uint16_no_val() }
  | {'start_time', integer() }
  | {'state_description', binary() }
  | {'state_reason', binary() }
  | {'standard_error', binary() }
  | {'standard_input', binary() }
  | {'standard_output', binary() }
  | {'submit_time', integer() }
  | {'suspend_time', integer() }
  | {'system_comment', binary() }
  | {'time_limit', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
  | {'time_minimum', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
  | {'threads_per_core', slurmrestapi_v0_0_39_uint16_no_val:slurmrestapi_v0_0_39_uint16_no_val() }
  | {'tres_bind', binary() }
  | {'tres_freq', binary() }
  | {'tres_per_job', binary() }
  | {'tres_per_node', binary() }
  | {'tres_per_socket', binary() }
  | {'tres_per_task', binary() }
  | {'tres_req_str', binary() }
  | {'tres_alloc_str', binary() }
  | {'user_id', integer() }
  | {'user_name', binary() }
  | {'maximum_switch_wait_time', integer() }
  | {'wckey', binary() }
  | {'current_working_directory', binary() }
  ].


slurmrestapi_v0_0_39_job_info() ->
    slurmrestapi_v0_0_39_job_info([]).

slurmrestapi_v0_0_39_job_info(Fields) ->
  Default = [ {'account', binary() }
            , {'accrue_time', integer() }
            , {'admin_comment', binary() }
            , {'allocating_node', binary() }
            , {'array_job_id', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
            , {'array_task_id', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
            , {'array_max_tasks', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
            , {'array_task_string', binary() }
            , {'association_id', integer() }
            , {'batch_features', binary() }
            , {'batch_flag', boolean() }
            , {'batch_host', binary() }
            , {'flags', list(binary()) }
            , {'burst_buffer', binary() }
            , {'burst_buffer_state', binary() }
            , {'cluster', binary() }
            , {'cluster_features', binary() }
            , {'command', binary() }
            , {'comment', binary() }
            , {'container', binary() }
            , {'container_id', binary() }
            , {'contiguous', boolean() }
            , {'core_spec', integer() }
            , {'thread_spec', integer() }
            , {'cores_per_socket', slurmrestapi_v0_0_39_uint16_no_val:slurmrestapi_v0_0_39_uint16_no_val() }
            , {'billable_tres', slurmrestapi_v0_0_39_float64_no_val:slurmrestapi_v0_0_39_float64_no_val() }
            , {'cpus_per_task', slurmrestapi_v0_0_39_uint16_no_val:slurmrestapi_v0_0_39_uint16_no_val() }
            , {'cpu_frequency_minimum', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
            , {'cpu_frequency_maximum', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
            , {'cpu_frequency_governor', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
            , {'cpus_per_tres', binary() }
            , {'cron', binary() }
            , {'deadline', integer() }
            , {'delay_boot', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
            , {'dependency', binary() }
            , {'derived_exit_code', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
            , {'eligible_time', integer() }
            , {'end_time', integer() }
            , {'excluded_nodes', binary() }
            , {'exit_code', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
            , {'extra', binary() }
            , {'failed_node', binary() }
            , {'features', binary() }
            , {'federation_origin', binary() }
            , {'federation_siblings_active', binary() }
            , {'federation_siblings_viable', binary() }
            , {'gres_detail', list(binary()) }
            , {'group_id', integer() }
            , {'group_name', binary() }
            , {'het_job_id', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
            , {'het_job_id_set', binary() }
            , {'het_job_offset', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
            , {'job_id', integer() }
            , {'job_resources', slurmrestapi_v0_0_39_job_res:slurmrestapi_v0_0_39_job_res() }
            , {'job_size_str', list(binary()) }
            , {'job_state', binary() }
            , {'last_sched_evaluation', integer() }
            , {'licenses', binary() }
            , {'mail_type', list(binary()) }
            , {'mail_user', binary() }
            , {'max_cpus', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
            , {'max_nodes', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
            , {'mcs_label', binary() }
            , {'memory_per_tres', binary() }
            , {'name', binary() }
            , {'network', binary() }
            , {'nodes', binary() }
            , {'nice', integer() }
            , {'tasks_per_core', slurmrestapi_v0_0_39_uint16_no_val:slurmrestapi_v0_0_39_uint16_no_val() }
            , {'tasks_per_tres', slurmrestapi_v0_0_39_uint16_no_val:slurmrestapi_v0_0_39_uint16_no_val() }
            , {'tasks_per_node', slurmrestapi_v0_0_39_uint16_no_val:slurmrestapi_v0_0_39_uint16_no_val() }
            , {'tasks_per_socket', slurmrestapi_v0_0_39_uint16_no_val:slurmrestapi_v0_0_39_uint16_no_val() }
            , {'tasks_per_board', slurmrestapi_v0_0_39_uint16_no_val:slurmrestapi_v0_0_39_uint16_no_val() }
            , {'cpus', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
            , {'node_count', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
            , {'tasks', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
            , {'partition', binary() }
            , {'prefer', binary() }
            , {'memory_per_cpu', slurmrestapi_v0_0_39_uint64_no_val:slurmrestapi_v0_0_39_uint64_no_val() }
            , {'memory_per_node', slurmrestapi_v0_0_39_uint64_no_val:slurmrestapi_v0_0_39_uint64_no_val() }
            , {'minimum_cpus_per_node', slurmrestapi_v0_0_39_uint16_no_val:slurmrestapi_v0_0_39_uint16_no_val() }
            , {'minimum_tmp_disk_per_node', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
            , {'power', slurmrestapi_v0_0_39_job_info_power:slurmrestapi_v0_0_39_job_info_power() }
            , {'preempt_time', integer() }
            , {'preemptable_time', integer() }
            , {'pre_sus_time', integer() }
            , {'hold', boolean() }
            , {'priority', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
            , {'profile', list(binary()) }
            , {'qos', binary() }
            , {'reboot', boolean() }
            , {'required_nodes', binary() }
            , {'minimum_switches', integer() }
            , {'requeue', boolean() }
            , {'resize_time', integer() }
            , {'restart_cnt', integer() }
            , {'resv_name', binary() }
            , {'scheduled_nodes', binary() }
            , {'selinux_context', binary() }
            , {'shared', list(binary()) }
            , {'exclusive', list(binary()) }
            , {'oversubscribe', boolean() }
            , {'show_flags', list(binary()) }
            , {'sockets_per_board', integer() }
            , {'sockets_per_node', slurmrestapi_v0_0_39_uint16_no_val:slurmrestapi_v0_0_39_uint16_no_val() }
            , {'start_time', integer() }
            , {'state_description', binary() }
            , {'state_reason', binary() }
            , {'standard_error', binary() }
            , {'standard_input', binary() }
            , {'standard_output', binary() }
            , {'submit_time', integer() }
            , {'suspend_time', integer() }
            , {'system_comment', binary() }
            , {'time_limit', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
            , {'time_minimum', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
            , {'threads_per_core', slurmrestapi_v0_0_39_uint16_no_val:slurmrestapi_v0_0_39_uint16_no_val() }
            , {'tres_bind', binary() }
            , {'tres_freq', binary() }
            , {'tres_per_job', binary() }
            , {'tres_per_node', binary() }
            , {'tres_per_socket', binary() }
            , {'tres_per_task', binary() }
            , {'tres_req_str', binary() }
            , {'tres_alloc_str', binary() }
            , {'user_id', integer() }
            , {'user_name', binary() }
            , {'maximum_switch_wait_time', integer() }
            , {'wckey', binary() }
            , {'current_working_directory', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

