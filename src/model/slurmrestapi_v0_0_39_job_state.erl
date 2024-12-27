-module(slurmrestapi_v0_0_39_job_state).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_job_state/0]).

-export([slurmrestapi_v0_0_39_job_state/1]).

-export_type([slurmrestapi_v0_0_39_job_state/0]).

-type slurmrestapi_v0_0_39_job_state() ::
  [ {'reason', binary() }
  ].


slurmrestapi_v0_0_39_job_state() ->
    slurmrestapi_v0_0_39_job_state([]).

slurmrestapi_v0_0_39_job_state(Fields) ->
  Default = [ {'reason', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

