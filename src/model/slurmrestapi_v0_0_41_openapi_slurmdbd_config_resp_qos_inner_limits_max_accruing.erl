-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_accruing).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_accruing/0]).

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_accruing/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_accruing/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_accruing() ::
  [ {'per', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_accruing_per:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_accruing_per() }
  ].


slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_accruing() ->
    slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_accruing([]).

slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_accruing(Fields) ->
  Default = [ {'per', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_accruing_per:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_accruing_per() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

