-module(slurmrestapi_v0_0_40_kill_jobs_msg).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_kill_jobs_msg/0]).

-export([slurmrestapi_v0_0_40_kill_jobs_msg/1]).

-export_type([slurmrestapi_v0_0_40_kill_jobs_msg/0]).

-type slurmrestapi_v0_0_40_kill_jobs_msg() ::
  [ {'account', binary() }
  | {'flags', list(binary()) }
  | {'job_name', binary() }
  | {'jobs', list(binary()) }
  | {'partition', binary() }
  | {'qos', binary() }
  | {'reservation', binary() }
  | {'signal', binary() }
  | {'job_state', list(binary()) }
  | {'user_id', binary() }
  | {'user_name', binary() }
  | {'wckey', binary() }
  | {'nodes', list(binary()) }
  ].


slurmrestapi_v0_0_40_kill_jobs_msg() ->
    slurmrestapi_v0_0_40_kill_jobs_msg([]).

slurmrestapi_v0_0_40_kill_jobs_msg(Fields) ->
  Default = [ {'account', binary() }
            , {'flags', list(binary()) }
            , {'job_name', binary() }
            , {'jobs', list(binary()) }
            , {'partition', binary() }
            , {'qos', binary() }
            , {'reservation', binary() }
            , {'signal', binary() }
            , {'job_state', list(binary()) }
            , {'user_id', binary() }
            , {'user_name', binary() }
            , {'wckey', binary() }
            , {'nodes', list(binary()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

