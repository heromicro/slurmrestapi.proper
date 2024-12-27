-module(slurmrestapi_v0_0_41_job_desc_msg_rlimits_cpu).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_job_desc_msg_rlimits_cpu/0]).

-export([slurmrestapi_v0_0_41_job_desc_msg_rlimits_cpu/1]).

-export_type([slurmrestapi_v0_0_41_job_desc_msg_rlimits_cpu/0]).

-type slurmrestapi_v0_0_41_job_desc_msg_rlimits_cpu() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_job_desc_msg_rlimits_cpu() ->
    slurmrestapi_v0_0_41_job_desc_msg_rlimits_cpu([]).

slurmrestapi_v0_0_41_job_desc_msg_rlimits_cpu(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

