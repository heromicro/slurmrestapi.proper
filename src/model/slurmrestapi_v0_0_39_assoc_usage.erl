-module(slurmrestapi_v0_0_39_assoc_usage).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_assoc_usage/0]).

-export([slurmrestapi_v0_0_39_assoc_usage/1]).

-export_type([slurmrestapi_v0_0_39_assoc_usage/0]).

-type slurmrestapi_v0_0_39_assoc_usage() ::
  [ {'accrue_job_count', integer() }
  | {'group_used_wallclock', float() }
  | {'fairshare_factor', float() }
  | {'fairshare_shares', integer() }
  | {'normalized_priority', float() }
  | {'normalized_shares', float() }
  | {'effective_normalized_usage', integer() }
  | {'normalized_usage', integer() }
  | {'raw_usage', integer() }
  | {'active_jobs', integer() }
  | {'job_count', integer() }
  | {'fairshare_level', integer() }
  ].


slurmrestapi_v0_0_39_assoc_usage() ->
    slurmrestapi_v0_0_39_assoc_usage([]).

slurmrestapi_v0_0_39_assoc_usage(Fields) ->
  Default = [ {'accrue_job_count', integer() }
            , {'group_used_wallclock', float() }
            , {'fairshare_factor', float() }
            , {'fairshare_shares', integer() }
            , {'normalized_priority', float() }
            , {'normalized_shares', float() }
            , {'effective_normalized_usage', integer() }
            , {'normalized_usage', integer() }
            , {'raw_usage', integer() }
            , {'active_jobs', integer() }
            , {'job_count', integer() }
            , {'fairshare_level', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

