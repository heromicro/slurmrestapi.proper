-module(slurmrestapi_v0_0_40_partition_info_accounts).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_partition_info_accounts/0]).

-export([slurmrestapi_v0_0_40_partition_info_accounts/1]).

-export_type([slurmrestapi_v0_0_40_partition_info_accounts/0]).

-type slurmrestapi_v0_0_40_partition_info_accounts() ::
  [ {'allowed', binary() }
  | {'deny', binary() }
  ].


slurmrestapi_v0_0_40_partition_info_accounts() ->
    slurmrestapi_v0_0_40_partition_info_accounts([]).

slurmrestapi_v0_0_40_partition_info_accounts(Fields) ->
  Default = [ {'allowed', binary() }
            , {'deny', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

