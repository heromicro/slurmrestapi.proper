-module(slurmrestapi_api).

-export([ slurmdb_v0040_delete_account/1
        , slurmdb_v0040_delete_association/0
        , slurmdb_v0040_delete_associations/0
        , slurmdb_v0040_delete_cluster/1
        , slurmdb_v0040_delete_single_qos/1
        , slurmdb_v0040_delete_user/1
        , slurmdb_v0040_delete_wckey/1
        , slurmdb_v0040_get_account/1
        , slurmdb_v0040_get_accounts/0
        , slurmdb_v0040_get_association/0
        , slurmdb_v0040_get_associations/0
        , slurmdb_v0040_get_cluster/1
        , slurmdb_v0040_get_clusters/0
        , slurmdb_v0040_get_config/0
        , slurmdb_v0040_get_diag/0
        , slurmdb_v0040_get_instance/0
        , slurmdb_v0040_get_instances/0
        , slurmdb_v0040_get_job/1
        , slurmdb_v0040_get_jobs/0
        , slurmdb_v0040_get_qos/0
        , slurmdb_v0040_get_single_qos/1
        , slurmdb_v0040_get_tres/0
        , slurmdb_v0040_get_user/1
        , slurmdb_v0040_get_users/0
        , slurmdb_v0040_get_wckey/1
        , slurmdb_v0040_get_wckeys/0
        , slurmdb_v0040_post_accounts/1
        , slurmdb_v0040_post_accounts_association/1
        , slurmdb_v0040_post_associations/1
        , slurmdb_v0040_post_clusters/1
        , slurmdb_v0040_post_config/1
        , slurmdb_v0040_post_qos/1
        , slurmdb_v0040_post_tres/1
        , slurmdb_v0040_post_users/1
        , slurmdb_v0040_post_users_association/1
        , slurmdb_v0040_post_wckeys/1
        , slurmdb_v0041_delete_account/1
        , slurmdb_v0041_delete_association/0
        , slurmdb_v0041_delete_associations/0
        , slurmdb_v0041_delete_cluster/1
        , slurmdb_v0041_delete_single_qos/1
        , slurmdb_v0041_delete_user/1
        , slurmdb_v0041_delete_wckey/1
        , slurmdb_v0041_get_account/1
        , slurmdb_v0041_get_accounts/0
        , slurmdb_v0041_get_association/0
        , slurmdb_v0041_get_associations/0
        , slurmdb_v0041_get_cluster/1
        , slurmdb_v0041_get_clusters/0
        , slurmdb_v0041_get_config/0
        , slurmdb_v0041_get_diag/0
        , slurmdb_v0041_get_instance/0
        , slurmdb_v0041_get_instances/0
        , slurmdb_v0041_get_job/1
        , slurmdb_v0041_get_jobs/0
        , slurmdb_v0041_get_qos/0
        , slurmdb_v0041_get_single_qos/1
        , slurmdb_v0041_get_tres/0
        , slurmdb_v0041_get_user/1
        , slurmdb_v0041_get_users/0
        , slurmdb_v0041_get_wckey/1
        , slurmdb_v0041_get_wckeys/0
        , slurmdb_v0041_post_accounts/1
        , slurmdb_v0041_post_accounts_association/1
        , slurmdb_v0041_post_associations/1
        , slurmdb_v0041_post_clusters/1
        , slurmdb_v0041_post_config/1
        , slurmdb_v0041_post_qos/1
        , slurmdb_v0041_post_tres/1
        , slurmdb_v0041_post_users/1
        , slurmdb_v0041_post_users_association/1
        , slurmdb_v0041_post_wckeys/1
        ]).

-define(BASE_URL, "").

%% @doc Delete account
%% 
-spec slurmdb_v0040_delete_account(binary()) ->
  slurmrestapi_utils:response().
slurmdb_v0040_delete_account(AccountName) ->
  Method      = delete,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.40/account/", AccountName, ""],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Delete association
%% 
-spec slurmdb_v0040_delete_association() ->
  slurmrestapi_utils:response().
