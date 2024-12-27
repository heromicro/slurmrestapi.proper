-module(slurmrestapi_v0_0_40_openapi_nodes_resp).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_openapi_nodes_resp/0]).

-export([slurmrestapi_v0_0_40_openapi_nodes_resp/1]).

-export_type([slurmrestapi_v0_0_40_openapi_nodes_resp/0]).

-type slurmrestapi_v0_0_40_openapi_nodes_resp() ::
  [ {'nodes', list(slurmrestapi_v0_0_40_node:slurmrestapi_v0_0_40_node()) }
  | {'last_update', slurmrestapi_v0_0_40_uint64_no_val:slurmrestapi_v0_0_40_uint64_no_val() }
  | {'meta', slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta() }
  | {'errors', list(slurmrestapi_v0_0_40_openapi_error:slurmrestapi_v0_0_40_openapi_error()) }
  | {'warnings', list(slurmrestapi_v0_0_40_openapi_warning:slurmrestapi_v0_0_40_openapi_warning()) }
  ].


slurmrestapi_v0_0_40_openapi_nodes_resp() ->
    slurmrestapi_v0_0_40_openapi_nodes_resp([]).

slurmrestapi_v0_0_40_openapi_nodes_resp(Fields) ->
  Default = [ {'nodes', list(slurmrestapi_v0_0_40_node:slurmrestapi_v0_0_40_node()) }
            , {'last_update', slurmrestapi_v0_0_40_uint64_no_val:slurmrestapi_v0_0_40_uint64_no_val() }
            , {'meta', slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta() }
            , {'errors', list(slurmrestapi_v0_0_40_openapi_error:slurmrestapi_v0_0_40_openapi_error()) }
            , {'warnings', list(slurmrestapi_v0_0_40_openapi_warning:slurmrestapi_v0_0_40_openapi_warning()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

