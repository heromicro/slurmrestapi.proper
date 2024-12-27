-module(slurmrestapi_v0_0_40_job_time).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_job_time/0]).

-export([slurmrestapi_v0_0_40_job_time/1]).

-export_type([slurmrestapi_v0_0_40_job_time/0]).

-type slurmrestapi_v0_0_40_job_time() ::
  [ {'elapsed', integer() }
  | {'eligible', integer() }
  | {'End_', integer() }
  | {'start', integer() }
  | {'submission', integer() }
  | {'suspended', integer() }
  | {'system', slurmrestapi_v0_0_40_job_time_system:slurmrestapi_v0_0_40_job_time_system() }
  | {'limit', slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val() }
  | {'total', slurmrestapi_v0_0_40_job_time_total:slurmrestapi_v0_0_40_job_time_total() }
  | {'user', slurmrestapi_v0_0_40_job_time_user:slurmrestapi_v0_0_40_job_time_user() }
  ].


slurmrestapi_v0_0_40_job_time() ->
    slurmrestapi_v0_0_40_job_time([]).

slurmrestapi_v0_0_40_job_time(Fields) ->
  Default = [ {'elapsed', integer() }
            , {'eligible', integer() }
            , {'end', integer() }
            , {'start', integer() }
            , {'submission', integer() }
            , {'suspended', integer() }
            , {'system', slurmrestapi_v0_0_40_job_time_system:slurmrestapi_v0_0_40_job_time_system() }
            , {'limit', slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val() }
            , {'total', slurmrestapi_v0_0_40_job_time_total:slurmrestapi_v0_0_40_job_time_total() }
            , {'user', slurmrestapi_v0_0_40_job_time_user:slurmrestapi_v0_0_40_job_time_user() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

