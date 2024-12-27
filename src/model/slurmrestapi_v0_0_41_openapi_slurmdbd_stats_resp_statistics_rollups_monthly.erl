-module(slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_monthly).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_monthly/0]).

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_monthly/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_monthly/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_monthly() ::
  [ {'count', integer() }
  | {'last_run', integer() }
  | {'duration', slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_monthly_duration:slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_monthly_duration() }
  ].


slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_monthly() ->
    slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_monthly([]).

slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_monthly(Fields) ->
  Default = [ {'count', integer() }
            , {'last_run', integer() }
            , {'duration', slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_monthly_duration:slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_monthly_duration() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

