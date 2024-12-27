-module(slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_reason_changed_at).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_reason_changed_at/0]).

-export([slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_reason_changed_at/1]).

-export_type([slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_reason_changed_at/0]).

-type slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_reason_changed_at() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_reason_changed_at() ->
    slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_reason_changed_at([]).

slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_reason_changed_at(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

