-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner_associations_inner).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner_associations_inner/0]).

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner_associations_inner/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner_associations_inner/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner_associations_inner() ::
  [ {'account', binary() }
  | {'cluster', binary() }
  | {'partition', binary() }
  | {'user', binary() }
  | {'id', integer() }
  ].


slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner_associations_inner() ->
    slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner_associations_inner([]).

slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner_associations_inner(Fields) ->
  Default = [ {'account', binary() }
            , {'cluster', binary() }
            , {'partition', binary() }
            , {'user', binary() }
            , {'id', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

