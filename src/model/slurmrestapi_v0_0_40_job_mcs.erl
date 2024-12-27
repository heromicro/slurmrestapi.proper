-module(slurmrestapi_v0_0_40_job_mcs).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_job_mcs/0]).

-export([slurmrestapi_v0_0_40_job_mcs/1]).

-export_type([slurmrestapi_v0_0_40_job_mcs/0]).

-type slurmrestapi_v0_0_40_job_mcs() ::
  [ {'label', binary() }
  ].


slurmrestapi_v0_0_40_job_mcs() ->
    slurmrestapi_v0_0_40_job_mcs([]).

slurmrestapi_v0_0_40_job_mcs(Fields) ->
  Default = [ {'label', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

