-module(slurmrestapi_v0_0_40_shares_float128_tres).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_shares_float128_tres/0]).

-export([slurmrestapi_v0_0_40_shares_float128_tres/1]).

-export_type([slurmrestapi_v0_0_40_shares_float128_tres/0]).

-type slurmrestapi_v0_0_40_shares_float128_tres() ::
  [ {'name', binary() }
  | {'value', integer() }
  ].


slurmrestapi_v0_0_40_shares_float128_tres() ->
    slurmrestapi_v0_0_40_shares_float128_tres([]).

slurmrestapi_v0_0_40_shares_float128_tres(Fields) ->
  Default = [ {'name', binary() }
            , {'value', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

