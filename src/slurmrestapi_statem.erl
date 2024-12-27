-module(slurmrestapi_statem).

-behaviour(proper_statem).

-include("slurmrestapi.hrl").
-include_lib("proper/include/proper_common.hrl").
-include_lib("stdlib/include/assert.hrl").

-compile(export_all).
-compile(nowarn_export_all).

-include("slurmrestapi_statem.hrl").

%%==============================================================================
%% The statem's property
%%==============================================================================

prop_main() ->
  setup(),
  ?FORALL( Cmds
         , proper_statem:commands(?MODULE)
         , begin
             cleanup(),
             { History
             , State
             , Result
             } = proper_statem:run_commands(?MODULE, Cmds),
             ?WHENFAIL(
                io:format("History: ~p\nState: ~p\nResult: ~p\nCmds: ~p\n",
                          [ History
                          , State
                          , Result
                          , proper_statem:command_names(Cmds)
                          ]),
                proper:aggregate( proper_statem:command_names(Cmds)
                                , Result =:= ok
                                )
               )
           end
         ).

%%==============================================================================
%% Setup
%%==============================================================================

setup() -> ok.

%%==============================================================================
%% Cleanup
%%==============================================================================

cleanup() -> ok.

%%==============================================================================
%% Initial State
%%==============================================================================

initial_state() -> #{}.

%%==============================================================================
%% slurm_v0039_cancel_job
%%==============================================================================

slurm_v0039_cancel_job(JobId) ->
  slurmrestapi_api:slurm_v0039_cancel_job(JobId).

slurm_v0039_cancel_job_args(_S) ->
  [binary()].

%%==============================================================================
%% slurm_v0039_delete_node
%%==============================================================================

slurm_v0039_delete_node(NodeName) ->
  slurmrestapi_api:slurm_v0039_delete_node(NodeName).

slurm_v0039_delete_node_args(_S) ->
  [binary()].

%%==============================================================================
%% slurm_v0039_diag
%%==============================================================================

slurm_v0039_diag() ->
  slurmrestapi_api:slurm_v0039_diag().

slurm_v0039_diag_args(_S) ->
  [].

%%==============================================================================
%% slurm_v0039_get_job
%%==============================================================================

slurm_v0039_get_job(JobId) ->
  slurmrestapi_api:slurm_v0039_get_job(JobId).

slurm_v0039_get_job_args(_S) ->
  [binary()].

%%==============================================================================
%% slurm_v0039_get_jobs
%%==============================================================================

slurm_v0039_get_jobs() ->
  slurmrestapi_api:slurm_v0039_get_jobs().

slurm_v0039_get_jobs_args(_S) ->
  [].

%%==============================================================================
%% slurm_v0039_get_node
%%==============================================================================

slurm_v0039_get_node(NodeName) ->
  slurmrestapi_api:slurm_v0039_get_node(NodeName).

slurm_v0039_get_node_args(_S) ->
  [binary()].

%%==============================================================================
%% slurm_v0039_get_nodes
%%==============================================================================

slurm_v0039_get_nodes() ->
  slurmrestapi_api:slurm_v0039_get_nodes().

slurm_v0039_get_nodes_args(_S) ->
  [].

%%==============================================================================
%% slurm_v0039_get_partition
%%==============================================================================

slurm_v0039_get_partition(PartitionName) ->
  slurmrestapi_api:slurm_v0039_get_partition(PartitionName).

slurm_v0039_get_partition_args(_S) ->
  [binary()].

%%==============================================================================
%% slurm_v0039_get_partitions
%%==============================================================================

slurm_v0039_get_partitions() ->
  slurmrestapi_api:slurm_v0039_get_partitions().

slurm_v0039_get_partitions_args(_S) ->
  [].

%%==============================================================================
%% slurm_v0039_get_reservation
%%==============================================================================

