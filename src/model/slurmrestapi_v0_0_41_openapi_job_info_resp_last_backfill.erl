-module(slurmrestapi_v0_0_41_openapi_job_info_resp_last_backfill).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_last_backfill/0]).

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_last_backfill/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_info_resp_last_backfill/0]).

-type slurmrestapi_v0_0_41_openapi_job_info_resp_last_backfill() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_openapi_job_info_resp_last_backfill() ->
    slurmrestapi_v0_0_41_openapi_job_info_resp_last_backfill([]).

slurmrestapi_v0_0_41_openapi_job_info_resp_last_backfill(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

