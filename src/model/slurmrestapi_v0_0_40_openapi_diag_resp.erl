-module(slurmrestapi_v0_0_40_openapi_diag_resp).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_openapi_diag_resp/0]).

-export([slurmrestapi_v0_0_40_openapi_diag_resp/1]).

-export_type([slurmrestapi_v0_0_40_openapi_diag_resp/0]).

-type slurmrestapi_v0_0_40_openapi_diag_resp() ::
  [ {'statistics', slurmrestapi_v0_0_40_stats_msg:slurmrestapi_v0_0_40_stats_msg() }
  | {'meta', slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta() }
  | {'errors', list(slurmrestapi_v0_0_40_openapi_error:slurmrestapi_v0_0_40_openapi_error()) }
  | {'warnings', list(slurmrestapi_v0_0_40_openapi_warning:slurmrestapi_v0_0_40_openapi_warning()) }
  ].


slurmrestapi_v0_0_40_openapi_diag_resp() ->
    slurmrestapi_v0_0_40_openapi_diag_resp([]).

slurmrestapi_v0_0_40_openapi_diag_resp(Fields) ->
  Default = [ {'statistics', slurmrestapi_v0_0_40_stats_msg:slurmrestapi_v0_0_40_stats_msg() }
            , {'meta', slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta() }
            , {'errors', list(slurmrestapi_v0_0_40_openapi_error:slurmrestapi_v0_0_40_openapi_error()) }
            , {'warnings', list(slurmrestapi_v0_0_40_openapi_warning:slurmrestapi_v0_0_40_openapi_warning()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

