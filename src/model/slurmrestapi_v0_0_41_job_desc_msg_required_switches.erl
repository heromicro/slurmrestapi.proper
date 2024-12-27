-module(slurmrestapi_v0_0_41_job_desc_msg_required_switches).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_job_desc_msg_required_switches/0]).

-export([slurmrestapi_v0_0_41_job_desc_msg_required_switches/1]).

-export_type([slurmrestapi_v0_0_41_job_desc_msg_required_switches/0]).

-type slurmrestapi_v0_0_41_job_desc_msg_required_switches() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_job_desc_msg_required_switches() ->
    slurmrestapi_v0_0_41_job_desc_msg_required_switches([]).

slurmrestapi_v0_0_41_job_desc_msg_required_switches(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

