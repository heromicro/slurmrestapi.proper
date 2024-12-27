-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_preempt).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_preempt/0]).

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_preempt/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_preempt/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_preempt() ::
  [ {'list', list(binary()) }
  | {'mode', list(binary()) }
  | {'exempt_time', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_preempt_exempt_time:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_preempt_exempt_time() }
  ].


slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_preempt() ->
    slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_preempt([]).

slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_preempt(Fields) ->
  Default = [ {'list', list(binary()) }
            , {'mode', list(binary()) }
            , {'exempt_time', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_preempt_exempt_time:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_preempt_exempt_time() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

