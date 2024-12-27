-module(slurmrestapi_v0_0_40_assoc_min).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_assoc_min/0]).

-export([slurmrestapi_v0_0_40_assoc_min/1]).

-export_type([slurmrestapi_v0_0_40_assoc_min/0]).

-type slurmrestapi_v0_0_40_assoc_min() ::
  [ {'priority_threshold', slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val() }
  ].


slurmrestapi_v0_0_40_assoc_min() ->
    slurmrestapi_v0_0_40_assoc_min([]).

slurmrestapi_v0_0_40_assoc_min(Fields) ->
  Default = [ {'priority_threshold', slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

