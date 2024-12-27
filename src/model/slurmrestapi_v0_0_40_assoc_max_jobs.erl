-module(slurmrestapi_v0_0_40_assoc_max_jobs).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_assoc_max_jobs/0]).

-export([slurmrestapi_v0_0_40_assoc_max_jobs/1]).

-export_type([slurmrestapi_v0_0_40_assoc_max_jobs/0]).

-type slurmrestapi_v0_0_40_assoc_max_jobs() ::
  [ {'per', slurmrestapi_v0_0_40_assoc_max_jobs_per:slurmrestapi_v0_0_40_assoc_max_jobs_per() }
  | {'active', slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val() }
  | {'accruing', slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val() }
  | {'total', slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val() }
  ].


slurmrestapi_v0_0_40_assoc_max_jobs() ->
    slurmrestapi_v0_0_40_assoc_max_jobs([]).

slurmrestapi_v0_0_40_assoc_max_jobs(Fields) ->
  Default = [ {'per', slurmrestapi_v0_0_40_assoc_max_jobs_per:slurmrestapi_v0_0_40_assoc_max_jobs_per() }
            , {'active', slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val() }
            , {'accruing', slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val() }
            , {'total', slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

