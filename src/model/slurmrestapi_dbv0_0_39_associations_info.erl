-module(slurmrestapi_dbv0_0_39_associations_info).

-include("slurmrestapi.hrl").

-export([slurmrestapi_dbv0_0_39_associations_info/0]).

-export([slurmrestapi_dbv0_0_39_associations_info/1]).

-export_type([slurmrestapi_dbv0_0_39_associations_info/0]).

-type slurmrestapi_dbv0_0_39_associations_info() ::
  [ {'meta', slurmrestapi_dbv0_0_39_meta:slurmrestapi_dbv0_0_39_meta() }
  | {'errors', list(slurmrestapi_dbv0_0_39_error:slurmrestapi_dbv0_0_39_error()) }
  | {'warnings', list(slurmrestapi_dbv0_0_39_warning:slurmrestapi_dbv0_0_39_warning()) }
  | {'associations', list(slurmrestapi_v0_0_39_assoc:slurmrestapi_v0_0_39_assoc()) }
  ].


slurmrestapi_dbv0_0_39_associations_info() ->
    slurmrestapi_dbv0_0_39_associations_info([]).

slurmrestapi_dbv0_0_39_associations_info(Fields) ->
  Default = [ {'meta', slurmrestapi_dbv0_0_39_meta:slurmrestapi_dbv0_0_39_meta() }
            , {'errors', list(slurmrestapi_dbv0_0_39_error:slurmrestapi_dbv0_0_39_error()) }
            , {'warnings', list(slurmrestapi_dbv0_0_39_warning:slurmrestapi_dbv0_0_39_warning()) }
            , {'associations', list(slurmrestapi_v0_0_39_assoc:slurmrestapi_v0_0_39_assoc()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

