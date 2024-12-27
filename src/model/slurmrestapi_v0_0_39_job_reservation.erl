-module(slurmrestapi_v0_0_39_job_reservation).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_job_reservation/0]).

-export([slurmrestapi_v0_0_39_job_reservation/1]).

-export_type([slurmrestapi_v0_0_39_job_reservation/0]).

-type slurmrestapi_v0_0_39_job_reservation() ::
  [ {'id', integer() }
  | {'name', binary() }
  ].


slurmrestapi_v0_0_39_job_reservation() ->
    slurmrestapi_v0_0_39_job_reservation([]).

slurmrestapi_v0_0_39_job_reservation(Fields) ->
  Default = [ {'id', integer() }
            , {'name', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

