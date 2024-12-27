-module(slurmrestapi_v0_0_41_job_desc_msg_time_limit).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_job_desc_msg_time_limit/0]).

-export([slurmrestapi_v0_0_41_job_desc_msg_time_limit/1]).

-export_type([slurmrestapi_v0_0_41_job_desc_msg_time_limit/0]).

-type slurmrestapi_v0_0_41_job_desc_msg_time_limit() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_job_desc_msg_time_limit() ->
    slurmrestapi_v0_0_41_job_desc_msg_time_limit([]).

slurmrestapi_v0_0_41_job_desc_msg_time_limit(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

