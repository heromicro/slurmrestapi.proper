-module(slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner/0]).

-export([slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner/1]).

-export_type([slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner/0]).

-type slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner() ::
  [ {'accounts', binary() }
  | {'burst_buffer', binary() }
  | {'core_count', integer() }
  | {'core_specializations', list(slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_core_specializations_inner:slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_core_specializations_inner()) }
  | {'end_time', slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_end_time:slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_end_time() }
  | {'features', binary() }
  | {'flags', list(binary()) }
  | {'groups', binary() }
  | {'licenses', binary() }
  | {'max_start_delay', integer() }
  | {'name', binary() }
  | {'node_count', integer() }
  | {'node_list', binary() }
  | {'partition', binary() }
  | {'purge_completed', slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_purge_completed:slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_purge_completed() }
  | {'start_time', slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_start_time:slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_start_time() }
  | {'watts', slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_watts:slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_watts() }
  | {'tres', binary() }
  | {'users', binary() }
  ].


slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner() ->
    slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner([]).

slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner(Fields) ->
  Default = [ {'accounts', binary() }
            , {'burst_buffer', binary() }
            , {'core_count', integer() }
            , {'core_specializations', list(slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_core_specializations_inner:slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_core_specializations_inner()) }
            , {'end_time', slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_end_time:slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_end_time() }
            , {'features', binary() }
            , {'flags', list(binary()) }
            , {'groups', binary() }
            , {'licenses', binary() }
            , {'max_start_delay', integer() }
            , {'name', binary() }
            , {'node_count', integer() }
            , {'node_list', binary() }
            , {'partition', binary() }
            , {'purge_completed', slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_purge_completed:slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_purge_completed() }
            , {'start_time', slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_start_time:slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_start_time() }
            , {'watts', slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_watts:slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_watts() }
            , {'tres', binary() }
            , {'users', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

