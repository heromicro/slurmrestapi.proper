-module(slurmrestapi_v0_0_40_cron_entry_line).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_cron_entry_line/0]).

-export([slurmrestapi_v0_0_40_cron_entry_line/1]).

-export_type([slurmrestapi_v0_0_40_cron_entry_line/0]).

-type slurmrestapi_v0_0_40_cron_entry_line() ::
  [ {'start', integer() }
  | {'End_', integer() }
  ].


slurmrestapi_v0_0_40_cron_entry_line() ->
    slurmrestapi_v0_0_40_cron_entry_line([]).

slurmrestapi_v0_0_40_cron_entry_line(Fields) ->
  Default = [ {'start', integer() }
            , {'end', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

