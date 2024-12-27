-module(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_required).

-include("slurmrestapi.hrl").

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_required/0]).

-export([slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_required/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_required/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_required() ::
  [ {'CPUs', integer() }
  | {'memory_per_cpu', slurmrestapi_v0_0_41_job_desc_msg_memory_per_cpu:slurmrestapi_v0_0_41_job_desc_msg_memory_per_cpu() }
  | {'memory_per_node', slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_memory_per_node:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_memory_per_node() }
  ].


slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_required() ->
    slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_required([]).

slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_required(Fields) ->
  Default = [ {'CPUs', integer() }
            , {'memory_per_cpu', slurmrestapi_v0_0_41_job_desc_msg_memory_per_cpu:slurmrestapi_v0_0_41_job_desc_msg_memory_per_cpu() }
            , {'memory_per_node', slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_memory_per_node:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_memory_per_node() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

