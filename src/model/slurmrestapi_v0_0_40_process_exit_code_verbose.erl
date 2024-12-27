-module(slurmrestapi_v0_0_40_process_exit_code_verbose).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_process_exit_code_verbose/0]).

-export([slurmrestapi_v0_0_40_process_exit_code_verbose/1]).

-export_type([slurmrestapi_v0_0_40_process_exit_code_verbose/0]).

-type slurmrestapi_v0_0_40_process_exit_code_verbose() ::
  [ {'status', list(binary()) }
  | {'return_code', slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val() }
  | {'signal', slurmrestapi_v0_0_40_process_exit_code_verbose_signal:slurmrestapi_v0_0_40_process_exit_code_verbose_signal() }
  ].


slurmrestapi_v0_0_40_process_exit_code_verbose() ->
    slurmrestapi_v0_0_40_process_exit_code_verbose([]).

slurmrestapi_v0_0_40_process_exit_code_verbose(Fields) ->
  Default = [ {'status', list(binary()) }
            , {'return_code', slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val() }
            , {'signal', slurmrestapi_v0_0_40_process_exit_code_verbose_signal:slurmrestapi_v0_0_40_process_exit_code_verbose_signal() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

