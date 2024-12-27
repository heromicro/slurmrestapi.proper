-module(slurmrestapi_api).

-export([ slurm_v0039_cancel_job/1
        , slurm_v0039_delete_node/1
        , slurm_v0039_diag/0
        , slurm_v0039_get_job/1
        , slurm_v0039_get_jobs/0
        , slurm_v0039_get_node/1
        , slurm_v0039_get_nodes/0
        , slurm_v0039_get_partition/1
        , slurm_v0039_get_partitions/0
        , slurm_v0039_get_reservation/1
        , slurm_v0039_get_reservations/0
        , slurm_v0039_ping/0
        , slurm_v0039_slurmctld_get_licenses/0
        , slurm_v0039_submit_job/1
        , slurm_v0039_update_job/2
        , slurm_v0039_update_node/2
        , slurmdb_v0039_add_clusters/1
        , slurmdb_v0039_add_wckeys/1
        , slurmdb_v0039_delete_account/1
        , slurmdb_v0039_delete_association/0
        , slurmdb_v0039_delete_associations/0
        , slurmdb_v0039_delete_cluster/1
        , slurmdb_v0039_delete_qos/1
        , slurmdb_v0039_delete_user/1
        , slurmdb_v0039_delete_wckey/1
        , slurmdb_v0039_diag/0
        , slurmdb_v0039_get_account/1
        , slurmdb_v0039_get_accounts/0
        , slurmdb_v0039_get_association/0
        , slurmdb_v0039_get_associations/0
        , slurmdb_v0039_get_cluster/1
        , slurmdb_v0039_get_clusters/0
        , slurmdb_v0039_get_config/0
        , slurmdb_v0039_get_job/1
        , slurmdb_v0039_get_jobs/0
        , slurmdb_v0039_get_qos/0
        , slurmdb_v0039_get_single_qos/1
        , slurmdb_v0039_get_tres/0
        , slurmdb_v0039_get_user/1
        , slurmdb_v0039_get_users/0
        , slurmdb_v0039_get_wckey/1
        , slurmdb_v0039_get_wckeys/0
        , slurmdb_v0039_set_config/1
        , slurmdb_v0039_update_accounts/1
        , slurmdb_v0039_update_associations/1
        , slurmdb_v0039_update_qos/1
        , slurmdb_v0039_update_tres/1
        , slurmdb_v0039_update_users/1
        ]).

-define(BASE_URL, "").

%% @doc cancel or signal job
%% 
-spec slurm_v0039_cancel_job(binary()) ->
  slurmrestapi_utils:response().
