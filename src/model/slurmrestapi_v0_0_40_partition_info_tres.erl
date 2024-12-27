-module(slurmrestapi_v0_0_40_partition_info_tres).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_partition_info_tres/0]).

-export([slurmrestapi_v0_0_40_partition_info_tres/1]).

-export_type([slurmrestapi_v0_0_40_partition_info_tres/0]).

-type slurmrestapi_v0_0_40_partition_info_tres() ::
  [ {'billing_weights', binary() }
  | {'configured', binary() }
  ].


slurmrestapi_v0_0_40_partition_info_tres() ->
    slurmrestapi_v0_0_40_partition_info_tres([]).

slurmrestapi_v0_0_40_partition_info_tres(Fields) ->
  Default = [ {'billing_weights', binary() }
            , {'configured', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

