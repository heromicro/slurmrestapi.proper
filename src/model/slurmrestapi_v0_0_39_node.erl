-module(slurmrestapi_v0_0_39_node).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_node/0]).

-export([slurmrestapi_v0_0_39_node/1]).

-export_type([slurmrestapi_v0_0_39_node/0]).

-type slurmrestapi_v0_0_39_node() ::
  [ {'architecture', binary() }
  | {'burstbuffer_network_address', binary() }
  | {'boards', integer() }
  | {'boot_time', integer() }
  | {'cluster_name', binary() }
  | {'cores', integer() }
  | {'specialized_cores', integer() }
  | {'cpu_binding', integer() }
  | {'cpu_load', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
  | {'free_mem', slurmrestapi_v0_0_39_uint64_no_val:slurmrestapi_v0_0_39_uint64_no_val() }
  | {'cpus', integer() }
  | {'effective_cpus', integer() }
  | {'specialized_cpus', binary() }
  | {'energy', slurmrestapi_v0_0_39_acct_gather_energy:slurmrestapi_v0_0_39_acct_gather_energy() }
  | {'external_sensors', slurmrestapi_v0_0_39_ext_sensors_data:slurmrestapi_v0_0_39_ext_sensors_data() }
  | {'extra', binary() }
  | {'power', slurmrestapi_v0_0_39_power_mgmt_data:slurmrestapi_v0_0_39_power_mgmt_data() }
  | {'features', list(binary()) }
  | {'active_features', list(binary()) }
  | {'gres', binary() }
  | {'gres_drained', binary() }
  | {'gres_used', binary() }
  | {'last_busy', integer() }
  | {'mcs_label', binary() }
  | {'specialized_memory', integer() }
  | {'name', binary() }
  | {'next_state_after_reboot', list(binary()) }
  | {'address', binary() }
  | {'hostname', binary() }
  | {'state', list(binary()) }
  | {'operating_system', binary() }
  | {'owner', binary() }
  | {'partitions', list(binary()) }
  | {'port', integer() }
  | {'real_memory', integer() }
  | {'comment', binary() }
  | {'reason', binary() }
  | {'reason_changed_at', integer() }
  | {'reason_set_by_user', binary() }
  | {'resume_after', slurmrestapi_v0_0_39_uint64_no_val:slurmrestapi_v0_0_39_uint64_no_val() }
  | {'reservation', binary() }
  | {'alloc_memory', integer() }
  | {'alloc_cpus', integer() }
  | {'alloc_idle_cpus', integer() }
  | {'tres_used', binary() }
  | {'tres_weighted', float() }
  | {'slurmd_start_time', integer() }
  | {'sockets', integer() }
  | {'threads', integer() }
  | {'temporary_disk', integer() }
  | {'weight', integer() }
  | {'tres', binary() }
  | {'version', binary() }
  ].


slurmrestapi_v0_0_39_node() ->
    slurmrestapi_v0_0_39_node([]).

slurmrestapi_v0_0_39_node(Fields) ->
  Default = [ {'architecture', binary() }
            , {'burstbuffer_network_address', binary() }
            , {'boards', integer() }
            , {'boot_time', integer() }
            , {'cluster_name', binary() }
            , {'cores', integer() }
            , {'specialized_cores', integer() }
            , {'cpu_binding', integer() }
            , {'cpu_load', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
            , {'free_mem', slurmrestapi_v0_0_39_uint64_no_val:slurmrestapi_v0_0_39_uint64_no_val() }
            , {'cpus', integer() }
            , {'effective_cpus', integer() }
            , {'specialized_cpus', binary() }
            , {'energy', slurmrestapi_v0_0_39_acct_gather_energy:slurmrestapi_v0_0_39_acct_gather_energy() }
            , {'external_sensors', slurmrestapi_v0_0_39_ext_sensors_data:slurmrestapi_v0_0_39_ext_sensors_data() }
            , {'extra', binary() }
            , {'power', slurmrestapi_v0_0_39_power_mgmt_data:slurmrestapi_v0_0_39_power_mgmt_data() }
            , {'features', list(binary()) }
            , {'active_features', list(binary()) }
            , {'gres', binary() }
            , {'gres_drained', binary() }
            , {'gres_used', binary() }
            , {'last_busy', integer() }
            , {'mcs_label', binary() }
            , {'specialized_memory', integer() }
            , {'name', binary() }
            , {'next_state_after_reboot', list(binary()) }
            , {'address', binary() }
            , {'hostname', binary() }
            , {'state', list(binary()) }
            , {'operating_system', binary() }
            , {'owner', binary() }
            , {'partitions', list(binary()) }
            , {'port', integer() }
            , {'real_memory', integer() }
            , {'comment', binary() }
            , {'reason', binary() }
            , {'reason_changed_at', integer() }
            , {'reason_set_by_user', binary() }
            , {'resume_after', slurmrestapi_v0_0_39_uint64_no_val:slurmrestapi_v0_0_39_uint64_no_val() }
            , {'reservation', binary() }
            , {'alloc_memory', integer() }
            , {'alloc_cpus', integer() }
            , {'alloc_idle_cpus', integer() }
            , {'tres_used', binary() }
            , {'tres_weighted', float() }
            , {'slurmd_start_time', integer() }
            , {'sockets', integer() }
            , {'threads', integer() }
            , {'temporary_disk', integer() }
            , {'weight', integer() }
            , {'tres', binary() }
            , {'version', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

