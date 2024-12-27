-module(slurmrestapi_v0_0_40_job_submit_response_msg).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_job_submit_response_msg/0]).

-export([slurmrestapi_v0_0_40_job_submit_response_msg/1]).

-export_type([slurmrestapi_v0_0_40_job_submit_response_msg/0]).

-type slurmrestapi_v0_0_40_job_submit_response_msg() ::
  [ {'job_id', integer() }
  | {'step_id', binary() }
  | {'error_code', integer() }
  | {'error', binary() }
  | {'job_submit_user_msg', binary() }
  ].


slurmrestapi_v0_0_40_job_submit_response_msg() ->
    slurmrestapi_v0_0_40_job_submit_response_msg([]).

slurmrestapi_v0_0_40_job_submit_response_msg(Fields) ->
  Default = [ {'job_id', integer() }
            , {'step_id', binary() }
            , {'error_code', integer() }
            , {'error', binary() }
            , {'job_submit_user_msg', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

