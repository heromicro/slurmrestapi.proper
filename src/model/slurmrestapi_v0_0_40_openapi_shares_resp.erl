-module(slurmrestapi_v0_0_40_openapi_shares_resp).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_openapi_shares_resp/0]).

-export([slurmrestapi_v0_0_40_openapi_shares_resp/1]).

-export_type([slurmrestapi_v0_0_40_openapi_shares_resp/0]).

-type slurmrestapi_v0_0_40_openapi_shares_resp() ::
  [ {'shares', slurmrestapi_v0_0_40_shares_resp_msg:slurmrestapi_v0_0_40_shares_resp_msg() }
  | {'meta', slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta() }
  | {'errors', list(slurmrestapi_v0_0_40_openapi_error:slurmrestapi_v0_0_40_openapi_error()) }
  | {'warnings', list(slurmrestapi_v0_0_40_openapi_warning:slurmrestapi_v0_0_40_openapi_warning()) }
  ].


slurmrestapi_v0_0_40_openapi_shares_resp() ->
    slurmrestapi_v0_0_40_openapi_shares_resp([]).

slurmrestapi_v0_0_40_openapi_shares_resp(Fields) ->
  Default = [ {'shares', slurmrestapi_v0_0_40_shares_resp_msg:slurmrestapi_v0_0_40_shares_resp_msg() }
            , {'meta', slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta() }
            , {'errors', list(slurmrestapi_v0_0_40_openapi_error:slurmrestapi_v0_0_40_openapi_error()) }
            , {'warnings', list(slurmrestapi_v0_0_40_openapi_warning:slurmrestapi_v0_0_40_openapi_warning()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

