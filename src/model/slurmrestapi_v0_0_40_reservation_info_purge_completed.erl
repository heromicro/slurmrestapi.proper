-module(slurmrestapi_v0_0_40_reservation_info_purge_completed).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_reservation_info_purge_completed/0]).

-export([slurmrestapi_v0_0_40_reservation_info_purge_completed/1]).

-export_type([slurmrestapi_v0_0_40_reservation_info_purge_completed/0]).

-type slurmrestapi_v0_0_40_reservation_info_purge_completed() ::
  [ {'time', slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val() }
  ].


slurmrestapi_v0_0_40_reservation_info_purge_completed() ->
    slurmrestapi_v0_0_40_reservation_info_purge_completed([]).

slurmrestapi_v0_0_40_reservation_info_purge_completed(Fields) ->
  Default = [ {'time', slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

