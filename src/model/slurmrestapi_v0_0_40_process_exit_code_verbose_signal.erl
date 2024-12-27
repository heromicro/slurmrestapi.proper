-module(slurmrestapi_v0_0_40_process_exit_code_verbose_signal).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_process_exit_code_verbose_signal/0]).

-export([slurmrestapi_v0_0_40_process_exit_code_verbose_signal/1]).

-export_type([slurmrestapi_v0_0_40_process_exit_code_verbose_signal/0]).

-type slurmrestapi_v0_0_40_process_exit_code_verbose_signal() ::
  [ {'id', slurmrestapi_v0_0_40_uint16_no_val:slurmrestapi_v0_0_40_uint16_no_val() }
  | {'name', binary() }
  ].


slurmrestapi_v0_0_40_process_exit_code_verbose_signal() ->
    slurmrestapi_v0_0_40_process_exit_code_verbose_signal([]).

slurmrestapi_v0_0_40_process_exit_code_verbose_signal(Fields) ->
  Default = [ {'id', slurmrestapi_v0_0_40_uint16_no_val:slurmrestapi_v0_0_40_uint16_no_val() }
            , {'name', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

