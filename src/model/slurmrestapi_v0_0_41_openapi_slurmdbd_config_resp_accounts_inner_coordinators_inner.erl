-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner_coordinators_inner).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner_coordinators_inner/0]).

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner_coordinators_inner/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner_coordinators_inner/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner_coordinators_inner() ::
  [ {'name', binary() }
  | {'direct', boolean() }
  ].


slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner_coordinators_inner() ->
    slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner_coordinators_inner([]).

slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner_coordinators_inner(Fields) ->
  Default = [ {'name', binary() }
            , {'direct', boolean() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

