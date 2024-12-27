-module(slurmrestapi_v0_0_39_assoc_max_per_account).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_assoc_max_per_account/0]).

-export([slurmrestapi_v0_0_39_assoc_max_per_account/1]).

-export_type([slurmrestapi_v0_0_39_assoc_max_per_account/0]).

-type slurmrestapi_v0_0_39_assoc_max_per_account() ::
  [ {'wall_clock', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
  ].


slurmrestapi_v0_0_39_assoc_max_per_account() ->
    slurmrestapi_v0_0_39_assoc_max_per_account([]).

slurmrestapi_v0_0_39_assoc_max_per_account(Fields) ->
  Default = [ {'wall_clock', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

