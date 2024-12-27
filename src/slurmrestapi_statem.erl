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
%% slurmdb_v0040_delete_account
%%==============================================================================

slurmdb_v0040_delete_account(AccountName) ->
  slurmrestapi_api:slurmdb_v0040_delete_account(AccountName).

slurmdb_v0040_delete_account_args(_S) ->
  [binary()].

%%==============================================================================
%% slurmdb_v0040_delete_association
%%==============================================================================

slurmdb_v0040_delete_association() ->
  slurmrestapi_api:slurmdb_v0040_delete_association().

slurmdb_v0040_delete_association_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0040_delete_associations
%%==============================================================================

slurmdb_v0040_delete_associations() ->
  slurmrestapi_api:slurmdb_v0040_delete_associations().

slurmdb_v0040_delete_associations_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0040_delete_cluster
%%==============================================================================

slurmdb_v0040_delete_cluster(ClusterName) ->
  slurmrestapi_api:slurmdb_v0040_delete_cluster(ClusterName).

slurmdb_v0040_delete_cluster_args(_S) ->
  [binary()].

%%==============================================================================
%% slurmdb_v0040_delete_single_qos
%%==============================================================================

slurmdb_v0040_delete_single_qos(Qos) ->
  slurmrestapi_api:slurmdb_v0040_delete_single_qos(Qos).

slurmdb_v0040_delete_single_qos_args(_S) ->
  [binary()].

%%==============================================================================
%% slurmdb_v0040_delete_user
%%==============================================================================

slurmdb_v0040_delete_user(Name) ->
  slurmrestapi_api:slurmdb_v0040_delete_user(Name).

slurmdb_v0040_delete_user_args(_S) ->
  [binary()].

%%==============================================================================
%% slurmdb_v0040_delete_wckey
%%==============================================================================

slurmdb_v0040_delete_wckey(Id) ->
  slurmrestapi_api:slurmdb_v0040_delete_wckey(Id).

slurmdb_v0040_delete_wckey_args(_S) ->
  [binary()].

%%==============================================================================
%% slurmdb_v0040_get_account
%%==============================================================================

slurmdb_v0040_get_account(AccountName) ->
  slurmrestapi_api:slurmdb_v0040_get_account(AccountName).

slurmdb_v0040_get_account_args(_S) ->
  [binary()].

%%==============================================================================
%% slurmdb_v0040_get_accounts
%%==============================================================================

slurmdb_v0040_get_accounts() ->
  slurmrestapi_api:slurmdb_v0040_get_accounts().

slurmdb_v0040_get_accounts_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0040_get_association
%%==============================================================================

slurmdb_v0040_get_association() ->
  slurmrestapi_api:slurmdb_v0040_get_association().

slurmdb_v0040_get_association_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0040_get_associations
%%==============================================================================

slurmdb_v0040_get_associations() ->
  slurmrestapi_api:slurmdb_v0040_get_associations().

slurmdb_v0040_get_associations_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0040_get_cluster
%%==============================================================================

slurmdb_v0040_get_cluster(ClusterName) ->
  slurmrestapi_api:slurmdb_v0040_get_cluster(ClusterName).

slurmdb_v0040_get_cluster_args(_S) ->
  [binary()].

%%==============================================================================
%% slurmdb_v0040_get_clusters
%%==============================================================================

slurmdb_v0040_get_clusters() ->
  slurmrestapi_api:slurmdb_v0040_get_clusters().

slurmdb_v0040_get_clusters_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0040_get_config
%%==============================================================================

slurmdb_v0040_get_config() ->
  slurmrestapi_api:slurmdb_v0040_get_config().

slurmdb_v0040_get_config_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0040_get_diag
%%==============================================================================

slurmdb_v0040_get_diag() ->
  slurmrestapi_api:slurmdb_v0040_get_diag().

slurmdb_v0040_get_diag_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0040_get_instance
%%==============================================================================

slurmdb_v0040_get_instance() ->
  slurmrestapi_api:slurmdb_v0040_get_instance().

slurmdb_v0040_get_instance_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0040_get_instances
%%==============================================================================

slurmdb_v0040_get_instances() ->
  slurmrestapi_api:slurmdb_v0040_get_instances().

