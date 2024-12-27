-module(slurmrestapi_v0_0_39_acct_gather_energy).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_acct_gather_energy/0]).

-export([slurmrestapi_v0_0_39_acct_gather_energy/1]).

-export_type([slurmrestapi_v0_0_39_acct_gather_energy/0]).

-type slurmrestapi_v0_0_39_acct_gather_energy() ::
  [ {'average_watts', integer() }
  | {'base_consumed_energy', integer() }
  | {'consumed_energy', integer() }
  | {'current_watts', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
  | {'previous_consumed_energy', integer() }
  | {'last_collected', integer() }
  ].


slurmrestapi_v0_0_39_acct_gather_energy() ->
    slurmrestapi_v0_0_39_acct_gather_energy([]).

slurmrestapi_v0_0_39_acct_gather_energy(Fields) ->
  Default = [ {'average_watts', integer() }
            , {'base_consumed_energy', integer() }
            , {'consumed_energy', integer() }
            , {'current_watts', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
            , {'previous_consumed_energy', integer() }
            , {'last_collected', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

