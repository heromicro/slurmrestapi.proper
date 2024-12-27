-module(slurmrestapi_v0_0_39_stats_msg_rpcs_by_type_inner).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_stats_msg_rpcs_by_type_inner/0]).

-export([slurmrestapi_v0_0_39_stats_msg_rpcs_by_type_inner/1]).

-export_type([slurmrestapi_v0_0_39_stats_msg_rpcs_by_type_inner/0]).

-type slurmrestapi_v0_0_39_stats_msg_rpcs_by_type_inner() ::
  [ {'message_type', binary() }
  | {'type_id', integer() }
  | {'count', integer() }
  | {'average_time', integer() }
  | {'total_time', integer() }
  ].


slurmrestapi_v0_0_39_stats_msg_rpcs_by_type_inner() ->
    slurmrestapi_v0_0_39_stats_msg_rpcs_by_type_inner([]).

slurmrestapi_v0_0_39_stats_msg_rpcs_by_type_inner(Fields) ->
  Default = [ {'message_type', binary() }
            , {'type_id', integer() }
            , {'count', integer() }
            , {'average_time', integer() }
            , {'total_time', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

