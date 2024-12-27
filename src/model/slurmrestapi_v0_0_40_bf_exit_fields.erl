-module(slurmrestapi_v0_0_40_bf_exit_fields).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_bf_exit_fields/0]).

-export([slurmrestapi_v0_0_40_bf_exit_fields/1]).

-export_type([slurmrestapi_v0_0_40_bf_exit_fields/0]).

-type slurmrestapi_v0_0_40_bf_exit_fields() ::
  [ {'end_job_queue', integer() }
  | {'bf_max_job_start', integer() }
  | {'bf_max_job_test', integer() }
  | {'bf_max_time', integer() }
  | {'bf_node_space_size', integer() }
  | {'state_changed', integer() }
  ].


slurmrestapi_v0_0_40_bf_exit_fields() ->
    slurmrestapi_v0_0_40_bf_exit_fields([]).

slurmrestapi_v0_0_40_bf_exit_fields(Fields) ->
  Default = [ {'end_job_queue', integer() }
            , {'bf_max_job_start', integer() }
            , {'bf_max_job_test', integer() }
            , {'bf_max_time', integer() }
            , {'bf_node_space_size', integer() }
            , {'state_changed', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

