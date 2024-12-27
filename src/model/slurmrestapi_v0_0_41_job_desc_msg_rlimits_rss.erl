-module(slurmrestapi_v0_0_41_job_desc_msg_rlimits_rss).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_job_desc_msg_rlimits_rss/0]).

-export([slurmrestapi_v0_0_41_job_desc_msg_rlimits_rss/1]).

-export_type([slurmrestapi_v0_0_41_job_desc_msg_rlimits_rss/0]).

-type slurmrestapi_v0_0_41_job_desc_msg_rlimits_rss() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_job_desc_msg_rlimits_rss() ->
    slurmrestapi_v0_0_41_job_desc_msg_rlimits_rss([]).

slurmrestapi_v0_0_41_job_desc_msg_rlimits_rss(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

