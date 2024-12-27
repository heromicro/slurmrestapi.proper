-module(slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_daily).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_daily/0]).

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_daily/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_daily/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_daily() ::
  [ {'count', integer() }
  | {'last_run', integer() }
  | {'duration', slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_daily_duration:slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_daily_duration() }
  ].


slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_daily() ->
    slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_daily([]).

slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_daily(Fields) ->
  Default = [ {'count', integer() }
            , {'last_run', integer() }
            , {'duration', slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_daily_duration:slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_daily_duration() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