slurmdb_v0040_get_instances_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0040_get_job
%%==============================================================================

slurmdb_v0040_get_job(JobId) ->
  slurmrestapi_api:slurmdb_v0040_get_job(JobId).

slurmdb_v0040_get_job_args(_S) ->
  [binary()].

%%==============================================================================
%% slurmdb_v0040_get_jobs
%%==============================================================================

slurmdb_v0040_get_jobs() ->
  slurmrestapi_api:slurmdb_v0040_get_jobs().

slurmdb_v0040_get_jobs_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0040_get_qos
%%==============================================================================

slurmdb_v0040_get_qos() ->
  slurmrestapi_api:slurmdb_v0040_get_qos().

slurmdb_v0040_get_qos_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0040_get_single_qos
%%==============================================================================

slurmdb_v0040_get_single_qos(Qos) ->
  slurmrestapi_api:slurmdb_v0040_get_single_qos(Qos).

slurmdb_v0040_get_single_qos_args(_S) ->
  [binary()].

%%==============================================================================
%% slurmdb_v0040_get_tres
%%==============================================================================

slurmdb_v0040_get_tres() ->
  slurmrestapi_api:slurmdb_v0040_get_tres().

slurmdb_v0040_get_tres_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0040_get_user
%%==============================================================================

slurmdb_v0040_get_user(Name) ->
  slurmrestapi_api:slurmdb_v0040_get_user(Name).

slurmdb_v0040_get_user_args(_S) ->
  [binary()].

%%==============================================================================
%% slurmdb_v0040_get_users
%%==============================================================================

slurmdb_v0040_get_users() ->
  slurmrestapi_api:slurmdb_v0040_get_users().

slurmdb_v0040_get_users_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0040_get_wckey
%%==============================================================================

slurmdb_v0040_get_wckey(Id) ->
  slurmrestapi_api:slurmdb_v0040_get_wckey(Id).

slurmdb_v0040_get_wckey_args(_S) ->
  [binary()].

%%==============================================================================
%% slurmdb_v0040_get_wckeys
%%==============================================================================

slurmdb_v0040_get_wckeys() ->
  slurmrestapi_api:slurmdb_v0040_get_wckeys().

slurmdb_v0040_get_wckeys_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0040_post_accounts
%%==============================================================================

slurmdb_v0040_post_accounts() ->
  slurmrestapi_api:slurmdb_v0040_post_accounts().

slurmdb_v0040_post_accounts_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0040_post_accounts_association
%%==============================================================================

slurmdb_v0040_post_accounts_association() ->
  slurmrestapi_api:slurmdb_v0040_post_accounts_association().

slurmdb_v0040_post_accounts_association_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0040_post_associations
%%==============================================================================

slurmdb_v0040_post_associations() ->
  slurmrestapi_api:slurmdb_v0040_post_associations().

slurmdb_v0040_post_associations_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0040_post_clusters
%%==============================================================================

slurmdb_v0040_post_clusters() ->
  slurmrestapi_api:slurmdb_v0040_post_clusters().

slurmdb_v0040_post_clusters_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0040_post_config
%%==============================================================================

slurmdb_v0040_post_config() ->
  slurmrestapi_api:slurmdb_v0040_post_config().

slurmdb_v0040_post_config_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0040_post_qos
%%==============================================================================

slurmdb_v0040_post_qos() ->
  slurmrestapi_api:slurmdb_v0040_post_qos().

slurmdb_v0040_post_qos_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0040_post_tres
%%==============================================================================

slurmdb_v0040_post_tres() ->
  slurmrestapi_api:slurmdb_v0040_post_tres().

slurmdb_v0040_post_tres_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0040_post_users
%%==============================================================================

slurmdb_v0040_post_users() ->
  slurmrestapi_api:slurmdb_v0040_post_users().

slurmdb_v0040_post_users_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0040_post_users_association
%%==============================================================================

slurmdb_v0040_post_users_association() ->
  slurmrestapi_api:slurmdb_v0040_post_users_association().

slurmdb_v0040_post_users_association_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0040_post_wckeys
%%==============================================================================

slurmdb_v0040_post_wckeys() ->
  slurmrestapi_api:slurmdb_v0040_post_wckeys().

slurmdb_v0040_post_wckeys_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0041_delete_account
%%==============================================================================

