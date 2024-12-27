-module(slurmrestapi_v0_0_41_job_desc_msg_rlimits_nofile).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_job_desc_msg_rlimits_nofile/0]).

-export([slurmrestapi_v0_0_41_job_desc_msg_rlimits_nofile/1]).

-export_type([slurmrestapi_v0_0_41_job_desc_msg_rlimits_nofile/0]).

-type slurmrestapi_v0_0_41_job_desc_msg_rlimits_nofile() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_job_desc_msg_rlimits_nofile() ->
    slurmrestapi_v0_0_41_job_desc_msg_rlimits_nofile([]).

slurmrestapi_v0_0_41_job_desc_msg_rlimits_nofile(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

