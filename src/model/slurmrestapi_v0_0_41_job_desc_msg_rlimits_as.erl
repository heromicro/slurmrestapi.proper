-module(slurmrestapi_v0_0_41_job_desc_msg_rlimits_as).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_job_desc_msg_rlimits_as/0]).

-export([slurmrestapi_v0_0_41_job_desc_msg_rlimits_as/1]).

-export_type([slurmrestapi_v0_0_41_job_desc_msg_rlimits_as/0]).

-type slurmrestapi_v0_0_41_job_desc_msg_rlimits_as() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_job_desc_msg_rlimits_as() ->
    slurmrestapi_v0_0_41_job_desc_msg_rlimits_as([]).

slurmrestapi_v0_0_41_job_desc_msg_rlimits_as(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

