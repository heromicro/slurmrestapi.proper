-module(slurmrestapi_v0_0_41_openapi_accounts_add_cond_resp_account).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_accounts_add_cond_resp_account/0]).

-export([slurmrestapi_v0_0_41_openapi_accounts_add_cond_resp_account/1]).

-export_type([slurmrestapi_v0_0_41_openapi_accounts_add_cond_resp_account/0]).

-type slurmrestapi_v0_0_41_openapi_accounts_add_cond_resp_account() ::
  [ {'description', binary() }
  | {'organization', binary() }
  ].


slurmrestapi_v0_0_41_openapi_accounts_add_cond_resp_account() ->
    slurmrestapi_v0_0_41_openapi_accounts_add_cond_resp_account([]).

slurmrestapi_v0_0_41_openapi_accounts_add_cond_resp_account(Fields) ->
  Default = [ {'description', binary() }
            , {'organization', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

