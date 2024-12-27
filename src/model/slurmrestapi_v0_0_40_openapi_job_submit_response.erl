-module(slurmrestapi_v0_0_40_openapi_job_submit_response).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_openapi_job_submit_response/0]).

-export([slurmrestapi_v0_0_40_openapi_job_submit_response/1]).

-export_type([slurmrestapi_v0_0_40_openapi_job_submit_response/0]).

-type slurmrestapi_v0_0_40_openapi_job_submit_response() ::
  [ {'result', slurmrestapi_v0_0_40_job_submit_response_msg:slurmrestapi_v0_0_40_job_submit_response_msg() }
  | {'job_id', integer() }
  | {'step_id', binary() }
  | {'job_submit_user_msg', binary() }
  | {'meta', slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta() }
  | {'errors', list(slurmrestapi_v0_0_40_openapi_error:slurmrestapi_v0_0_40_openapi_error()) }
  | {'warnings', list(slurmrestapi_v0_0_40_openapi_warning:slurmrestapi_v0_0_40_openapi_warning()) }
  ].


slurmrestapi_v0_0_40_openapi_job_submit_response() ->
    slurmrestapi_v0_0_40_openapi_job_submit_response([]).

slurmrestapi_v0_0_40_openapi_job_submit_response(Fields) ->
  Default = [ {'result', slurmrestapi_v0_0_40_job_submit_response_msg:slurmrestapi_v0_0_40_job_submit_response_msg() }
            , {'job_id', integer() }
            , {'step_id', binary() }
            , {'job_submit_user_msg', binary() }
            , {'meta', slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta() }
            , {'errors', list(slurmrestapi_v0_0_40_openapi_error:slurmrestapi_v0_0_40_openapi_error()) }
            , {'warnings', list(slurmrestapi_v0_0_40_openapi_warning:slurmrestapi_v0_0_40_openapi_warning()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

