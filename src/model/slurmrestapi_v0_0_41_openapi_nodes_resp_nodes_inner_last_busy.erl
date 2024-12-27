-module(slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_last_busy).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_last_busy/0]).

-export([slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_last_busy/1]).

-export_type([slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_last_busy/0]).

-type slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_last_busy() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_last_busy() ->
    slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_last_busy([]).

slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_last_busy(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

