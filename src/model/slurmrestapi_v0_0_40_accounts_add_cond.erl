-module(slurmrestapi_v0_0_40_accounts_add_cond).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_accounts_add_cond/0]).

-export([slurmrestapi_v0_0_40_accounts_add_cond/1]).

-export_type([slurmrestapi_v0_0_40_accounts_add_cond/0]).

-type slurmrestapi_v0_0_40_accounts_add_cond() ::
  [ {'accounts', list(binary()) }
  | {'association', slurmrestapi_v0_0_40_assoc_rec_set:slurmrestapi_v0_0_40_assoc_rec_set() }
  | {'clusters', list(binary()) }
  ].


slurmrestapi_v0_0_40_accounts_add_cond() ->
    slurmrestapi_v0_0_40_accounts_add_cond([]).

slurmrestapi_v0_0_40_accounts_add_cond(Fields) ->
  Default = [ {'accounts', list(binary()) }
            , {'association', slurmrestapi_v0_0_40_assoc_rec_set:slurmrestapi_v0_0_40_assoc_rec_set() }
            , {'clusters', list(binary()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