slurmdb_v0040_delete_association() ->
  Method      = delete,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.40/association/"],
  QueryString = [<<"account=">>, Account, <<"&">>, <<"cluster=">>, Cluster, <<"&">>, <<"default_qos=">>, DefaultQos, <<"&">>, <<"format=">>, Format, <<"&">>, <<"id=">>, Id, <<"&">>, <<"only_defaults=">>, OnlyDefaults, <<"&">>, <<"parent_account=">>, ParentAccount, <<"&">>, <<"partition=">>, Partition, <<"&">>, <<"qos=">>, Qos, <<"&">>, <<"usage_end=">>, UsageEnd, <<"&">>, <<"usage_start=">>, UsageStart, <<"&">>, <<"user=">>, User, <<"&">>, <<"with_usage=">>, WithUsage, <<"&">>, <<"with_deleted=">>, WithDeleted, <<"&">>, <<"with_raw_qos=">>, WithRawQos, <<"&">>, <<"with_sub_accts=">>, WithSubAccts, <<"&">>, <<"without_parent_info=">>, WithoutParentInfo, <<"&">>, <<"without_parent_limits=">>, WithoutParentLimits, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Delete associations
%% 
-spec slurmdb_v0040_delete_associations() ->
  slurmrestapi_utils:response().
slurmdb_v0040_delete_associations() ->
  Method      = delete,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.40/associations/"],
  QueryString = [<<"account=">>, Account, <<"&">>, <<"cluster=">>, Cluster, <<"&">>, <<"default_qos=">>, DefaultQos, <<"&">>, <<"format=">>, Format, <<"&">>, <<"id=">>, Id, <<"&">>, <<"only_defaults=">>, OnlyDefaults, <<"&">>, <<"parent_account=">>, ParentAccount, <<"&">>, <<"partition=">>, Partition, <<"&">>, <<"qos=">>, Qos, <<"&">>, <<"usage_end=">>, UsageEnd, <<"&">>, <<"usage_start=">>, UsageStart, <<"&">>, <<"user=">>, User, <<"&">>, <<"with_usage=">>, WithUsage, <<"&">>, <<"with_deleted=">>, WithDeleted, <<"&">>, <<"with_raw_qos=">>, WithRawQos, <<"&">>, <<"with_sub_accts=">>, WithSubAccts, <<"&">>, <<"without_parent_info=">>, WithoutParentInfo, <<"&">>, <<"without_parent_limits=">>, WithoutParentLimits, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Delete cluster
%% 
-spec slurmdb_v0040_delete_cluster(binary()) ->
  slurmrestapi_utils:response().
slurmdb_v0040_delete_cluster(ClusterName) ->
  Method      = delete,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.40/cluster/", ClusterName, ""],
  QueryString = [<<"classification=">>, Classification, <<"&">>, <<"cluster=">>, Cluster, <<"&">>, <<"federation=">>, Federation, <<"&">>, <<"flags=">>, Flags, <<"&">>, <<"format=">>, Format, <<"&">>, <<"rpc_version=">>, RpcVersion, <<"&">>, <<"usage_end=">>, UsageEnd, <<"&">>, <<"usage_start=">>, UsageStart, <<"&">>, <<"with_deleted=">>, WithDeleted, <<"&">>, <<"with_usage=">>, WithUsage, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Delete QOS
%% 
-spec slurmdb_v0040_delete_single_qos(binary()) ->
  slurmrestapi_utils:response().
slurmdb_v0040_delete_single_qos(Qos) ->
  Method      = delete,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.40/qos/", Qos, ""],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Delete user
%% 
-spec slurmdb_v0040_delete_user(binary()) ->
  slurmrestapi_utils:response().
slurmdb_v0040_delete_user(Name) ->
  Method      = delete,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.40/user/", Name, ""],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Delete wckey
%% 
-spec slurmdb_v0040_delete_wckey(binary()) ->
  slurmrestapi_utils:response().
slurmdb_v0040_delete_wckey(Id) ->
  Method      = delete,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.40/wckey/", Id, ""],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Get account info
%% 
-spec slurmdb_v0040_get_account(binary()) ->
  slurmrestapi_utils:response().
slurmdb_v0040_get_account(AccountName) ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.40/account/", AccountName, ""],
  QueryString = [<<"with_assocs=">>, WithAssocs, <<"&">>, <<"with_coords=">>, WithCoords, <<"&">>, <<"with_deleted=">>, WithDeleted, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Get account list
%% 
-spec slurmdb_v0040_get_accounts() ->
  slurmrestapi_utils:response().
slurmdb_v0040_get_accounts() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.40/accounts/"],
  QueryString = [<<"description=">>, Description, <<"&">>, <<"with_assocs=">>, WithAssocs, <<"&">>, <<"with_coords=">>, WithCoords, <<"&">>, <<"with_deleted=">>, WithDeleted, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Get association info
%% 
-spec slurmdb_v0040_get_association() ->
  slurmrestapi_utils:response().
slurmdb_v0040_get_association() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.40/association/"],
  QueryString = [<<"account=">>, Account, <<"&">>, <<"cluster=">>, Cluster, <<"&">>, <<"default_qos=">>, DefaultQos, <<"&">>, <<"format=">>, Format, <<"&">>, <<"id=">>, Id, <<"&">>, <<"only_defaults=">>, OnlyDefaults, <<"&">>, <<"parent_account=">>, ParentAccount, <<"&">>, <<"partition=">>, Partition, <<"&">>, <<"qos=">>, Qos, <<"&">>, <<"usage_end=">>, UsageEnd, <<"&">>, <<"usage_start=">>, UsageStart, <<"&">>, <<"user=">>, User, <<"&">>, <<"with_usage=">>, WithUsage, <<"&">>, <<"with_deleted=">>, WithDeleted, <<"&">>, <<"with_raw_qos=">>, WithRawQos, <<"&">>, <<"with_sub_accts=">>, WithSubAccts, <<"&">>, <<"without_parent_info=">>, WithoutParentInfo, <<"&">>, <<"without_parent_limits=">>, WithoutParentLimits, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Get association list
%% 
-spec slurmdb_v0040_get_associations() ->
  slurmrestapi_utils:response().
slurmdb_v0040_get_associations() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.40/associations/"],
  QueryString = [<<"account=">>, Account, <<"&">>, <<"cluster=">>, Cluster, <<"&">>, <<"default_qos=">>, DefaultQos, <<"&">>, <<"format=">>, Format, <<"&">>, <<"id=">>, Id, <<"&">>, <<"only_defaults=">>, OnlyDefaults, <<"&">>, <<"parent_account=">>, ParentAccount, <<"&">>, <<"partition=">>, Partition, <<"&">>, <<"qos=">>, Qos, <<"&">>, <<"usage_end=">>, UsageEnd, <<"&">>, <<"usage_start=">>, UsageStart, <<"&">>, <<"user=">>, User, <<"&">>, <<"with_usage=">>, WithUsage, <<"&">>, <<"with_deleted=">>, WithDeleted, <<"&">>, <<"with_raw_qos=">>, WithRawQos, <<"&">>, <<"with_sub_accts=">>, WithSubAccts, <<"&">>, <<"without_parent_info=">>, WithoutParentInfo, <<"&">>, <<"without_parent_limits=">>, WithoutParentLimits, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Get cluster info
%% 
-spec slurmdb_v0040_get_cluster(binary()) ->
  slurmrestapi_utils:response().
slurmdb_v0040_get_cluster(ClusterName) ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.40/cluster/", ClusterName, ""],
  QueryString = [<<"classification=">>, Classification, <<"&">>, <<"cluster=">>, Cluster, <<"&">>, <<"federation=">>, Federation, <<"&">>, <<"flags=">>, Flags, <<"&">>, <<"format=">>, Format, <<"&">>, <<"rpc_version=">>, RpcVersion, <<"&">>, <<"usage_end=">>, UsageEnd, <<"&">>, <<"usage_start=">>, UsageStart, <<"&">>, <<"with_deleted=">>, WithDeleted, <<"&">>, <<"with_usage=">>, WithUsage, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Get cluster list
%% 
-spec slurmdb_v0040_get_clusters() ->
  slurmrestapi_utils:response().
slurmdb_v0040_get_clusters() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.40/clusters/"],
  QueryString = [<<"update_time=">>, UpdateTime, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Dump all configuration information
%% 
-spec slurmdb_v0040_get_config() ->
  slurmrestapi_utils:response().
slurmdb_v0040_get_config() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.40/config"],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Get slurmdb diagnostics
%% 
-spec slurmdb_v0040_get_diag() ->
  slurmrestapi_utils:response().
slurmdb_v0040_get_diag() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.40/diag/"],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Get instance info
%% 
-spec slurmdb_v0040_get_instance() ->
  slurmrestapi_utils:response().
slurmdb_v0040_get_instance() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.40/instance/"],
  QueryString = [<<"cluster=">>, Cluster, <<"&">>, <<"extra=">>, Extra, <<"&">>, <<"format=">>, Format, <<"&">>, <<"instance_id=">>, InstanceId, <<"&">>, <<"instance_type=">>, InstanceType, <<"&">>, <<"node_list=">>, NodeList, <<"&">>, <<"time_end=">>, TimeEnd, <<"&">>, <<"time_start=">>, TimeStart, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Get instance list
%% 
-spec slurmdb_v0040_get_instances() ->
  slurmrestapi_utils:response().
slurmdb_v0040_get_instances() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.40/instances/"],
  QueryString = [<<"cluster=">>, Cluster, <<"&">>, <<"extra=">>, Extra, <<"&">>, <<"format=">>, Format, <<"&">>, <<"instance_id=">>, InstanceId, <<"&">>, <<"instance_type=">>, InstanceType, <<"&">>, <<"node_list=">>, NodeList, <<"&">>, <<"time_end=">>, TimeEnd, <<"&">>, <<"time_start=">>, TimeStart, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Get job info
%% This endpoint may return multiple job entries since job_id is not a unique key - only the tuple (cluster, job_id, start_time) is unique. If the requested job_id is a component of a heterogeneous job all components are returned.
-spec slurmdb_v0040_get_job(binary()) ->
  slurmrestapi_utils:response().
slurmdb_v0040_get_job(JobId) ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.40/job/", JobId, ""],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Get job list
%% 
-spec slurmdb_v0040_get_jobs() ->
  slurmrestapi_utils:response().
slurmdb_v0040_get_jobs() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.40/jobs/"],
  QueryString = [<<"account=">>, Account, <<"&">>, <<"association=">>, Association, <<"&">>, <<"cluster=">>, Cluster, <<"&">>, <<"constraints=">>, Constraints, <<"&">>, <<"cpus_max=">>, CpusMax, <<"&">>, <<"cpus_min=">>, CpusMin, <<"&">>, <<"scheduler_unset=">>, SchedulerUnset, <<"&">>, <<"scheduled_on_submit=">>, ScheduledOnSubmit, <<"&">>, <<"scheduled_by_main=">>, ScheduledByMain, <<"&">>, <<"scheduled_by_backfill=">>, ScheduledByBackfill, <<"&">>, <<"job_started=">>, JobStarted, <<"&">>, <<"exit_code=">>, ExitCode, <<"&">>, <<"show_duplicates=">>, ShowDuplicates, <<"&">>, <<"skip_steps=">>, SkipSteps, <<"&">>, <<"disable_truncate_usage_time=">>, DisableTruncateUsageTime, <<"&">>, <<"whole_hetjob=">>, WholeHetjob, <<"&">>, <<"disable_whole_hetjob=">>, DisableWholeHetjob, <<"&">>, <<"disable_wait_for_result=">>, DisableWaitForResult, <<"&">>, <<"usage_time_as_submit_time=">>, UsageTimeAsSubmitTime, <<"&">>, <<"show_batch_script=">>, ShowBatchScript, <<"&">>, <<"show_job_environment=">>, ShowJobEnvironment, <<"&">>, <<"format=">>, Format, <<"&">>, <<"groups=">>, Groups, <<"&">>, <<"job_name=">>, JobName, <<"&">>, <<"nodes_max=">>, NodesMax, <<"&">>, <<"nodes_min=">>, NodesMin, <<"&">>, <<"partition=">>, Partition, <<"&">>, <<"qos=">>, Qos, <<"&">>, <<"reason=">>, Reason, <<"&">>, <<"reservation=">>, Reservation, <<"&">>, <<"reservation_id=">>, ReservationId, <<"&">>, <<"state=">>, State, <<"&">>, <<"step=">>, Step, <<"&">>, <<"timelimit_max=">>, TimelimitMax, <<"&">>, <<"timelimit_min=">>, TimelimitMin, <<"&">>, <<"end_time=">>, EndTime, <<"&">>, <<"start_time=">>, StartTime, <<"&">>, <<"submit_time=">>, SubmitTime, <<"&">>, <<"node=">>, Node, <<"&">>, <<"users=">>, Users, <<"&">>, <<"wckey=">>, Wckey, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Get QOS list
%% 
-spec slurmdb_v0040_get_qos() ->
  slurmrestapi_utils:response().
slurmdb_v0040_get_qos() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.40/qos/"],
  QueryString = [<<"description=">>, Description, <<"&">>, <<"id=">>, Id, <<"&">>, <<"format=">>, Format, <<"&">>, <<"name=">>, Name, <<"&">>, <<"preempt_mode=">>, PreemptMode, <<"&">>, <<"with_deleted=">>, WithDeleted, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Get QOS info
%% 
-spec slurmdb_v0040_get_single_qos(binary()) ->
  slurmrestapi_utils:response().
slurmdb_v0040_get_single_qos(Qos) ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.40/qos/", Qos, ""],
  QueryString = [<<"with_deleted=">>, WithDeleted, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Get TRES info
%% 
-spec slurmdb_v0040_get_tres() ->
  slurmrestapi_utils:response().
slurmdb_v0040_get_tres() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.40/tres/"],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Get user info
%% 
-spec slurmdb_v0040_get_user(binary()) ->
  slurmrestapi_utils:response().
slurmdb_v0040_get_user(Name) ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.40/user/", Name, ""],
  QueryString = [<<"with_deleted=">>, WithDeleted, <<"&">>, <<"with_assocs=">>, WithAssocs, <<"&">>, <<"with_coords=">>, WithCoords, <<"&">>, <<"with_wckeys=">>, WithWckeys, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Get user list
%% 
-spec slurmdb_v0040_get_users() ->
  slurmrestapi_utils:response().
slurmdb_v0040_get_users() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.40/users/"],
  QueryString = [<<"admin_level=">>, AdminLevel, <<"&">>, <<"default_account=">>, DefaultAccount, <<"&">>, <<"default_wckey=">>, DefaultWckey, <<"&">>, <<"with_assocs=">>, WithAssocs, <<"&">>, <<"with_coords=">>, WithCoords, <<"&">>, <<"with_deleted=">>, WithDeleted, <<"&">>, <<"with_wckeys=">>, WithWckeys, <<"&">>, <<"without_defaults=">>, WithoutDefaults, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Get wckey info
%% 
-spec slurmdb_v0040_get_wckey(binary()) ->
  slurmrestapi_utils:response().
slurmdb_v0040_get_wckey(Id) ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.40/wckey/", Id, ""],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Get wckey list
%% 
-spec slurmdb_v0040_get_wckeys() ->
  slurmrestapi_utils:response().
slurmdb_v0040_get_wckeys() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.40/wckeys/"],
  QueryString = [<<"cluster=">>, Cluster, <<"&">>, <<"format=">>, Format, <<"&">>, <<"id=">>, Id, <<"&">>, <<"name=">>, Name, <<"&">>, <<"only_defaults=">>, OnlyDefaults, <<"&">>, <<"usage_end=">>, UsageEnd, <<"&">>, <<"usage_start=">>, UsageStart, <<"&">>, <<"user=">>, User, <<"&">>, <<"with_usage=">>, WithUsage, <<"&">>, <<"with_deleted=">>, WithDeleted, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Add/update list of accounts
%% 
-spec slurmdb_v0040_post_accounts() ->
  slurmrestapi_utils:response().
slurmdb_v0040_post_accounts() ->
  Method      = post,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.40/accounts/"],
  Body        = SlurmrestapiV0040OpenapiAccountsResp,
  ContentType = hd(["application/json", "application/x-yaml"]),

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc Add accounts with conditional association
%% 
-spec slurmdb_v0040_post_accounts_association() ->
  slurmrestapi_utils:response().
slurmdb_v0040_post_accounts_association() ->
  Method      = post,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.40/accounts_association/"],
  Body        = SlurmrestapiV0040OpenapiAccountsAddCondResp,
  ContentType = hd(["application/json", "application/x-yaml"]),

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc Set associations info
%% 
-spec slurmdb_v0040_post_associations() ->
  slurmrestapi_utils:response().
slurmdb_v0040_post_associations() ->
  Method      = post,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.40/associations/"],
  Body        = SlurmrestapiV0040OpenapiAssocsResp,
  ContentType = hd(["application/json", "application/x-yaml"]),

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc Get cluster list
%% 
-spec slurmdb_v0040_post_clusters() ->
  slurmrestapi_utils:response().
slurmdb_v0040_post_clusters() ->
  Method      = post,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.40/clusters/"],
  Body        = SlurmrestapiV0040OpenapiClustersResp,
  ContentType = hd(["application/json", "application/x-yaml"]),
  QueryString = [<<"update_time=">>, UpdateTime, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString], jsx:encode(Body), ContentType).

%% @doc Load all configuration information
%% 
-spec slurmdb_v0040_post_config() ->
  slurmrestapi_utils:response().
slurmdb_v0040_post_config() ->
  Method      = post,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.40/config"],
  Body        = SlurmrestapiV0040OpenapiSlurmdbdConfigResp,
  ContentType = hd(["application/json", "application/x-yaml"]),

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc Add or update QOSs
%% 
-spec slurmdb_v0040_post_qos() ->
  slurmrestapi_utils:response().
slurmdb_v0040_post_qos() ->
  Method      = post,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.40/qos/"],
  Body        = SlurmrestapiV0040OpenapiSlurmdbdQosResp,
  ContentType = hd(["application/json", "application/x-yaml"]),
  QueryString = [<<"description=">>, Description, <<"&">>, <<"id=">>, Id, <<"&">>, <<"format=">>, Format, <<"&">>, <<"name=">>, Name, <<"&">>, <<"preempt_mode=">>, PreemptMode, <<"&">>, <<"with_deleted=">>, WithDeleted, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString], jsx:encode(Body), ContentType).

%% @doc Add TRES
%% 
-spec slurmdb_v0040_post_tres() ->
  slurmrestapi_utils:response().
slurmdb_v0040_post_tres() ->
  Method      = post,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.40/tres/"],
  Body        = SlurmrestapiV0040OpenapiTresResp,
  ContentType = hd(["application/json", "application/x-yaml"]),

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc Update users
%% 
-spec slurmdb_v0040_post_users() ->
  slurmrestapi_utils:response().
slurmdb_v0040_post_users() ->
  Method      = post,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.40/users/"],
  Body        = SlurmrestapiV0040OpenapiUsersResp,
  ContentType = hd(["application/json", "application/x-yaml"]),

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc Add users with conditional association
%% 
-spec slurmdb_v0040_post_users_association() ->
  slurmrestapi_utils:response().
slurmdb_v0040_post_users_association() ->
  Method      = post,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.40/users_association/"],
  Body        = SlurmrestapiV0040OpenapiUsersAddCondResp,
  ContentType = hd(["application/json", "application/x-yaml"]),
  QueryString = [<<"update_time=">>, UpdateTime, <<"&">>, <<"flags=">>, Flags, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString], jsx:encode(Body), ContentType).

%% @doc Add or update wckeys
%% 
-spec slurmdb_v0040_post_wckeys() ->
  slurmrestapi_utils:response().
slurmdb_v0040_post_wckeys() ->
  Method      = post,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.40/wckeys/"],
  Body        = SlurmrestapiV0040OpenapiWckeyResp,
  ContentType = hd(["application/json", "application/x-yaml"]),
  QueryString = [<<"cluster=">>, Cluster, <<"&">>, <<"format=">>, Format, <<"&">>, <<"id=">>, Id, <<"&">>, <<"name=">>, Name, <<"&">>, <<"only_defaults=">>, OnlyDefaults, <<"&">>, <<"usage_end=">>, UsageEnd, <<"&">>, <<"usage_start=">>, UsageStart, <<"&">>, <<"user=">>, User, <<"&">>, <<"with_usage=">>, WithUsage, <<"&">>, <<"with_deleted=">>, WithDeleted, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString], jsx:encode(Body), ContentType).

%% @doc Delete account
%% 
-spec slurmdb_v0041_delete_account(binary()) ->
  slurmrestapi_utils:response().
slurmdb_v0041_delete_account(AccountName) ->
  Method      = delete,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.41/account/", AccountName, ""],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Delete association
%% 
-spec slurmdb_v0041_delete_association() ->
  slurmrestapi_utils:response().
slurmdb_v0041_delete_association() ->
  Method      = delete,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.41/association/"],
  QueryString = [<<"account=">>, Account, <<"&">>, <<"cluster=">>, Cluster, <<"&">>, <<"default_qos=">>, DefaultQos, <<"&">>, <<"format=">>, Format, <<"&">>, <<"id=">>, Id, <<"&">>, <<"only_defaults=">>, OnlyDefaults, <<"&">>, <<"parent_account=">>, ParentAccount, <<"&">>, <<"partition=">>, Partition, <<"&">>, <<"qos=">>, Qos, <<"&">>, <<"usage_end=">>, UsageEnd, <<"&">>, <<"usage_start=">>, UsageStart, <<"&">>, <<"user=">>, User, <<"&">>, <<"with_usage=">>, WithUsage, <<"&">>, <<"with_deleted=">>, WithDeleted, <<"&">>, <<"with_raw_qos=">>, WithRawQos, <<"&">>, <<"with_sub_accts=">>, WithSubAccts, <<"&">>, <<"without_parent_info=">>, WithoutParentInfo, <<"&">>, <<"without_parent_limits=">>, WithoutParentLimits, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Delete associations
%% 
-spec slurmdb_v0041_delete_associations() ->
  slurmrestapi_utils:response().
slurmdb_v0041_delete_associations() ->
  Method      = delete,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.41/associations/"],
  QueryString = [<<"account=">>, Account, <<"&">>, <<"cluster=">>, Cluster, <<"&">>, <<"default_qos=">>, DefaultQos, <<"&">>, <<"format=">>, Format, <<"&">>, <<"id=">>, Id, <<"&">>, <<"only_defaults=">>, OnlyDefaults, <<"&">>, <<"parent_account=">>, ParentAccount, <<"&">>, <<"partition=">>, Partition, <<"&">>, <<"qos=">>, Qos, <<"&">>, <<"usage_end=">>, UsageEnd, <<"&">>, <<"usage_start=">>, UsageStart, <<"&">>, <<"user=">>, User, <<"&">>, <<"with_usage=">>, WithUsage, <<"&">>, <<"with_deleted=">>, WithDeleted, <<"&">>, <<"with_raw_qos=">>, WithRawQos, <<"&">>, <<"with_sub_accts=">>, WithSubAccts, <<"&">>, <<"without_parent_info=">>, WithoutParentInfo, <<"&">>, <<"without_parent_limits=">>, WithoutParentLimits, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Delete cluster
%% 
-spec slurmdb_v0041_delete_cluster(binary()) ->
  slurmrestapi_utils:response().
slurmdb_v0041_delete_cluster(ClusterName) ->
  Method      = delete,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.41/cluster/", ClusterName, ""],
  QueryString = [<<"classification=">>, Classification, <<"&">>, <<"cluster=">>, Cluster, <<"&">>, <<"federation=">>, Federation, <<"&">>, <<"flags=">>, Flags, <<"&">>, <<"format=">>, Format, <<"&">>, <<"rpc_version=">>, RpcVersion, <<"&">>, <<"usage_end=">>, UsageEnd, <<"&">>, <<"usage_start=">>, UsageStart, <<"&">>, <<"with_deleted=">>, WithDeleted, <<"&">>, <<"with_usage=">>, WithUsage, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Delete QOS
%% 
-spec slurmdb_v0041_delete_single_qos(binary()) ->
  slurmrestapi_utils:response().
slurmdb_v0041_delete_single_qos(Qos) ->
  Method      = delete,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.41/qos/", Qos, ""],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Delete user
%% 
-spec slurmdb_v0041_delete_user(binary()) ->
  slurmrestapi_utils:response().
slurmdb_v0041_delete_user(Name) ->
  Method      = delete,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.41/user/", Name, ""],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Delete wckey
%% 
-spec slurmdb_v0041_delete_wckey(binary()) ->
  slurmrestapi_utils:response().
slurmdb_v0041_delete_wckey(Id) ->
  Method      = delete,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.41/wckey/", Id, ""],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Get account info
%% 
-spec slurmdb_v0041_get_account(binary()) ->
  slurmrestapi_utils:response().
slurmdb_v0041_get_account(AccountName) ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.41/account/", AccountName, ""],
  QueryString = [<<"with_assocs=">>, WithAssocs, <<"&">>, <<"with_coords=">>, WithCoords, <<"&">>, <<"with_deleted=">>, WithDeleted, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Get account list
%% 
-spec slurmdb_v0041_get_accounts() ->
  slurmrestapi_utils:response().
slurmdb_v0041_get_accounts() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.41/accounts/"],
  QueryString = [<<"description=">>, Description, <<"&">>, <<"DELETED=">>, DELETED, <<"&">>, <<"WithAssociations=">>, WithAssociations, <<"&">>, <<"WithCoordinators=">>, WithCoordinators, <<"&">>, <<"NoUsersAreCoords=">>, NoUsersAreCoords, <<"&">>, <<"UsersAreCoords=">>, UsersAreCoords, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Get association info
%% 
-spec slurmdb_v0041_get_association() ->
  slurmrestapi_utils:response().
slurmdb_v0041_get_association() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.41/association/"],
  QueryString = [<<"account=">>, Account, <<"&">>, <<"cluster=">>, Cluster, <<"&">>, <<"default_qos=">>, DefaultQos, <<"&">>, <<"format=">>, Format, <<"&">>, <<"id=">>, Id, <<"&">>, <<"only_defaults=">>, OnlyDefaults, <<"&">>, <<"parent_account=">>, ParentAccount, <<"&">>, <<"partition=">>, Partition, <<"&">>, <<"qos=">>, Qos, <<"&">>, <<"usage_end=">>, UsageEnd, <<"&">>, <<"usage_start=">>, UsageStart, <<"&">>, <<"user=">>, User, <<"&">>, <<"with_usage=">>, WithUsage, <<"&">>, <<"with_deleted=">>, WithDeleted, <<"&">>, <<"with_raw_qos=">>, WithRawQos, <<"&">>, <<"with_sub_accts=">>, WithSubAccts, <<"&">>, <<"without_parent_info=">>, WithoutParentInfo, <<"&">>, <<"without_parent_limits=">>, WithoutParentLimits, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Get association list
%% 
-spec slurmdb_v0041_get_associations() ->
  slurmrestapi_utils:response().
slurmdb_v0041_get_associations() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.41/associations/"],
  QueryString = [<<"account=">>, Account, <<"&">>, <<"cluster=">>, Cluster, <<"&">>, <<"default_qos=">>, DefaultQos, <<"&">>, <<"format=">>, Format, <<"&">>, <<"id=">>, Id, <<"&">>, <<"only_defaults=">>, OnlyDefaults, <<"&">>, <<"parent_account=">>, ParentAccount, <<"&">>, <<"partition=">>, Partition, <<"&">>, <<"qos=">>, Qos, <<"&">>, <<"usage_end=">>, UsageEnd, <<"&">>, <<"usage_start=">>, UsageStart, <<"&">>, <<"user=">>, User, <<"&">>, <<"with_usage=">>, WithUsage, <<"&">>, <<"with_deleted=">>, WithDeleted, <<"&">>, <<"with_raw_qos=">>, WithRawQos, <<"&">>, <<"with_sub_accts=">>, WithSubAccts, <<"&">>, <<"without_parent_info=">>, WithoutParentInfo, <<"&">>, <<"without_parent_limits=">>, WithoutParentLimits, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Get cluster info
%% 
-spec slurmdb_v0041_get_cluster(binary()) ->
  slurmrestapi_utils:response().
slurmdb_v0041_get_cluster(ClusterName) ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.41/cluster/", ClusterName, ""],
  QueryString = [<<"classification=">>, Classification, <<"&">>, <<"cluster=">>, Cluster, <<"&">>, <<"federation=">>, Federation, <<"&">>, <<"flags=">>, Flags, <<"&">>, <<"format=">>, Format, <<"&">>, <<"rpc_version=">>, RpcVersion, <<"&">>, <<"usage_end=">>, UsageEnd, <<"&">>, <<"usage_start=">>, UsageStart, <<"&">>, <<"with_deleted=">>, WithDeleted, <<"&">>, <<"with_usage=">>, WithUsage, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Get cluster list
%% 
-spec slurmdb_v0041_get_clusters() ->
  slurmrestapi_utils:response().
slurmdb_v0041_get_clusters() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.41/clusters/"],
  QueryString = [<<"update_time=">>, UpdateTime, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Dump all configuration information
%% 
-spec slurmdb_v0041_get_config() ->
  slurmrestapi_utils:response().
slurmdb_v0041_get_config() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.41/config"],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Get slurmdb diagnostics
%% 
-spec slurmdb_v0041_get_diag() ->
  slurmrestapi_utils:response().
slurmdb_v0041_get_diag() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.41/diag/"],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Get instance info
%% 
-spec slurmdb_v0041_get_instance() ->
  slurmrestapi_utils:response().
slurmdb_v0041_get_instance() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.41/instance/"],
  QueryString = [<<"cluster=">>, Cluster, <<"&">>, <<"extra=">>, Extra, <<"&">>, <<"format=">>, Format, <<"&">>, <<"instance_id=">>, InstanceId, <<"&">>, <<"instance_type=">>, InstanceType, <<"&">>, <<"node_list=">>, NodeList, <<"&">>, <<"time_end=">>, TimeEnd, <<"&">>, <<"time_start=">>, TimeStart, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Get instance list
%% 
-spec slurmdb_v0041_get_instances() ->
  slurmrestapi_utils:response().
slurmdb_v0041_get_instances() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.41/instances/"],
  QueryString = [<<"cluster=">>, Cluster, <<"&">>, <<"extra=">>, Extra, <<"&">>, <<"format=">>, Format, <<"&">>, <<"instance_id=">>, InstanceId, <<"&">>, <<"instance_type=">>, InstanceType, <<"&">>, <<"node_list=">>, NodeList, <<"&">>, <<"time_end=">>, TimeEnd, <<"&">>, <<"time_start=">>, TimeStart, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Get job info
%% This endpoint may return multiple job entries since job_id is not a unique key - only the tuple (cluster, job_id, start_time) is unique. If the requested job_id is a component of a heterogeneous job all components are returned.
-spec slurmdb_v0041_get_job(binary()) ->
  slurmrestapi_utils:response().
slurmdb_v0041_get_job(JobId) ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.41/job/", JobId, ""],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Get job list
%% 
-spec slurmdb_v0041_get_jobs() ->
  slurmrestapi_utils:response().
slurmdb_v0041_get_jobs() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.41/jobs/"],
  QueryString = [<<"account=">>, Account, <<"&">>, <<"association=">>, Association, <<"&">>, <<"cluster=">>, Cluster, <<"&">>, <<"constraints=">>, Constraints, <<"&">>, <<"scheduler_unset=">>, SchedulerUnset, <<"&">>, <<"scheduled_on_submit=">>, ScheduledOnSubmit, <<"&">>, <<"scheduled_by_main=">>, ScheduledByMain, <<"&">>, <<"scheduled_by_backfill=">>, ScheduledByBackfill, <<"&">>, <<"job_started=">>, JobStarted, <<"&">>, <<"exit_code=">>, ExitCode, <<"&">>, <<"show_duplicates=">>, ShowDuplicates, <<"&">>, <<"skip_steps=">>, SkipSteps, <<"&">>, <<"disable_truncate_usage_time=">>, DisableTruncateUsageTime, <<"&">>, <<"whole_hetjob=">>, WholeHetjob, <<"&">>, <<"disable_whole_hetjob=">>, DisableWholeHetjob, <<"&">>, <<"disable_wait_for_result=">>, DisableWaitForResult, <<"&">>, <<"usage_time_as_submit_time=">>, UsageTimeAsSubmitTime, <<"&">>, <<"show_batch_script=">>, ShowBatchScript, <<"&">>, <<"show_job_environment=">>, ShowJobEnvironment, <<"&">>, <<"format=">>, Format, <<"&">>, <<"groups=">>, Groups, <<"&">>, <<"job_name=">>, JobName, <<"&">>, <<"partition=">>, Partition, <<"&">>, <<"qos=">>, Qos, <<"&">>, <<"reason=">>, Reason, <<"&">>, <<"reservation=">>, Reservation, <<"&">>, <<"reservation_id=">>, ReservationId, <<"&">>, <<"state=">>, State, <<"&">>, <<"step=">>, Step, <<"&">>, <<"end_time=">>, EndTime, <<"&">>, <<"start_time=">>, StartTime, <<"&">>, <<"node=">>, Node, <<"&">>, <<"users=">>, Users, <<"&">>, <<"wckey=">>, Wckey, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Get QOS list
%% 
-spec slurmdb_v0041_get_qos() ->
  slurmrestapi_utils:response().
slurmdb_v0041_get_qos() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.41/qos/"],
  QueryString = [<<"description=">>, Description, <<"&">>, <<"id=">>, Id, <<"&">>, <<"format=">>, Format, <<"&">>, <<"name=">>, Name, <<"&">>, <<"preempt_mode=">>, PreemptMode, <<"&">>, <<"with_deleted=">>, WithDeleted, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Get QOS info
%% 
-spec slurmdb_v0041_get_single_qos(binary()) ->
  slurmrestapi_utils:response().
slurmdb_v0041_get_single_qos(Qos) ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.41/qos/", Qos, ""],
  QueryString = [<<"with_deleted=">>, WithDeleted, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Get TRES info
%% 
-spec slurmdb_v0041_get_tres() ->
  slurmrestapi_utils:response().
slurmdb_v0041_get_tres() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.41/tres/"],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Get user info
%% 
-spec slurmdb_v0041_get_user(binary()) ->
  slurmrestapi_utils:response().
slurmdb_v0041_get_user(Name) ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.41/user/", Name, ""],
  QueryString = [<<"with_deleted=">>, WithDeleted, <<"&">>, <<"with_assocs=">>, WithAssocs, <<"&">>, <<"with_coords=">>, WithCoords, <<"&">>, <<"with_wckeys=">>, WithWckeys, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Get user list
%% 
-spec slurmdb_v0041_get_users() ->
  slurmrestapi_utils:response().
slurmdb_v0041_get_users() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.41/users/"],
  QueryString = [<<"admin_level=">>, AdminLevel, <<"&">>, <<"default_account=">>, DefaultAccount, <<"&">>, <<"default_wckey=">>, DefaultWckey, <<"&">>, <<"with_assocs=">>, WithAssocs, <<"&">>, <<"with_coords=">>, WithCoords, <<"&">>, <<"with_deleted=">>, WithDeleted, <<"&">>, <<"with_wckeys=">>, WithWckeys, <<"&">>, <<"without_defaults=">>, WithoutDefaults, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Get wckey info
%% 
-spec slurmdb_v0041_get_wckey(binary()) ->
  slurmrestapi_utils:response().
slurmdb_v0041_get_wckey(Id) ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.41/wckey/", Id, ""],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Get wckey list
%% 
-spec slurmdb_v0041_get_wckeys() ->
  slurmrestapi_utils:response().
slurmdb_v0041_get_wckeys() ->
  Method      = get,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.41/wckeys/"],
  QueryString = [<<"cluster=">>, Cluster, <<"&">>, <<"format=">>, Format, <<"&">>, <<"id=">>, Id, <<"&">>, <<"name=">>, Name, <<"&">>, <<"only_defaults=">>, OnlyDefaults, <<"&">>, <<"usage_end=">>, UsageEnd, <<"&">>, <<"usage_start=">>, UsageStart, <<"&">>, <<"user=">>, User, <<"&">>, <<"with_usage=">>, WithUsage, <<"&">>, <<"with_deleted=">>, WithDeleted, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Add/update list of accounts
%% 
-spec slurmdb_v0041_post_accounts() ->
  slurmrestapi_utils:response().
slurmdb_v0041_post_accounts() ->
  Method      = post,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.41/accounts/"],
  Body        = SlurmrestapiV0041OpenapiAccountsResp,
  ContentType = hd(["application/json", "application/x-yaml"]),

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc Add accounts with conditional association
%% 
-spec slurmdb_v0041_post_accounts_association() ->
  slurmrestapi_utils:response().
slurmdb_v0041_post_accounts_association() ->
  Method      = post,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.41/accounts_association/"],
  Body        = SlurmrestapiV0041OpenapiAccountsAddCondResp,
  ContentType = hd(["application/json", "application/x-yaml"]),

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc Set associations info
%% 
-spec slurmdb_v0041_post_associations() ->
  slurmrestapi_utils:response().
slurmdb_v0041_post_associations() ->
  Method      = post,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.41/associations/"],
  Body        = SlurmrestapiV0041OpenapiAssocsResp,
  ContentType = hd(["application/json", "application/x-yaml"]),

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc Get cluster list
%% 
-spec slurmdb_v0041_post_clusters() ->
  slurmrestapi_utils:response().
slurmdb_v0041_post_clusters() ->
  Method      = post,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.41/clusters/"],
  Body        = SlurmrestapiV0041OpenapiClustersResp,
  ContentType = hd(["application/json", "application/x-yaml"]),
  QueryString = [<<"update_time=">>, UpdateTime, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString], jsx:encode(Body), ContentType).

%% @doc Load all configuration information
%% 
-spec slurmdb_v0041_post_config() ->
  slurmrestapi_utils:response().
slurmdb_v0041_post_config() ->
  Method      = post,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.41/config"],
  Body        = SlurmrestapiV0041OpenapiSlurmdbdConfigResp,
  ContentType = hd(["application/json", "application/x-yaml"]),

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc Add or update QOSs
%% 
-spec slurmdb_v0041_post_qos() ->
  slurmrestapi_utils:response().
slurmdb_v0041_post_qos() ->
  Method      = post,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.41/qos/"],
  Body        = SlurmrestapiV0041OpenapiSlurmdbdQosResp,
  ContentType = hd(["application/json", "application/x-yaml"]),
  QueryString = [<<"description=">>, Description, <<"&">>, <<"id=">>, Id, <<"&">>, <<"format=">>, Format, <<"&">>, <<"name=">>, Name, <<"&">>, <<"preempt_mode=">>, PreemptMode, <<"&">>, <<"with_deleted=">>, WithDeleted, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString], jsx:encode(Body), ContentType).

%% @doc Add TRES
%% 
-spec slurmdb_v0041_post_tres() ->
  slurmrestapi_utils:response().
slurmdb_v0041_post_tres() ->
  Method      = post,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.41/tres/"],
  Body        = SlurmrestapiV0041OpenapiTresResp,
  ContentType = hd(["application/json", "application/x-yaml"]),

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc Update users
%% 
-spec slurmdb_v0041_post_users() ->
  slurmrestapi_utils:response().
slurmdb_v0041_post_users() ->
  Method      = post,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.41/users/"],
  Body        = SlurmrestapiV0041OpenapiUsersResp,
  ContentType = hd(["application/json", "application/x-yaml"]),

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc Add users with conditional association
%% 
-spec slurmdb_v0041_post_users_association() ->
  slurmrestapi_utils:response().
slurmdb_v0041_post_users_association() ->
  Method      = post,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.41/users_association/"],
  Body        = SlurmrestapiV0041OpenapiUsersAddCondResp,
  ContentType = hd(["application/json", "application/x-yaml"]),
  QueryString = [<<"update_time=">>, UpdateTime, <<"&">>, <<"flags=">>, Flags, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString], jsx:encode(Body), ContentType).

%% @doc Add or update wckeys
%% 
-spec slurmdb_v0041_post_wckeys() ->
  slurmrestapi_utils:response().
slurmdb_v0041_post_wckeys() ->
  Method      = post,
  Host        = application:get_env(slurmrestapi, host, "http://localhost:8080"),
  Path        = ["/slurmdb/v0.0.41/wckeys/"],
  Body        = SlurmrestapiV0041OpenapiWckeyResp,
  ContentType = hd(["application/json", "application/x-yaml"]),
  QueryString = [<<"cluster=">>, Cluster, <<"&">>, <<"format=">>, Format, <<"&">>, <<"id=">>, Id, <<"&">>, <<"name=">>, Name, <<"&">>, <<"only_defaults=">>, OnlyDefaults, <<"&">>, <<"usage_end=">>, UsageEnd, <<"&">>, <<"usage_start=">>, UsageStart, <<"&">>, <<"user=">>, User, <<"&">>, <<"with_usage=">>, WithUsage, <<"&">>, <<"with_deleted=">>, WithDeleted, <<"&">>],

  slurmrestapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString], jsx:encode(Body), ContentType).

