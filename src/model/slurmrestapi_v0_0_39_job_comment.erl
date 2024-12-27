-module(slurmrestapi_v0_0_39_job_comment).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_job_comment/0]).

-export([slurmrestapi_v0_0_39_job_comment/1]).

-export_type([slurmrestapi_v0_0_39_job_comment/0]).

-type slurmrestapi_v0_0_39_job_comment() ::
  [ {'administrator', binary() }
  | {'job', binary() }
  | {'system', binary() }
  ].


slurmrestapi_v0_0_39_job_comment() ->
    slurmrestapi_v0_0_39_job_comment([]).

slurmrestapi_v0_0_39_job_comment(Fields) ->
  Default = [ {'administrator', binary() }
            , {'job', binary() }
            , {'system', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