slurm_v0039_get_reservation(ReservationName) ->
  slurmrestapi_api:slurm_v0039_get_reservation(ReservationName).

slurm_v0039_get_reservation_args(_S) ->
  [binary()].

%%==============================================================================
%% slurm_v0039_get_reservations
%%==============================================================================

slurm_v0039_get_reservations() ->
  slurmrestapi_api:slurm_v0039_get_reservations().

slurm_v0039_get_reservations_args(_S) ->
  [].

%%==============================================================================
%% slurm_v0039_ping
%%==============================================================================

slurm_v0039_ping() ->
  slurmrestapi_api:slurm_v0039_ping().

slurm_v0039_ping_args(_S) ->
  [].

%%==============================================================================
%% slurm_v0039_slurmctld_get_licenses
%%==============================================================================

slurm_v0039_slurmctld_get_licenses() ->
  slurmrestapi_api:slurm_v0039_slurmctld_get_licenses().

slurm_v0039_slurmctld_get_licenses_args(_S) ->
  [].

%%==============================================================================
%% slurm_v0039_submit_job
%%==============================================================================

slurm_v0039_submit_job(SlurmrestapiV0039JobSubmission) ->
  slurmrestapi_api:slurm_v0039_submit_job(SlurmrestapiV0039JobSubmission).

slurm_v0039_submit_job_args(_S) ->
  [slurmrestapi_v0_0_39_job_submission:slurmrestapi_v0_0_39_job_submission()].

%%==============================================================================
%% slurm_v0039_update_job
%%==============================================================================

slurm_v0039_update_job(JobId, SlurmrestapiV0039JobDescMsg) ->
  slurmrestapi_api:slurm_v0039_update_job(JobId, SlurmrestapiV0039JobDescMsg).

slurm_v0039_update_job_args(_S) ->
  [binary(), slurmrestapi_v0_0_39_job_desc_msg:slurmrestapi_v0_0_39_job_desc_msg()].

%%==============================================================================
%% slurm_v0039_update_node
%%==============================================================================

slurm_v0039_update_node(NodeName, SlurmrestapiV0039UpdateNodeMsg) ->
  slurmrestapi_api:slurm_v0039_update_node(NodeName, SlurmrestapiV0039UpdateNodeMsg).

slurm_v0039_update_node_args(_S) ->
  [binary(), slurmrestapi_v0_0_39_update_node_msg:slurmrestapi_v0_0_39_update_node_msg()].

%%==============================================================================
%% slurmdb_v0039_add_clusters
%%==============================================================================

slurmdb_v0039_add_clusters(SlurmrestapiDbv0039ClustersInfo) ->
  slurmrestapi_api:slurmdb_v0039_add_clusters(SlurmrestapiDbv0039ClustersInfo).

slurmdb_v0039_add_clusters_args(_S) ->
  [slurmrestapi_dbv0_0_39_clusters_info:slurmrestapi_dbv0_0_39_clusters_info()].

%%==============================================================================
%% slurmdb_v0039_add_wckeys
%%==============================================================================

slurmdb_v0039_add_wckeys() ->
  slurmrestapi_api:slurmdb_v0039_add_wckeys().

slurmdb_v0039_add_wckeys_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0039_delete_account
%%==============================================================================

slurmdb_v0039_delete_account(AccountName) ->
  slurmrestapi_api:slurmdb_v0039_delete_account(AccountName).

slurmdb_v0039_delete_account_args(_S) ->
  [binary()].

%%==============================================================================
%% slurmdb_v0039_delete_association
%%==============================================================================

slurmdb_v0039_delete_association() ->
  slurmrestapi_api:slurmdb_v0039_delete_association().

slurmdb_v0039_delete_association_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0039_delete_associations
%%==============================================================================

slurmdb_v0039_delete_associations() ->
  slurmrestapi_api:slurmdb_v0039_delete_associations().

slurmdb_v0039_delete_associations_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0039_delete_cluster
%%==============================================================================

