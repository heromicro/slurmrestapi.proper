-module(slurmrestapi_dbv0_0_39_warning).

-include("slurmrestapi.hrl").

-export([slurmrestapi_dbv0_0_39_warning/0]).

-export([slurmrestapi_dbv0_0_39_warning/1]).

-export_type([slurmrestapi_dbv0_0_39_warning/0]).

-type slurmrestapi_dbv0_0_39_warning() ::
  [ {'warning', binary() }
  | {'source', binary() }
  | {'description', binary() }
  ].


slurmrestapi_dbv0_0_39_warning() ->
    slurmrestapi_dbv0_0_39_warning([]).

slurmrestapi_dbv0_0_39_warning(Fields) ->
  Default = [ {'warning', binary() }
            , {'source', binary() }
            , {'description', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

