-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_min).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_min/0]).

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_min/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_min/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_min() ::
  [ {'priority_threshold', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_min_priority_threshold:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_min_priority_threshold() }
  ].


slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_min() ->
    slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_min([]).

slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_min(Fields) ->
  Default = [ {'priority_threshold', slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_min_priority_threshold:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_min_priority_threshold() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

