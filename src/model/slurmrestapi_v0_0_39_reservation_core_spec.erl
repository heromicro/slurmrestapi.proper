-module(slurmrestapi_v0_0_39_reservation_core_spec).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_reservation_core_spec/0]).

-export([slurmrestapi_v0_0_39_reservation_core_spec/1]).

-export_type([slurmrestapi_v0_0_39_reservation_core_spec/0]).

-type slurmrestapi_v0_0_39_reservation_core_spec() ::
  [ {'node', binary() }
  | {'core', binary() }
  ].


slurmrestapi_v0_0_39_reservation_core_spec() ->
    slurmrestapi_v0_0_39_reservation_core_spec([]).

slurmrestapi_v0_0_39_reservation_core_spec(Fields) ->
  Default = [ {'node', binary() }
            , {'core', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

