-module(slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_energy).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_energy/0]).

-export([slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_energy/1]).

-export_type([slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_energy/0]).

-type slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_energy() ::
  [ {'average_watts', integer() }
  | {'base_consumed_energy', integer() }
  | {'consumed_energy', integer() }
  | {'current_watts', slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_energy_current_watts:slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_energy_current_watts() }
  | {'previous_consumed_energy', integer() }
  | {'last_collected', integer() }
  ].


slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_energy() ->
    slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_energy([]).

slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_energy(Fields) ->
  Default = [ {'average_watts', integer() }
            , {'base_consumed_energy', integer() }
            , {'consumed_energy', integer() }
            , {'current_watts', slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_energy_current_watts:slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_energy_current_watts() }
            , {'previous_consumed_energy', integer() }
            , {'last_collected', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

