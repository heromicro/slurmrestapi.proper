-module(slurmrestapi_v0_0_40_job_array_limits_max).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_job_array_limits_max/0]).

-export([slurmrestapi_v0_0_40_job_array_limits_max/1]).

-export_type([slurmrestapi_v0_0_40_job_array_limits_max/0]).

-type slurmrestapi_v0_0_40_job_array_limits_max() ::
  [ {'running', slurmrestapi_v0_0_40_job_array_limits_max_running:slurmrestapi_v0_0_40_job_array_limits_max_running() }
  ].


slurmrestapi_v0_0_40_job_array_limits_max() ->
    slurmrestapi_v0_0_40_job_array_limits_max([]).

slurmrestapi_v0_0_40_job_array_limits_max(Fields) ->
  Default = [ {'running', slurmrestapi_v0_0_40_job_array_limits_max_running:slurmrestapi_v0_0_40_job_array_limits_max_running() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

