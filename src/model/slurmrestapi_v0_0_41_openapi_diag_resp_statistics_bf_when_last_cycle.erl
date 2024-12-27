-module(slurmrestapi_v0_0_41_openapi_diag_resp_statistics_bf_when_last_cycle).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_diag_resp_statistics_bf_when_last_cycle/0]).

-export([slurmrestapi_v0_0_41_openapi_diag_resp_statistics_bf_when_last_cycle/1]).

-export_type([slurmrestapi_v0_0_41_openapi_diag_resp_statistics_bf_when_last_cycle/0]).

-type slurmrestapi_v0_0_41_openapi_diag_resp_statistics_bf_when_last_cycle() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_openapi_diag_resp_statistics_bf_when_last_cycle() ->
    slurmrestapi_v0_0_41_openapi_diag_resp_statistics_bf_when_last_cycle([]).

slurmrestapi_v0_0_41_openapi_diag_resp_statistics_bf_when_last_cycle(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

