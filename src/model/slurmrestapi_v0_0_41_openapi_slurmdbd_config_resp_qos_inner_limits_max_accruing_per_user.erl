-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_accruing_per_user).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_accruing_per_user/0]).

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_accruing_per_user/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_accruing_per_user/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_accruing_per_user() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_accruing_per_user() ->
    slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_accruing_per_user([]).

slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_accruing_per_user(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

