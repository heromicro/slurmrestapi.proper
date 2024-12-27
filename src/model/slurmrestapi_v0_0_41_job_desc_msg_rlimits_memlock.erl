-module(slurmrestapi_v0_0_41_job_desc_msg_rlimits_memlock).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_job_desc_msg_rlimits_memlock/0]).

-export([slurmrestapi_v0_0_41_job_desc_msg_rlimits_memlock/1]).

-export_type([slurmrestapi_v0_0_41_job_desc_msg_rlimits_memlock/0]).

-type slurmrestapi_v0_0_41_job_desc_msg_rlimits_memlock() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_job_desc_msg_rlimits_memlock() ->
    slurmrestapi_v0_0_41_job_desc_msg_rlimits_memlock([]).

slurmrestapi_v0_0_41_job_desc_msg_rlimits_memlock(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

