-module(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_time).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_time/0]).

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_time/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_time/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_time() ::
  [ {'elapsed', integer() }
  | {'eligible', integer() }
  | {'End_', integer() }
  | {'planned', slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_time_planned:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_time_planned() }
  | {'start', integer() }
  | {'submission', integer() }
  | {'suspended', integer() }
  | {'system', slurmrestapi_v0_0_40_job_time_system:slurmrestapi_v0_0_40_job_time_system() }
  | {'limit', slurmrestapi_v0_0_41_job_desc_msg_time_limit:slurmrestapi_v0_0_41_job_desc_msg_time_limit() }
  | {'total', slurmrestapi_v0_0_40_job_time_total:slurmrestapi_v0_0_40_job_time_total() }
  | {'user', slurmrestapi_v0_0_40_job_time_user:slurmrestapi_v0_0_40_job_time_user() }
  ].


slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_time() ->
    slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_time([]).

slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_time(Fields) ->
  Default = [ {'elapsed', integer() }
            , {'eligible', integer() }
            , {'end', integer() }
            , {'planned', slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_time_planned:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_time_planned() }
            , {'start', integer() }
            , {'submission', integer() }
            , {'suspended', integer() }
            , {'system', slurmrestapi_v0_0_40_job_time_system:slurmrestapi_v0_0_40_job_time_system() }
            , {'limit', slurmrestapi_v0_0_41_job_desc_msg_time_limit:slurmrestapi_v0_0_41_job_desc_msg_time_limit() }
            , {'total', slurmrestapi_v0_0_40_job_time_total:slurmrestapi_v0_0_40_job_time_total() }
            , {'user', slurmrestapi_v0_0_40_job_time_user:slurmrestapi_v0_0_40_job_time_user() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

