-module(slurmrestapi_v0_0_41_update_node_msg_resume_after).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_update_node_msg_resume_after/0]).

-export([slurmrestapi_v0_0_41_update_node_msg_resume_after/1]).

-export_type([slurmrestapi_v0_0_41_update_node_msg_resume_after/0]).

-type slurmrestapi_v0_0_41_update_node_msg_resume_after() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_update_node_msg_resume_after() ->
    slurmrestapi_v0_0_41_update_node_msg_resume_after([]).

slurmrestapi_v0_0_41_update_node_msg_resume_after(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

