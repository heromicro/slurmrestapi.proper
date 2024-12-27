-module(slurmrestapi_v0_0_41_job_desc_msg_time_minimum).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_job_desc_msg_time_minimum/0]).

-export([slurmrestapi_v0_0_41_job_desc_msg_time_minimum/1]).

-export_type([slurmrestapi_v0_0_41_job_desc_msg_time_minimum/0]).

-type slurmrestapi_v0_0_41_job_desc_msg_time_minimum() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_job_desc_msg_time_minimum() ->
    slurmrestapi_v0_0_41_job_desc_msg_time_minimum([]).

slurmrestapi_v0_0_41_job_desc_msg_time_minimum(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

