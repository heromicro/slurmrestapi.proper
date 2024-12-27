-module(slurmrestapi_v0_0_41_openapi_licenses_resp).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_licenses_resp/0]).

-export([slurmrestapi_v0_0_41_openapi_licenses_resp/1]).

-export_type([slurmrestapi_v0_0_41_openapi_licenses_resp/0]).

-type slurmrestapi_v0_0_41_openapi_licenses_resp() ::
  [ {'licenses', list(slurmrestapi_v0_0_41_openapi_licenses_resp_licenses_inner:slurmrestapi_v0_0_41_openapi_licenses_resp_licenses_inner()) }
  | {'last_update', slurmrestapi_v0_0_41_openapi_licenses_resp_last_update:slurmrestapi_v0_0_41_openapi_licenses_resp_last_update() }
  | {'meta', slurmrestapi_v0_0_41_openapi_shares_resp_meta:slurmrestapi_v0_0_41_openapi_shares_resp_meta() }
  | {'errors', list(slurmrestapi_v0_0_41_openapi_shares_resp_errors_inner:slurmrestapi_v0_0_41_openapi_shares_resp_errors_inner()) }
  | {'warnings', list(slurmrestapi_v0_0_41_openapi_shares_resp_warnings_inner:slurmrestapi_v0_0_41_openapi_shares_resp_warnings_inner()) }
  ].


slurmrestapi_v0_0_41_openapi_licenses_resp() ->
    slurmrestapi_v0_0_41_openapi_licenses_resp([]).

slurmrestapi_v0_0_41_openapi_licenses_resp(Fields) ->
  Default = [ {'licenses', list(slurmrestapi_v0_0_41_openapi_licenses_resp_licenses_inner:slurmrestapi_v0_0_41_openapi_licenses_resp_licenses_inner()) }
            , {'last_update', slurmrestapi_v0_0_41_openapi_licenses_resp_last_update:slurmrestapi_v0_0_41_openapi_licenses_resp_last_update() }
            , {'meta', slurmrestapi_v0_0_41_openapi_shares_resp_meta:slurmrestapi_v0_0_41_openapi_shares_resp_meta() }
            , {'errors', list(slurmrestapi_v0_0_41_openapi_shares_resp_errors_inner:slurmrestapi_v0_0_41_openapi_shares_resp_errors_inner()) }
            , {'warnings', list(slurmrestapi_v0_0_41_openapi_shares_resp_warnings_inner:slurmrestapi_v0_0_41_openapi_shares_resp_warnings_inner()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

