-module(slurmrestapi_dbv0_0_39_tres_update).

-include("slurmrestapi.hrl").

-export([slurmrestapi_dbv0_0_39_tres_update/0]).

-export([slurmrestapi_dbv0_0_39_tres_update/1]).

-export_type([slurmrestapi_dbv0_0_39_tres_update/0]).

-type slurmrestapi_dbv0_0_39_tres_update() ::
  [ {'tres', list(slurmrestapi_v0_0_39_tres:slurmrestapi_v0_0_39_tres()) }
  ].


slurmrestapi_dbv0_0_39_tres_update() ->
    slurmrestapi_dbv0_0_39_tres_update([]).

slurmrestapi_dbv0_0_39_tres_update(Fields) ->
  Default = [ {'tres', list(slurmrestapi_v0_0_39_tres:slurmrestapi_v0_0_39_tres()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

