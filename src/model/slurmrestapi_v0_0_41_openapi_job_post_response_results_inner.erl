-module(slurmrestapi_v0_0_41_openapi_job_post_response_results_inner).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_job_post_response_results_inner/0]).

-export([slurmrestapi_v0_0_41_openapi_job_post_response_results_inner/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_post_response_results_inner/0]).

-type slurmrestapi_v0_0_41_openapi_job_post_response_results_inner() ::
  [ {'job_id', integer() }
  | {'step_id', binary() }
  | {'error', binary() }
  | {'error_code', integer() }
  | {'why', binary() }
  ].


slurmrestapi_v0_0_41_openapi_job_post_response_results_inner() ->
    slurmrestapi_v0_0_41_openapi_job_post_response_results_inner([]).

slurmrestapi_v0_0_41_openapi_job_post_response_results_inner(Fields) ->
  Default = [ {'job_id', integer() }
            , {'step_id', binary() }
            , {'error', binary() }
            , {'error_code', integer() }
            , {'why', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