slurmdb_v0039_delete_cluster(ClusterName) ->
  slurmrestapi_api:slurmdb_v0039_delete_cluster(ClusterName).

slurmdb_v0039_delete_cluster_args(_S) ->
  [binary()].

%%==============================================================================
%% slurmdb_v0039_delete_qos
%%==============================================================================

slurmdb_v0039_delete_qos(QosName) ->
  slurmrestapi_api:slurmdb_v0039_delete_qos(QosName).

slurmdb_v0039_delete_qos_args(_S) ->
  [binary()].

%%==============================================================================
%% slurmdb_v0039_delete_user
%%==============================================================================

slurmdb_v0039_delete_user(UserName) ->
  slurmrestapi_api:slurmdb_v0039_delete_user(UserName).

slurmdb_v0039_delete_user_args(_S) ->
  [binary()].

%%==============================================================================
%% slurmdb_v0039_delete_wckey
%%==============================================================================

slurmdb_v0039_delete_wckey(Wckey) ->
  slurmrestapi_api:slurmdb_v0039_delete_wckey(Wckey).

slurmdb_v0039_delete_wckey_args(_S) ->
  [binary()].

%%==============================================================================
%% slurmdb_v0039_diag
%%==============================================================================

slurmdb_v0039_diag() ->
  slurmrestapi_api:slurmdb_v0039_diag().

slurmdb_v0039_diag_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0039_get_account
%%==============================================================================

slurmdb_v0039_get_account(AccountName) ->
  slurmrestapi_api:slurmdb_v0039_get_account(AccountName).

slurmdb_v0039_get_account_args(_S) ->
  [binary()].

%%==============================================================================
%% slurmdb_v0039_get_accounts
%%==============================================================================

slurmdb_v0039_get_accounts() ->
  slurmrestapi_api:slurmdb_v0039_get_accounts().

slurmdb_v0039_get_accounts_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0039_get_association
%%==============================================================================

slurmdb_v0039_get_association() ->
  slurmrestapi_api:slurmdb_v0039_get_association().

slurmdb_v0039_get_association_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0039_get_associations
%%==============================================================================

slurmdb_v0039_get_associations() ->
  slurmrestapi_api:slurmdb_v0039_get_associations().

slurmdb_v0039_get_associations_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0039_get_cluster
%%==============================================================================

slurmdb_v0039_get_cluster(ClusterName) ->
  slurmrestapi_api:slurmdb_v0039_get_cluster(ClusterName).

slurmdb_v0039_get_cluster_args(_S) ->
  [binary()].

%%==============================================================================
%% slurmdb_v0039_get_clusters
%%==============================================================================

slurmdb_v0039_get_clusters() ->
  slurmrestapi_api:slurmdb_v0039_get_clusters().

slurmdb_v0039_get_clusters_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0039_get_config
%%==============================================================================

slurmdb_v0039_get_config() ->
  slurmrestapi_api:slurmdb_v0039_get_config().

slurmdb_v0039_get_config_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0039_get_job
%%==============================================================================

slurmdb_v0039_get_job(JobId) ->
  slurmrestapi_api:slurmdb_v0039_get_job(JobId).

slurmdb_v0039_get_job_args(_S) ->
  [binary()].

%%==============================================================================
%% slurmdb_v0039_get_jobs
%%==============================================================================

slurmdb_v0039_get_jobs() ->
  slurmrestapi_api:slurmdb_v0039_get_jobs().

slurmdb_v0039_get_jobs_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0039_get_qos
%%==============================================================================

slurmdb_v0039_get_qos() ->
  slurmrestapi_api:slurmdb_v0039_get_qos().

slurmdb_v0039_get_qos_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0039_get_single_qos
%%==============================================================================

slurmdb_v0039_get_single_qos(QosName) ->
  slurmrestapi_api:slurmdb_v0039_get_single_qos(QosName).

