-module(slurmrestapi_v0_0_39_cron_entry).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_cron_entry/0]).

-export([slurmrestapi_v0_0_39_cron_entry/1]).

-export_type([slurmrestapi_v0_0_39_cron_entry/0]).

-type slurmrestapi_v0_0_39_cron_entry() ::
  [ {'flags', list(binary()) }
  | {'minute', binary() }
  | {'hour', binary() }
  | {'day_of_month', binary() }
  | {'month', binary() }
  | {'day_of_week', binary() }
  | {'specification', binary() }
  | {'command', binary() }
  | {'line', slurmrestapi_v0_0_39_cron_entry_line:slurmrestapi_v0_0_39_cron_entry_line() }
  ].


slurmrestapi_v0_0_39_cron_entry() ->
    slurmrestapi_v0_0_39_cron_entry([]).

slurmrestapi_v0_0_39_cron_entry(Fields) ->
  Default = [ {'flags', list(binary()) }
            , {'minute', binary() }
            , {'hour', binary() }
            , {'day_of_month', binary() }
            , {'month', binary() }
            , {'day_of_week', binary() }
            , {'specification', binary() }
            , {'command', binary() }
            , {'line', slurmrestapi_v0_0_39_cron_entry_line:slurmrestapi_v0_0_39_cron_entry_line() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

