-module(slurmrestapi_v0_0_40_uint64_no_val).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_uint64_no_val/0]).

-export([slurmrestapi_v0_0_40_uint64_no_val/1]).

-export_type([slurmrestapi_v0_0_40_uint64_no_val/0]).

-type slurmrestapi_v0_0_40_uint64_no_val() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_40_uint64_no_val() ->
    slurmrestapi_v0_0_40_uint64_no_val([]).

slurmrestapi_v0_0_40_uint64_no_val(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

