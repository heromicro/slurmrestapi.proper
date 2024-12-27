-module(slurmrestapi_v0_0_39_job_submission).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_job_submission/0]).

-export([slurmrestapi_v0_0_39_job_submission/1]).

-export_type([slurmrestapi_v0_0_39_job_submission/0]).

-type slurmrestapi_v0_0_39_job_submission() ::
  [ {'script', binary() }
  | {'job', slurmrestapi_v0_0_39_job_desc_msg:slurmrestapi_v0_0_39_job_desc_msg() }
  | {'jobs', list(slurmrestapi_v0_0_39_job_desc_msg:slurmrestapi_v0_0_39_job_desc_msg()) }
  ].


slurmrestapi_v0_0_39_job_submission() ->
    slurmrestapi_v0_0_39_job_submission([]).

slurmrestapi_v0_0_39_job_submission(Fields) ->
  Default = [ {'script', binary() }
            , {'job', slurmrestapi_v0_0_39_job_desc_msg:slurmrestapi_v0_0_39_job_desc_msg() }
            , {'jobs', list(slurmrestapi_v0_0_39_job_desc_msg:slurmrestapi_v0_0_39_job_desc_msg()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

