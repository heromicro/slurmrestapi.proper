-module(slurmrestapi_v0_0_40_stats_msg_rpcs_by_user_inner).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_stats_msg_rpcs_by_user_inner/0]).

-export([slurmrestapi_v0_0_40_stats_msg_rpcs_by_user_inner/1]).

-export_type([slurmrestapi_v0_0_40_stats_msg_rpcs_by_user_inner/0]).

-type slurmrestapi_v0_0_40_stats_msg_rpcs_by_user_inner() ::
  [ {'user', binary() }
  | {'user_id', integer() }
  | {'count', integer() }
  | {'average_time', integer() }
  | {'total_time', integer() }
  ].


slurmrestapi_v0_0_40_stats_msg_rpcs_by_user_inner() ->
    slurmrestapi_v0_0_40_stats_msg_rpcs_by_user_inner([]).

slurmrestapi_v0_0_40_stats_msg_rpcs_by_user_inner(Fields) ->
  Default = [ {'user', binary() }
            , {'user_id', integer() }
            , {'count', integer() }
            , {'average_time', integer() }
            , {'total_time', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

