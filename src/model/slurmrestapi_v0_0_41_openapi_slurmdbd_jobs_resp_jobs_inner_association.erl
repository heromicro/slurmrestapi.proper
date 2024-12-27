-module(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_association).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_association/0]).

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_association/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_association/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_association() ::
  [ {'account', binary() }
  | {'cluster', binary() }
  | {'partition', binary() }
  | {'user', binary() }
  | {'id', integer() }
  ].


slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_association() ->
    slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_association([]).

slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_association(Fields) ->
  Default = [ {'account', binary() }
            , {'cluster', binary() }
            , {'partition', binary() }
            , {'user', binary() }
            , {'id', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

