-module(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_wckey).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_wckey/0]).

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_wckey/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_wckey/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_wckey() ::
  [ {'wckey', binary() }
  | {'flags', list(binary()) }
  ].


slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_wckey() ->
    slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_wckey([]).

slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_wckey(Fields) ->
  Default = [ {'wckey', binary() }
            , {'flags', list(binary()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

