-module(slurmrestapi_v0_0_41_update_node_msg).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_update_node_msg/0]).

-export([slurmrestapi_v0_0_41_update_node_msg/1]).

-export_type([slurmrestapi_v0_0_41_update_node_msg/0]).

-type slurmrestapi_v0_0_41_update_node_msg() ::
  [ {'comment', binary() }
  | {'cpu_bind', integer() }
  | {'extra', binary() }
  | {'features', list(binary()) }
  | {'features_act', list(binary()) }
  | {'gres', binary() }
  | {'address', list(binary()) }
  | {'hostname', list(binary()) }
  | {'name', list(binary()) }
  | {'state', list(binary()) }
  | {'reason', binary() }
  | {'reason_uid', binary() }
  | {'resume_after', slurmrestapi_v0_0_41_update_node_msg_resume_after:slurmrestapi_v0_0_41_update_node_msg_resume_after() }
  | {'weight', slurmrestapi_v0_0_41_update_node_msg_weight:slurmrestapi_v0_0_41_update_node_msg_weight() }
  ].


slurmrestapi_v0_0_41_update_node_msg() ->
    slurmrestapi_v0_0_41_update_node_msg([]).

slurmrestapi_v0_0_41_update_node_msg(Fields) ->
  Default = [ {'comment', binary() }
            , {'cpu_bind', integer() }
            , {'extra', binary() }
            , {'features', list(binary()) }
            , {'features_act', list(binary()) }
            , {'gres', binary() }
            , {'address', list(binary()) }
            , {'hostname', list(binary()) }
            , {'name', list(binary()) }
            , {'state', list(binary()) }
            , {'reason', binary() }
            , {'reason_uid', binary() }
            , {'resume_after', slurmrestapi_v0_0_41_update_node_msg_resume_after:slurmrestapi_v0_0_41_update_node_msg_resume_after() }
            , {'weight', slurmrestapi_v0_0_41_update_node_msg_weight:slurmrestapi_v0_0_41_update_node_msg_weight() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

