-module(slurmrestapi_v0_0_39_job_array_response_msg_inner).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_job_array_response_msg_inner/0]).

-export([slurmrestapi_v0_0_39_job_array_response_msg_inner/1]).

-export_type([slurmrestapi_v0_0_39_job_array_response_msg_inner/0]).

-type slurmrestapi_v0_0_39_job_array_response_msg_inner() ::
  [ {'job_id', integer() }
  | {'error_code', integer() }
  | {'error', binary() }
  | {'why', binary() }
  ].


slurmrestapi_v0_0_39_job_array_response_msg_inner() ->
    slurmrestapi_v0_0_39_job_array_response_msg_inner([]).

slurmrestapi_v0_0_39_job_array_response_msg_inner(Fields) ->
  Default = [ {'job_id', integer() }
            , {'error_code', integer() }
            , {'error', binary() }
            , {'why', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