slurmdb_v0041_delete_account(AccountName) ->
  slurmrestapi_api:slurmdb_v0041_delete_account(AccountName).

slurmdb_v0041_delete_account_args(_S) ->
  [binary()].

%%==============================================================================
%% slurmdb_v0041_delete_association
%%==============================================================================

slurmdb_v0041_delete_association() ->
  slurmrestapi_api:slurmdb_v0041_delete_association().

slurmdb_v0041_delete_association_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0041_delete_associations
%%==============================================================================

slurmdb_v0041_delete_associations() ->
  slurmrestapi_api:slurmdb_v0041_delete_associations().

slurmdb_v0041_delete_associations_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0041_delete_cluster
%%==============================================================================

slurmdb_v0041_delete_cluster(ClusterName) ->
  slurmrestapi_api:slurmdb_v0041_delete_cluster(ClusterName).

slurmdb_v0041_delete_cluster_args(_S) ->
  [binary()].

%%==============================================================================
%% slurmdb_v0041_delete_single_qos
%%==============================================================================

slurmdb_v0041_delete_single_qos(Qos) ->
  slurmrestapi_api:slurmdb_v0041_delete_single_qos(Qos).

slurmdb_v0041_delete_single_qos_args(_S) ->
  [binary()].

%%==============================================================================
%% slurmdb_v0041_delete_user
%%==============================================================================

slurmdb_v0041_delete_user(Name) ->
  slurmrestapi_api:slurmdb_v0041_delete_user(Name).

slurmdb_v0041_delete_user_args(_S) ->
  [binary()].

%%==============================================================================
%% slurmdb_v0041_delete_wckey
%%==============================================================================

slurmdb_v0041_delete_wckey(Id) ->
  slurmrestapi_api:slurmdb_v0041_delete_wckey(Id).

slurmdb_v0041_delete_wckey_args(_S) ->
  [binary()].

%%==============================================================================
%% slurmdb_v0041_get_account
%%==============================================================================

slurmdb_v0041_get_account(AccountName) ->
  slurmrestapi_api:slurmdb_v0041_get_account(AccountName).

slurmdb_v0041_get_account_args(_S) ->
  [binary()].

%%==============================================================================
%% slurmdb_v0041_get_accounts
%%==============================================================================

slurmdb_v0041_get_accounts() ->
  slurmrestapi_api:slurmdb_v0041_get_accounts().

slurmdb_v0041_get_accounts_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0041_get_association
%%==============================================================================

slurmdb_v0041_get_association() ->
  slurmrestapi_api:slurmdb_v0041_get_association().

slurmdb_v0041_get_association_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0041_get_associations
%%==============================================================================

slurmdb_v0041_get_associations() ->
  slurmrestapi_api:slurmdb_v0041_get_associations().

slurmdb_v0041_get_associations_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0041_get_cluster
%%==============================================================================

slurmdb_v0041_get_cluster(ClusterName) ->
  slurmrestapi_api:slurmdb_v0041_get_cluster(ClusterName).

slurmdb_v0041_get_cluster_args(_S) ->
  [binary()].

%%==============================================================================
%% slurmdb_v0041_get_clusters
%%==============================================================================

slurmdb_v0041_get_clusters() ->
  slurmrestapi_api:slurmdb_v0041_get_clusters().

slurmdb_v0041_get_clusters_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0041_get_config
%%==============================================================================

slurmdb_v0041_get_config() ->
  slurmrestapi_api:slurmdb_v0041_get_config().

slurmdb_v0041_get_config_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0041_get_diag
%%==============================================================================

slurmdb_v0041_get_diag() ->
  slurmrestapi_api:slurmdb_v0041_get_diag().

slurmdb_v0041_get_diag_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0041_get_instance
%%==============================================================================

slurmdb_v0041_get_instance() ->
  slurmrestapi_api:slurmdb_v0041_get_instance().

slurmdb_v0041_get_instance_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0041_get_instances
%%==============================================================================

slurmdb_v0041_get_instances() ->
  slurmrestapi_api:slurmdb_v0041_get_instances().

slurmdb_v0041_get_instances_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0041_get_job
%%==============================================================================

