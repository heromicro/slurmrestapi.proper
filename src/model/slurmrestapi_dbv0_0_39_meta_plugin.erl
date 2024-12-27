-module(slurmrestapi_dbv0_0_39_meta_plugin).

-include("slurmrestapi.hrl").

-export([slurmrestapi_dbv0_0_39_meta_plugin/0]).

-export([slurmrestapi_dbv0_0_39_meta_plugin/1]).

-export_type([slurmrestapi_dbv0_0_39_meta_plugin/0]).

-type slurmrestapi_dbv0_0_39_meta_plugin() ::
  [ {'type', binary() }
  | {'name', binary() }
  ].


slurmrestapi_dbv0_0_39_meta_plugin() ->
    slurmrestapi_dbv0_0_39_meta_plugin([]).

slurmrestapi_dbv0_0_39_meta_plugin(Fields) ->
  Default = [ {'type', binary() }
            , {'name', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

