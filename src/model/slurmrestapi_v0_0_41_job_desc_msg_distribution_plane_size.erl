-module(slurmrestapi_v0_0_41_job_desc_msg_distribution_plane_size).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_job_desc_msg_distribution_plane_size/0]).

-export([slurmrestapi_v0_0_41_job_desc_msg_distribution_plane_size/1]).

-export_type([slurmrestapi_v0_0_41_job_desc_msg_distribution_plane_size/0]).

-type slurmrestapi_v0_0_41_job_desc_msg_distribution_plane_size() ::
  [ {'set', boolean() }
  | {'infinite', boolean() }
  | {'number', integer() }
  ].


slurmrestapi_v0_0_41_job_desc_msg_distribution_plane_size() ->
    slurmrestapi_v0_0_41_job_desc_msg_distribution_plane_size([]).

slurmrestapi_v0_0_41_job_desc_msg_distribution_plane_size(Fields) ->
  Default = [ {'set', boolean() }
            , {'infinite', boolean() }
            , {'number', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

