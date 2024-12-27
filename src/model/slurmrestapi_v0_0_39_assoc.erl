-module(slurmrestapi_v0_0_39_assoc).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_39_assoc/0]).

-export([slurmrestapi_v0_0_39_assoc/1]).

-export_type([slurmrestapi_v0_0_39_assoc/0]).

-type slurmrestapi_v0_0_39_assoc() ::
  [ {'account', binary() }
  | {'cluster', binary() }
  | {'default', slurmrestapi_v0_0_39_assoc_default:slurmrestapi_v0_0_39_assoc_default() }
  | {'flags', list(binary()) }
  | {'max', slurmrestapi_v0_0_39_assoc_max:slurmrestapi_v0_0_39_assoc_max() }
  | {'is_default', boolean() }
  | {'min', slurmrestapi_v0_0_39_assoc_min:slurmrestapi_v0_0_39_assoc_min() }
  | {'parent_account', binary() }
  | {'partition', binary() }
  | {'priority', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
  | {'qos', list(binary()) }
  | {'shares_raw', integer() }
  | {'usage', slurmrestapi_v0_0_39_assoc_usage:slurmrestapi_v0_0_39_assoc_usage() }
  | {'user', binary() }
  ].


slurmrestapi_v0_0_39_assoc() ->
    slurmrestapi_v0_0_39_assoc([]).

slurmrestapi_v0_0_39_assoc(Fields) ->
  Default = [ {'account', binary() }
            , {'cluster', binary() }
            , {'default', slurmrestapi_v0_0_39_assoc_default:slurmrestapi_v0_0_39_assoc_default() }
            , {'flags', list(binary()) }
            , {'max', slurmrestapi_v0_0_39_assoc_max:slurmrestapi_v0_0_39_assoc_max() }
            , {'is_default', boolean() }
            , {'min', slurmrestapi_v0_0_39_assoc_min:slurmrestapi_v0_0_39_assoc_min() }
            , {'parent_account', binary() }
            , {'partition', binary() }
            , {'priority', slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val() }
            , {'qos', list(binary()) }
            , {'shares_raw', integer() }
            , {'usage', slurmrestapi_v0_0_39_assoc_usage:slurmrestapi_v0_0_39_assoc_usage() }
            , {'user', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

