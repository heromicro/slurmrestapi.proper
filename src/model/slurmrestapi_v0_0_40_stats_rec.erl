-module(slurmrestapi_v0_0_40_stats_rec).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_stats_rec/0]).

-export([slurmrestapi_v0_0_40_stats_rec/1]).

-export_type([slurmrestapi_v0_0_40_stats_rec/0]).

-type slurmrestapi_v0_0_40_stats_rec() ::
  [ {'time_start', integer() }
  | {'rollups', list(slurmrestapi_v0_0_40_rollup_stats_inner:slurmrestapi_v0_0_40_rollup_stats_inner()) }
  | {'RPCs', list(slurmrestapi_v0_0_40_stats_rpc:slurmrestapi_v0_0_40_stats_rpc()) }
  | {'users', list(slurmrestapi_v0_0_40_stats_user:slurmrestapi_v0_0_40_stats_user()) }
  ].


slurmrestapi_v0_0_40_stats_rec() ->
    slurmrestapi_v0_0_40_stats_rec([]).

slurmrestapi_v0_0_40_stats_rec(Fields) ->
  Default = [ {'time_start', integer() }
            , {'rollups', list(slurmrestapi_v0_0_40_rollup_stats_inner:slurmrestapi_v0_0_40_rollup_stats_inner()) }
            , {'RPCs', list(slurmrestapi_v0_0_40_stats_rpc:slurmrestapi_v0_0_40_stats_rpc()) }
            , {'users', list(slurmrestapi_v0_0_40_stats_user:slurmrestapi_v0_0_40_stats_user()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

