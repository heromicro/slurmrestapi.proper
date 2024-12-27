-module(slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_het_job_offset).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_het_job_offset/0]).

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_het_job_offset/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_het_job_offset/0]).

-type slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_het_job_offset() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_het_job_offset() ->
    slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_het_job_offset([]).

slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_het_job_offset(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

