-module(slurmrestapi_v0_0_39_job_exit_code_signal).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_job_exit_code_signal/0]).

-export([slurmrestapi_v0_0_39_job_exit_code_signal/1]).

-export_type([slurmrestapi_v0_0_39_job_exit_code_signal/0]).

-type slurmrestapi_v0_0_39_job_exit_code_signal() ::
  [ {'signal_id', integer() }
  | {'name', binary() }
  ].


slurmrestapi_v0_0_39_job_exit_code_signal() ->
    slurmrestapi_v0_0_39_job_exit_code_signal([]).

slurmrestapi_v0_0_39_job_exit_code_signal(Fields) ->
  Default = [ {'signal_id', integer() }
            , {'name', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

