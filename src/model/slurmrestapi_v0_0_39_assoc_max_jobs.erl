-module(slurmrestapi_v0_0_39_assoc_max_jobs).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_assoc_max_jobs/0]).

-export([slurmrestapi_v0_0_39_assoc_max_jobs/1]).

-export_type([slurmrestapi_v0_0_39_assoc_max_jobs/0]).

-type slurmrestapi_v0_0_39_assoc_max_jobs() ::
  [ {'per', slurmrestapi_v0_0_39_assoc_max_jobs_per:slurmrestapi_v0_0_39_assoc_max_jobs_per() }
  ].


slurmrestapi_v0_0_39_assoc_max_jobs() ->
    slurmrestapi_v0_0_39_assoc_max_jobs([]).

slurmrestapi_v0_0_39_assoc_max_jobs(Fields) ->
  Default = [ {'per', slurmrestapi_v0_0_39_assoc_max_jobs_per:slurmrestapi_v0_0_39_assoc_max_jobs_per() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

