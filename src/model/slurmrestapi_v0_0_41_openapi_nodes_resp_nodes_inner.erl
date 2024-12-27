-module(slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner/0]).

-export([slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner/1]).

-export_type([slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner/0]).

-type slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner() ::
  [ {'architecture', binary() }
  | {'burstbuffer_network_address', binary() }
  | {'boards', integer() }
  | {'boot_time', slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_boot_time:slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_boot_time() }
  | {'cluster_name', binary() }
  | {'cores', integer() }
  | {'specialized_cores', integer() }
  | {'cpu_binding', integer() }
  | {'cpu_load', integer() }
  | {'free_mem', slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_free_mem:slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_free_mem() }
  | {'cpus', integer() }
  | {'effective_cpus', integer() }
  | {'specialized_cpus', binary() }
  | {'energy', slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_energy:slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_energy() }
  | {'external_sensors', map() }
  | {'extra', binary() }
  | {'power', map() }
  | {'features', list(binary()) }
  | {'active_features', list(binary()) }
  | {'gpu_spec', binary() }
  | {'gres', binary() }
  | {'gres_drained', binary() }
  | {'gres_used', binary() }
  | {'instance_id', binary() }
  | {'instance_type', binary() }
  | {'last_busy', slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_last_busy:slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_last_busy() }
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
  | {'res_cores_per_gpu', integer() }
  | {'comment', binary() }
  | {'reason', binary() }
  | {'reason_changed_at', slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_reason_changed_at:slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_reason_changed_at() }
  | {'reason_set_by_user', binary() }
  | {'resume_after', slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_resume_after:slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_resume_after() }
  | {'reservation', binary() }
  | {'alloc_memory', integer() }
  | {'alloc_cpus', integer() }
  | {'alloc_idle_cpus', integer() }
  | {'tres_used', binary() }
  | {'tres_weighted', float() }
  | {'slurmd_start_time', slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_slurmd_start_time:slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_slurmd_start_time() }
  | {'sockets', integer() }
  | {'threads', integer() }
  | {'temporary_disk', integer() }
  | {'weight', integer() }
  | {'tres', binary() }
  | {'version', binary() }
  ].


slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner() ->
    slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner([]).

slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner(Fields) ->
  Default = [ {'architecture', binary() }
            , {'burstbuffer_network_address', binary() }
            , {'boards', integer() }
            , {'boot_time', slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_boot_time:slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_boot_time() }
            , {'cluster_name', binary() }
            , {'cores', integer() }
            , {'specialized_cores', integer() }
            , {'cpu_binding', integer() }
            , {'cpu_load', integer() }
            , {'free_mem', slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_free_mem:slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_free_mem() }
            , {'cpus', integer() }
            , {'effective_cpus', integer() }
            , {'specialized_cpus', binary() }
            , {'energy', slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_energy:slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_energy() }
            , {'external_sensors', map() }
            , {'extra', binary() }
            , {'power', map() }
            , {'features', list(binary()) }
            , {'active_features', list(binary()) }
            , {'gpu_spec', binary() }
            , {'gres', binary() }
            , {'gres_drained', binary() }
            , {'gres_used', binary() }
            , {'instance_id', binary() }
            , {'instance_type', binary() }
            , {'last_busy', slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_last_busy:slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_last_busy() }
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
            , {'res_cores_per_gpu', integer() }
            , {'comment', binary() }
            , {'reason', binary() }
            , {'reason_changed_at', slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_reason_changed_at:slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_reason_changed_at() }
            , {'reason_set_by_user', binary() }
            , {'resume_after', slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_resume_after:slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_resume_after() }
            , {'reservation', binary() }
            , {'alloc_memory', integer() }
            , {'alloc_cpus', integer() }
            , {'alloc_idle_cpus', integer() }
            , {'tres_used', binary() }
            , {'tres_weighted', float() }
            , {'slurmd_start_time', slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_slurmd_start_time:slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_slurmd_start_time() }
            , {'sockets', integer() }
            , {'threads', integer() }
            , {'temporary_disk', integer() }
            , {'weight', integer() }
            , {'tres', binary() }
            , {'version', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

