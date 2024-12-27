-module(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_het).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_het/0]).

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_het/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_het/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_het() ::
  [ {'job_id', integer() }
  | {'job_offset', slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_het_job_offset:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_het_job_offset() }
  ].


slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_het() ->
    slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_het([]).

slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_het(Fields) ->
  Default = [ {'job_id', integer() }
            , {'job_offset', slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_het_job_offset:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_het_job_offset() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

