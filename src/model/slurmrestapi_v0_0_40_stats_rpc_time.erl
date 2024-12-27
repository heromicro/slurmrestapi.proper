-module(slurmrestapi_v0_0_40_stats_rpc_time).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_stats_rpc_time/0]).

-export([slurmrestapi_v0_0_40_stats_rpc_time/1]).

-export_type([slurmrestapi_v0_0_40_stats_rpc_time/0]).

-type slurmrestapi_v0_0_40_stats_rpc_time() ::
  [ {'average', integer() }
  | {'total', integer() }
  ].


slurmrestapi_v0_0_40_stats_rpc_time() ->
    slurmrestapi_v0_0_40_stats_rpc_time([]).

slurmrestapi_v0_0_40_stats_rpc_time(Fields) ->
  Default = [ {'average', integer() }
            , {'total', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

