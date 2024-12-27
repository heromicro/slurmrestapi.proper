-module(slurmrestapi_v0_0_39_job_het).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_job_het/0]).

-export([slurmrestapi_v0_0_39_job_het/1]).

-export_type([slurmrestapi_v0_0_39_job_het/0]).

-type slurmrestapi_v0_0_39_job_het() ::
  [ {'job_offset', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
  ].


slurmrestapi_v0_0_39_job_het() ->
    slurmrestapi_v0_0_39_job_het([]).

slurmrestapi_v0_0_39_job_het(Fields) ->
  Default = [ {'job_offset', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

