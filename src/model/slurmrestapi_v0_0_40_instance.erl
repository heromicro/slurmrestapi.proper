-module(slurmrestapi_v0_0_40_instance).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_instance/0]).

-export([slurmrestapi_v0_0_40_instance/1]).

-export_type([slurmrestapi_v0_0_40_instance/0]).

-type slurmrestapi_v0_0_40_instance() ::
  [ {'cluster', binary() }
  | {'extra', binary() }
  | {'instance_id', binary() }
  | {'instance_type', binary() }
  | {'node_name', binary() }
  | {'time', slurmrestapi_v0_0_40_instance_time:slurmrestapi_v0_0_40_instance_time() }
  ].


slurmrestapi_v0_0_40_instance() ->
    slurmrestapi_v0_0_40_instance([]).

slurmrestapi_v0_0_40_instance(Fields) ->
  Default = [ {'cluster', binary() }
            , {'extra', binary() }
            , {'instance_id', binary() }
            , {'instance_type', binary() }
            , {'node_name', binary() }
            , {'time', slurmrestapi_v0_0_40_instance_time:slurmrestapi_v0_0_40_instance_time() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

