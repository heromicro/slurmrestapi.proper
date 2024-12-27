-module(slurmrestapi_dbv0_0_39_error).

-include("slurmrestapi.hrl").

-export([slurmrestapi_dbv0_0_39_error/0]).

-export([slurmrestapi_dbv0_0_39_error/1]).

-export_type([slurmrestapi_dbv0_0_39_error/0]).

-type slurmrestapi_dbv0_0_39_error() ::
  [ {'error_number', integer() }
  | {'error', binary() }
  | {'source', binary() }
  | {'description', binary() }
  ].


slurmrestapi_dbv0_0_39_error() ->
    slurmrestapi_dbv0_0_39_error([]).

slurmrestapi_dbv0_0_39_error(Fields) ->
  Default = [ {'error_number', integer() }
            , {'error', binary() }
            , {'source', binary() }
            , {'description', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

