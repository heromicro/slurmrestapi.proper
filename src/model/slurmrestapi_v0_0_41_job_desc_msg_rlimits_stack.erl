-module(slurmrestapi_v0_0_41_job_desc_msg_rlimits_stack).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_job_desc_msg_rlimits_stack/0]).

-export([slurmrestapi_v0_0_41_job_desc_msg_rlimits_stack/1]).

-export_type([slurmrestapi_v0_0_41_job_desc_msg_rlimits_stack/0]).

-type slurmrestapi_v0_0_41_job_desc_msg_rlimits_stack() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_job_desc_msg_rlimits_stack() ->
    slurmrestapi_v0_0_41_job_desc_msg_rlimits_stack([]).

slurmrestapi_v0_0_41_job_desc_msg_rlimits_stack(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

