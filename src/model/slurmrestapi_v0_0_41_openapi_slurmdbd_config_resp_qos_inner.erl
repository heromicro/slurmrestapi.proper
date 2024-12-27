-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner/0]).

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner() ::
  [ {'description', binary() }
  | {'flags', list(binary()) }
  | {'id', integer() }
  | {'limits', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits() }
  | {'name', binary() }
  | {'preempt', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_preempt:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_preempt() }
  | {'priority', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_priority:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_priority() }
  | {'usage_factor', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_usage_factor:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_usage_factor() }
  | {'usage_threshold', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_usage_threshold:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_usage_threshold() }
  ].


slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner() ->
    slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner([]).

slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner(Fields) ->
  Default = [ {'description', binary() }
            , {'flags', list(binary()) }
            , {'id', integer() }
            , {'limits', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits() }
            , {'name', binary() }
            , {'preempt', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_preempt:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_preempt() }
            , {'priority', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_priority:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_priority() }
            , {'usage_factor', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_usage_factor:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_usage_factor() }
            , {'usage_threshold', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_usage_threshold:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_usage_threshold() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

