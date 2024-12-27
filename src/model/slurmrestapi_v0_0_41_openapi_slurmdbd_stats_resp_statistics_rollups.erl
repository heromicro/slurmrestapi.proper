-module(slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups/0]).

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups() ::
  [ {'hourly', slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_hourly:slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_hourly() }
  | {'daily', slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_daily:slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_daily() }
  | {'monthly', slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_monthly:slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_monthly() }
  ].


slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups() ->
    slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups([]).

slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups(Fields) ->
  Default = [ {'hourly', slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_hourly:slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_hourly() }
            , {'daily', slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_daily:slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_daily() }
            , {'monthly', slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_monthly:slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_monthly() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

