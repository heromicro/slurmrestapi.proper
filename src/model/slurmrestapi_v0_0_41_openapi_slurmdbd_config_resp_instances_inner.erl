-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_instances_inner).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_instances_inner/0]).

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_instances_inner/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_instances_inner/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_instances_inner() ::
  [ {'cluster', binary() }
  | {'extra', binary() }
  | {'instance_id', binary() }
  | {'instance_type', binary() }
  | {'node_name', binary() }
  | {'time', slurmrestapi_v0_0_40_instance_time:slurmrestapi_v0_0_40_instance_time() }
  ].


slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_instances_inner() ->
    slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_instances_inner([]).

slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_instances_inner(Fields) ->
  Default = [ {'cluster', binary() }
            , {'extra', binary() }
            , {'instance_id', binary() }
            , {'instance_type', binary() }
            , {'node_name', binary() }
            , {'time', slurmrestapi_v0_0_40_instance_time:slurmrestapi_v0_0_40_instance_time() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

