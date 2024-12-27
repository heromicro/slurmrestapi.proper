-module(slurmrestapi_v0_0_41_openapi_diag_resp_statistics_job_states_ts).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_diag_resp_statistics_job_states_ts/0]).

-export([slurmrestapi_v0_0_41_openapi_diag_resp_statistics_job_states_ts/1]).

-export_type([slurmrestapi_v0_0_41_openapi_diag_resp_statistics_job_states_ts/0]).

-type slurmrestapi_v0_0_41_openapi_diag_resp_statistics_job_states_ts() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_openapi_diag_resp_statistics_job_states_ts() ->
    slurmrestapi_v0_0_41_openapi_diag_resp_statistics_job_states_ts([]).

slurmrestapi_v0_0_41_openapi_diag_resp_statistics_job_states_ts(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

