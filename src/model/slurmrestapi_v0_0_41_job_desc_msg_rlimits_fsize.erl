-module(slurmrestapi_v0_0_41_job_desc_msg_rlimits_fsize).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_job_desc_msg_rlimits_fsize/0]).

-export([slurmrestapi_v0_0_41_job_desc_msg_rlimits_fsize/1]).

-export_type([slurmrestapi_v0_0_41_job_desc_msg_rlimits_fsize/0]).

-type slurmrestapi_v0_0_41_job_desc_msg_rlimits_fsize() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_job_desc_msg_rlimits_fsize() ->
    slurmrestapi_v0_0_41_job_desc_msg_rlimits_fsize([]).

slurmrestapi_v0_0_41_job_desc_msg_rlimits_fsize(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

