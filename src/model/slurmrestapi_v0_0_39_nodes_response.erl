-module(slurmrestapi_v0_0_39_nodes_response).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_nodes_response/0]).

-export([slurmrestapi_v0_0_39_nodes_response/1]).

-export_type([slurmrestapi_v0_0_39_nodes_response/0]).

-type slurmrestapi_v0_0_39_nodes_response() ::
  [ {'meta', slurmrestapi_v0_0_39_meta:slurmrestapi_v0_0_39_meta() }
  | {'errors', list(slurmrestapi_v0_0_39_error:slurmrestapi_v0_0_39_error()) }
  | {'warnings', list(slurmrestapi_v0_0_39_warning:slurmrestapi_v0_0_39_warning()) }
  | {'nodes', list(slurmrestapi_v0_0_39_node:slurmrestapi_v0_0_39_node()) }
  ].


slurmrestapi_v0_0_39_nodes_response() ->
    slurmrestapi_v0_0_39_nodes_response([]).

slurmrestapi_v0_0_39_nodes_response(Fields) ->
  Default = [ {'meta', slurmrestapi_v0_0_39_meta:slurmrestapi_v0_0_39_meta() }
            , {'errors', list(slurmrestapi_v0_0_39_error:slurmrestapi_v0_0_39_error()) }
            , {'warnings', list(slurmrestapi_v0_0_39_warning:slurmrestapi_v0_0_39_warning()) }
            , {'nodes', list(slurmrestapi_v0_0_39_node:slurmrestapi_v0_0_39_node()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

