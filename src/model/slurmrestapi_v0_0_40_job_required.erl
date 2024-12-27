-module(slurmrestapi_v0_0_40_job_required).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_job_required/0]).

-export([slurmrestapi_v0_0_40_job_required/1]).

-export_type([slurmrestapi_v0_0_40_job_required/0]).

-type slurmrestapi_v0_0_40_job_required() ::
  [ {'CPUs', integer() }
  | {'memory_per_cpu', slurmrestapi_v0_0_40_uint64_no_val:slurmrestapi_v0_0_40_uint64_no_val() }
  | {'memory_per_node', slurmrestapi_v0_0_40_uint64_no_val:slurmrestapi_v0_0_40_uint64_no_val() }
  ].


slurmrestapi_v0_0_40_job_required() ->
    slurmrestapi_v0_0_40_job_required([]).

slurmrestapi_v0_0_40_job_required(Fields) ->
  Default = [ {'CPUs', integer() }
            , {'memory_per_cpu', slurmrestapi_v0_0_40_uint64_no_val:slurmrestapi_v0_0_40_uint64_no_val() }
            , {'memory_per_node', slurmrestapi_v0_0_40_uint64_no_val:slurmrestapi_v0_0_40_uint64_no_val() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