slurm_v0039_cancel_job(JobId) ->
  Method      = delete,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurm/v0.0.39/job/", JobId, ""],
  QueryString = [<<"signal=">>, Signal, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc delete node
%% 
-spec slurm_v0039_delete_node(binary()) ->
  slurmrestapi_utils:response().
slurm_v0039_delete_node(NodeName) ->
  Method      = delete,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurm/v0.0.39/node/", NodeName, ""],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc get diagnostics
%% 
-spec slurm_v0039_diag() ->
  slurmrestapi_utils:response().
slurm_v0039_diag() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurm/v0.0.39/diag"],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc get job info
%% 
-spec slurm_v0039_get_job(binary()) ->
  slurmrestapi_utils:response().
slurm_v0039_get_job(JobId) ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurm/v0.0.39/job/", JobId, ""],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc get list of jobs
%% 
-spec slurm_v0039_get_jobs() ->
  slurmrestapi_utils:response().
slurm_v0039_get_jobs() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurm/v0.0.39/jobs"],
  QueryString = [<<"update_time=">>, UpdateTime, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc get node info
%% 
-spec slurm_v0039_get_node(binary()) ->
  slurmrestapi_utils:response().
slurm_v0039_get_node(NodeName) ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurm/v0.0.39/node/", NodeName, ""],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc get all node info
%% 
-spec slurm_v0039_get_nodes() ->
  slurmrestapi_utils:response().
slurm_v0039_get_nodes() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurm/v0.0.39/nodes"],
  QueryString = [<<"update_time=">>, UpdateTime, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc get partition info
%% 
-spec slurm_v0039_get_partition(binary()) ->
  slurmrestapi_utils:response().
slurm_v0039_get_partition(PartitionName) ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurm/v0.0.39/partition/", PartitionName, ""],
  QueryString = [<<"update_time=">>, UpdateTime, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc get all partition info
%% 
-spec slurm_v0039_get_partitions() ->
  slurmrestapi_utils:response().
slurm_v0039_get_partitions() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurm/v0.0.39/partitions"],
  QueryString = [<<"update_time=">>, UpdateTime, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc get reservation info
%% 
-spec slurm_v0039_get_reservation(binary()) ->
  slurmrestapi_utils:response().
slurm_v0039_get_reservation(ReservationName) ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurm/v0.0.39/reservation/", ReservationName, ""],
  QueryString = [<<"update_time=">>, UpdateTime, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc get all reservation info
%% 
-spec slurm_v0039_get_reservations() ->
  slurmrestapi_utils:response().
slurm_v0039_get_reservations() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurm/v0.0.39/reservations"],
  QueryString = [<<"update_time=">>, UpdateTime, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc ping test
%% 
-spec slurm_v0039_ping() ->
  slurmrestapi_utils:response().
slurm_v0039_ping() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurm/v0.0.39/ping"],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc get all Slurm tracked license info
%% 
-spec slurm_v0039_slurmctld_get_licenses() ->
  slurmrestapi_utils:response().
slurm_v0039_slurmctld_get_licenses() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurm/v0.0.39/licenses"],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc submit new job
%% 
-spec slurm_v0039_submit_job(slurmrestapi_v0_0_39_job_submission:slurmrestapi_v0_0_39_job_submission()) ->
  slurmrestapi_utils:response().
slurm_v0039_submit_job(SlurmrestapiV0039JobSubmission) ->
  Method      = post,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurm/v0.0.39/job/submit"],
  Body        = SlurmrestapiV0039JobSubmission,
  ContentType = hd(["application/json", "application/x-yaml"]),

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc update job
%% 
-spec slurm_v0039_update_job(binary(), slurmrestapi_v0_0_39_job_desc_msg:slurmrestapi_v0_0_39_job_desc_msg()) ->
  slurmrestapi_utils:response().
slurm_v0039_update_job(JobId, SlurmrestapiV0039JobDescMsg) ->
  Method      = post,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurm/v0.0.39/job/", JobId, ""],
  Body        = SlurmrestapiV0039JobDescMsg,
  ContentType = hd(["application/json", "application/x-yaml"]),

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc update node properties
%% 
-spec slurm_v0039_update_node(binary(), slurmrestapi_v0_0_39_update_node_msg:slurmrestapi_v0_0_39_update_node_msg()) ->
  slurmrestapi_utils:response().
slurm_v0039_update_node(NodeName, SlurmrestapiV0039UpdateNodeMsg) ->
  Method      = post,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurm/v0.0.39/node/", NodeName, ""],
  Body        = SlurmrestapiV0039UpdateNodeMsg,
  ContentType = hd(["application/json", "application/x-yaml"]),

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc Add clusters
%% 
-spec slurmdb_v0039_add_clusters(slurmrestapi_dbv0_0_39_clusters_info:slurmrestapi_dbv0_0_39_clusters_info()) ->
  slurmrestapi_utils:response().
slurmdb_v0039_add_clusters(SlurmrestapiDbv0039ClustersInfo) ->
  Method      = post,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.39/clusters"],
  Body        = SlurmrestapiDbv0039ClustersInfo,
  ContentType = hd(["application/json", "application/x-yaml"]),

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc Add wckeys
%% 
-spec slurmdb_v0039_add_wckeys() ->
  slurmrestapi_utils:response().
slurmdb_v0039_add_wckeys() ->
  Method      = post,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.39/wckeys"],
  Body        = SlurmrestapiDbv0039WckeyInfo,
  ContentType = hd(["application/json", "application/x-yaml"]),

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc Delete account
%% 
-spec slurmdb_v0039_delete_account(binary()) ->
  slurmrestapi_utils:response().
slurmdb_v0039_delete_account(AccountName) ->
  Method      = delete,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.39/account/", AccountName, ""],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Delete association
%% 
-spec slurmdb_v0039_delete_association() ->
  slurmrestapi_utils:response().
slurmdb_v0039_delete_association() ->
  Method      = delete,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.39/association"],
  QueryString = [<<"cluster=">>, Cluster, <<"&">>, <<"account=">>, Account, <<"&">>, <<"user=">>, User, <<"&">>, <<"partition=">>, Partition, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Delete associations
%% 
-spec slurmdb_v0039_delete_associations() ->
  slurmrestapi_utils:response().
slurmdb_v0039_delete_associations() ->
  Method      = delete,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.39/associations"],
  QueryString = [<<"cluster=">>, Cluster, <<"&">>, <<"account=">>, Account, <<"&">>, <<"user=">>, User, <<"&">>, <<"partition=">>, Partition, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Delete cluster
%% 
-spec slurmdb_v0039_delete_cluster(binary()) ->
  slurmrestapi_utils:response().
slurmdb_v0039_delete_cluster(ClusterName) ->
  Method      = delete,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.39/cluster/", ClusterName, ""],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Delete QOS
%% 
-spec slurmdb_v0039_delete_qos(binary()) ->
  slurmrestapi_utils:response().
slurmdb_v0039_delete_qos(QosName) ->
  Method      = delete,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.39/qos/", QosName, ""],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Delete user
%% 
-spec slurmdb_v0039_delete_user(binary()) ->
  slurmrestapi_utils:response().
slurmdb_v0039_delete_user(UserName) ->
  Method      = delete,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.39/user/", UserName, ""],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Delete wckey
%% 
-spec slurmdb_v0039_delete_wckey(binary()) ->
  slurmrestapi_utils:response().
slurmdb_v0039_delete_wckey(Wckey) ->
  Method      = delete,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.39/wckey/", Wckey, ""],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Get slurmdb diagnostics
%% 
-spec slurmdb_v0039_diag() ->
  slurmrestapi_utils:response().
slurmdb_v0039_diag() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.39/diag"],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Get account info
%% 
-spec slurmdb_v0039_get_account(binary()) ->
  slurmrestapi_utils:response().
slurmdb_v0039_get_account(AccountName) ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.39/account/", AccountName, ""],
  QueryString = [<<"with_deleted=">>, WithDeleted, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Get account list
%% 
-spec slurmdb_v0039_get_accounts() ->
  slurmrestapi_utils:response().
slurmdb_v0039_get_accounts() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.39/accounts"],
  QueryString = [<<"with_deleted=">>, WithDeleted, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Get association info
%% 
-spec slurmdb_v0039_get_association() ->
  slurmrestapi_utils:response().
slurmdb_v0039_get_association() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.39/association"],
  QueryString = [<<"cluster=">>, Cluster, <<"&">>, <<"account=">>, Account, <<"&">>, <<"user=">>, User, <<"&">>, <<"partition=">>, Partition, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Get association list
%% 
-spec slurmdb_v0039_get_associations() ->
  slurmrestapi_utils:response().
slurmdb_v0039_get_associations() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.39/associations"],
  QueryString = [<<"cluster=">>, Cluster, <<"&">>, <<"account=">>, Account, <<"&">>, <<"user=">>, User, <<"&">>, <<"partition=">>, Partition, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Get cluster info
%% 
-spec slurmdb_v0039_get_cluster(binary()) ->
  slurmrestapi_utils:response().
slurmdb_v0039_get_cluster(ClusterName) ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.39/cluster/", ClusterName, ""],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Get cluster list
%% 
-spec slurmdb_v0039_get_clusters() ->
  slurmrestapi_utils:response().
slurmdb_v0039_get_clusters() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.39/clusters"],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Dump all configuration information
%% 
-spec slurmdb_v0039_get_config() ->
  slurmrestapi_utils:response().
slurmdb_v0039_get_config() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.39/config"],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Get job info
%% This endpoint may return multiple job entries since job_id is not a unique key - only the tuple (cluster, job_id, start_time) is unique. If the requested job_id is a component of a heterogeneous job all components are returned.
-spec slurmdb_v0039_get_job(binary()) ->
  slurmrestapi_utils:response().
slurmdb_v0039_get_job(JobId) ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.39/job/", JobId, ""],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Get job list
%% 
-spec slurmdb_v0039_get_jobs() ->
  slurmrestapi_utils:response().
slurmdb_v0039_get_jobs() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.39/jobs"],
  QueryString = [<<"users=">>, Users, <<"&">>, <<"submit_time=">>, SubmitTime, <<"&">>, <<"start_time=">>, StartTime, <<"&">>, <<"end_time=">>, EndTime, <<"&">>, <<"account=">>, Account, <<"&">>, <<"association=">>, Association, <<"&">>, <<"cluster=">>, Cluster, <<"&">>, <<"constraints=">>, Constraints, <<"&">>, <<"cpus_max=">>, CpusMax, <<"&">>, <<"cpus_min=">>, CpusMin, <<"&">>, <<"skip_steps=">>, SkipSteps, <<"&">>, <<"disable_wait_for_result=">>, DisableWaitForResult, <<"&">>, <<"exit_code=">>, ExitCode, <<"&">>, <<"format=">>, Format, <<"&">>, <<"group=">>, Group, <<"&">>, <<"job_name=">>, JobName, <<"&">>, <<"nodes_max=">>, NodesMax, <<"&">>, <<"nodes_min=">>, NodesMin, <<"&">>, <<"partition=">>, Partition, <<"&">>, <<"qos=">>, Qos, <<"&">>, <<"reason=">>, Reason, <<"&">>, <<"reservation=">>, Reservation, <<"&">>, <<"state=">>, State, <<"&">>, <<"step=">>, Step, <<"&">>, <<"node=">>, Node, <<"&">>, <<"wckey=">>, Wckey, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Get QOS list
%% 
-spec slurmdb_v0039_get_qos() ->
  slurmrestapi_utils:response().
slurmdb_v0039_get_qos() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.39/qos"],
  QueryString = [<<"with_deleted=">>, WithDeleted, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Get QOS info
%% 
-spec slurmdb_v0039_get_single_qos(binary()) ->
  slurmrestapi_utils:response().
slurmdb_v0039_get_single_qos(QosName) ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.39/qos/", QosName, ""],
  QueryString = [<<"with_deleted=">>, WithDeleted, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Get TRES info
%% 
-spec slurmdb_v0039_get_tres() ->
  slurmrestapi_utils:response().
slurmdb_v0039_get_tres() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.39/tres"],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Get user info
%% 
-spec slurmdb_v0039_get_user(binary()) ->
  slurmrestapi_utils:response().
slurmdb_v0039_get_user(UserName) ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.39/user/", UserName, ""],
  QueryString = [<<"with_deleted=">>, WithDeleted, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Get user list
%% 
-spec slurmdb_v0039_get_users() ->
  slurmrestapi_utils:response().
slurmdb_v0039_get_users() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.39/users"],
  QueryString = [<<"with_deleted=">>, WithDeleted, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Get wckey info
%% 
-spec slurmdb_v0039_get_wckey(binary()) ->
  slurmrestapi_utils:response().
slurmdb_v0039_get_wckey(Wckey) ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.39/wckey/", Wckey, ""],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Get wckey list
%% 
-spec slurmdb_v0039_get_wckeys() ->
  slurmrestapi_utils:response().
slurmdb_v0039_get_wckeys() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.39/wckeys"],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Load all configuration information
%% 
-spec slurmdb_v0039_set_config() ->
  slurmrestapi_utils:response().
slurmdb_v0039_set_config() ->
  Method      = post,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.39/config"],
  Body        = SlurmrestapiDbv0039SetConfig,
  ContentType = hd(["application/json", "application/x-yaml"]),

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc Update accounts
%% 
-spec slurmdb_v0039_update_accounts(slurmrestapi_dbv0_0_39_account_info:slurmrestapi_dbv0_0_39_account_info()) ->
  slurmrestapi_utils:response().
slurmdb_v0039_update_accounts(SlurmrestapiDbv0039AccountInfo) ->
  Method      = post,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.39/accounts"],
  Body        = SlurmrestapiDbv0039AccountInfo,
  ContentType = hd(["application/json", "application/x-yaml"]),

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc Set associations info
%% 
-spec slurmdb_v0039_update_associations(slurmrestapi_dbv0_0_39_associations_info:slurmrestapi_dbv0_0_39_associations_info()) ->
  slurmrestapi_utils:response().
slurmdb_v0039_update_associations(SlurmrestapiDbv0039AssociationsInfo) ->
  Method      = post,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.39/associations"],
  Body        = SlurmrestapiDbv0039AssociationsInfo,
  ContentType = hd(["application/json", "application/x-yaml"]),

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc Set QOS info
%% 
-spec slurmdb_v0039_update_qos(slurmrestapi_dbv0_0_39_update_qos:slurmrestapi_dbv0_0_39_update_qos()) ->
  slurmrestapi_utils:response().
slurmdb_v0039_update_qos(SlurmrestapiDbv0039UpdateQos) ->
  Method      = post,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.39/qos"],
  Body        = SlurmrestapiDbv0039UpdateQos,
  ContentType = hd(["application/json", "application/x-yaml"]),

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc Set TRES info
%% 
-spec slurmdb_v0039_update_tres(slurmrestapi_dbv0_0_39_tres_update:slurmrestapi_dbv0_0_39_tres_update()) ->
  slurmrestapi_utils:response().
slurmdb_v0039_update_tres(SlurmrestapiDbv0039TresUpdate) ->
  Method      = post,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.39/tres"],
  Body        = SlurmrestapiDbv0039TresUpdate,
  ContentType = hd(["application/json", "application/x-yaml"]),

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc Update user
%% 
-spec slurmdb_v0039_update_users(slurmrestapi_dbv0_0_39_update_users:slurmrestapi_dbv0_0_39_update_users()) ->
  slurmrestapi_utils:response().
slurmdb_v0039_update_users(SlurmrestapiDbv0039UpdateUsers) ->
  Method      = post,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.39/users"],
  Body        = SlurmrestapiDbv0039UpdateUsers,
  ContentType = hd(["application/json", "application/x-yaml"]),

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

