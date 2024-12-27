-module(slurmrestapi_v0_0_40_job_tres).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_job_tres/0]).

-export([slurmrestapi_v0_0_40_job_tres/1]).

-export_type([slurmrestapi_v0_0_40_job_tres/0]).

-type slurmrestapi_v0_0_40_job_tres() ::
  [ {'allocated', list(slurmrestapi_v0_0_40_tres:slurmrestapi_v0_0_40_tres()) }
  | {'requested', list(slurmrestapi_v0_0_40_tres:slurmrestapi_v0_0_40_tres()) }
  ].


slurmrestapi_v0_0_40_job_tres() ->
    slurmrestapi_v0_0_40_job_tres([]).

slurmrestapi_v0_0_40_job_tres(Fields) ->
  Default = [ {'allocated', list(slurmrestapi_v0_0_40_tres:slurmrestapi_v0_0_40_tres()) }
            , {'requested', list(slurmrestapi_v0_0_40_tres:slurmrestapi_v0_0_40_tres()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

