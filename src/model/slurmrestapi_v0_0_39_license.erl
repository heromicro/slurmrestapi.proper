-module(slurmrestapi_v0_0_39_license).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_license/0]).

-export([slurmrestapi_v0_0_39_license/1]).

-export_type([slurmrestapi_v0_0_39_license/0]).

-type slurmrestapi_v0_0_39_license() ::
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


slurmrestapi_v0_0_39_license() ->
    slurmrestapi_v0_0_39_license([]).

slurmrestapi_v0_0_39_license(Fields) ->
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

