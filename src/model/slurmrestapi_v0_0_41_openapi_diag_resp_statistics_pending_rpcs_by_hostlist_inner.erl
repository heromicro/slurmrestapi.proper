-module(slurmrestapi_v0_0_41_openapi_diag_resp_statistics_pending_rpcs_by_hostlist_inner).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_diag_resp_statistics_pending_rpcs_by_hostlist_inner/0]).

-export([slurmrestapi_v0_0_41_openapi_diag_resp_statistics_pending_rpcs_by_hostlist_inner/1]).

-export_type([slurmrestapi_v0_0_41_openapi_diag_resp_statistics_pending_rpcs_by_hostlist_inner/0]).

-type slurmrestapi_v0_0_41_openapi_diag_resp_statistics_pending_rpcs_by_hostlist_inner() ::
  [ {'type_id', integer() }
  | {'message_type', binary() }
  | {'count', list(binary()) }
  ].


slurmrestapi_v0_0_41_openapi_diag_resp_statistics_pending_rpcs_by_hostlist_inner() ->
    slurmrestapi_v0_0_41_openapi_diag_resp_statistics_pending_rpcs_by_hostlist_inner([]).

slurmrestapi_v0_0_41_openapi_diag_resp_statistics_pending_rpcs_by_hostlist_inner(Fields) ->
  Default = [ {'type_id', integer() }
            , {'message_type', binary() }
            , {'count', list(binary()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

