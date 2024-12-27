-module(slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_end_time).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_end_time/0]).

-export([slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_end_time/1]).

-export_type([slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_end_time/0]).

-type slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_end_time() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_end_time() ->
    slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_end_time([]).

slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_end_time(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

