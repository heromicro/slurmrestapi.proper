-module(slurmrestapi_v0_0_39_partition_info_tres).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_partition_info_tres/0]).

-export([slurmrestapi_v0_0_39_partition_info_tres/1]).

-export_type([slurmrestapi_v0_0_39_partition_info_tres/0]).

-type slurmrestapi_v0_0_39_partition_info_tres() ::
  [ {'configured', binary() }
  ].


slurmrestapi_v0_0_39_partition_info_tres() ->
    slurmrestapi_v0_0_39_partition_info_tres([]).

slurmrestapi_v0_0_39_partition_info_tres(Fields) ->
  Default = [ {'configured', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

