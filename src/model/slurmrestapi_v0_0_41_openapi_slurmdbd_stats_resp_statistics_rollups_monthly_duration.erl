-module(slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_monthly_duration).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_monthly_duration/0]).

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_monthly_duration/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_monthly_duration/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_monthly_duration() ::
  [ {'last', integer() }
  | {'max', integer() }
  | {'time', integer() }
  ].


slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_monthly_duration() ->
    slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_monthly_duration([]).

slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_monthly_duration(Fields) ->
  Default = [ {'last', integer() }
            , {'max', integer() }
            , {'time', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

