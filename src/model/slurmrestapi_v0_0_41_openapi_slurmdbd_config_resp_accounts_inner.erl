-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner/0]).

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner() ::
  [ {'associations', list(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner_associations_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner_associations_inner()) }
  | {'coordinators', list(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner_coordinators_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner_coordinators_inner()) }
  | {'description', binary() }
  | {'name', binary() }
  | {'organization', binary() }
  | {'flags', list(binary()) }
  ].


slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner() ->
    slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner([]).

slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner(Fields) ->
  Default = [ {'associations', list(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner_associations_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner_associations_inner()) }
            , {'coordinators', list(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner_coordinators_inner:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner_coordinators_inner()) }
            , {'description', binary() }
            , {'name', binary() }
            , {'organization', binary() }
            , {'flags', list(binary()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

