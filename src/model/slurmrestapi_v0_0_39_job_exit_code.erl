-module(slurmrestapi_v0_0_39_job_exit_code).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_job_exit_code/0]).

-export([slurmrestapi_v0_0_39_job_exit_code/1]).

-export_type([slurmrestapi_v0_0_39_job_exit_code/0]).

-type slurmrestapi_v0_0_39_job_exit_code() ::
  [ {'status', binary() }
  | {'return_code', integer() }
  | {'signal', slurmrestapi_v0_0_39_job_exit_code_signal:slurmrestapi_v0_0_39_job_exit_code_signal() }
  ].


slurmrestapi_v0_0_39_job_exit_code() ->
    slurmrestapi_v0_0_39_job_exit_code([]).

slurmrestapi_v0_0_39_job_exit_code(Fields) ->
  Default = [ {'status', binary() }
            , {'return_code', integer() }
            , {'signal', slurmrestapi_v0_0_39_job_exit_code_signal:slurmrestapi_v0_0_39_job_exit_code_signal() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

