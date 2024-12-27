-module(slurmrestapi_v0_0_39_job_info_power).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_job_info_power/0]).

-export([slurmrestapi_v0_0_39_job_info_power/1]).

-export_type([slurmrestapi_v0_0_39_job_info_power/0]).

-type slurmrestapi_v0_0_39_job_info_power() ::
  [ {'flags', list(binary()) }
  ].


slurmrestapi_v0_0_39_job_info_power() ->
    slurmrestapi_v0_0_39_job_info_power([]).

slurmrestapi_v0_0_39_job_info_power(Fields) ->
  Default = [ {'flags', list(binary()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

