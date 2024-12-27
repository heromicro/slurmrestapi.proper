-module(slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_core_specializations_inner).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_core_specializations_inner/0]).

-export([slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_core_specializations_inner/1]).

-export_type([slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_core_specializations_inner/0]).

-type slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_core_specializations_inner() ::
  [ {'node', binary() }
  | {'core', binary() }
  ].


slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_core_specializations_inner() ->
    slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_core_specializations_inner([]).

slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_core_specializations_inner(Fields) ->
  Default = [ {'node', binary() }
            , {'core', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

