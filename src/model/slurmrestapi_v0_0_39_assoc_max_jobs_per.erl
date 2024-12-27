-module(slurmrestapi_v0_0_39_assoc_max_jobs_per).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_assoc_max_jobs_per/0]).

-export([slurmrestapi_v0_0_39_assoc_max_jobs_per/1]).

-export_type([slurmrestapi_v0_0_39_assoc_max_jobs_per/0]).

-type slurmrestapi_v0_0_39_assoc_max_jobs_per() ::
  [ {'wall_clock', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
  ].


slurmrestapi_v0_0_39_assoc_max_jobs_per() ->
    slurmrestapi_v0_0_39_assoc_max_jobs_per([]).

slurmrestapi_v0_0_39_assoc_max_jobs_per(Fields) ->
  Default = [ {'wall_clock', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

