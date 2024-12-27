-module(slurmrestapi_v0_0_40_license).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_license/0]).

-export([slurmrestapi_v0_0_40_license/1]).

-export_type([slurmrestapi_v0_0_40_license/0]).

-type slurmrestapi_v0_0_40_license() ::
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


slurmrestapi_v0_0_40_license() ->
    slurmrestapi_v0_0_40_license([]).

slurmrestapi_v0_0_40_license(Fields) ->
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

