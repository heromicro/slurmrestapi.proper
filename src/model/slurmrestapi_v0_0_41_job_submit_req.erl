-module(slurmrestapi_v0_0_41_job_submit_req).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_job_submit_req/0]).

-export([slurmrestapi_v0_0_41_job_submit_req/1]).

-export_type([slurmrestapi_v0_0_41_job_submit_req/0]).

-type slurmrestapi_v0_0_41_job_submit_req() ::
  [ {'script', binary() }
  | {'jobs', list(slurmrestapi_v0_0_41_job_desc_msg:slurmrestapi_v0_0_41_job_desc_msg()) }
  | {'job', slurmrestapi_v0_0_41_job_desc_msg:slurmrestapi_v0_0_41_job_desc_msg() }
  ].


slurmrestapi_v0_0_41_job_submit_req() ->
    slurmrestapi_v0_0_41_job_submit_req([]).

slurmrestapi_v0_0_41_job_submit_req(Fields) ->
  Default = [ {'script', binary() }
            , {'jobs', list(slurmrestapi_v0_0_41_job_desc_msg:slurmrestapi_v0_0_41_job_desc_msg()) }
            , {'job', slurmrestapi_v0_0_41_job_desc_msg:slurmrestapi_v0_0_41_job_desc_msg() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

