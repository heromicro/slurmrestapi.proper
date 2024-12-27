-module(slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rpcs_inner).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rpcs_inner/0]).

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rpcs_inner/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rpcs_inner/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rpcs_inner() ::
  [ {'rpc', binary() }
  | {'count', integer() }
  | {'time', slurmrestapi_v0_0_40_stats_rpc_time:slurmrestapi_v0_0_40_stats_rpc_time() }
  ].


slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rpcs_inner() ->
    slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rpcs_inner([]).

slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rpcs_inner(Fields) ->
  Default = [ {'rpc', binary() }
            , {'count', integer() }
            , {'time', slurmrestapi_v0_0_40_stats_rpc_time:slurmrestapi_v0_0_40_stats_rpc_time() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

