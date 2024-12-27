-module(slurmrestapi_v0_0_41_update_node_msg_weight).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_update_node_msg_weight/0]).

-export([slurmrestapi_v0_0_41_update_node_msg_weight/1]).

-export_type([slurmrestapi_v0_0_41_update_node_msg_weight/0]).

-type slurmrestapi_v0_0_41_update_node_msg_weight() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_update_node_msg_weight() ->
    slurmrestapi_v0_0_41_update_node_msg_weight([]).

slurmrestapi_v0_0_41_update_node_msg_weight(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

