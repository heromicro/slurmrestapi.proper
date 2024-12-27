-module(slurmrestapi_v0_0_39_stats_user).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_stats_user/0]).

-export([slurmrestapi_v0_0_39_stats_user/1]).

-export_type([slurmrestapi_v0_0_39_stats_user/0]).

-type slurmrestapi_v0_0_39_stats_user() ::
  [ {'user', binary() }
  | {'count', integer() }
  | {'time', slurmrestapi_v0_0_39_stats_rpc_time:slurmrestapi_v0_0_39_stats_rpc_time() }
  ].


slurmrestapi_v0_0_39_stats_user() ->
    slurmrestapi_v0_0_39_stats_user([]).

slurmrestapi_v0_0_39_stats_user(Fields) ->
  Default = [ {'user', binary() }
            , {'count', integer() }
            , {'time', slurmrestapi_v0_0_39_stats_rpc_time:slurmrestapi_v0_0_39_stats_rpc_time() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

