-module(slurmrestapi_v0_0_39_job_submission_response).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_job_submission_response/0]).

-export([slurmrestapi_v0_0_39_job_submission_response/1]).

-export_type([slurmrestapi_v0_0_39_job_submission_response/0]).

-type slurmrestapi_v0_0_39_job_submission_response() ::
  [ {'meta', slurmrestapi_v0_0_39_meta:slurmrestapi_v0_0_39_meta() }
  | {'errors', list(slurmrestapi_v0_0_39_error:slurmrestapi_v0_0_39_error()) }
  | {'warnings', list(slurmrestapi_v0_0_39_warning:slurmrestapi_v0_0_39_warning()) }
  | {'job_id', integer() }
  | {'step_id', binary() }
  | {'job_submit_user_msg', binary() }
  ].


slurmrestapi_v0_0_39_job_submission_response() ->
    slurmrestapi_v0_0_39_job_submission_response([]).

slurmrestapi_v0_0_39_job_submission_response(Fields) ->
  Default = [ {'meta', slurmrestapi_v0_0_39_meta:slurmrestapi_v0_0_39_meta() }
            , {'errors', list(slurmrestapi_v0_0_39_error:slurmrestapi_v0_0_39_error()) }
            , {'warnings', list(slurmrestapi_v0_0_39_warning:slurmrestapi_v0_0_39_warning()) }
            , {'job_id', integer() }
            , {'step_id', binary() }
            , {'job_submit_user_msg', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

