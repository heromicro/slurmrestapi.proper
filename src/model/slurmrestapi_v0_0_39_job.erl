-module(slurmrestapi_v0_0_39_job).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_job/0]).

-export([slurmrestapi_v0_0_39_job/1]).

-export_type([slurmrestapi_v0_0_39_job/0]).

-type slurmrestapi_v0_0_39_job() ::
  [ {'account', binary() }
  | {'comment', slurmrestapi_v0_0_39_job_comment:slurmrestapi_v0_0_39_job_comment() }
  | {'allocation_nodes', integer() }
  | {'array', slurmrestapi_v0_0_39_job_array:slurmrestapi_v0_0_39_job_array() }
  | {'association', slurmrestapi_v0_0_39_assoc_short:slurmrestapi_v0_0_39_assoc_short() }
  | {'block', binary() }
  | {'cluster', binary() }
  | {'constraints', binary() }
  | {'container', binary() }
  | {'derived_exit_code', slurmrestapi_v0_0_39_job_exit_code:slurmrestapi_v0_0_39_job_exit_code() }
  | {'time', slurmrestapi_v0_0_39_job_time:slurmrestapi_v0_0_39_job_time() }
  | {'exit_code', slurmrestapi_v0_0_39_job_exit_code:slurmrestapi_v0_0_39_job_exit_code() }
  | {'extra', binary() }
  | {'failed_node', binary() }
  | {'flags', list(binary()) }
  | {'group', binary() }
  | {'het', slurmrestapi_v0_0_39_job_het:slurmrestapi_v0_0_39_job_het() }
  | {'job_id', integer() }
  | {'name', binary() }
  | {'licenses', binary() }
  | {'mcs', slurmrestapi_v0_0_39_job_mcs:slurmrestapi_v0_0_39_job_mcs() }
  | {'nodes', binary() }
  | {'partition', binary() }
  | {'hold', boolean() }
  | {'priority', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
  | {'qos', binary() }
  | {'required', slurmrestapi_v0_0_39_job_required:slurmrestapi_v0_0_39_job_required() }
  | {'kill_request_user', binary() }
  | {'reservation', slurmrestapi_v0_0_39_job_reservation:slurmrestapi_v0_0_39_job_reservation() }
  | {'script', binary() }
  | {'state', slurmrestapi_v0_0_39_job_state:slurmrestapi_v0_0_39_job_state() }
  | {'steps', list(slurmrestapi_v0_0_39_step:slurmrestapi_v0_0_39_step()) }
  | {'submit_line', binary() }
  | {'tres', slurmrestapi_v0_0_39_job_tres:slurmrestapi_v0_0_39_job_tres() }
  | {'used_gres', binary() }
  | {'user', binary() }
  | {'wckey', slurmrestapi_v0_0_39_wckey_tag:slurmrestapi_v0_0_39_wckey_tag() }
  | {'working_directory', binary() }
  ].


slurmrestapi_v0_0_39_job() ->
    slurmrestapi_v0_0_39_job([]).

slurmrestapi_v0_0_39_job(Fields) ->
  Default = [ {'account', binary() }
            , {'comment', slurmrestapi_v0_0_39_job_comment:slurmrestapi_v0_0_39_job_comment() }
            , {'allocation_nodes', integer() }
            , {'array', slurmrestapi_v0_0_39_job_array:slurmrestapi_v0_0_39_job_array() }
            , {'association', slurmrestapi_v0_0_39_assoc_short:slurmrestapi_v0_0_39_assoc_short() }
            , {'block', binary() }
            , {'cluster', binary() }
            , {'constraints', binary() }
            , {'container', binary() }
            , {'derived_exit_code', slurmrestapi_v0_0_39_job_exit_code:slurmrestapi_v0_0_39_job_exit_code() }
            , {'time', slurmrestapi_v0_0_39_job_time:slurmrestapi_v0_0_39_job_time() }
            , {'exit_code', slurmrestapi_v0_0_39_job_exit_code:slurmrestapi_v0_0_39_job_exit_code() }
            , {'extra', binary() }
            , {'failed_node', binary() }
            , {'flags', list(binary()) }
            , {'group', binary() }
            , {'het', slurmrestapi_v0_0_39_job_het:slurmrestapi_v0_0_39_job_het() }
            , {'job_id', integer() }
            , {'name', binary() }
            , {'licenses', binary() }
            , {'mcs', slurmrestapi_v0_0_39_job_mcs:slurmrestapi_v0_0_39_job_mcs() }
            , {'nodes', binary() }
            , {'partition', binary() }
            , {'hold', boolean() }
            , {'priority', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
            , {'qos', binary() }
            , {'required', slurmrestapi_v0_0_39_job_required:slurmrestapi_v0_0_39_job_required() }
            , {'kill_request_user', binary() }
            , {'reservation', slurmrestapi_v0_0_39_job_reservation:slurmrestapi_v0_0_39_job_reservation() }
            , {'script', binary() }
            , {'state', slurmrestapi_v0_0_39_job_state:slurmrestapi_v0_0_39_job_state() }
            , {'steps', list(slurmrestapi_v0_0_39_step:slurmrestapi_v0_0_39_step()) }
            , {'submit_line', binary() }
            , {'tres', slurmrestapi_v0_0_39_job_tres:slurmrestapi_v0_0_39_job_tres() }
            , {'used_gres', binary() }
            , {'user', binary() }
            , {'wckey', slurmrestapi_v0_0_39_wckey_tag:slurmrestapi_v0_0_39_wckey_tag() }
            , {'working_directory', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

