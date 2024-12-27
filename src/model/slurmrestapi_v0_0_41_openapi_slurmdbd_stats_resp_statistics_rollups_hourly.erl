-module(slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_hourly).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_hourly/0]).

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_hourly/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_hourly/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_hourly() ::
  [ {'count', integer() }
  | {'last_run', integer() }
  | {'duration', slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_hourly_duration:slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_hourly_duration() }
  ].


slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_hourly() ->
    slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_hourly([]).

slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_hourly(Fields) ->
  Default = [ {'count', integer() }
            , {'last_run', integer() }
            , {'duration', slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_hourly_duration:slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_hourly_duration() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

