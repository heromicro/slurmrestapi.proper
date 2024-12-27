-module(slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition/0]).

-export([slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition/1]).

-export_type([slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition/0]).

-type slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition() ::
  [ {'accounts', list(binary()) }
  | {'association', slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association:slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association() }
  | {'clusters', list(binary()) }
  | {'partitions', list(binary()) }
  | {'users', list(binary()) }
  | {'wckeys', list(binary()) }
  ].


slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition() ->
    slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition([]).

slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition(Fields) ->
  Default = [ {'accounts', list(binary()) }
            , {'association', slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association:slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association() }
            , {'clusters', list(binary()) }
            , {'partitions', list(binary()) }
            , {'users', list(binary()) }
            , {'wckeys', list(binary()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

