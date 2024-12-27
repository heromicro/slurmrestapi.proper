-module(slurmrestapi_v0_0_40_step_time_user).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_step_time_user/0]).

-export([slurmrestapi_v0_0_40_step_time_user/1]).

-export_type([slurmrestapi_v0_0_40_step_time_user/0]).

-type slurmrestapi_v0_0_40_step_time_user() ::
  [ {'seconds', integer() }
  | {'microseconds', integer() }
  ].


slurmrestapi_v0_0_40_step_time_user() ->
    slurmrestapi_v0_0_40_step_time_user([]).

slurmrestapi_v0_0_40_step_time_user(Fields) ->
  Default = [ {'seconds', integer() }
            , {'microseconds', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

