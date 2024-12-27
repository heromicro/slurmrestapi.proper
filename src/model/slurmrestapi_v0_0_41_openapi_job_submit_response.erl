-module(slurmrestapi_v0_0_41_openapi_job_submit_response).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_job_submit_response/0]).

-export([slurmrestapi_v0_0_41_openapi_job_submit_response/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_submit_response/0]).

-type slurmrestapi_v0_0_41_openapi_job_submit_response() ::
  [ {'result', slurmrestapi_v0_0_41_openapi_job_submit_response_result:slurmrestapi_v0_0_41_openapi_job_submit_response_result() }
  | {'job_id', integer() }
  | {'step_id', binary() }
  | {'job_submit_user_msg', binary() }
  | {'meta', slurmrestapi_v0_0_41_openapi_shares_resp_meta:slurmrestapi_v0_0_41_openapi_shares_resp_meta() }
  | {'errors', list(slurmrestapi_v0_0_41_openapi_shares_resp_errors_inner:slurmrestapi_v0_0_41_openapi_shares_resp_errors_inner()) }
  | {'warnings', list(slurmrestapi_v0_0_41_openapi_shares_resp_warnings_inner:slurmrestapi_v0_0_41_openapi_shares_resp_warnings_inner()) }
  ].


slurmrestapi_v0_0_41_openapi_job_submit_response() ->
    slurmrestapi_v0_0_41_openapi_job_submit_response([]).

slurmrestapi_v0_0_41_openapi_job_submit_response(Fields) ->
  Default = [ {'result', slurmrestapi_v0_0_41_openapi_job_submit_response_result:slurmrestapi_v0_0_41_openapi_job_submit_response_result() }
            , {'job_id', integer() }
            , {'step_id', binary() }
            , {'job_submit_user_msg', binary() }
            , {'meta', slurmrestapi_v0_0_41_openapi_shares_resp_meta:slurmrestapi_v0_0_41_openapi_shares_resp_meta() }
            , {'errors', list(slurmrestapi_v0_0_41_openapi_shares_resp_errors_inner:slurmrestapi_v0_0_41_openapi_shares_resp_errors_inner()) }
            , {'warnings', list(slurmrestapi_v0_0_41_openapi_shares_resp_warnings_inner:slurmrestapi_v0_0_41_openapi_shares_resp_warnings_inner()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

