-module(slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_energy_current_watts).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_energy_current_watts/0]).

-export([slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_energy_current_watts/1]).

-export_type([slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_energy_current_watts/0]).

-type slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_energy_current_watts() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_energy_current_watts() ->
    slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_energy_current_watts([]).

slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_energy_current_watts(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

