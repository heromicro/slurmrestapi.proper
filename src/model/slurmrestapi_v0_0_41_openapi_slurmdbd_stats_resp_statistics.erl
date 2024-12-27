-module(slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics/0]).

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics() ::
  [ {'time_start', integer() }
  | {'rollups', slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups:slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups() }
  | {'RPCs', list(slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rpcs_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rpcs_inner()) }
  | {'users', list(slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_users_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_users_inner()) }
  ].


slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics() ->
    slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics([]).

slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics(Fields) ->
  Default = [ {'time_start', integer() }
            , {'rollups', slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups:slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups() }
            , {'RPCs', list(slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rpcs_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rpcs_inner()) }
            , {'users', list(slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_users_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_users_inner()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

