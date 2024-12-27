-module(slurmrestapi_v0_0_39_accounting).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_accounting/0]).

-export([slurmrestapi_v0_0_39_accounting/1]).

-export_type([slurmrestapi_v0_0_39_accounting/0]).

-type slurmrestapi_v0_0_39_accounting() ::
  [ {'allocated', slurmrestapi_v0_0_39_accounting_allocated:slurmrestapi_v0_0_39_accounting_allocated() }
  | {'id', integer() }
  | {'start', integer() }
  | {'TRES', slurmrestapi_v0_0_39_tres:slurmrestapi_v0_0_39_tres() }
  ].


slurmrestapi_v0_0_39_accounting() ->
    slurmrestapi_v0_0_39_accounting([]).

slurmrestapi_v0_0_39_accounting(Fields) ->
  Default = [ {'allocated', slurmrestapi_v0_0_39_accounting_allocated:slurmrestapi_v0_0_39_accounting_allocated() }
            , {'id', integer() }
            , {'start', integer() }
            , {'TRES', slurmrestapi_v0_0_39_tres:slurmrestapi_v0_0_39_tres() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

