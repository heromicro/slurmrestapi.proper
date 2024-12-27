-module(slurmrestapi_dbv0_0_39_diag).

-include("slurmrestapi.hrl").

-export([slurmrestapi_dbv0_0_39_diag/0]).

-export([slurmrestapi_dbv0_0_39_diag/1]).

-export_type([slurmrestapi_dbv0_0_39_diag/0]).

-type slurmrestapi_dbv0_0_39_diag() ::
  [ {'meta', slurmrestapi_dbv0_0_39_meta:slurmrestapi_dbv0_0_39_meta() }
  | {'errors', list(slurmrestapi_dbv0_0_39_error:slurmrestapi_dbv0_0_39_error()) }
  | {'warnings', list(slurmrestapi_dbv0_0_39_warning:slurmrestapi_dbv0_0_39_warning()) }
  | {'statistics', slurmrestapi_v0_0_39_stats_rec:slurmrestapi_v0_0_39_stats_rec() }
  ].


slurmrestapi_dbv0_0_39_diag() ->
    slurmrestapi_dbv0_0_39_diag([]).

slurmrestapi_dbv0_0_39_diag(Fields) ->
  Default = [ {'meta', slurmrestapi_dbv0_0_39_meta:slurmrestapi_dbv0_0_39_meta() }
            , {'errors', list(slurmrestapi_dbv0_0_39_error:slurmrestapi_dbv0_0_39_error()) }
            , {'warnings', list(slurmrestapi_dbv0_0_39_warning:slurmrestapi_dbv0_0_39_warning()) }
            , {'statistics', slurmrestapi_v0_0_39_stats_rec:slurmrestapi_v0_0_39_stats_rec() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

