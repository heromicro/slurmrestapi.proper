-module(slurmrestapi_v0_0_40_job_res).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_job_res/0]).

-export([slurmrestapi_v0_0_40_job_res/1]).

-export_type([slurmrestapi_v0_0_40_job_res/0]).

-type slurmrestapi_v0_0_40_job_res() ::
  [ {'nodes', binary() }
  | {'allocated_cores', integer() }
  | {'allocated_cpus', integer() }
  | {'allocated_hosts', integer() }
  | {'allocated_nodes', list(slurmrestapi_any_type:slurmrestapi_any_type()) }
  ].


slurmrestapi_v0_0_40_job_res() ->
    slurmrestapi_v0_0_40_job_res([]).

slurmrestapi_v0_0_40_job_res(Fields) ->
  Default = [ {'nodes', binary() }
            , {'allocated_cores', integer() }
            , {'allocated_cpus', integer() }
            , {'allocated_hosts', integer() }
            , {'allocated_nodes', list(slurmrestapi_any_type:slurmrestapi_any_type()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

