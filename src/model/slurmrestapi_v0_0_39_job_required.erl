-module(slurmrestapi_v0_0_39_job_required).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_job_required/0]).

-export([slurmrestapi_v0_0_39_job_required/1]).

-export_type([slurmrestapi_v0_0_39_job_required/0]).

-type slurmrestapi_v0_0_39_job_required() ::
  [ {'memory', integer() }
  ].


slurmrestapi_v0_0_39_job_required() ->
    slurmrestapi_v0_0_39_job_required([]).

slurmrestapi_v0_0_39_job_required(Fields) ->
  Default = [ {'memory', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