slurmdb_v0041_get_job(JobId) ->
  slurmrestapi_api:slurmdb_v0041_get_job(JobId).

slurmdb_v0041_get_job_args(_S) ->
  [binary()].

%%==============================================================================
%% slurmdb_v0041_get_jobs
%%==============================================================================

slurmdb_v0041_get_jobs() ->
  slurmrestapi_api:slurmdb_v0041_get_jobs().

slurmdb_v0041_get_jobs_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0041_get_qos
%%==============================================================================

slurmdb_v0041_get_qos() ->
  slurmrestapi_api:slurmdb_v0041_get_qos().

slurmdb_v0041_get_qos_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0041_get_single_qos
%%==============================================================================

slurmdb_v0041_get_single_qos(Qos) ->
  slurmrestapi_api:slurmdb_v0041_get_single_qos(Qos).

slurmdb_v0041_get_single_qos_args(_S) ->
  [binary()].

%%==============================================================================
%% slurmdb_v0041_get_tres
%%==============================================================================

slurmdb_v0041_get_tres() ->
  slurmrestapi_api:slurmdb_v0041_get_tres().

slurmdb_v0041_get_tres_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0041_get_user
%%==============================================================================

slurmdb_v0041_get_user(Name) ->
  slurmrestapi_api:slurmdb_v0041_get_user(Name).

slurmdb_v0041_get_user_args(_S) ->
  [binary()].

%%==============================================================================
%% slurmdb_v0041_get_users
%%==============================================================================

slurmdb_v0041_get_users() ->
  slurmrestapi_api:slurmdb_v0041_get_users().

slurmdb_v0041_get_users_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0041_get_wckey
%%==============================================================================

slurmdb_v0041_get_wckey(Id) ->
  slurmrestapi_api:slurmdb_v0041_get_wckey(Id).

slurmdb_v0041_get_wckey_args(_S) ->
  [binary()].

%%==============================================================================
%% slurmdb_v0041_get_wckeys
%%==============================================================================

slurmdb_v0041_get_wckeys() ->
  slurmrestapi_api:slurmdb_v0041_get_wckeys().

slurmdb_v0041_get_wckeys_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0041_post_accounts
%%==============================================================================

slurmdb_v0041_post_accounts() ->
  slurmrestapi_api:slurmdb_v0041_post_accounts().

slurmdb_v0041_post_accounts_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0041_post_accounts_association
%%==============================================================================

slurmdb_v0041_post_accounts_association() ->
  slurmrestapi_api:slurmdb_v0041_post_accounts_association().

slurmdb_v0041_post_accounts_association_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0041_post_associations
%%==============================================================================

slurmdb_v0041_post_associations() ->
  slurmrestapi_api:slurmdb_v0041_post_associations().

slurmdb_v0041_post_associations_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0041_post_clusters
%%==============================================================================

slurmdb_v0041_post_clusters() ->
  slurmrestapi_api:slurmdb_v0041_post_clusters().

slurmdb_v0041_post_clusters_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0041_post_config
%%==============================================================================

slurmdb_v0041_post_config() ->
  slurmrestapi_api:slurmdb_v0041_post_config().

slurmdb_v0041_post_config_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0041_post_qos
%%==============================================================================

slurmdb_v0041_post_qos() ->
  slurmrestapi_api:slurmdb_v0041_post_qos().

slurmdb_v0041_post_qos_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0041_post_tres
%%==============================================================================

slurmdb_v0041_post_tres() ->
  slurmrestapi_api:slurmdb_v0041_post_tres().

slurmdb_v0041_post_tres_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0041_post_users
%%==============================================================================

slurmdb_v0041_post_users() ->
  slurmrestapi_api:slurmdb_v0041_post_users().

slurmdb_v0041_post_users_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0041_post_users_association
%%==============================================================================

slurmdb_v0041_post_users_association() ->
  slurmrestapi_api:slurmdb_v0041_post_users_association().

slurmdb_v0041_post_users_association_args(_S) ->
  [].

%%==============================================================================
%% slurmdb_v0041_post_wckeys
%%==============================================================================

slurmdb_v0041_post_wckeys() ->
  slurmrestapi_api:slurmdb_v0041_post_wckeys().

slurmdb_v0041_post_wckeys_args(_S) ->
  [].

