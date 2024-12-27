-module(slurmrestapi_v0_0_39_job_array_limits).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_job_array_limits/0]).

-export([slurmrestapi_v0_0_39_job_array_limits/1]).

-export_type([slurmrestapi_v0_0_39_job_array_limits/0]).

-type slurmrestapi_v0_0_39_job_array_limits() ::
  [ {'max', slurmrestapi_v0_0_39_job_array_limits_max:slurmrestapi_v0_0_39_job_array_limits_max() }
  ].


slurmrestapi_v0_0_39_job_array_limits() ->
    slurmrestapi_v0_0_39_job_array_limits([]).

slurmrestapi_v0_0_39_job_array_limits(Fields) ->
  Default = [ {'max', slurmrestapi_v0_0_39_job_array_limits_max:slurmrestapi_v0_0_39_job_array_limits_max() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

