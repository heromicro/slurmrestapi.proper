-module(slurmrestapi_v0_0_39_rollup_stats_inner).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_rollup_stats_inner/0]).

-export([slurmrestapi_v0_0_39_rollup_stats_inner/1]).

-export_type([slurmrestapi_v0_0_39_rollup_stats_inner/0]).

-type slurmrestapi_v0_0_39_rollup_stats_inner() ::
  [ {'type', binary() }
  | {'last_run', integer() }
  | {'max_cycle', integer() }
  | {'total_time', integer() }
  | {'total_cycles', integer() }
  | {'mean_cycles', integer() }
  ].


slurmrestapi_v0_0_39_rollup_stats_inner() ->
    slurmrestapi_v0_0_39_rollup_stats_inner([]).

slurmrestapi_v0_0_39_rollup_stats_inner(Fields) ->
  Default = [ {'type', elements([<<"internal">>, <<"user">>, <<"unknown">>]) }
            , {'last run', integer() }
            , {'max_cycle', integer() }
            , {'total_time', integer() }
            , {'total_cycles', integer() }
            , {'mean_cycles', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

