-module(slurmrestapi_v0_0_41_openapi_licenses_resp_licenses_inner).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_licenses_resp_licenses_inner/0]).

-export([slurmrestapi_v0_0_41_openapi_licenses_resp_licenses_inner/1]).

-export_type([slurmrestapi_v0_0_41_openapi_licenses_resp_licenses_inner/0]).

-type slurmrestapi_v0_0_41_openapi_licenses_resp_licenses_inner() ::
  [ {'LicenseName', binary() }
  | {'Total', integer() }
  | {'Used', integer() }
  | {'Free', integer() }
  | {'Remote', boolean() }
  | {'Reserved', integer() }
  | {'LastConsumed', integer() }
  | {'LastDeficit', integer() }
  | {'LastUpdate', integer() }
  ].


slurmrestapi_v0_0_41_openapi_licenses_resp_licenses_inner() ->
    slurmrestapi_v0_0_41_openapi_licenses_resp_licenses_inner([]).

slurmrestapi_v0_0_41_openapi_licenses_resp_licenses_inner(Fields) ->
  Default = [ {'LicenseName', binary() }
            , {'Total', integer() }
            , {'Used', integer() }
            , {'Free', integer() }
            , {'Remote', boolean() }
            , {'Reserved', integer() }
            , {'LastConsumed', integer() }
            , {'LastDeficit', integer() }
            , {'LastUpdate', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

