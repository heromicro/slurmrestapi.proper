-module(slurmrestapi_v0_0_39_job_array).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_job_array/0]).

-export([slurmrestapi_v0_0_39_job_array/1]).

-export_type([slurmrestapi_v0_0_39_job_array/0]).

-type slurmrestapi_v0_0_39_job_array() ::
  [ {'task', binary() }
  ].


slurmrestapi_v0_0_39_job_array() ->
    slurmrestapi_v0_0_39_job_array([]).

slurmrestapi_v0_0_39_job_array(Fields) ->
  Default = [ {'task', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

