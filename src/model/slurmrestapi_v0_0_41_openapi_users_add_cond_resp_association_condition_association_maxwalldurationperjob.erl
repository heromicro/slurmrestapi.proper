-module(slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_maxwalldurationperjob).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_maxwalldurationperjob/0]).

-export([slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_maxwalldurationperjob/1]).

-export_type([slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_maxwalldurationperjob/0]).

-type slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_maxwalldurationperjob() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_maxwalldurationperjob() ->
    slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_maxwalldurationperjob([]).

slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_maxwalldurationperjob(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

