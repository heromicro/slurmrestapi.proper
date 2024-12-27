-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_usage_threshold).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_usage_threshold/0]).

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_usage_threshold/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_usage_threshold/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_usage_threshold() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', float() }
  ].


slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_usage_threshold() ->
    slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_usage_threshold([]).

slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_usage_threshold(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', float() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

