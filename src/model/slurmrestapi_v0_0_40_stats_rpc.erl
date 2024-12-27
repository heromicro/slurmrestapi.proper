-module(slurmrestapi_v0_0_40_stats_rpc).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_stats_rpc/0]).

-export([slurmrestapi_v0_0_40_stats_rpc/1]).

-export_type([slurmrestapi_v0_0_40_stats_rpc/0]).

-type slurmrestapi_v0_0_40_stats_rpc() ::
  [ {'rpc', binary() }
  | {'count', integer() }
  | {'time', slurmrestapi_v0_0_40_stats_rpc_time:slurmrestapi_v0_0_40_stats_rpc_time() }
  ].


slurmrestapi_v0_0_40_stats_rpc() ->
    slurmrestapi_v0_0_40_stats_rpc([]).

slurmrestapi_v0_0_40_stats_rpc(Fields) ->
  Default = [ {'rpc', binary() }
            , {'count', integer() }
            , {'time', slurmrestapi_v0_0_40_stats_rpc_time:slurmrestapi_v0_0_40_stats_rpc_time() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

