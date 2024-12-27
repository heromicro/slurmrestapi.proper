-module(slurmrestapi_dbv0_0_39_update_users).

-include("slurmrestapi.hrl").

-export([slurmrestapi_dbv0_0_39_update_users/0]).

-export([slurmrestapi_dbv0_0_39_update_users/1]).

-export_type([slurmrestapi_dbv0_0_39_update_users/0]).

-type slurmrestapi_dbv0_0_39_update_users() ::
  [ {'users', list(slurmrestapi_v0_0_39_user:slurmrestapi_v0_0_39_user()) }
  ].


slurmrestapi_dbv0_0_39_update_users() ->
    slurmrestapi_dbv0_0_39_update_users([]).

slurmrestapi_dbv0_0_39_update_users(Fields) ->
  Default = [ {'users', list(slurmrestapi_v0_0_39_user:slurmrestapi_v0_0_39_user()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

