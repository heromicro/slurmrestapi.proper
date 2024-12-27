-module(slurmrestapi_v0_0_39_assoc_max_per).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_assoc_max_per/0]).

-export([slurmrestapi_v0_0_39_assoc_max_per/1]).

-export_type([slurmrestapi_v0_0_39_assoc_max_per/0]).

-type slurmrestapi_v0_0_39_assoc_max_per() ::
  [ {'account', slurmrestapi_v0_0_39_assoc_max_per_account:slurmrestapi_v0_0_39_assoc_max_per_account() }
  ].


slurmrestapi_v0_0_39_assoc_max_per() ->
    slurmrestapi_v0_0_39_assoc_max_per([]).

slurmrestapi_v0_0_39_assoc_max_per(Fields) ->
  Default = [ {'account', slurmrestapi_v0_0_39_assoc_max_per_account:slurmrestapi_v0_0_39_assoc_max_per_account() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

