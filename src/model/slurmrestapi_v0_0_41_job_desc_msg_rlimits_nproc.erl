-module(slurmrestapi_v0_0_41_job_desc_msg_rlimits_nproc).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_job_desc_msg_rlimits_nproc/0]).

-export([slurmrestapi_v0_0_41_job_desc_msg_rlimits_nproc/1]).

-export_type([slurmrestapi_v0_0_41_job_desc_msg_rlimits_nproc/0]).

-type slurmrestapi_v0_0_41_job_desc_msg_rlimits_nproc() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_job_desc_msg_rlimits_nproc() ->
    slurmrestapi_v0_0_41_job_desc_msg_rlimits_nproc([]).

slurmrestapi_v0_0_41_job_desc_msg_rlimits_nproc(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

