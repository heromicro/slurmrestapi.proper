-module(slurmrestapi_v0_0_39_step_tres_consumed).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_step_tres_consumed/0]).

-export([slurmrestapi_v0_0_39_step_tres_consumed/1]).

-export_type([slurmrestapi_v0_0_39_step_tres_consumed/0]).

-type slurmrestapi_v0_0_39_step_tres_consumed() ::
  [ {'max', list(slurmrestapi_v0_0_39_tres:slurmrestapi_v0_0_39_tres()) }
  | {'min', list(slurmrestapi_v0_0_39_tres:slurmrestapi_v0_0_39_tres()) }
  | {'average', list(slurmrestapi_v0_0_39_tres:slurmrestapi_v0_0_39_tres()) }
  | {'total', list(slurmrestapi_v0_0_39_tres:slurmrestapi_v0_0_39_tres()) }
  ].


slurmrestapi_v0_0_39_step_tres_consumed() ->
    slurmrestapi_v0_0_39_step_tres_consumed([]).

slurmrestapi_v0_0_39_step_tres_consumed(Fields) ->
  Default = [ {'max', list(slurmrestapi_v0_0_39_tres:slurmrestapi_v0_0_39_tres()) }
            , {'min', list(slurmrestapi_v0_0_39_tres:slurmrestapi_v0_0_39_tres()) }
            , {'average', list(slurmrestapi_v0_0_39_tres:slurmrestapi_v0_0_39_tres()) }
            , {'total', list(slurmrestapi_v0_0_39_tres:slurmrestapi_v0_0_39_tres()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

