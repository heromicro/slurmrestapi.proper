-module(slurmrestapi_v0_0_40_openapi_meta_plugin).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_openapi_meta_plugin/0]).

-export([slurmrestapi_v0_0_40_openapi_meta_plugin/1]).

-export_type([slurmrestapi_v0_0_40_openapi_meta_plugin/0]).

-type slurmrestapi_v0_0_40_openapi_meta_plugin() ::
  [ {'type', binary() }
  | {'name', binary() }
  | {'data_parser', binary() }
  | {'accounting_storage', binary() }
  ].


slurmrestapi_v0_0_40_openapi_meta_plugin() ->
    slurmrestapi_v0_0_40_openapi_meta_plugin([]).

slurmrestapi_v0_0_40_openapi_meta_plugin(Fields) ->
  Default = [ {'type', binary() }
            , {'name', binary() }
            , {'data_parser', binary() }
            , {'accounting_storage', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

