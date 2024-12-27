-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_priority).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_priority/0]).

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_priority/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_priority/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_priority() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_priority() ->
    slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_priority([]).

slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_priority(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

