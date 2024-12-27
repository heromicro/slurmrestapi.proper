-module(slurmrestapi_v0_0_39_licenses_info).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_licenses_info/0]).

-export([slurmrestapi_v0_0_39_licenses_info/1]).

-export_type([slurmrestapi_v0_0_39_licenses_info/0]).

-type slurmrestapi_v0_0_39_licenses_info() ::
  [ {'meta', slurmrestapi_v0_0_39_meta:slurmrestapi_v0_0_39_meta() }
  | {'errors', list(slurmrestapi_v0_0_39_error:slurmrestapi_v0_0_39_error()) }
  | {'warnings', list(slurmrestapi_v0_0_39_warning:slurmrestapi_v0_0_39_warning()) }
  | {'licenses', list(slurmrestapi_v0_0_39_license:slurmrestapi_v0_0_39_license()) }
  ].


slurmrestapi_v0_0_39_licenses_info() ->
    slurmrestapi_v0_0_39_licenses_info([]).

slurmrestapi_v0_0_39_licenses_info(Fields) ->
  Default = [ {'meta', slurmrestapi_v0_0_39_meta:slurmrestapi_v0_0_39_meta() }
            , {'errors', list(slurmrestapi_v0_0_39_error:slurmrestapi_v0_0_39_error()) }
            , {'warnings', list(slurmrestapi_v0_0_39_warning:slurmrestapi_v0_0_39_warning()) }
            , {'licenses', list(slurmrestapi_v0_0_39_license:slurmrestapi_v0_0_39_license()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

