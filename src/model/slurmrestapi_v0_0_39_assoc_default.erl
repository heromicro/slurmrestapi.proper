-module(slurmrestapi_v0_0_39_assoc_default).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_assoc_default/0]).

-export([slurmrestapi_v0_0_39_assoc_default/1]).

-export_type([slurmrestapi_v0_0_39_assoc_default/0]).

-type slurmrestapi_v0_0_39_assoc_default() ::
  [ {'qos', binary() }
  ].


slurmrestapi_v0_0_39_assoc_default() ->
    slurmrestapi_v0_0_39_assoc_default([]).

slurmrestapi_v0_0_39_assoc_default(Fields) ->
  Default = [ {'qos', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

