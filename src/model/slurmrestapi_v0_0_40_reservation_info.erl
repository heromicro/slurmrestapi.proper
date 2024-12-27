-module(slurmrestapi_v0_0_40_reservation_info).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_reservation_info/0]).

-export([slurmrestapi_v0_0_40_reservation_info/1]).

-export_type([slurmrestapi_v0_0_40_reservation_info/0]).

-type slurmrestapi_v0_0_40_reservation_info() ::
  [ {'accounts', binary() }
  | {'burst_buffer', binary() }
  | {'core_count', integer() }
  | {'core_specializations', list(slurmrestapi_v0_0_40_reservation_core_spec:slurmrestapi_v0_0_40_reservation_core_spec()) }
  | {'end_time', slurmrestapi_v0_0_40_uint64_no_val:slurmrestapi_v0_0_40_uint64_no_val() }
  | {'features', binary() }
  | {'flags', list(binary()) }
  | {'groups', binary() }
  | {'licenses', binary() }
  | {'max_start_delay', integer() }
  | {'name', binary() }
  | {'node_count', integer() }
  | {'node_list', binary() }
  | {'partition', binary() }
  | {'purge_completed', slurmrestapi_v0_0_40_reservation_info_purge_completed:slurmrestapi_v0_0_40_reservation_info_purge_completed() }
  | {'start_time', slurmrestapi_v0_0_40_uint64_no_val:slurmrestapi_v0_0_40_uint64_no_val() }
  | {'watts', slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val() }
  | {'tres', binary() }
  | {'users', binary() }
  ].


slurmrestapi_v0_0_40_reservation_info() ->
    slurmrestapi_v0_0_40_reservation_info([]).

slurmrestapi_v0_0_40_reservation_info(Fields) ->
  Default = [ {'accounts', binary() }
            , {'burst_buffer', binary() }
            , {'core_count', integer() }
            , {'core_specializations', list(slurmrestapi_v0_0_40_reservation_core_spec:slurmrestapi_v0_0_40_reservation_core_spec()) }
            , {'end_time', slurmrestapi_v0_0_40_uint64_no_val:slurmrestapi_v0_0_40_uint64_no_val() }
            , {'features', binary() }
            , {'flags', list(binary()) }
            , {'groups', binary() }
            , {'licenses', binary() }
            , {'max_start_delay', integer() }
            , {'name', binary() }
            , {'node_count', integer() }
            , {'node_list', binary() }
            , {'partition', binary() }
            , {'purge_completed', slurmrestapi_v0_0_40_reservation_info_purge_completed:slurmrestapi_v0_0_40_reservation_info_purge_completed() }
            , {'start_time', slurmrestapi_v0_0_40_uint64_no_val:slurmrestapi_v0_0_40_uint64_no_val() }
            , {'watts', slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val() }
            , {'tres', binary() }
            , {'users', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

