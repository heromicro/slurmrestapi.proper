-module(slurmrestapi_v0_0_41_job_desc_msg_rlimits_data).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_job_desc_msg_rlimits_data/0]).

-export([slurmrestapi_v0_0_41_job_desc_msg_rlimits_data/1]).

-export_type([slurmrestapi_v0_0_41_job_desc_msg_rlimits_data/0]).

-type slurmrestapi_v0_0_41_job_desc_msg_rlimits_data() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_job_desc_msg_rlimits_data() ->
    slurmrestapi_v0_0_41_job_desc_msg_rlimits_data([]).

slurmrestapi_v0_0_41_job_desc_msg_rlimits_data(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