slurmdb_v0039_get_single_qos_args(_S) ->
  [binary()].

%%==============================================================================
%% slurmdb_v0039_get_tres
%%==============================================================================

slurmdb_v0039_get_tres() ->
  slurmrestapi_api:slurmdb_v0039_get_tres().

slurmdb_v0039_get_tres_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0039_get_user
%%==============================================================================

slurmdb_v0039_get_user(UserName) ->
  slurmrestapi_api:slurmdb_v0039_get_user(UserName).

slurmdb_v0039_get_user_args(_S) ->
  [binary()].

%%==============================================================================
%% slurmdb_v0039_get_users
%%==============================================================================

slurmdb_v0039_get_users() ->
  slurmrestapi_api:slurmdb_v0039_get_users().

slurmdb_v0039_get_users_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0039_get_wckey
%%==============================================================================

slurmdb_v0039_get_wckey(Wckey) ->
  slurmrestapi_api:slurmdb_v0039_get_wckey(Wckey).

slurmdb_v0039_get_wckey_args(_S) ->
  [binary()].

%%==============================================================================
%% slurmdb_v0039_get_wckeys
%%==============================================================================

slurmdb_v0039_get_wckeys() ->
  slurmrestapi_api:slurmdb_v0039_get_wckeys().

slurmdb_v0039_get_wckeys_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0039_set_config
%%==============================================================================

slurmdb_v0039_set_config() ->
  slurmrestapi_api:slurmdb_v0039_set_config().

slurmdb_v0039_set_config_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0039_update_accounts
%%==============================================================================

slurmdb_v0039_update_accounts(SlurmrestapiDbv0039AccountInfo) ->
  slurmrestapi_api:slurmdb_v0039_update_accounts(SlurmrestapiDbv0039AccountInfo).

slurmdb_v0039_update_accounts_args(_S) ->
  [slurmrestapi_dbv0_0_39_account_info:slurmrestapi_dbv0_0_39_account_info()].

%%==============================================================================
%% slurmdb_v0039_update_associations
%%==============================================================================

slurmdb_v0039_update_associations(SlurmrestapiDbv0039AssociationsInfo) ->
  slurmrestapi_api:slurmdb_v0039_update_associations(SlurmrestapiDbv0039AssociationsInfo).

slurmdb_v0039_update_associations_args(_S) ->
  [slurmrestapi_dbv0_0_39_associations_info:slurmrestapi_dbv0_0_39_associations_info()].

%%==============================================================================
%% slurmdb_v0039_update_qos
%%==============================================================================

slurmdb_v0039_update_qos(SlurmrestapiDbv0039UpdateQos) ->
  slurmrestapi_api:slurmdb_v0039_update_qos(SlurmrestapiDbv0039UpdateQos).

slurmdb_v0039_update_qos_args(_S) ->
  [slurmrestapi_dbv0_0_39_update_qos:slurmrestapi_dbv0_0_39_update_qos()].

%%==============================================================================
%% slurmdb_v0039_update_tres
%%==============================================================================

slurmdb_v0039_update_tres(SlurmrestapiDbv0039TresUpdate) ->
  slurmrestapi_api:slurmdb_v0039_update_tres(SlurmrestapiDbv0039TresUpdate).

slurmdb_v0039_update_tres_args(_S) ->
  [slurmrestapi_dbv0_0_39_tres_update:slurmrestapi_dbv0_0_39_tres_update()].

%%==============================================================================
%% slurmdb_v0039_update_users
%%==============================================================================

slurmdb_v0039_update_users(SlurmrestapiDbv0039UpdateUsers) ->
  slurmrestapi_api:slurmdb_v0039_update_users(SlurmrestapiDbv0039UpdateUsers).

slurmdb_v0039_update_users_args(_S) ->
  [slurmrestapi_dbv0_0_39_update_users:slurmrestapi_dbv0_0_39_update_users()].

