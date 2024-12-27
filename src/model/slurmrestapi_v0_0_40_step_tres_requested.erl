-module(slurmrestapi_v0_0_40_step_tres_requested).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_step_tres_requested/0]).

-export([slurmrestapi_v0_0_40_step_tres_requested/1]).

-export_type([slurmrestapi_v0_0_40_step_tres_requested/0]).

-type slurmrestapi_v0_0_40_step_tres_requested() ::
  [ {'max', list(slurmrestapi_v0_0_40_tres:slurmrestapi_v0_0_40_tres()) }
  | {'min', list(slurmrestapi_v0_0_40_tres:slurmrestapi_v0_0_40_tres()) }
  | {'average', list(slurmrestapi_v0_0_40_tres:slurmrestapi_v0_0_40_tres()) }
  | {'total', list(slurmrestapi_v0_0_40_tres:slurmrestapi_v0_0_40_tres()) }
  ].


slurmrestapi_v0_0_40_step_tres_requested() ->
    slurmrestapi_v0_0_40_step_tres_requested([]).

slurmrestapi_v0_0_40_step_tres_requested(Fields) ->
  Default = [ {'max', list(slurmrestapi_v0_0_40_tres:slurmrestapi_v0_0_40_tres()) }
            , {'min', list(slurmrestapi_v0_0_40_tres:slurmrestapi_v0_0_40_tres()) }
            , {'average', list(slurmrestapi_v0_0_40_tres:slurmrestapi_v0_0_40_tres()) }
            , {'total', list(slurmrestapi_v0_0_40_tres:slurmrestapi_v0_0_40_tres()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

