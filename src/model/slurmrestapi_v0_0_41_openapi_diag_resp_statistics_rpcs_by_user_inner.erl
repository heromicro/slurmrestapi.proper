-module(slurmrestapi_v0_0_41_openapi_diag_resp_statistics_rpcs_by_user_inner).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_diag_resp_statistics_rpcs_by_user_inner/0]).

-export([slurmrestapi_v0_0_41_openapi_diag_resp_statistics_rpcs_by_user_inner/1]).

-export_type([slurmrestapi_v0_0_41_openapi_diag_resp_statistics_rpcs_by_user_inner/0]).

-type slurmrestapi_v0_0_41_openapi_diag_resp_statistics_rpcs_by_user_inner() ::
  [ {'user_id', integer() }
  | {'user', binary() }
  | {'count', integer() }
  | {'total_time', integer() }
  | {'average_time', slurmrestapi_v0_0_41_openapi_diag_resp_statistics_rpcs_by_message_type_inner_average_time:slurmrestapi_v0_0_41_openapi_diag_resp_statistics_rpcs_by_message_type_inner_average_time() }
  ].


slurmrestapi_v0_0_41_openapi_diag_resp_statistics_rpcs_by_user_inner() ->
    slurmrestapi_v0_0_41_openapi_diag_resp_statistics_rpcs_by_user_inner([]).

slurmrestapi_v0_0_41_openapi_diag_resp_statistics_rpcs_by_user_inner(Fields) ->
  Default = [ {'user_id', integer() }
            , {'user', binary() }
            , {'count', integer() }
            , {'total_time', integer() }
            , {'average_time', slurmrestapi_v0_0_41_openapi_diag_resp_statistics_rpcs_by_message_type_inner_average_time:slurmrestapi_v0_0_41_openapi_diag_resp_statistics_rpcs_by_message_type_inner_average_time() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

