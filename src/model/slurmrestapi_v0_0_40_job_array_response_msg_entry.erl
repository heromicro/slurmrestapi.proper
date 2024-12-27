-module(slurmrestapi_v0_0_40_job_array_response_msg_entry).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_job_array_response_msg_entry/0]).

-export([slurmrestapi_v0_0_40_job_array_response_msg_entry/1]).

-export_type([slurmrestapi_v0_0_40_job_array_response_msg_entry/0]).

-type slurmrestapi_v0_0_40_job_array_response_msg_entry() ::
  [ {'job_id', integer() }
  | {'step_id', binary() }
  | {'error', binary() }
  | {'error_code', integer() }
  | {'why', binary() }
  ].


slurmrestapi_v0_0_40_job_array_response_msg_entry() ->
    slurmrestapi_v0_0_40_job_array_response_msg_entry([]).

slurmrestapi_v0_0_40_job_array_response_msg_entry(Fields) ->
  Default = [ {'job_id', integer() }
            , {'step_id', binary() }
            , {'error', binary() }
            , {'error_code', integer() }
            , {'why', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

