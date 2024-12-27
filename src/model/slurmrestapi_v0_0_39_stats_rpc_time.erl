-module(slurmrestapi_v0_0_39_stats_rpc_time).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_stats_rpc_time/0]).

-export([slurmrestapi_v0_0_39_stats_rpc_time/1]).

-export_type([slurmrestapi_v0_0_39_stats_rpc_time/0]).

-type slurmrestapi_v0_0_39_stats_rpc_time() ::
  [ {'total', integer() }
  ].


slurmrestapi_v0_0_39_stats_rpc_time() ->
    slurmrestapi_v0_0_39_stats_rpc_time([]).

slurmrestapi_v0_0_39_stats_rpc_time(Fields) ->
  Default = [ {'total', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

