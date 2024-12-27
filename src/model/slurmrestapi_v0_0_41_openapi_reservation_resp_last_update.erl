-module(slurmrestapi_v0_0_41_openapi_reservation_resp_last_update).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_reservation_resp_last_update/0]).

-export([slurmrestapi_v0_0_41_openapi_reservation_resp_last_update/1]).

-export_type([slurmrestapi_v0_0_41_openapi_reservation_resp_last_update/0]).

-type slurmrestapi_v0_0_41_openapi_reservation_resp_last_update() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_openapi_reservation_resp_last_update() ->
    slurmrestapi_v0_0_41_openapi_reservation_resp_last_update([]).

slurmrestapi_v0_0_41_openapi_reservation_resp_last_update(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

