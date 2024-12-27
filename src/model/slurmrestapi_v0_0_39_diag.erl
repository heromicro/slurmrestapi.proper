-module(slurmrestapi_v0_0_39_diag).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_diag/0]).

-export([slurmrestapi_v0_0_39_diag/1]).

-export_type([slurmrestapi_v0_0_39_diag/0]).

-type slurmrestapi_v0_0_39_diag() ::
  [ {'meta', slurmrestapi_v0_0_39_meta:slurmrestapi_v0_0_39_meta() }
  | {'errors', list(slurmrestapi_v0_0_39_error:slurmrestapi_v0_0_39_error()) }
  | {'warnings', list(slurmrestapi_v0_0_39_warning:slurmrestapi_v0_0_39_warning()) }
  | {'statistics', slurmrestapi_v0_0_39_stats_msg:slurmrestapi_v0_0_39_stats_msg() }
  ].


slurmrestapi_v0_0_39_diag() ->
    slurmrestapi_v0_0_39_diag([]).

slurmrestapi_v0_0_39_diag(Fields) ->
  Default = [ {'meta', slurmrestapi_v0_0_39_meta:slurmrestapi_v0_0_39_meta() }
            , {'errors', list(slurmrestapi_v0_0_39_error:slurmrestapi_v0_0_39_error()) }
            , {'warnings', list(slurmrestapi_v0_0_39_warning:slurmrestapi_v0_0_39_warning()) }
            , {'statistics', slurmrestapi_v0_0_39_stats_msg:slurmrestapi_v0_0_39_stats_msg() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

