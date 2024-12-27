-module(slurmrestapi_v0_0_40_assoc_max).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_assoc_max/0]).

-export([slurmrestapi_v0_0_40_assoc_max/1]).

-export_type([slurmrestapi_v0_0_40_assoc_max/0]).

-type slurmrestapi_v0_0_40_assoc_max() ::
  [ {'jobs', slurmrestapi_v0_0_40_assoc_max_jobs:slurmrestapi_v0_0_40_assoc_max_jobs() }
  | {'tres', slurmrestapi_v0_0_40_assoc_max_tres:slurmrestapi_v0_0_40_assoc_max_tres() }
  | {'per', slurmrestapi_v0_0_40_assoc_max_per:slurmrestapi_v0_0_40_assoc_max_per() }
  ].


slurmrestapi_v0_0_40_assoc_max() ->
    slurmrestapi_v0_0_40_assoc_max([]).

slurmrestapi_v0_0_40_assoc_max(Fields) ->
  Default = [ {'jobs', slurmrestapi_v0_0_40_assoc_max_jobs:slurmrestapi_v0_0_40_assoc_max_jobs() }
            , {'tres', slurmrestapi_v0_0_40_assoc_max_tres:slurmrestapi_v0_0_40_assoc_max_tres() }
            , {'per', slurmrestapi_v0_0_40_assoc_max_per:slurmrestapi_v0_0_40_assoc_max_per() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

