-module(slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_free_mem).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_free_mem/0]).

-export([slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_free_mem/1]).

-export_type([slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_free_mem/0]).

-type slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_free_mem() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_free_mem() ->
    slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_free_mem([]).

slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_free_mem(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

