-module(slurmrestapi_v0_0_41_job_desc_msg_crontab).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_job_desc_msg_crontab/0]).

-export([slurmrestapi_v0_0_41_job_desc_msg_crontab/1]).

-export_type([slurmrestapi_v0_0_41_job_desc_msg_crontab/0]).

-type slurmrestapi_v0_0_41_job_desc_msg_crontab() ::
  [ {'flags', list(binary()) }
  | {'minute', binary() }
  | {'hour', binary() }
  | {'day_of_month', binary() }
  | {'month', binary() }
  | {'day_of_week', binary() }
  | {'specification', binary() }
  | {'command', binary() }
  | {'line', slurmrestapi_v0_0_40_cron_entry_line:slurmrestapi_v0_0_40_cron_entry_line() }
  ].


slurmrestapi_v0_0_41_job_desc_msg_crontab() ->
    slurmrestapi_v0_0_41_job_desc_msg_crontab([]).

slurmrestapi_v0_0_41_job_desc_msg_crontab(Fields) ->
  Default = [ {'flags', list(binary()) }
            , {'minute', binary() }
            , {'hour', binary() }
            , {'day_of_month', binary() }
            , {'month', binary() }
            , {'day_of_week', binary() }
            , {'specification', binary() }
            , {'command', binary() }
            , {'line', slurmrestapi_v0_0_40_cron_entry_line:slurmrestapi_v0_0_40_cron_entry_line() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

