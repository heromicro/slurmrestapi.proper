-module(slurmrestapi_v0_0_40_shares_uint64_tres).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_shares_uint64_tres/0]).

-export([slurmrestapi_v0_0_40_shares_uint64_tres/1]).

-export_type([slurmrestapi_v0_0_40_shares_uint64_tres/0]).

-type slurmrestapi_v0_0_40_shares_uint64_tres() ::
  [ {'name', binary() }
  | {'value', slurmrestapi_v0_0_40_uint64_no_val:slurmrestapi_v0_0_40_uint64_no_val() }
  ].


slurmrestapi_v0_0_40_shares_uint64_tres() ->
    slurmrestapi_v0_0_40_shares_uint64_tres([]).

slurmrestapi_v0_0_40_shares_uint64_tres(Fields) ->
  Default = [ {'name', binary() }
            , {'value', slurmrestapi_v0_0_40_uint64_no_val:slurmrestapi_v0_0_40_uint64_no_val() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

