-module(slurmrestapi_v0_0_40_job_time_total).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_job_time_total/0]).

-export([slurmrestapi_v0_0_40_job_time_total/1]).

-export_type([slurmrestapi_v0_0_40_job_time_total/0]).

-type slurmrestapi_v0_0_40_job_time_total() ::
  [ {'seconds', integer() }
  | {'microseconds', integer() }
  ].


slurmrestapi_v0_0_40_job_time_total() ->
    slurmrestapi_v0_0_40_job_time_total([]).

slurmrestapi_v0_0_40_job_time_total(Fields) ->
  Default = [ {'seconds', integer() }
            , {'microseconds', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

