-module(slurmrestapi_v0_0_40_openapi_partition_resp).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_40_openapi_partition_resp/0]).

-export([slurmrestapi_v0_0_40_openapi_partition_resp/1]).

-export_type([slurmrestapi_v0_0_40_openapi_partition_resp/0]).

-type slurmrestapi_v0_0_40_openapi_partition_resp() ::
  [ {'partitions', list(slurmrestapi_v0_0_40_partition_info:slurmrestapi_v0_0_40_partition_info()) }
  | {'last_update', slurmrestapi_v0_0_40_uint64_no_val:slurmrestapi_v0_0_40_uint64_no_val() }
  | {'meta', slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta() }
  | {'errors', list(slurmrestapi_v0_0_40_openapi_error:slurmrestapi_v0_0_40_openapi_error()) }
  | {'warnings', list(slurmrestapi_v0_0_40_openapi_warning:slurmrestapi_v0_0_40_openapi_warning()) }
  ].


slurmrestapi_v0_0_40_openapi_partition_resp() ->
    slurmrestapi_v0_0_40_openapi_partition_resp([]).

slurmrestapi_v0_0_40_openapi_partition_resp(Fields) ->
  Default = [ {'partitions', list(slurmrestapi_v0_0_40_partition_info:slurmrestapi_v0_0_40_partition_info()) }
            , {'last_update', slurmrestapi_v0_0_40_uint64_no_val:slurmrestapi_v0_0_40_uint64_no_val() }
            , {'meta', slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta() }
            , {'errors', list(slurmrestapi_v0_0_40_openapi_error:slurmrestapi_v0_0_40_openapi_error()) }
            , {'warnings', list(slurmrestapi_v0_0_40_openapi_warning:slurmrestapi_v0_0_40_openapi_warning()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

