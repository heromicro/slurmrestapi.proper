-module(slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_maxsubmitjobs).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_maxsubmitjobs/0]).

-export([slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_maxsubmitjobs/1]).

-export_type([slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_maxsubmitjobs/0]).

-type slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_maxsubmitjobs() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_maxsubmitjobs() ->
    slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_maxsubmitjobs([]).

slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_maxsubmitjobs(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

