-module(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner/0]).

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner() ::
  [ {'account', binary() }
  | {'comment', slurmrestapi_v0_0_40_job_comment:slurmrestapi_v0_0_40_job_comment() }
  | {'allocation_nodes', integer() }
  | {'array', slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_array:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_array() }
  | {'association', slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_association:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_association() }
  | {'block', binary() }
  | {'cluster', binary() }
  | {'constraints', binary() }
  | {'container', binary() }
  | {'derived_exit_code', slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code() }
  | {'time', slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_time:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_time() }
  | {'exit_code', slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_exit_code:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_exit_code() }
  | {'extra', binary() }
  | {'failed_node', binary() }
  | {'flags', list(binary()) }
  | {'group', binary() }
  | {'het', slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_het:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_het() }
  | {'job_id', integer() }
  | {'name', binary() }
  | {'licenses', binary() }
  | {'mcs', slurmrestapi_v0_0_40_job_mcs:slurmrestapi_v0_0_40_job_mcs() }
  | {'nodes', binary() }
  | {'partition', binary() }
  | {'hold', boolean() }
  | {'priority', slurmrestapi_v0_0_41_job_desc_msg_priority:slurmrestapi_v0_0_41_job_desc_msg_priority() }
  | {'qos', binary() }
  | {'required', slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_required:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_required() }
  | {'kill_request_user', binary() }
  | {'reservation', slurmrestapi_v0_0_40_job_reservation:slurmrestapi_v0_0_40_job_reservation() }
  | {'script', binary() }
  | {'stdin_expanded', binary() }
  | {'stdout_expanded', binary() }
  | {'stderr_expanded', binary() }
  | {'stdout', binary() }
  | {'stderr', binary() }
  | {'stdin', binary() }
  | {'state', slurmrestapi_v0_0_40_job_state:slurmrestapi_v0_0_40_job_state() }
  | {'steps', list(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner()) }
  | {'submit_line', binary() }
  | {'tres', slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_tres:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_tres() }
  | {'used_gres', binary() }
  | {'user', binary() }
  | {'wckey', slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_wckey:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_wckey() }
  | {'working_directory', binary() }
  ].


slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner() ->
    slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner([]).

slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner(Fields) ->
  Default = [ {'account', binary() }
            , {'comment', slurmrestapi_v0_0_40_job_comment:slurmrestapi_v0_0_40_job_comment() }
            , {'allocation_nodes', integer() }
            , {'array', slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_array:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_array() }
            , {'association', slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_association:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_association() }
            , {'block', binary() }
            , {'cluster', binary() }
            , {'constraints', binary() }
            , {'container', binary() }
            , {'derived_exit_code', slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code() }
            , {'time', slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_time:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_time() }
            , {'exit_code', slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_exit_code:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_exit_code() }
            , {'extra', binary() }
            , {'failed_node', binary() }
            , {'flags', list(binary()) }
            , {'group', binary() }
            , {'het', slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_het:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_het() }
            , {'job_id', integer() }
            , {'name', binary() }
            , {'licenses', binary() }
            , {'mcs', slurmrestapi_v0_0_40_job_mcs:slurmrestapi_v0_0_40_job_mcs() }
            , {'nodes', binary() }
            , {'partition', binary() }
            , {'hold', boolean() }
            , {'priority', slurmrestapi_v0_0_41_job_desc_msg_priority:slurmrestapi_v0_0_41_job_desc_msg_priority() }
            , {'qos', binary() }
            , {'required', slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_required:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_required() }
            , {'kill_request_user', binary() }
            , {'reservation', slurmrestapi_v0_0_40_job_reservation:slurmrestapi_v0_0_40_job_reservation() }
            , {'script', binary() }
            , {'stdin_expanded', binary() }
            , {'stdout_expanded', binary() }
            , {'stderr_expanded', binary() }
            , {'stdout', binary() }
            , {'stderr', binary() }
            , {'stdin', binary() }
            , {'state', slurmrestapi_v0_0_40_job_state:slurmrestapi_v0_0_40_job_state() }
            , {'steps', list(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner()) }
            , {'submit_line', binary() }
            , {'tres', slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_tres:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_tres() }
            , {'used_gres', binary() }
            , {'user', binary() }
            , {'wckey', slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_wckey:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_wckey() }
            , {'working_directory', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

