-module(slurmrestapi_v0_0_41_openapi_job_submit_response_result).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_job_submit_response_result/0]).

-export([slurmrestapi_v0_0_41_openapi_job_submit_response_result/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_submit_response_result/0]).

-type slurmrestapi_v0_0_41_openapi_job_submit_response_result() ::
  [ {'job_id', integer() }
  | {'step_id', binary() }
  | {'error_code', integer() }
  | {'error', binary() }
  | {'job_submit_user_msg', binary() }
  ].


slurmrestapi_v0_0_41_openapi_job_submit_response_result() ->
    slurmrestapi_v0_0_41_openapi_job_submit_response_result([]).

slurmrestapi_v0_0_41_openapi_job_submit_response_result(Fields) ->
  Default = [ {'job_id', integer() }
            , {'step_id', binary() }
            , {'error_code', integer() }
            , {'error', binary() }
            , {'job_submit_user_msg', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

