-module(slurmrestapi_v0_0_40_accounting_allocated).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_accounting_allocated/0]).

-export([slurmrestapi_v0_0_40_accounting_allocated/1]).

-export_type([slurmrestapi_v0_0_40_accounting_allocated/0]).

-type slurmrestapi_v0_0_40_accounting_allocated() ::
  [ {'seconds', integer() }
  ].


slurmrestapi_v0_0_40_accounting_allocated() ->
    slurmrestapi_v0_0_40_accounting_allocated([]).

slurmrestapi_v0_0_40_accounting_allocated(Fields) ->
  Default = [ {'seconds', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

