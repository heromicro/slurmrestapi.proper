-module(slurmrestapi_v0_0_41_openapi_resp).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_resp/0]).

-export([slurmrestapi_v0_0_41_openapi_resp/1]).

-export_type([slurmrestapi_v0_0_41_openapi_resp/0]).

-type slurmrestapi_v0_0_41_openapi_resp() ::
  [ {'meta', slurmrestapi_v0_0_41_openapi_shares_resp_meta:slurmrestapi_v0_0_41_openapi_shares_resp_meta() }
  | {'errors', list(slurmrestapi_v0_0_41_openapi_shares_resp_errors_inner:slurmrestapi_v0_0_41_openapi_shares_resp_errors_inner()) }
  | {'warnings', list(slurmrestapi_v0_0_41_openapi_shares_resp_warnings_inner:slurmrestapi_v0_0_41_openapi_shares_resp_warnings_inner()) }
  ].


slurmrestapi_v0_0_41_openapi_resp() ->
    slurmrestapi_v0_0_41_openapi_resp([]).

slurmrestapi_v0_0_41_openapi_resp(Fields) ->
  Default = [ {'meta', slurmrestapi_v0_0_41_openapi_shares_resp_meta:slurmrestapi_v0_0_41_openapi_shares_resp_meta() }
            , {'errors', list(slurmrestapi_v0_0_41_openapi_shares_resp_errors_inner:slurmrestapi_v0_0_41_openapi_shares_resp_errors_inner()) }
            , {'warnings', list(slurmrestapi_v0_0_41_openapi_shares_resp_warnings_inner:slurmrestapi_v0_0_41_openapi_shares_resp_warnings_inner()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

