-module(slurmrestapi_v0_0_40_job_array_limits_max_running).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_job_array_limits_max_running/0]).

-export([slurmrestapi_v0_0_40_job_array_limits_max_running/1]).

-export_type([slurmrestapi_v0_0_40_job_array_limits_max_running/0]).

-type slurmrestapi_v0_0_40_job_array_limits_max_running() ::
  [ {'tasks', integer() }
  ].


slurmrestapi_v0_0_40_job_array_limits_max_running() ->
    slurmrestapi_v0_0_40_job_array_limits_max_running([]).

slurmrestapi_v0_0_40_job_array_limits_max_running(Fields) ->
  Default = [ {'tasks', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

