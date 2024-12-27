-module(slurmrestapi_v0_0_41_openapi_users_add_cond_resp_str).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_users_add_cond_resp_str/0]).

-export([slurmrestapi_v0_0_41_openapi_users_add_cond_resp_str/1]).

-export_type([slurmrestapi_v0_0_41_openapi_users_add_cond_resp_str/0]).

-type slurmrestapi_v0_0_41_openapi_users_add_cond_resp_str() ::
  [ {'added_users', binary() }
  | {'meta', slurmrestapi_v0_0_41_openapi_shares_resp_meta:slurmrestapi_v0_0_41_openapi_shares_resp_meta() }
  | {'errors', list(slurmrestapi_v0_0_41_openapi_shares_resp_errors_inner:slurmrestapi_v0_0_41_openapi_shares_resp_errors_inner()) }
  | {'warnings', list(slurmrestapi_v0_0_41_openapi_shares_resp_warnings_inner:slurmrestapi_v0_0_41_openapi_shares_resp_warnings_inner()) }
  ].


slurmrestapi_v0_0_41_openapi_users_add_cond_resp_str() ->
    slurmrestapi_v0_0_41_openapi_users_add_cond_resp_str([]).

slurmrestapi_v0_0_41_openapi_users_add_cond_resp_str(Fields) ->
  Default = [ {'added_users', binary() }
            , {'meta', slurmrestapi_v0_0_41_openapi_shares_resp_meta:slurmrestapi_v0_0_41_openapi_shares_resp_meta() }
            , {'errors', list(slurmrestapi_v0_0_41_openapi_shares_resp_errors_inner:slurmrestapi_v0_0_41_openapi_shares_resp_errors_inner()) }
            , {'warnings', list(slurmrestapi_v0_0_41_openapi_shares_resp_warnings_inner:slurmrestapi_v0_0_41_openapi_shares_resp_warnings_inner()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

