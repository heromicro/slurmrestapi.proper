-module(slurmrestapi_v0_0_40_openapi_accounts_add_cond_resp_str).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_openapi_accounts_add_cond_resp_str/0]).

-export([slurmrestapi_v0_0_40_openapi_accounts_add_cond_resp_str/1]).

-export_type([slurmrestapi_v0_0_40_openapi_accounts_add_cond_resp_str/0]).

-type slurmrestapi_v0_0_40_openapi_accounts_add_cond_resp_str() ::
  [ {'added_accounts', binary() }
  | {'meta', slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta() }
  | {'errors', list(slurmrestapi_v0_0_40_openapi_error:slurmrestapi_v0_0_40_openapi_error()) }
  | {'warnings', list(slurmrestapi_v0_0_40_openapi_warning:slurmrestapi_v0_0_40_openapi_warning()) }
  ].


slurmrestapi_v0_0_40_openapi_accounts_add_cond_resp_str() ->
    slurmrestapi_v0_0_40_openapi_accounts_add_cond_resp_str([]).

slurmrestapi_v0_0_40_openapi_accounts_add_cond_resp_str(Fields) ->
  Default = [ {'added_accounts', binary() }
            , {'meta', slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta() }
            , {'errors', list(slurmrestapi_v0_0_40_openapi_error:slurmrestapi_v0_0_40_openapi_error()) }
            , {'warnings', list(slurmrestapi_v0_0_40_openapi_warning:slurmrestapi_v0_0_40_openapi_warning()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

