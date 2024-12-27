-module(slurmrestapi_v0_0_41_job_alloc_req).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_job_alloc_req/0]).

-export([slurmrestapi_v0_0_41_job_alloc_req/1]).

-export_type([slurmrestapi_v0_0_41_job_alloc_req/0]).

-type slurmrestapi_v0_0_41_job_alloc_req() ::
  [ {'hetjob', list(slurmrestapi_v0_0_41_job_desc_msg:slurmrestapi_v0_0_41_job_desc_msg()) }
  | {'job', slurmrestapi_v0_0_41_job_desc_msg:slurmrestapi_v0_0_41_job_desc_msg() }
  ].


slurmrestapi_v0_0_41_job_alloc_req() ->
    slurmrestapi_v0_0_41_job_alloc_req([]).

slurmrestapi_v0_0_41_job_alloc_req(Fields) ->
  Default = [ {'hetjob', list(slurmrestapi_v0_0_41_job_desc_msg:slurmrestapi_v0_0_41_job_desc_msg()) }
            , {'job', slurmrestapi_v0_0_41_job_desc_msg:slurmrestapi_v0_0_41_job_desc_msg() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

