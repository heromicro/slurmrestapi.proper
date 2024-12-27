-module(slurmrestapi_v0_0_40_assoc_max_tres_group).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_assoc_max_tres_group/0]).

-export([slurmrestapi_v0_0_40_assoc_max_tres_group/1]).

-export_type([slurmrestapi_v0_0_40_assoc_max_tres_group/0]).

-type slurmrestapi_v0_0_40_assoc_max_tres_group() ::
  [ {'minutes', list(slurmrestapi_v0_0_40_tres:slurmrestapi_v0_0_40_tres()) }
  | {'active', list(slurmrestapi_v0_0_40_tres:slurmrestapi_v0_0_40_tres()) }
  ].


slurmrestapi_v0_0_40_assoc_max_tres_group() ->
    slurmrestapi_v0_0_40_assoc_max_tres_group([]).

slurmrestapi_v0_0_40_assoc_max_tres_group(Fields) ->
  Default = [ {'minutes', list(slurmrestapi_v0_0_40_tres:slurmrestapi_v0_0_40_tres()) }
            , {'active', list(slurmrestapi_v0_0_40_tres:slurmrestapi_v0_0_40_tres()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

