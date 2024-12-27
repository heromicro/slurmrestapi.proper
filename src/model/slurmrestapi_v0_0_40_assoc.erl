-module(slurmrestapi_v0_0_40_assoc).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_assoc/0]).

-export([slurmrestapi_v0_0_40_assoc/1]).

-export_type([slurmrestapi_v0_0_40_assoc/0]).

-type slurmrestapi_v0_0_40_assoc() ::
  [ {'accounting', list(slurmrestapi_v0_0_40_accounting:slurmrestapi_v0_0_40_accounting()) }
  | {'account', binary() }
  | {'cluster', binary() }
  | {'comment', binary() }
  | {'default', slurmrestapi_v0_0_40_assoc_default:slurmrestapi_v0_0_40_assoc_default() }
  | {'flags', list(binary()) }
  | {'max', slurmrestapi_v0_0_40_assoc_max:slurmrestapi_v0_0_40_assoc_max() }
  | {'id', slurmrestapi_v0_0_40_assoc_short:slurmrestapi_v0_0_40_assoc_short() }
  | {'is_default', boolean() }
  | {'lineage', binary() }
  | {'min', slurmrestapi_v0_0_40_assoc_min:slurmrestapi_v0_0_40_assoc_min() }
  | {'parent_account', binary() }
  | {'partition', binary() }
  | {'priority', slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val() }
  | {'qos', list(binary()) }
  | {'shares_raw', integer() }
  | {'user', binary() }
  ].


slurmrestapi_v0_0_40_assoc() ->
    slurmrestapi_v0_0_40_assoc([]).

slurmrestapi_v0_0_40_assoc(Fields) ->
  Default = [ {'accounting', list(slurmrestapi_v0_0_40_accounting:slurmrestapi_v0_0_40_accounting()) }
            , {'account', binary() }
            , {'cluster', binary() }
            , {'comment', binary() }
            , {'default', slurmrestapi_v0_0_40_assoc_default:slurmrestapi_v0_0_40_assoc_default() }
            , {'flags', list(binary()) }
            , {'max', slurmrestapi_v0_0_40_assoc_max:slurmrestapi_v0_0_40_assoc_max() }
            , {'id', slurmrestapi_v0_0_40_assoc_short:slurmrestapi_v0_0_40_assoc_short() }
            , {'is_default', boolean() }
            , {'lineage', binary() }
            , {'min', slurmrestapi_v0_0_40_assoc_min:slurmrestapi_v0_0_40_assoc_min() }
            , {'parent_account', binary() }
            , {'partition', binary() }
            , {'priority', slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val() }
            , {'qos', list(binary()) }
            , {'shares_raw', integer() }
            , {'user', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

