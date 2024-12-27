-module(slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_billable_tres).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_billable_tres/0]).

-export([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_billable_tres/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_billable_tres/0]).

-type slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_billable_tres() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', float() }
  ].


slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_billable_tres() ->
    slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_billable_tres([]).

slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_billable_tres(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', float() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

