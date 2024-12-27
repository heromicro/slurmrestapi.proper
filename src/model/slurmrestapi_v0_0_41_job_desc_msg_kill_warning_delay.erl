-module(slurmrestapi_v0_0_41_job_desc_msg_kill_warning_delay).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_job_desc_msg_kill_warning_delay/0]).

-export([slurmrestapi_v0_0_41_job_desc_msg_kill_warning_delay/1]).

-export_type([slurmrestapi_v0_0_41_job_desc_msg_kill_warning_delay/0]).

-type slurmrestapi_v0_0_41_job_desc_msg_kill_warning_delay() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_job_desc_msg_kill_warning_delay() ->
    slurmrestapi_v0_0_41_job_desc_msg_kill_warning_delay([]).

slurmrestapi_v0_0_41_job_desc_msg_kill_warning_delay(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

