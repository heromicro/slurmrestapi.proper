-module(slurmrestapi_v0_0_40_job_array).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_job_array/0]).

-export([slurmrestapi_v0_0_40_job_array/1]).

-export_type([slurmrestapi_v0_0_40_job_array/0]).

-type slurmrestapi_v0_0_40_job_array() ::
  [ {'job_id', integer() }
  | {'limits', slurmrestapi_v0_0_40_job_array_limits:slurmrestapi_v0_0_40_job_array_limits() }
  | {'task_id', slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val() }
  | {'task', binary() }
  ].


slurmrestapi_v0_0_40_job_array() ->
    slurmrestapi_v0_0_40_job_array([]).

slurmrestapi_v0_0_40_job_array(Fields) ->
  Default = [ {'job_id', integer() }
            , {'limits', slurmrestapi_v0_0_40_job_array_limits:slurmrestapi_v0_0_40_job_array_limits() }
            , {'task_id', slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val() }
            , {'task', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

