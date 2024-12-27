-module(slurmrestapi_v0_0_40_account).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_account/0]).

-export([slurmrestapi_v0_0_40_account/1]).

-export_type([slurmrestapi_v0_0_40_account/0]).

-type slurmrestapi_v0_0_40_account() ::
  [ {'associations', list(slurmrestapi_v0_0_40_assoc_short:slurmrestapi_v0_0_40_assoc_short()) }
  | {'coordinators', list(slurmrestapi_v0_0_40_coord:slurmrestapi_v0_0_40_coord()) }
  | {'description', binary() }
  | {'name', binary() }
  | {'organization', binary() }
  | {'flags', list(binary()) }
  ].


slurmrestapi_v0_0_40_account() ->
    slurmrestapi_v0_0_40_account([]).

slurmrestapi_v0_0_40_account(Fields) ->
  Default = [ {'associations', list(slurmrestapi_v0_0_40_assoc_short:slurmrestapi_v0_0_40_assoc_short()) }
            , {'coordinators', list(slurmrestapi_v0_0_40_coord:slurmrestapi_v0_0_40_coord()) }
            , {'description', binary() }
            , {'name', binary() }
            , {'organization', binary() }
            , {'flags', list(binary()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

