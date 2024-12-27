-module(slurmrestapi_v0_0_40_account_short).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_account_short/0]).

-export([slurmrestapi_v0_0_40_account_short/1]).

-export_type([slurmrestapi_v0_0_40_account_short/0]).

-type slurmrestapi_v0_0_40_account_short() ::
  [ {'description', binary() }
  | {'organization', binary() }
  ].


slurmrestapi_v0_0_40_account_short() ->
    slurmrestapi_v0_0_40_account_short([]).

slurmrestapi_v0_0_40_account_short(Fields) ->
  Default = [ {'description', binary() }
            , {'organization', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

