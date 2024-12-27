-module(slurmrestapi_v0_0_41_openapi_job_info_resp).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_job_info_resp/0]).

-export([slurmrestapi_v0_0_41_openapi_job_info_resp/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_info_resp/0]).

-type slurmrestapi_v0_0_41_openapi_job_info_resp() ::
  [ {'jobs', list(slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner()) }
  | {'last_backfill', slurmrestapi_v0_0_41_openapi_job_info_resp_last_backfill:slurmrestapi_v0_0_41_openapi_job_info_resp_last_backfill() }
  | {'last_update', slurmrestapi_v0_0_41_openapi_job_info_resp_last_update:slurmrestapi_v0_0_41_openapi_job_info_resp_last_update() }
  | {'meta', slurmrestapi_v0_0_41_openapi_shares_resp_meta:slurmrestapi_v0_0_41_openapi_shares_resp_meta() }
  | {'errors', list(slurmrestapi_v0_0_41_openapi_shares_resp_errors_inner:slurmrestapi_v0_0_41_openapi_shares_resp_errors_inner()) }
  | {'warnings', list(slurmrestapi_v0_0_41_openapi_shares_resp_warnings_inner:slurmrestapi_v0_0_41_openapi_shares_resp_warnings_inner()) }
  ].


slurmrestapi_v0_0_41_openapi_job_info_resp() ->
    slurmrestapi_v0_0_41_openapi_job_info_resp([]).

slurmrestapi_v0_0_41_openapi_job_info_resp(Fields) ->
  Default = [ {'jobs', list(slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner()) }
            , {'last_backfill', slurmrestapi_v0_0_41_openapi_job_info_resp_last_backfill:slurmrestapi_v0_0_41_openapi_job_info_resp_last_backfill() }
            , {'last_update', slurmrestapi_v0_0_41_openapi_job_info_resp_last_update:slurmrestapi_v0_0_41_openapi_job_info_resp_last_update() }
            , {'meta', slurmrestapi_v0_0_41_openapi_shares_resp_meta:slurmrestapi_v0_0_41_openapi_shares_resp_meta() }
            , {'errors', list(slurmrestapi_v0_0_41_openapi_shares_resp_errors_inner:slurmrestapi_v0_0_41_openapi_shares_resp_errors_inner()) }
            , {'warnings', list(slurmrestapi_v0_0_41_openapi_shares_resp_warnings_inner:slurmrestapi_v0_0_41_openapi_shares_resp_warnings_inner()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

