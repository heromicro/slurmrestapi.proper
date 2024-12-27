-module(slurmrestapi_v0_0_41_job_desc_msg_priority).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_job_desc_msg_priority/0]).

-export([slurmrestapi_v0_0_41_job_desc_msg_priority/1]).

-export_type([slurmrestapi_v0_0_41_job_desc_msg_priority/0]).

-type slurmrestapi_v0_0_41_job_desc_msg_priority() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_job_desc_msg_priority() ->
    slurmrestapi_v0_0_41_job_desc_msg_priority([]).

slurmrestapi_v0_0_41_job_desc_msg_priority(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

