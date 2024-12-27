-module(slurmrestapi_dbv0_0_39_response_associations_delete).

-include("slurmrestapi.hrl").

-export([slurmrestapi_dbv0_0_39_response_associations_delete/0]).

-export([slurmrestapi_dbv0_0_39_response_associations_delete/1]).

-export_type([slurmrestapi_dbv0_0_39_response_associations_delete/0]).

-type slurmrestapi_dbv0_0_39_response_associations_delete() ::
  [ {'meta', slurmrestapi_dbv0_0_39_meta:slurmrestapi_dbv0_0_39_meta() }
  | {'errors', list(slurmrestapi_dbv0_0_39_error:slurmrestapi_dbv0_0_39_error()) }
  | {'warnings', list(slurmrestapi_dbv0_0_39_warning:slurmrestapi_dbv0_0_39_warning()) }
  | {'removed_associations', list(binary()) }
  ].


slurmrestapi_dbv0_0_39_response_associations_delete() ->
    slurmrestapi_dbv0_0_39_response_associations_delete([]).

slurmrestapi_dbv0_0_39_response_associations_delete(Fields) ->
  Default = [ {'meta', slurmrestapi_dbv0_0_39_meta:slurmrestapi_dbv0_0_39_meta() }
            , {'errors', list(slurmrestapi_dbv0_0_39_error:slurmrestapi_dbv0_0_39_error()) }
            , {'warnings', list(slurmrestapi_dbv0_0_39_warning:slurmrestapi_dbv0_0_39_warning()) }
            , {'removed_associations', list(binary()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

