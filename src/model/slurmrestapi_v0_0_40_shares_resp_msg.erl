-module(slurmrestapi_v0_0_40_shares_resp_msg).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_shares_resp_msg/0]).

-export([slurmrestapi_v0_0_40_shares_resp_msg/1]).

-export_type([slurmrestapi_v0_0_40_shares_resp_msg/0]).

-type slurmrestapi_v0_0_40_shares_resp_msg() ::
  [ {'shares', list(slurmrestapi_v0_0_40_assoc_shares_obj_wrap:slurmrestapi_v0_0_40_assoc_shares_obj_wrap()) }
  | {'total_shares', integer() }
  ].


slurmrestapi_v0_0_40_shares_resp_msg() ->
    slurmrestapi_v0_0_40_shares_resp_msg([]).

slurmrestapi_v0_0_40_shares_resp_msg(Fields) ->
  Default = [ {'shares', list(slurmrestapi_v0_0_40_assoc_shares_obj_wrap:slurmrestapi_v0_0_40_assoc_shares_obj_wrap()) }
            , {'total_shares', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

