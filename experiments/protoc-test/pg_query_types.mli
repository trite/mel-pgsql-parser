(** pg_query.proto Types *)



(** {2 Types} *)

type param_kind =
  | Param_kind_undefined 
  | Param_extern 
  | Param_exec 
  | Param_sublink 
  | Param_multiexpr 

type agg_split =
  | Agg_split_undefined 
  | Aggsplit_simple 
  | Aggsplit_initial_serial 
  | Aggsplit_final_deserial 

type coercion_form =
  | Coercion_form_undefined 
  | Coerce_explicit_call 
  | Coerce_explicit_cast 
  | Coerce_implicit_cast 
  | Coerce_sql_syntax 

type bool_expr_type =
  | Bool_expr_type_undefined 
  | And_expr 
  | Or_expr 
  | Not_expr 

type sub_link_type =
  | Sub_link_type_undefined 
  | Exists_sublink 
  | All_sublink 
  | Any_sublink 
  | Rowcompare_sublink 
  | Expr_sublink 
  | Multiexpr_sublink 
  | Array_sublink 
  | Cte_sublink 

type row_compare_type =
  | Row_compare_type_undefined 
  | Rowcompare_lt 
  | Rowcompare_le 
  | Rowcompare_eq 
  | Rowcompare_ge 
  | Rowcompare_gt 
  | Rowcompare_ne 

type min_max_op =
  | Min_max_op_undefined 
  | Is_greatest 
  | Is_least 

type sqlvalue_function_op =
  | Sqlvalue_function_op_undefined 
  | Svfop_current_date 
  | Svfop_current_time 
  | Svfop_current_time_n 
  | Svfop_current_timestamp 
  | Svfop_current_timestamp_n 
  | Svfop_localtime 
  | Svfop_localtime_n 
  | Svfop_localtimestamp 
  | Svfop_localtimestamp_n 
  | Svfop_current_role 
  | Svfop_current_user 
  | Svfop_user 
  | Svfop_session_user 
  | Svfop_current_catalog 
  | Svfop_current_schema 

type xml_expr_op =
  | Xml_expr_op_undefined 
  | Is_xmlconcat 
  | Is_xmlelement 
  | Is_xmlforest 
  | Is_xmlparse 
  | Is_xmlpi 
  | Is_xmlroot 
  | Is_xmlserialize 
  | Is_document 

type xml_option_type =
  | Xml_option_type_undefined 
  | Xmloption_document 
  | Xmloption_content 

type null_test_type =
  | Null_test_type_undefined 
  | Is_null 
  | Is_not_null 

type bool_test_type =
  | Bool_test_type_undefined 
  | Is_true 
  | Is_not_true 
  | Is_false 
  | Is_not_false 
  | Is_unknown 
  | Is_not_unknown 

type range_tbl_ref = {
  rtindex : int32;
}

type join_type =
  | Join_type_undefined 
  | Join_inner 
  | Join_left 
  | Join_full 
  | Join_right 
  | Join_semi 
  | Join_anti 
  | Join_unique_outer 
  | Join_unique_inner 

type on_conflict_action =
  | On_conflict_action_undefined 
  | Onconflict_none 
  | Onconflict_nothing 
  | Onconflict_update 

type on_commit_action =
  | On_commit_action_undefined 
  | Oncommit_noop 
  | Oncommit_preserve_rows 
  | Oncommit_delete_rows 
  | Oncommit_drop 

type cmd_type =
  | Cmd_type_undefined 
  | Cmd_unknown 
  | Cmd_select 
  | Cmd_update 
  | Cmd_insert 
  | Cmd_delete 
  | Cmd_merge 
  | Cmd_utility 
  | Cmd_nothing 

type overriding_kind =
  | Overriding_kind_undefined 
  | Overriding_not_set 
  | Overriding_user_value 
  | Overriding_system_value 

type query_source =
  | Query_source_undefined 
  | Qsrc_original 
  | Qsrc_parser 
  | Qsrc_instead_rule 
  | Qsrc_qual_instead_rule 
  | Qsrc_non_instead_rule 

type limit_option =
  | Limit_option_undefined 
  | Limit_option_default 
  | Limit_option_count 
  | Limit_option_with_ties 

type set_operation =
  | Set_operation_undefined 
  | Setop_none 
  | Setop_union 
  | Setop_intersect 
  | Setop_except 

type object_type =
  | Object_type_undefined 
  | Object_access_method 
  | Object_aggregate 
  | Object_amop 
  | Object_amproc 
  | Object_attribute 
  | Object_cast 
  | Object_column 
  | Object_collation 
  | Object_conversion 
  | Object_database 
  | Object_default 
  | Object_defacl 
  | Object_domain 
  | Object_domconstraint 
  | Object_event_trigger 
  | Object_extension 
  | Object_fdw 
  | Object_foreign_server 
  | Object_foreign_table 
  | Object_function 
  | Object_index 
  | Object_language 
  | Object_largeobject 
  | Object_matview 
  | Object_opclass 
  | Object_operator 
  | Object_opfamily 
  | Object_parameter_acl 
  | Object_policy 
  | Object_procedure 
  | Object_publication 
  | Object_publication_namespace 
  | Object_publication_rel 
  | Object_role 
  | Object_routine 
  | Object_rule 
  | Object_schema 
  | Object_sequence 
  | Object_subscription 
  | Object_statistic_ext 
  | Object_tabconstraint 
  | Object_table 
  | Object_tablespace 
  | Object_transform 
  | Object_trigger 
  | Object_tsconfiguration 
  | Object_tsdictionary 
  | Object_tsparser 
  | Object_tstemplate 
  | Object_type 
  | Object_user_mapping 
  | Object_view 

type alter_table_type =
  | Alter_table_type_undefined 
  | At_add_column 
  | At_add_column_recurse 
  | At_add_column_to_view 
  | At_column_default 
  | At_cooked_column_default 
  | At_drop_not_null 
  | At_set_not_null 
  | At_drop_expression 
  | At_check_not_null 
  | At_set_statistics 
  | At_set_options 
  | At_reset_options 
  | At_set_storage 
  | At_set_compression 
  | At_drop_column 
  | At_drop_column_recurse 
  | At_add_index 
  | At_re_add_index 
  | At_add_constraint 
  | At_add_constraint_recurse 
  | At_re_add_constraint 
  | At_re_add_domain_constraint 
  | At_alter_constraint 
  | At_validate_constraint 
  | At_validate_constraint_recurse 
  | At_add_index_constraint 
  | At_drop_constraint 
  | At_drop_constraint_recurse 
  | At_re_add_comment 
  | At_alter_column_type 
  | At_alter_column_generic_options 
  | At_change_owner 
  | At_cluster_on 
  | At_drop_cluster 
  | At_set_logged 
  | At_set_un_logged 
  | At_drop_oids 
  | At_set_access_method 
  | At_set_table_space 
  | At_set_rel_options 
  | At_reset_rel_options 
  | At_replace_rel_options 
  | At_enable_trig 
  | At_enable_always_trig 
  | At_enable_replica_trig 
  | At_disable_trig 
  | At_enable_trig_all 
  | At_disable_trig_all 
  | At_enable_trig_user 
  | At_disable_trig_user 
  | At_enable_rule 
  | At_enable_always_rule 
  | At_enable_replica_rule 
  | At_disable_rule 
  | At_add_inherit 
  | At_drop_inherit 
  | At_add_of 
  | At_drop_of 
  | At_replica_identity 
  | At_enable_row_security 
  | At_disable_row_security 
  | At_force_row_security 
  | At_no_force_row_security 
  | At_generic_options 
  | At_attach_partition 
  | At_detach_partition 
  | At_detach_partition_finalize 
  | At_add_identity 
  | At_set_identity 
  | At_drop_identity 
  | At_re_add_statistics 

type role_spec_type =
  | Role_spec_type_undefined 
  | Rolespec_cstring 
  | Rolespec_current_role 
  | Rolespec_current_user 
  | Rolespec_session_user 
  | Rolespec_public 

type role_spec = {
  roletype : role_spec_type;
  rolename : string;
  location : int32;
}

type drop_behavior =
  | Drop_behavior_undefined 
  | Drop_restrict 
  | Drop_cascade 

type grant_target_type =
  | Grant_target_type_undefined 
  | Acl_target_object 
  | Acl_target_all_in_schema 
  | Acl_target_defaults 

type close_portal_stmt = {
  portalname : string;
}

type fetch_direction =
  | Fetch_direction_undefined 
  | Fetch_forward 
  | Fetch_backward 
  | Fetch_absolute 
  | Fetch_relative 

type fetch_stmt = {
  direction : fetch_direction;
  how_many : int64;
  portalname : string;
  ismove : bool;
}

type notify_stmt = {
  conditionname : string;
  payload : string;
}

type listen_stmt = {
  conditionname : string;
}

type unlisten_stmt = {
  conditionname : string;
}

type transaction_stmt_kind =
  | Transaction_stmt_kind_undefined 
  | Trans_stmt_begin 
  | Trans_stmt_start 
  | Trans_stmt_commit 
  | Trans_stmt_rollback 
  | Trans_stmt_savepoint 
  | Trans_stmt_release 
  | Trans_stmt_rollback_to 
  | Trans_stmt_prepare 
  | Trans_stmt_commit_prepared 
  | Trans_stmt_rollback_prepared 

type view_check_option =
  | View_check_option_undefined 
  | No_check_option 
  | Local_check_option 
  | Cascaded_check_option 

type load_stmt = {
  filename : string;
}

type variable_set_kind =
  | Variable_set_kind_undefined 
  | Var_set_value 
  | Var_set_default 
  | Var_set_current 
  | Var_set_multi 
  | Var_reset 
  | Var_reset_all 

type variable_show_stmt = {
  name : string;
}

type discard_mode =
  | Discard_mode_undefined 
  | Discard_all 
  | Discard_plans 
  | Discard_sequences 
  | Discard_temp 

type discard_stmt = {
  target : discard_mode;
}

type role_stmt_type =
  | Role_stmt_type_undefined 
  | Rolestmt_role 
  | Rolestmt_user 
  | Rolestmt_group 

type reindex_object_type =
  | Reindex_object_type_undefined 
  | Reindex_object_index 
  | Reindex_object_table 
  | Reindex_object_schema 
  | Reindex_object_system 
  | Reindex_object_database 

type alter_database_refresh_coll_stmt = {
  dbname : string;
}

type coercion_context =
  | Coercion_context_undefined 
  | Coercion_implicit 
  | Coercion_assignment 
  | Coercion_plpgsql 
  | Coercion_explicit 

type deallocate_stmt = {
  name : string;
}

type drop_table_space_stmt = {
  tablespacename : string;
  missing_ok : bool;
}

type string = {
  sval : string;
}

type alter_tsconfig_type =
  | Alter_tsconfig_type_undefined 
  | Alter_tsconfig_add_mapping 
  | Alter_tsconfig_alter_mapping_for_token 
  | Alter_tsconfig_replace_dict 
  | Alter_tsconfig_replace_dict_for_token 
  | Alter_tsconfig_drop_mapping 

type drop_user_mapping_stmt = {
  user : role_spec option;
  servername : string;
  missing_ok : bool;
}

type import_foreign_schema_type =
  | Import_foreign_schema_type_undefined 
  | Fdw_import_schema_all 
  | Fdw_import_schema_limit_to 
  | Fdw_import_schema_except 

type alter_event_trig_stmt = {
  trigname : string;
  tgenabled : string;
}

type replica_identity_stmt = {
  identity_type : string;
  name : string;
}

type alter_publication_action =
  | Alter_publication_action_undefined 
  | Ap_add_objects 
  | Ap_drop_objects 
  | Ap_set_objects 

type alter_subscription_type =
  | Alter_subscription_type_undefined 
  | Alter_subscription_options 
  | Alter_subscription_connection 
  | Alter_subscription_set_publication 
  | Alter_subscription_add_publication 
  | Alter_subscription_drop_publication 
  | Alter_subscription_refresh 
  | Alter_subscription_enabled 
  | Alter_subscription_skip 

type drop_subscription_stmt = {
  subname : string;
  missing_ok : bool;
  behavior : drop_behavior;
}

type a_expr_kind =
  | A_expr_kind_undefined 
  | Aexpr_op 
  | Aexpr_op_any 
  | Aexpr_op_all 
  | Aexpr_distinct 
  | Aexpr_not_distinct 
  | Aexpr_nullif 
  | Aexpr_in 
  | Aexpr_like 
  | Aexpr_ilike 
  | Aexpr_similar 
  | Aexpr_between 
  | Aexpr_not_between 
  | Aexpr_between_sym 
  | Aexpr_not_between_sym 

type param_ref = {
  number : int32;
  location : int32;
}

type sort_by_dir =
  | Sort_by_dir_undefined 
  | Sortby_default 
  | Sortby_asc 
  | Sortby_desc 
  | Sortby_using 

type sort_by_nulls =
  | Sort_by_nulls_undefined 
  | Sortby_nulls_default 
  | Sortby_nulls_first 
  | Sortby_nulls_last 

type constr_type =
  | Constr_type_undefined 
  | Constr_null 
  | Constr_notnull 
  | Constr_default 
  | Constr_identity 
  | Constr_generated 
  | Constr_check 
  | Constr_primary 
  | Constr_unique 
  | Constr_exclusion 
  | Constr_foreign 
  | Constr_attr_deferrable 
  | Constr_attr_not_deferrable 
  | Constr_attr_deferred 
  | Constr_attr_immediate 

type def_elem_action =
  | Def_elem_action_undefined 
  | Defelem_unspec 
  | Defelem_set 
  | Defelem_add 
  | Defelem_drop 

type rtekind =
  | Rtekind_undefined 
  | Rte_relation 
  | Rte_subquery 
  | Rte_join 
  | Rte_function 
  | Rte_tablefunc 
  | Rte_values 
  | Rte_cte 
  | Rte_namedtuplestore 
  | Rte_result 

type wcokind =
  | Wcokind_undefined 
  | Wco_view_check 
  | Wco_rls_insert_check 
  | Wco_rls_update_check 
  | Wco_rls_conflict_check 
  | Wco_rls_merge_update_check 
  | Wco_rls_merge_delete_check 

type sort_group_clause = {
  tle_sort_group_ref : int32;
  eqop : int32;
  sortop : int32;
  nulls_first : bool;
  hashable : bool;
}

type grouping_set_kind =
  | Grouping_set_kind_undefined 
  | Grouping_set_empty 
  | Grouping_set_simple 
  | Grouping_set_rollup 
  | Grouping_set_cube 
  | Grouping_set_sets 

type function_parameter_mode =
  | Function_parameter_mode_undefined 
  | Func_param_in 
  | Func_param_out 
  | Func_param_inout 
  | Func_param_variadic 
  | Func_param_table 
  | Func_param_default 

type lock_clause_strength =
  | Lock_clause_strength_undefined 
  | Lcs_none 
  | Lcs_forkeyshare 
  | Lcs_forshare 
  | Lcs_fornokeyupdate 
  | Lcs_forupdate 

type lock_wait_policy =
  | Lock_wait_policy_undefined 
  | Lock_wait_block 
  | Lock_wait_skip 
  | Lock_wait_error 

type row_mark_clause = {
  rti : int32;
  strength : lock_clause_strength;
  wait_policy : lock_wait_policy;
  pushed_down : bool;
}

type ctematerialize =
  | Ctematerialize_undefined 
  | Ctematerialize_default 
  | Ctematerialize_always 
  | Ctematerialize_never 

type trigger_transition = {
  name : string;
  is_new : bool;
  is_table : bool;
}

type partition_range_datum_kind =
  | Partition_range_datum_kind_undefined 
  | Partition_range_datum_minvalue 
  | Partition_range_datum_value 
  | Partition_range_datum_maxvalue 

type publication_obj_spec_type =
  | Publication_obj_spec_type_undefined 
  | Publicationobj_table 
  | Publicationobj_tables_in_schema 
  | Publicationobj_tables_in_cur_schema 
  | Publicationobj_continuation 

type inline_code_block = {
  source_text : string;
  lang_oid : int32;
  lang_is_trusted : bool;
  atomic : bool;
}

type call_context = {
  atomic : bool;
}

type integer = {
  ival : int32;
}

type float = {
  fval : string;
}

type boolean = {
  boolval : bool;
}

type bit_string = {
  bsval : string;
}

type a_const_val =
  | Ival of integer
  | Fval of float
  | Boolval of boolean
  | Sval of string
  | Bsval of bit_string

and a_const = {
  val_ : a_const_val;
  isnull : bool;
  location : int32;
}

type raw_stmt = {
  stmt : node option;
  stmt_location : int32;
  stmt_len : int32;
}

and node =
  | Alias of alias
  | Range_var of range_var
  | Table_func of table_func
  | Var of var
  | Param of param
  | Aggref of aggref
  | Grouping_func of grouping_func
  | Window_func of window_func
  | Subscripting_ref of subscripting_ref
  | Func_expr of func_expr
  | Named_arg_expr of named_arg_expr
  | Op_expr of op_expr
  | Distinct_expr of distinct_expr
  | Null_if_expr of null_if_expr
  | Scalar_array_op_expr of scalar_array_op_expr
  | Bool_expr of bool_expr
  | Sub_link of sub_link
  | Sub_plan of sub_plan
  | Alternative_sub_plan of alternative_sub_plan
  | Field_select of field_select
  | Field_store of field_store
  | Relabel_type of relabel_type
  | Coerce_via_io of coerce_via_io
  | Array_coerce_expr of array_coerce_expr
  | Convert_rowtype_expr of convert_rowtype_expr
  | Collate_expr of collate_expr
  | Case_expr of case_expr
  | Case_when of case_when
  | Case_test_expr of case_test_expr
  | Array_expr of array_expr
  | Row_expr of row_expr
  | Row_compare_expr of row_compare_expr
  | Coalesce_expr of coalesce_expr
  | Min_max_expr of min_max_expr
  | Sqlvalue_function of sqlvalue_function
  | Xml_expr of xml_expr
  | Null_test of null_test
  | Boolean_test of boolean_test
  | Coerce_to_domain of coerce_to_domain
  | Coerce_to_domain_value of coerce_to_domain_value
  | Set_to_default of set_to_default
  | Current_of_expr of current_of_expr
  | Next_value_expr of next_value_expr
  | Inference_elem of inference_elem
  | Target_entry of target_entry
  | Range_tbl_ref of range_tbl_ref
  | Join_expr of join_expr
  | From_expr of from_expr
  | On_conflict_expr of on_conflict_expr
  | Into_clause of into_clause
  | Merge_action of merge_action
  | Raw_stmt of raw_stmt
  | Query of query
  | Insert_stmt of insert_stmt
  | Delete_stmt of delete_stmt
  | Update_stmt of update_stmt
  | Merge_stmt of merge_stmt
  | Select_stmt of select_stmt
  | Return_stmt of return_stmt
  | Plassign_stmt of plassign_stmt
  | Alter_table_stmt of alter_table_stmt
  | Alter_table_cmd of alter_table_cmd
  | Alter_domain_stmt of alter_domain_stmt
  | Set_operation_stmt of set_operation_stmt
  | Grant_stmt of grant_stmt
  | Grant_role_stmt of grant_role_stmt
  | Alter_default_privileges_stmt of alter_default_privileges_stmt
  | Close_portal_stmt of close_portal_stmt
  | Cluster_stmt of cluster_stmt
  | Copy_stmt of copy_stmt
  | Create_stmt of create_stmt
  | Define_stmt of define_stmt
  | Drop_stmt of drop_stmt
  | Truncate_stmt of truncate_stmt
  | Comment_stmt of comment_stmt
  | Fetch_stmt of fetch_stmt
  | Index_stmt of index_stmt
  | Create_function_stmt of create_function_stmt
  | Alter_function_stmt of alter_function_stmt
  | Do_stmt of do_stmt
  | Rename_stmt of rename_stmt
  | Rule_stmt of rule_stmt
  | Notify_stmt of notify_stmt
  | Listen_stmt of listen_stmt
  | Unlisten_stmt of unlisten_stmt
  | Transaction_stmt of transaction_stmt
  | View_stmt of view_stmt
  | Load_stmt of load_stmt
  | Create_domain_stmt of create_domain_stmt
  | Createdb_stmt of createdb_stmt
  | Dropdb_stmt of dropdb_stmt
  | Vacuum_stmt of vacuum_stmt
  | Explain_stmt of explain_stmt
  | Create_table_as_stmt of create_table_as_stmt
  | Create_seq_stmt of create_seq_stmt
  | Alter_seq_stmt of alter_seq_stmt
  | Variable_set_stmt of variable_set_stmt
  | Variable_show_stmt of variable_show_stmt
  | Discard_stmt of discard_stmt
  | Create_trig_stmt of create_trig_stmt
  | Create_plang_stmt of create_plang_stmt
  | Create_role_stmt of create_role_stmt
  | Alter_role_stmt of alter_role_stmt
  | Drop_role_stmt of drop_role_stmt
  | Lock_stmt of lock_stmt
  | Constraints_set_stmt of constraints_set_stmt
  | Reindex_stmt of reindex_stmt
  | Check_point_stmt
  | Create_schema_stmt of create_schema_stmt
  | Alter_database_stmt of alter_database_stmt
  | Alter_database_refresh_coll_stmt of alter_database_refresh_coll_stmt
  | Alter_database_set_stmt of alter_database_set_stmt
  | Alter_role_set_stmt of alter_role_set_stmt
  | Create_conversion_stmt of create_conversion_stmt
  | Create_cast_stmt of create_cast_stmt
  | Create_op_class_stmt of create_op_class_stmt
  | Create_op_family_stmt of create_op_family_stmt
  | Alter_op_family_stmt of alter_op_family_stmt
  | Prepare_stmt of prepare_stmt
  | Execute_stmt of execute_stmt
  | Deallocate_stmt of deallocate_stmt
  | Declare_cursor_stmt of declare_cursor_stmt
  | Create_table_space_stmt of create_table_space_stmt
  | Drop_table_space_stmt of drop_table_space_stmt
  | Alter_object_depends_stmt of alter_object_depends_stmt
  | Alter_object_schema_stmt of alter_object_schema_stmt
  | Alter_owner_stmt of alter_owner_stmt
  | Alter_operator_stmt of alter_operator_stmt
  | Alter_type_stmt of alter_type_stmt
  | Drop_owned_stmt of drop_owned_stmt
  | Reassign_owned_stmt of reassign_owned_stmt
  | Composite_type_stmt of composite_type_stmt
  | Create_enum_stmt of create_enum_stmt
  | Create_range_stmt of create_range_stmt
  | Alter_enum_stmt of alter_enum_stmt
  | Alter_tsdictionary_stmt of alter_tsdictionary_stmt
  | Alter_tsconfiguration_stmt of alter_tsconfiguration_stmt
  | Create_fdw_stmt of create_fdw_stmt
  | Alter_fdw_stmt of alter_fdw_stmt
  | Create_foreign_server_stmt of create_foreign_server_stmt
  | Alter_foreign_server_stmt of alter_foreign_server_stmt
  | Create_user_mapping_stmt of create_user_mapping_stmt
  | Alter_user_mapping_stmt of alter_user_mapping_stmt
  | Drop_user_mapping_stmt of drop_user_mapping_stmt
  | Alter_table_space_options_stmt of alter_table_space_options_stmt
  | Alter_table_move_all_stmt of alter_table_move_all_stmt
  | Sec_label_stmt of sec_label_stmt
  | Create_foreign_table_stmt of create_foreign_table_stmt
  | Import_foreign_schema_stmt of import_foreign_schema_stmt
  | Create_extension_stmt of create_extension_stmt
  | Alter_extension_stmt of alter_extension_stmt
  | Alter_extension_contents_stmt of alter_extension_contents_stmt
  | Create_event_trig_stmt of create_event_trig_stmt
  | Alter_event_trig_stmt of alter_event_trig_stmt
  | Refresh_mat_view_stmt of refresh_mat_view_stmt
  | Replica_identity_stmt of replica_identity_stmt
  | Alter_system_stmt of alter_system_stmt
  | Create_policy_stmt of create_policy_stmt
  | Alter_policy_stmt of alter_policy_stmt
  | Create_transform_stmt of create_transform_stmt
  | Create_am_stmt of create_am_stmt
  | Create_publication_stmt of create_publication_stmt
  | Alter_publication_stmt of alter_publication_stmt
  | Create_subscription_stmt of create_subscription_stmt
  | Alter_subscription_stmt of alter_subscription_stmt
  | Drop_subscription_stmt of drop_subscription_stmt
  | Create_stats_stmt of create_stats_stmt
  | Alter_collation_stmt of alter_collation_stmt
  | Call_stmt of call_stmt
  | Alter_stats_stmt of alter_stats_stmt
  | A_expr of a_expr
  | Column_ref of column_ref
  | Param_ref of param_ref
  | Func_call of func_call
  | A_star
  | A_indices of a_indices
  | A_indirection of a_indirection
  | A_array_expr of a_array_expr
  | Res_target of res_target
  | Multi_assign_ref of multi_assign_ref
  | Type_cast of type_cast
  | Collate_clause of collate_clause
  | Sort_by of sort_by
  | Window_def of window_def
  | Range_subselect of range_subselect
  | Range_function of range_function
  | Range_table_sample of range_table_sample
  | Range_table_func of range_table_func
  | Range_table_func_col of range_table_func_col
  | Type_name of type_name
  | Column_def of column_def
  | Index_elem of index_elem
  | Stats_elem of stats_elem
  | Constraint of constraint_
  | Def_elem of def_elem
  | Range_tbl_entry of range_tbl_entry
  | Range_tbl_function of range_tbl_function
  | Table_sample_clause of table_sample_clause
  | With_check_option of with_check_option
  | Sort_group_clause of sort_group_clause
  | Grouping_set of grouping_set
  | Window_clause of window_clause
  | Object_with_args of object_with_args
  | Access_priv of access_priv
  | Create_op_class_item of create_op_class_item
  | Table_like_clause of table_like_clause
  | Function_parameter of function_parameter
  | Locking_clause of locking_clause
  | Row_mark_clause of row_mark_clause
  | Xml_serialize of xml_serialize
  | With_clause of with_clause
  | Infer_clause of infer_clause
  | On_conflict_clause of on_conflict_clause
  | Ctesearch_clause of ctesearch_clause
  | Ctecycle_clause of ctecycle_clause
  | Common_table_expr of common_table_expr
  | Merge_when_clause of merge_when_clause
  | Role_spec of role_spec
  | Trigger_transition of trigger_transition
  | Partition_elem of partition_elem
  | Partition_spec of partition_spec
  | Partition_bound_spec of partition_bound_spec
  | Partition_range_datum of partition_range_datum
  | Partition_cmd of partition_cmd
  | Vacuum_relation of vacuum_relation
  | Publication_obj_spec of publication_obj_spec
  | Publication_table of publication_table
  | Inline_code_block of inline_code_block
  | Call_context of call_context
  | Integer of integer
  | Float of float
  | Boolean of boolean
  | String of string
  | Bit_string of bit_string
  | List of list
  | Int_list of int_list
  | Oid_list of oid_list
  | A_const of a_const

and alias = {
  aliasname : string;
  colnames : node list;
}

and range_var = {
  catalogname : string;
  schemaname : string;
  relname : string;
  inh : bool;
  relpersistence : string;
  alias : alias option;
  location : int32;
}

and table_func = {
  ns_uris : node list;
  ns_names : node list;
  docexpr : node option;
  rowexpr : node option;
  colnames : node list;
  coltypes : node list;
  coltypmods : node list;
  colcollations : node list;
  colexprs : node list;
  coldefexprs : node list;
  notnulls : int64 list;
  ordinalitycol : int32;
  location : int32;
}

and var = {
  xpr : node option;
  varno : int32;
  varattno : int32;
  vartype : int32;
  vartypmod : int32;
  varcollid : int32;
  varlevelsup : int32;
  varnosyn : int32;
  varattnosyn : int32;
  location : int32;
}

and param = {
  xpr : node option;
  paramkind : param_kind;
  paramid : int32;
  paramtype : int32;
  paramtypmod : int32;
  paramcollid : int32;
  location : int32;
}

and aggref = {
  xpr : node option;
  aggfnoid : int32;
  aggtype : int32;
  aggcollid : int32;
  inputcollid : int32;
  aggtranstype : int32;
  aggargtypes : node list;
  aggdirectargs : node list;
  args : node list;
  aggorder : node list;
  aggdistinct : node list;
  aggfilter : node option;
  aggstar : bool;
  aggvariadic : bool;
  aggkind : string;
  agglevelsup : int32;
  aggsplit : agg_split;
  aggno : int32;
  aggtransno : int32;
  location : int32;
}

and grouping_func = {
  xpr : node option;
  args : node list;
  refs : node list;
  cols : node list;
  agglevelsup : int32;
  location : int32;
}

and window_func = {
  xpr : node option;
  winfnoid : int32;
  wintype : int32;
  wincollid : int32;
  inputcollid : int32;
  args : node list;
  aggfilter : node option;
  winref : int32;
  winstar : bool;
  winagg : bool;
  location : int32;
}

and subscripting_ref = {
  xpr : node option;
  refcontainertype : int32;
  refelemtype : int32;
  refrestype : int32;
  reftypmod : int32;
  refcollid : int32;
  refupperindexpr : node list;
  reflowerindexpr : node list;
  refexpr : node option;
  refassgnexpr : node option;
}

and func_expr = {
  xpr : node option;
  funcid : int32;
  funcresulttype : int32;
  funcretset : bool;
  funcvariadic : bool;
  funcformat : coercion_form;
  funccollid : int32;
  inputcollid : int32;
  args : node list;
  location : int32;
}

and named_arg_expr = {
  xpr : node option;
  arg : node option;
  name : string;
  argnumber : int32;
  location : int32;
}

and op_expr = {
  xpr : node option;
  opno : int32;
  opfuncid : int32;
  opresulttype : int32;
  opretset : bool;
  opcollid : int32;
  inputcollid : int32;
  args : node list;
  location : int32;
}

and distinct_expr = {
  xpr : node option;
  opno : int32;
  opfuncid : int32;
  opresulttype : int32;
  opretset : bool;
  opcollid : int32;
  inputcollid : int32;
  args : node list;
  location : int32;
}

and null_if_expr = {
  xpr : node option;
  opno : int32;
  opfuncid : int32;
  opresulttype : int32;
  opretset : bool;
  opcollid : int32;
  inputcollid : int32;
  args : node list;
  location : int32;
}

and scalar_array_op_expr = {
  xpr : node option;
  opno : int32;
  opfuncid : int32;
  hashfuncid : int32;
  negfuncid : int32;
  use_or : bool;
  inputcollid : int32;
  args : node list;
  location : int32;
}

and bool_expr = {
  xpr : node option;
  boolop : bool_expr_type;
  args : node list;
  location : int32;
}

and sub_link = {
  xpr : node option;
  sub_link_type : sub_link_type;
  sub_link_id : int32;
  testexpr : node option;
  oper_name : node list;
  subselect : node option;
  location : int32;
}

and sub_plan = {
  xpr : node option;
  sub_link_type : sub_link_type;
  testexpr : node option;
  param_ids : node list;
  plan_id : int32;
  plan_name : string;
  first_col_type : int32;
  first_col_typmod : int32;
  first_col_collation : int32;
  use_hash_table : bool;
  unknown_eq_false : bool;
  parallel_safe : bool;
  set_param : node list;
  par_param : node list;
  args : node list;
  startup_cost : float;
  per_call_cost : float;
}

and alternative_sub_plan = {
  xpr : node option;
  subplans : node list;
}

and field_select = {
  xpr : node option;
  arg : node option;
  fieldnum : int32;
  resulttype : int32;
  resulttypmod : int32;
  resultcollid : int32;
}

and field_store = {
  xpr : node option;
  arg : node option;
  newvals : node list;
  fieldnums : node list;
  resulttype : int32;
}

and relabel_type = {
  xpr : node option;
  arg : node option;
  resulttype : int32;
  resulttypmod : int32;
  resultcollid : int32;
  relabelformat : coercion_form;
  location : int32;
}

and coerce_via_io = {
  xpr : node option;
  arg : node option;
  resulttype : int32;
  resultcollid : int32;
  coerceformat : coercion_form;
  location : int32;
}

and array_coerce_expr = {
  xpr : node option;
  arg : node option;
  elemexpr : node option;
  resulttype : int32;
  resulttypmod : int32;
  resultcollid : int32;
  coerceformat : coercion_form;
  location : int32;
}

and convert_rowtype_expr = {
  xpr : node option;
  arg : node option;
  resulttype : int32;
  convertformat : coercion_form;
  location : int32;
}

and collate_expr = {
  xpr : node option;
  arg : node option;
  coll_oid : int32;
  location : int32;
}

and case_expr = {
  xpr : node option;
  casetype : int32;
  casecollid : int32;
  arg : node option;
  args : node list;
  defresult : node option;
  location : int32;
}

and case_when = {
  xpr : node option;
  expr : node option;
  result : node option;
  location : int32;
}

and case_test_expr = {
  xpr : node option;
  type_id : int32;
  type_mod : int32;
  collation : int32;
}

and array_expr = {
  xpr : node option;
  array_typeid : int32;
  array_collid : int32;
  element_typeid : int32;
  elements : node list;
  multidims : bool;
  location : int32;
}

and row_expr = {
  xpr : node option;
  args : node list;
  row_typeid : int32;
  row_format : coercion_form;
  colnames : node list;
  location : int32;
}

and row_compare_expr = {
  xpr : node option;
  rctype : row_compare_type;
  opnos : node list;
  opfamilies : node list;
  inputcollids : node list;
  largs : node list;
  rargs : node list;
}

and coalesce_expr = {
  xpr : node option;
  coalescetype : int32;
  coalescecollid : int32;
  args : node list;
  location : int32;
}

and min_max_expr = {
  xpr : node option;
  minmaxtype : int32;
  minmaxcollid : int32;
  inputcollid : int32;
  op : min_max_op;
  args : node list;
  location : int32;
}

and sqlvalue_function = {
  xpr : node option;
  op : sqlvalue_function_op;
  type_ : int32;
  typmod : int32;
  location : int32;
}

and xml_expr = {
  xpr : node option;
  op : xml_expr_op;
  name : string;
  named_args : node list;
  arg_names : node list;
  args : node list;
  xmloption : xml_option_type;
  type_ : int32;
  typmod : int32;
  location : int32;
}

and null_test = {
  xpr : node option;
  arg : node option;
  nulltesttype : null_test_type;
  argisrow : bool;
  location : int32;
}

and boolean_test = {
  xpr : node option;
  arg : node option;
  booltesttype : bool_test_type;
  location : int32;
}

and coerce_to_domain = {
  xpr : node option;
  arg : node option;
  resulttype : int32;
  resulttypmod : int32;
  resultcollid : int32;
  coercionformat : coercion_form;
  location : int32;
}

and coerce_to_domain_value = {
  xpr : node option;
  type_id : int32;
  type_mod : int32;
  collation : int32;
  location : int32;
}

and set_to_default = {
  xpr : node option;
  type_id : int32;
  type_mod : int32;
  collation : int32;
  location : int32;
}

and current_of_expr = {
  xpr : node option;
  cvarno : int32;
  cursor_name : string;
  cursor_param : int32;
}

and next_value_expr = {
  xpr : node option;
  seqid : int32;
  type_id : int32;
}

and inference_elem = {
  xpr : node option;
  expr : node option;
  infercollid : int32;
  inferopclass : int32;
}

and target_entry = {
  xpr : node option;
  expr : node option;
  resno : int32;
  resname : string;
  ressortgroupref : int32;
  resorigtbl : int32;
  resorigcol : int32;
  resjunk : bool;
}

and join_expr = {
  jointype : join_type;
  is_natural : bool;
  larg : node option;
  rarg : node option;
  using_clause : node list;
  join_using_alias : alias option;
  quals : node option;
  alias : alias option;
  rtindex : int32;
}

and from_expr = {
  fromlist : node list;
  quals : node option;
}

and on_conflict_expr = {
  action : on_conflict_action;
  arbiter_elems : node list;
  arbiter_where : node option;
  constraint_ : int32;
  on_conflict_set : node list;
  on_conflict_where : node option;
  excl_rel_index : int32;
  excl_rel_tlist : node list;
}

and into_clause = {
  rel : range_var option;
  col_names : node list;
  access_method : string;
  options : node list;
  on_commit : on_commit_action;
  table_space_name : string;
  view_query : node option;
  skip_data : bool;
}

and merge_action = {
  matched : bool;
  command_type : cmd_type;
  override : overriding_kind;
  qual : node option;
  target_list : node list;
  update_colnos : node list;
}

and query = {
  command_type : cmd_type;
  query_source : query_source;
  can_set_tag : bool;
  utility_stmt : node option;
  result_relation : int32;
  has_aggs : bool;
  has_window_funcs : bool;
  has_target_srfs : bool;
  has_sub_links : bool;
  has_distinct_on : bool;
  has_recursive : bool;
  has_modifying_cte : bool;
  has_for_update : bool;
  has_row_security : bool;
  is_return : bool;
  cte_list : node list;
  rtable : node list;
  jointree : from_expr option;
  merge_action_list : node list;
  merge_use_outer_join : bool;
  target_list : node list;
  override : overriding_kind;
  on_conflict : on_conflict_expr option;
  returning_list : node list;
  group_clause : node list;
  group_distinct : bool;
  grouping_sets : node list;
  having_qual : node option;
  window_clause : node list;
  distinct_clause : node list;
  sort_clause : node list;
  limit_offset : node option;
  limit_count : node option;
  limit_option : limit_option;
  row_marks : node list;
  set_operations : node option;
  constraint_deps : node list;
  with_check_options : node list;
  stmt_location : int32;
  stmt_len : int32;
}

and insert_stmt = {
  relation : range_var option;
  cols : node list;
  select_stmt : node option;
  on_conflict_clause : on_conflict_clause option;
  returning_list : node list;
  with_clause : with_clause option;
  override : overriding_kind;
}

and on_conflict_clause = {
  action : on_conflict_action;
  infer : infer_clause option;
  target_list : node list;
  where_clause : node option;
  location : int32;
}

and infer_clause = {
  index_elems : node list;
  where_clause : node option;
  conname : string;
  location : int32;
}

and with_clause = {
  ctes : node list;
  recursive : bool;
  location : int32;
}

and delete_stmt = {
  relation : range_var option;
  using_clause : node list;
  where_clause : node option;
  returning_list : node list;
  with_clause : with_clause option;
}

and update_stmt = {
  relation : range_var option;
  target_list : node list;
  where_clause : node option;
  from_clause : node list;
  returning_list : node list;
  with_clause : with_clause option;
}

and merge_stmt = {
  relation : range_var option;
  source_relation : node option;
  join_condition : node option;
  merge_when_clauses : node list;
  with_clause : with_clause option;
}

and select_stmt = {
  distinct_clause : node list;
  into_clause : into_clause option;
  target_list : node list;
  from_clause : node list;
  where_clause : node option;
  group_clause : node list;
  group_distinct : bool;
  having_clause : node option;
  window_clause : node list;
  values_lists : node list;
  sort_clause : node list;
  limit_offset : node option;
  limit_count : node option;
  limit_option : limit_option;
  locking_clause : node list;
  with_clause : with_clause option;
  op : set_operation;
  all : bool;
  larg : select_stmt option;
  rarg : select_stmt option;
}

and return_stmt = {
  returnval : node option;
}

and plassign_stmt = {
  name : string;
  indirection : node list;
  nnames : int32;
  val_ : select_stmt option;
  location : int32;
}

and alter_table_stmt = {
  relation : range_var option;
  cmds : node list;
  objtype : object_type;
  missing_ok : bool;
}

and alter_table_cmd = {
  subtype : alter_table_type;
  name : string;
  num : int32;
  newowner : role_spec option;
  def : node option;
  behavior : drop_behavior;
  missing_ok : bool;
  recurse : bool;
}

and alter_domain_stmt = {
  subtype : string;
  type_name : node list;
  name : string;
  def : node option;
  behavior : drop_behavior;
  missing_ok : bool;
}

and set_operation_stmt = {
  op : set_operation;
  all : bool;
  larg : node option;
  rarg : node option;
  col_types : node list;
  col_typmods : node list;
  col_collations : node list;
  group_clauses : node list;
}

and grant_stmt = {
  is_grant : bool;
  targtype : grant_target_type;
  objtype : object_type;
  objects : node list;
  privileges : node list;
  grantees : node list;
  grant_option : bool;
  grantor : role_spec option;
  behavior : drop_behavior;
}

and grant_role_stmt = {
  granted_roles : node list;
  grantee_roles : node list;
  is_grant : bool;
  admin_opt : bool;
  grantor : role_spec option;
  behavior : drop_behavior;
}

and alter_default_privileges_stmt = {
  options : node list;
  action : grant_stmt option;
}

and cluster_stmt = {
  relation : range_var option;
  indexname : string;
  params : node list;
}

and copy_stmt = {
  relation : range_var option;
  query : node option;
  attlist : node list;
  is_from : bool;
  is_program : bool;
  filename : string;
  options : node list;
  where_clause : node option;
}

and create_stmt = {
  relation : range_var option;
  table_elts : node list;
  inh_relations : node list;
  partbound : partition_bound_spec option;
  partspec : partition_spec option;
  of_typename : type_name option;
  constraints : node list;
  options : node list;
  oncommit : on_commit_action;
  tablespacename : string;
  access_method : string;
  if_not_exists : bool;
}

and partition_bound_spec = {
  strategy : string;
  is_default : bool;
  modulus : int32;
  remainder : int32;
  listdatums : node list;
  lowerdatums : node list;
  upperdatums : node list;
  location : int32;
}

and partition_spec = {
  strategy : string;
  part_params : node list;
  location : int32;
}

and type_name = {
  names : node list;
  type_oid : int32;
  setof : bool;
  pct_type : bool;
  typmods : node list;
  typemod : int32;
  array_bounds : node list;
  location : int32;
}

and define_stmt = {
  kind : object_type;
  oldstyle : bool;
  defnames : node list;
  args : node list;
  definition : node list;
  if_not_exists : bool;
  replace : bool;
}

and drop_stmt = {
  objects : node list;
  remove_type : object_type;
  behavior : drop_behavior;
  missing_ok : bool;
  concurrent : bool;
}

and truncate_stmt = {
  relations : node list;
  restart_seqs : bool;
  behavior : drop_behavior;
}

and comment_stmt = {
  objtype : object_type;
  object_ : node option;
  comment : string;
}

and index_stmt = {
  idxname : string;
  relation : range_var option;
  access_method : string;
  table_space : string;
  index_params : node list;
  index_including_params : node list;
  options : node list;
  where_clause : node option;
  exclude_op_names : node list;
  idxcomment : string;
  index_oid : int32;
  old_node : int32;
  old_create_subid : int32;
  old_first_relfilenode_subid : int32;
  unique : bool;
  nulls_not_distinct : bool;
  primary : bool;
  isconstraint : bool;
  deferrable : bool;
  initdeferred : bool;
  transformed : bool;
  concurrent : bool;
  if_not_exists : bool;
  reset_default_tblspc : bool;
}

and create_function_stmt = {
  is_procedure : bool;
  replace : bool;
  funcname : node list;
  parameters : node list;
  return_type : type_name option;
  options : node list;
  sql_body : node option;
}

and alter_function_stmt = {
  objtype : object_type;
  func : object_with_args option;
  actions : node list;
}

and object_with_args = {
  objname : node list;
  objargs : node list;
  objfuncargs : node list;
  args_unspecified : bool;
}

and do_stmt = {
  args : node list;
}

and rename_stmt = {
  rename_type : object_type;
  relation_type : object_type;
  relation : range_var option;
  object_ : node option;
  subname : string;
  newname : string;
  behavior : drop_behavior;
  missing_ok : bool;
}

and rule_stmt = {
  relation : range_var option;
  rulename : string;
  where_clause : node option;
  event : cmd_type;
  instead : bool;
  actions : node list;
  replace : bool;
}

and transaction_stmt = {
  kind : transaction_stmt_kind;
  options : node list;
  savepoint_name : string;
  gid : string;
  chain : bool;
}

and view_stmt = {
  view : range_var option;
  aliases : node list;
  query : node option;
  replace : bool;
  options : node list;
  with_check_option : view_check_option;
}

and create_domain_stmt = {
  domainname : node list;
  type_name : type_name option;
  coll_clause : collate_clause option;
  constraints : node list;
}

and collate_clause = {
  arg : node option;
  collname : node list;
  location : int32;
}

and createdb_stmt = {
  dbname : string;
  options : node list;
}

and dropdb_stmt = {
  dbname : string;
  missing_ok : bool;
  options : node list;
}

and vacuum_stmt = {
  options : node list;
  rels : node list;
  is_vacuumcmd : bool;
}

and explain_stmt = {
  query : node option;
  options : node list;
}

and create_table_as_stmt = {
  query : node option;
  into : into_clause option;
  objtype : object_type;
  is_select_into : bool;
  if_not_exists : bool;
}

and create_seq_stmt = {
  sequence : range_var option;
  options : node list;
  owner_id : int32;
  for_identity : bool;
  if_not_exists : bool;
}

and alter_seq_stmt = {
  sequence : range_var option;
  options : node list;
  for_identity : bool;
  missing_ok : bool;
}

and variable_set_stmt = {
  kind : variable_set_kind;
  name : string;
  args : node list;
  is_local : bool;
}

and create_trig_stmt = {
  replace : bool;
  isconstraint : bool;
  trigname : string;
  relation : range_var option;
  funcname : node list;
  args : node list;
  row : bool;
  timing : int32;
  events : int32;
  columns : node list;
  when_clause : node option;
  transition_rels : node list;
  deferrable : bool;
  initdeferred : bool;
  constrrel : range_var option;
}

and create_plang_stmt = {
  replace : bool;
  plname : string;
  plhandler : node list;
  plinline : node list;
  plvalidator : node list;
  pltrusted : bool;
}

and create_role_stmt = {
  stmt_type : role_stmt_type;
  role : string;
  options : node list;
}

and alter_role_stmt = {
  role : role_spec option;
  options : node list;
  action : int32;
}

and drop_role_stmt = {
  roles : node list;
  missing_ok : bool;
}

and lock_stmt = {
  relations : node list;
  mode : int32;
  nowait : bool;
}

and constraints_set_stmt = {
  constraints : node list;
  deferred : bool;
}

and reindex_stmt = {
  kind : reindex_object_type;
  relation : range_var option;
  name : string;
  params : node list;
}

and create_schema_stmt = {
  schemaname : string;
  authrole : role_spec option;
  schema_elts : node list;
  if_not_exists : bool;
}

and alter_database_stmt = {
  dbname : string;
  options : node list;
}

and alter_database_set_stmt = {
  dbname : string;
  setstmt : variable_set_stmt option;
}

and alter_role_set_stmt = {
  role : role_spec option;
  database : string;
  setstmt : variable_set_stmt option;
}

and create_conversion_stmt = {
  conversion_name : node list;
  for_encoding_name : string;
  to_encoding_name : string;
  func_name : node list;
  def : bool;
}

and create_cast_stmt = {
  sourcetype : type_name option;
  targettype : type_name option;
  func : object_with_args option;
  context : coercion_context;
  inout : bool;
}

and create_op_class_stmt = {
  opclassname : node list;
  opfamilyname : node list;
  amname : string;
  datatype : type_name option;
  items : node list;
  is_default : bool;
}

and create_op_family_stmt = {
  opfamilyname : node list;
  amname : string;
}

and alter_op_family_stmt = {
  opfamilyname : node list;
  amname : string;
  is_drop : bool;
  items : node list;
}

and prepare_stmt = {
  name : string;
  argtypes : node list;
  query : node option;
}

and execute_stmt = {
  name : string;
  params : node list;
}

and declare_cursor_stmt = {
  portalname : string;
  options : int32;
  query : node option;
}

and create_table_space_stmt = {
  tablespacename : string;
  owner : role_spec option;
  location : string;
  options : node list;
}

and alter_object_depends_stmt = {
  object_type : object_type;
  relation : range_var option;
  object_ : node option;
  extname : string option;
  remove : bool;
}

and alter_object_schema_stmt = {
  object_type : object_type;
  relation : range_var option;
  object_ : node option;
  newschema : string;
  missing_ok : bool;
}

and alter_owner_stmt = {
  object_type : object_type;
  relation : range_var option;
  object_ : node option;
  newowner : role_spec option;
}

and alter_operator_stmt = {
  opername : object_with_args option;
  options : node list;
}

and alter_type_stmt = {
  type_name : node list;
  options : node list;
}

and drop_owned_stmt = {
  roles : node list;
  behavior : drop_behavior;
}

and reassign_owned_stmt = {
  roles : node list;
  newrole : role_spec option;
}

and composite_type_stmt = {
  typevar : range_var option;
  coldeflist : node list;
}

and create_enum_stmt = {
  type_name : node list;
  vals : node list;
}

and create_range_stmt = {
  type_name : node list;
  params : node list;
}

and alter_enum_stmt = {
  type_name : node list;
  old_val : string;
  new_val : string;
  new_val_neighbor : string;
  new_val_is_after : bool;
  skip_if_new_val_exists : bool;
}

and alter_tsdictionary_stmt = {
  dictname : node list;
  options : node list;
}

and alter_tsconfiguration_stmt = {
  kind : alter_tsconfig_type;
  cfgname : node list;
  tokentype : node list;
  dicts : node list;
  override : bool;
  replace : bool;
  missing_ok : bool;
}

and create_fdw_stmt = {
  fdwname : string;
  func_options : node list;
  options : node list;
}

and alter_fdw_stmt = {
  fdwname : string;
  func_options : node list;
  options : node list;
}

and create_foreign_server_stmt = {
  servername : string;
  servertype : string;
  version : string;
  fdwname : string;
  if_not_exists : bool;
  options : node list;
}

and alter_foreign_server_stmt = {
  servername : string;
  version : string;
  options : node list;
  has_version : bool;
}

and create_user_mapping_stmt = {
  user : role_spec option;
  servername : string;
  if_not_exists : bool;
  options : node list;
}

and alter_user_mapping_stmt = {
  user : role_spec option;
  servername : string;
  options : node list;
}

and alter_table_space_options_stmt = {
  tablespacename : string;
  options : node list;
  is_reset : bool;
}

and alter_table_move_all_stmt = {
  orig_tablespacename : string;
  objtype : object_type;
  roles : node list;
  new_tablespacename : string;
  nowait : bool;
}

and sec_label_stmt = {
  objtype : object_type;
  object_ : node option;
  provider : string;
  label : string;
}

and create_foreign_table_stmt = {
  base_stmt : create_stmt option;
  servername : string;
  options : node list;
}

and import_foreign_schema_stmt = {
  server_name : string;
  remote_schema : string;
  local_schema : string;
  list_type : import_foreign_schema_type;
  table_list : node list;
  options : node list;
}

and create_extension_stmt = {
  extname : string;
  if_not_exists : bool;
  options : node list;
}

and alter_extension_stmt = {
  extname : string;
  options : node list;
}

and alter_extension_contents_stmt = {
  extname : string;
  action : int32;
  objtype : object_type;
  object_ : node option;
}

and create_event_trig_stmt = {
  trigname : string;
  eventname : string;
  whenclause : node list;
  funcname : node list;
}

and refresh_mat_view_stmt = {
  concurrent : bool;
  skip_data : bool;
  relation : range_var option;
}

and alter_system_stmt = {
  setstmt : variable_set_stmt option;
}

and create_policy_stmt = {
  policy_name : string;
  table : range_var option;
  cmd_name : string;
  permissive : bool;
  roles : node list;
  qual : node option;
  with_check : node option;
}

and alter_policy_stmt = {
  policy_name : string;
  table : range_var option;
  roles : node list;
  qual : node option;
  with_check : node option;
}

and create_transform_stmt = {
  replace : bool;
  type_name : type_name option;
  lang : string;
  fromsql : object_with_args option;
  tosql : object_with_args option;
}

and create_am_stmt = {
  amname : string;
  handler_name : node list;
  amtype : string;
}

and create_publication_stmt = {
  pubname : string;
  options : node list;
  pubobjects : node list;
  for_all_tables : bool;
}

and alter_publication_stmt = {
  pubname : string;
  options : node list;
  pubobjects : node list;
  for_all_tables : bool;
  action : alter_publication_action;
}

and create_subscription_stmt = {
  subname : string;
  conninfo : string;
  publication : node list;
  options : node list;
}

and alter_subscription_stmt = {
  kind : alter_subscription_type;
  subname : string;
  conninfo : string;
  publication : node list;
  options : node list;
}

and create_stats_stmt = {
  defnames : node list;
  stat_types : node list;
  exprs : node list;
  relations : node list;
  stxcomment : string;
  transformed : bool;
  if_not_exists : bool;
}

and alter_collation_stmt = {
  collname : node list;
}

and call_stmt = {
  funccall : func_call option;
  funcexpr : func_expr option;
  outargs : node list;
}

and func_call = {
  funcname : node list;
  args : node list;
  agg_order : node list;
  agg_filter : node option;
  over : window_def option;
  agg_within_group : bool;
  agg_star : bool;
  agg_distinct : bool;
  func_variadic : bool;
  funcformat : coercion_form;
  location : int32;
}

and window_def = {
  name : string;
  refname : string;
  partition_clause : node list;
  order_clause : node list;
  frame_options : int32;
  start_offset : node option;
  end_offset : node option;
  location : int32;
}

and alter_stats_stmt = {
  defnames : node list;
  stxstattarget : int32;
  missing_ok : bool;
}

and a_expr = {
  kind : a_expr_kind;
  name : node list;
  lexpr : node option;
  rexpr : node option;
  location : int32;
}

and column_ref = {
  fields : node list;
  location : int32;
}

and a_indices = {
  is_slice : bool;
  lidx : node option;
  uidx : node option;
}

and a_indirection = {
  arg : node option;
  indirection : node list;
}

and a_array_expr = {
  elements : node list;
  location : int32;
}

and res_target = {
  name : string;
  indirection : node list;
  val_ : node option;
  location : int32;
}

and multi_assign_ref = {
  source : node option;
  colno : int32;
  ncolumns : int32;
}

and type_cast = {
  arg : node option;
  type_name : type_name option;
  location : int32;
}

and sort_by = {
  node : node option;
  sortby_dir : sort_by_dir;
  sortby_nulls : sort_by_nulls;
  use_op : node list;
  location : int32;
}

and range_subselect = {
  lateral : bool;
  subquery : node option;
  alias : alias option;
}

and range_function = {
  lateral : bool;
  ordinality : bool;
  is_rowsfrom : bool;
  functions : node list;
  alias : alias option;
  coldeflist : node list;
}

and range_table_sample = {
  relation : node option;
  method_ : node list;
  args : node list;
  repeatable : node option;
  location : int32;
}

and range_table_func = {
  lateral : bool;
  docexpr : node option;
  rowexpr : node option;
  namespaces : node list;
  columns : node list;
  alias : alias option;
  location : int32;
}

and range_table_func_col = {
  colname : string;
  type_name : type_name option;
  for_ordinality : bool;
  is_not_null : bool;
  colexpr : node option;
  coldefexpr : node option;
  location : int32;
}

and column_def = {
  colname : string;
  type_name : type_name option;
  compression : string;
  inhcount : int32;
  is_local : bool;
  is_not_null : bool;
  is_from_type : bool;
  storage : string;
  raw_default : node option;
  cooked_default : node option;
  identity : string;
  identity_sequence : range_var option;
  generated : string;
  coll_clause : collate_clause option;
  coll_oid : int32;
  constraints : node list;
  fdwoptions : node list;
  location : int32;
}

and index_elem = {
  name : string;
  expr : node option;
  indexcolname : string;
  collation : node list;
  opclass : node list;
  opclassopts : node list;
  ordering : sort_by_dir;
  nulls_ordering : sort_by_nulls;
}

and stats_elem = {
  name : string;
  expr : node option;
}

and constraint_ = {
  contype : constr_type;
  conname : string;
  deferrable : bool;
  initdeferred : bool;
  location : int32;
  is_no_inherit : bool;
  raw_expr : node option;
  cooked_expr : string;
  generated_when : string;
  nulls_not_distinct : bool;
  keys : node list;
  including : node list;
  exclusions : node list;
  options : node list;
  indexname : string;
  indexspace : string;
  reset_default_tblspc : bool;
  access_method : string;
  where_clause : node option;
  pktable : range_var option;
  fk_attrs : node list;
  pk_attrs : node list;
  fk_matchtype : string;
  fk_upd_action : string;
  fk_del_action : string;
  fk_del_set_cols : node list;
  old_conpfeqop : node list;
  old_pktable_oid : int32;
  skip_validation : bool;
  initially_valid : bool;
}

and def_elem = {
  defnamespace : string;
  defname : string;
  arg : node option;
  defaction : def_elem_action;
  location : int32;
}

and range_tbl_entry = {
  rtekind : rtekind;
  relid : int32;
  relkind : string;
  rellockmode : int32;
  tablesample : table_sample_clause option;
  subquery : query option;
  security_barrier : bool;
  jointype : join_type;
  joinmergedcols : int32;
  joinaliasvars : node list;
  joinleftcols : node list;
  joinrightcols : node list;
  join_using_alias : alias option;
  functions : node list;
  funcordinality : bool;
  tablefunc : table_func option;
  values_lists : node list;
  ctename : string;
  ctelevelsup : int32;
  self_reference : bool;
  coltypes : node list;
  coltypmods : node list;
  colcollations : node list;
  enrname : string;
  enrtuples : float;
  alias : alias option;
  eref : alias option;
  lateral : bool;
  inh : bool;
  in_from_cl : bool;
  required_perms : int32;
  check_as_user : int32;
  selected_cols : int64 list;
  inserted_cols : int64 list;
  updated_cols : int64 list;
  extra_updated_cols : int64 list;
  security_quals : node list;
}

and table_sample_clause = {
  tsmhandler : int32;
  args : node list;
  repeatable : node option;
}

and range_tbl_function = {
  funcexpr : node option;
  funccolcount : int32;
  funccolnames : node list;
  funccoltypes : node list;
  funccoltypmods : node list;
  funccolcollations : node list;
  funcparams : int64 list;
}

and with_check_option = {
  kind : wcokind;
  relname : string;
  polname : string;
  qual : node option;
  cascaded : bool;
}

and grouping_set = {
  kind : grouping_set_kind;
  content : node list;
  location : int32;
}

and window_clause = {
  name : string;
  refname : string;
  partition_clause : node list;
  order_clause : node list;
  frame_options : int32;
  start_offset : node option;
  end_offset : node option;
  run_condition : node list;
  start_in_range_func : int32;
  end_in_range_func : int32;
  in_range_coll : int32;
  in_range_asc : bool;
  in_range_nulls_first : bool;
  winref : int32;
  copied_order : bool;
}

and access_priv = {
  priv_name : string;
  cols : node list;
}

and create_op_class_item = {
  itemtype : int32;
  name : object_with_args option;
  number : int32;
  order_family : node list;
  class_args : node list;
  storedtype : type_name option;
}

and table_like_clause = {
  relation : range_var option;
  options : int32;
  relation_oid : int32;
}

and function_parameter = {
  name : string;
  arg_type : type_name option;
  mode : function_parameter_mode;
  defexpr : node option;
}

and locking_clause = {
  locked_rels : node list;
  strength : lock_clause_strength;
  wait_policy : lock_wait_policy;
}

and xml_serialize = {
  xmloption : xml_option_type;
  expr : node option;
  type_name : type_name option;
  location : int32;
}

and ctesearch_clause = {
  search_col_list : node list;
  search_breadth_first : bool;
  search_seq_column : string;
  location : int32;
}

and ctecycle_clause = {
  cycle_col_list : node list;
  cycle_mark_column : string;
  cycle_mark_value : node option;
  cycle_mark_default : node option;
  cycle_path_column : string;
  location : int32;
  cycle_mark_type : int32;
  cycle_mark_typmod : int32;
  cycle_mark_collation : int32;
  cycle_mark_neop : int32;
}

and common_table_expr = {
  ctename : string;
  aliascolnames : node list;
  ctematerialized : ctematerialize;
  ctequery : node option;
  search_clause : ctesearch_clause option;
  cycle_clause : ctecycle_clause option;
  location : int32;
  cterecursive : bool;
  cterefcount : int32;
  ctecolnames : node list;
  ctecoltypes : node list;
  ctecoltypmods : node list;
  ctecolcollations : node list;
}

and merge_when_clause = {
  matched : bool;
  command_type : cmd_type;
  override : overriding_kind;
  condition : node option;
  target_list : node list;
  values : node list;
}

and partition_elem = {
  name : string;
  expr : node option;
  collation : node list;
  opclass : node list;
  location : int32;
}

and partition_range_datum = {
  kind : partition_range_datum_kind;
  value : node option;
  location : int32;
}

and partition_cmd = {
  name : range_var option;
  bound : partition_bound_spec option;
  concurrent : bool;
}

and vacuum_relation = {
  relation : range_var option;
  oid : int32;
  va_cols : node list;
}

and publication_obj_spec = {
  pubobjtype : publication_obj_spec_type;
  name : string;
  pubtable : publication_table option;
  location : int32;
}

and publication_table = {
  relation : range_var option;
  where_clause : node option;
  columns : node list;
}

and list = {
  items : node list;
}

and int_list = {
  items : node list;
}

and oid_list = {
  items : node list;
}

type parse_result = {
  version : int32;
  stmts : raw_stmt list;
}

type token =
  | Nul 
  | Ascii_37 
  | Ascii_40 
  | Ascii_41 
  | Ascii_42 
  | Ascii_43 
  | Ascii_44 
  | Ascii_45 
  | Ascii_46 
  | Ascii_47 
  | Ascii_58 
  | Ascii_59 
  | Ascii_60 
  | Ascii_61 
  | Ascii_62 
  | Ascii_63 
  | Ascii_91 
  | Ascii_92 
  | Ascii_93 
  | Ascii_94 
  | Ident 
  | Uident 
  | Fconst 
  | Sconst 
  | Usconst 
  | Bconst 
  | Xconst 
  | Op 
  | Iconst 
  | Param 
  | Typecast 
  | Dot_dot 
  | Colon_equals 
  | Equals_greater 
  | Less_equals 
  | Greater_equals 
  | Not_equals 
  | Sql_comment 
  | C_comment 
  | Abort_p 
  | Absolute_p 
  | Access 
  | Action 
  | Add_p 
  | Admin 
  | After 
  | Aggregate 
  | All 
  | Also 
  | Alter 
  | Always 
  | Analyse 
  | Analyze 
  | And 
  | Any 
  | Array 
  | As 
  | Asc 
  | Asensitive 
  | Assertion 
  | Assignment 
  | Asymmetric 
  | Atomic 
  | At 
  | Attach 
  | Attribute 
  | Authorization 
  | Backward 
  | Before 
  | Begin_p 
  | Between 
  | Bigint 
  | Binary 
  | Bit 
  | Boolean_p 
  | Both 
  | Breadth 
  | By 
  | Cache 
  | Call 
  | Called 
  | Cascade 
  | Cascaded 
  | Case 
  | Cast 
  | Catalog_p 
  | Chain 
  | Char_p 
  | Character 
  | Characteristics 
  | Check 
  | Checkpoint 
  | Class 
  | Close 
  | Cluster 
  | Coalesce 
  | Collate 
  | Collation 
  | Column 
  | Columns 
  | Comment 
  | Comments 
  | Commit 
  | Committed 
  | Compression 
  | Concurrently 
  | Configuration 
  | Conflict 
  | Connection 
  | Constraint 
  | Constraints 
  | Content_p 
  | Continue_p 
  | Conversion_p 
  | Copy 
  | Cost 
  | Create 
  | Cross 
  | Csv 
  | Cube 
  | Current_p 
  | Current_catalog 
  | Current_date 
  | Current_role 
  | Current_schema 
  | Current_time 
  | Current_timestamp 
  | Current_user 
  | Cursor 
  | Cycle 
  | Data_p 
  | Database 
  | Day_p 
  | Deallocate 
  | Dec 
  | Decimal_p 
  | Declare 
  | Default 
  | Defaults 
  | Deferrable 
  | Deferred 
  | Definer 
  | Delete_p 
  | Delimiter 
  | Delimiters 
  | Depends 
  | Depth 
  | Desc 
  | Detach 
  | Dictionary 
  | Disable_p 
  | Discard 
  | Distinct 
  | Do 
  | Document_p 
  | Domain_p 
  | Double_p 
  | Drop 
  | Each 
  | Else 
  | Enable_p 
  | Encoding 
  | Encrypted 
  | End_p 
  | Enum_p 
  | Escape 
  | Event 
  | Except 
  | Exclude 
  | Excluding 
  | Exclusive 
  | Execute 
  | Exists 
  | Explain 
  | Expression 
  | Extension 
  | External 
  | Extract 
  | False_p 
  | Family 
  | Fetch 
  | Filter 
  | Finalize 
  | First_p 
  | Float_p 
  | Following 
  | For 
  | Force 
  | Foreign 
  | Forward 
  | Freeze 
  | From 
  | Full 
  | Function 
  | Functions 
  | Generated 
  | Global 
  | Grant 
  | Granted 
  | Greatest 
  | Group_p 
  | Grouping 
  | Groups 
  | Handler 
  | Having 
  | Header_p 
  | Hold 
  | Hour_p 
  | Identity_p 
  | If_p 
  | Ilike 
  | Immediate 
  | Immutable 
  | Implicit_p 
  | Import_p 
  | In_p 
  | Include 
  | Including 
  | Increment 
  | Index 
  | Indexes 
  | Inherit 
  | Inherits 
  | Initially 
  | Inline_p 
  | Inner_p 
  | Inout 
  | Input_p 
  | Insensitive 
  | Insert 
  | Instead 
  | Int_p 
  | Integer 
  | Intersect 
  | Interval 
  | Into 
  | Invoker 
  | Is 
  | Isnull 
  | Isolation 
  | Join 
  | Key 
  | Label 
  | Language 
  | Large_p 
  | Last_p 
  | Lateral_p 
  | Leading 
  | Leakproof 
  | Least 
  | Left 
  | Level 
  | Like 
  | Limit 
  | Listen 
  | Load 
  | Local 
  | Localtime 
  | Localtimestamp 
  | Location 
  | Lock_p 
  | Locked 
  | Logged 
  | Mapping 
  | Match 
  | Matched 
  | Materialized 
  | Maxvalue 
  | Merge 
  | Method 
  | Minute_p 
  | Minvalue 
  | Mode 
  | Month_p 
  | Move 
  | Name_p 
  | Names 
  | National 
  | Natural 
  | Nchar 
  | New 
  | Next 
  | Nfc 
  | Nfd 
  | Nfkc 
  | Nfkd 
  | No 
  | None 
  | Normalize 
  | Normalized 
  | Not 
  | Nothing 
  | Notify 
  | Notnull 
  | Nowait 
  | Null_p 
  | Nullif 
  | Nulls_p 
  | Numeric 
  | Object_p 
  | Of 
  | Off 
  | Offset 
  | Oids 
  | Old 
  | On 
  | Only 
  | Operator 
  | Option 
  | Options 
  | Or 
  | Order 
  | Ordinality 
  | Others 
  | Out_p 
  | Outer_p 
  | Over 
  | Overlaps 
  | Overlay 
  | Overriding 
  | Owned 
  | Owner 
  | Parallel 
  | Parameter 
  | Parser 
  | Partial 
  | Partition 
  | Passing 
  | Password 
  | Placing 
  | Plans 
  | Policy 
  | Position 
  | Preceding 
  | Precision 
  | Preserve 
  | Prepare 
  | Prepared 
  | Primary 
  | Prior 
  | Privileges 
  | Procedural 
  | Procedure 
  | Procedures 
  | Program 
  | Publication 
  | Quote 
  | Range 
  | Read 
  | Real 
  | Reassign 
  | Recheck 
  | Recursive 
  | Ref_p 
  | References 
  | Referencing 
  | Refresh 
  | Reindex 
  | Relative_p 
  | Release 
  | Rename 
  | Repeatable 
  | Replace 
  | Replica 
  | Reset 
  | Restart 
  | Restrict 
  | Return 
  | Returning 
  | Returns 
  | Revoke 
  | Right 
  | Role 
  | Rollback 
  | Rollup 
  | Routine 
  | Routines 
  | Row 
  | Rows 
  | Rule 
  | Savepoint 
  | Schema 
  | Schemas 
  | Scroll 
  | Search 
  | Second_p 
  | Security 
  | Select 
  | Sequence 
  | Sequences 
  | Serializable 
  | Server 
  | Session 
  | Session_user 
  | Set 
  | Sets 
  | Setof 
  | Share 
  | Show 
  | Similar 
  | Simple 
  | Skip 
  | Smallint 
  | Snapshot 
  | Some 
  | Sql_p 
  | Stable 
  | Standalone_p 
  | Start 
  | Statement 
  | Statistics 
  | Stdin 
  | Stdout 
  | Storage 
  | Stored 
  | Strict_p 
  | Strip_p 
  | Subscription 
  | Substring 
  | Support 
  | Symmetric 
  | Sysid 
  | System_p 
  | Table 
  | Tables 
  | Tablesample 
  | Tablespace 
  | Temp 
  | Template 
  | Temporary 
  | Text_p 
  | Then 
  | Ties 
  | Time 
  | Timestamp 
  | To 
  | Trailing 
  | Transaction 
  | Transform 
  | Treat 
  | Trigger 
  | Trim 
  | True_p 
  | Truncate 
  | Trusted 
  | Type_p 
  | Types_p 
  | Uescape 
  | Unbounded 
  | Uncommitted 
  | Unencrypted 
  | Union 
  | Unique 
  | Unknown 
  | Unlisten 
  | Unlogged 
  | Until 
  | Update 
  | User 
  | Using 
  | Vacuum 
  | Valid 
  | Validate 
  | Validator 
  | Value_p 
  | Values 
  | Varchar 
  | Variadic 
  | Varying 
  | Verbose 
  | Version_p 
  | View 
  | Views 
  | Volatile 
  | When 
  | Where 
  | Whitespace_p 
  | Window 
  | With 
  | Within 
  | Without 
  | Work 
  | Wrapper 
  | Write 
  | Xml_p 
  | Xmlattributes 
  | Xmlconcat 
  | Xmlelement 
  | Xmlexists 
  | Xmlforest 
  | Xmlnamespaces 
  | Xmlparse 
  | Xmlpi 
  | Xmlroot 
  | Xmlserialize 
  | Xmltable 
  | Year_p 
  | Yes_p 
  | Zone 
  | Not_la 
  | Nulls_la 
  | With_la 
  | Mode_type_name 
  | Mode_plpgsql_expr 
  | Mode_plpgsql_assign1 
  | Mode_plpgsql_assign2 
  | Mode_plpgsql_assign3 
  | Uminus 

type keyword_kind =
  | No_keyword 
  | Unreserved_keyword 
  | Col_name_keyword 
  | Type_func_name_keyword 
  | Reserved_keyword 

type scan_token = {
  start : int32;
  end_ : int32;
  token : token;
  keyword_kind : keyword_kind;
}

type scan_result = {
  version : int32;
  tokens : scan_token list;
}

type set_quantifier =
  | Set_quantifier_undefined 
  | Set_quantifier_default 
  | Set_quantifier_all 
  | Set_quantifier_distinct 

type table_like_option =
  | Table_like_option_undefined 
  | Create_table_like_comments 
  | Create_table_like_compression 
  | Create_table_like_constraints 
  | Create_table_like_defaults 
  | Create_table_like_generated 
  | Create_table_like_identity 
  | Create_table_like_indexes 
  | Create_table_like_statistics 
  | Create_table_like_storage 
  | Create_table_like_all 

type agg_strategy =
  | Agg_strategy_undefined 
  | Agg_plain 
  | Agg_sorted 
  | Agg_hashed 
  | Agg_mixed 

type set_op_cmd =
  | Set_op_cmd_undefined 
  | Setopcmd_intersect 
  | Setopcmd_intersect_all 
  | Setopcmd_except 
  | Setopcmd_except_all 

type set_op_strategy =
  | Set_op_strategy_undefined 
  | Setop_sorted 
  | Setop_hashed 

type lock_tuple_mode =
  | Lock_tuple_mode_undefined 
  | Lock_tuple_key_share 
  | Lock_tuple_share 
  | Lock_tuple_no_key_exclusive 
  | Lock_tuple_exclusive 


(** {2 Default values} *)

val default_param_kind : unit -> param_kind
(** [default_param_kind ()] is the default value for type [param_kind] *)

val default_agg_split : unit -> agg_split
(** [default_agg_split ()] is the default value for type [agg_split] *)

val default_coercion_form : unit -> coercion_form
(** [default_coercion_form ()] is the default value for type [coercion_form] *)

val default_bool_expr_type : unit -> bool_expr_type
(** [default_bool_expr_type ()] is the default value for type [bool_expr_type] *)

val default_sub_link_type : unit -> sub_link_type
(** [default_sub_link_type ()] is the default value for type [sub_link_type] *)

val default_row_compare_type : unit -> row_compare_type
(** [default_row_compare_type ()] is the default value for type [row_compare_type] *)

val default_min_max_op : unit -> min_max_op
(** [default_min_max_op ()] is the default value for type [min_max_op] *)

val default_sqlvalue_function_op : unit -> sqlvalue_function_op
(** [default_sqlvalue_function_op ()] is the default value for type [sqlvalue_function_op] *)

val default_xml_expr_op : unit -> xml_expr_op
(** [default_xml_expr_op ()] is the default value for type [xml_expr_op] *)

val default_xml_option_type : unit -> xml_option_type
(** [default_xml_option_type ()] is the default value for type [xml_option_type] *)

val default_null_test_type : unit -> null_test_type
(** [default_null_test_type ()] is the default value for type [null_test_type] *)

val default_bool_test_type : unit -> bool_test_type
(** [default_bool_test_type ()] is the default value for type [bool_test_type] *)

val default_range_tbl_ref : 
  ?rtindex:int32 ->
  unit ->
  range_tbl_ref
(** [default_range_tbl_ref ()] is the default value for type [range_tbl_ref] *)

val default_join_type : unit -> join_type
(** [default_join_type ()] is the default value for type [join_type] *)

val default_on_conflict_action : unit -> on_conflict_action
(** [default_on_conflict_action ()] is the default value for type [on_conflict_action] *)

val default_on_commit_action : unit -> on_commit_action
(** [default_on_commit_action ()] is the default value for type [on_commit_action] *)

val default_cmd_type : unit -> cmd_type
(** [default_cmd_type ()] is the default value for type [cmd_type] *)

val default_overriding_kind : unit -> overriding_kind
(** [default_overriding_kind ()] is the default value for type [overriding_kind] *)

val default_query_source : unit -> query_source
(** [default_query_source ()] is the default value for type [query_source] *)

val default_limit_option : unit -> limit_option
(** [default_limit_option ()] is the default value for type [limit_option] *)

val default_set_operation : unit -> set_operation
(** [default_set_operation ()] is the default value for type [set_operation] *)

val default_object_type : unit -> object_type
(** [default_object_type ()] is the default value for type [object_type] *)

val default_alter_table_type : unit -> alter_table_type
(** [default_alter_table_type ()] is the default value for type [alter_table_type] *)

val default_role_spec_type : unit -> role_spec_type
(** [default_role_spec_type ()] is the default value for type [role_spec_type] *)

val default_role_spec : 
  ?roletype:role_spec_type ->
  ?rolename:string ->
  ?location:int32 ->
  unit ->
  role_spec
(** [default_role_spec ()] is the default value for type [role_spec] *)

val default_drop_behavior : unit -> drop_behavior
(** [default_drop_behavior ()] is the default value for type [drop_behavior] *)

val default_grant_target_type : unit -> grant_target_type
(** [default_grant_target_type ()] is the default value for type [grant_target_type] *)

val default_close_portal_stmt : 
  ?portalname:string ->
  unit ->
  close_portal_stmt
(** [default_close_portal_stmt ()] is the default value for type [close_portal_stmt] *)

val default_fetch_direction : unit -> fetch_direction
(** [default_fetch_direction ()] is the default value for type [fetch_direction] *)

val default_fetch_stmt : 
  ?direction:fetch_direction ->
  ?how_many:int64 ->
  ?portalname:string ->
  ?ismove:bool ->
  unit ->
  fetch_stmt
(** [default_fetch_stmt ()] is the default value for type [fetch_stmt] *)

val default_notify_stmt : 
  ?conditionname:string ->
  ?payload:string ->
  unit ->
  notify_stmt
(** [default_notify_stmt ()] is the default value for type [notify_stmt] *)

val default_listen_stmt : 
  ?conditionname:string ->
  unit ->
  listen_stmt
(** [default_listen_stmt ()] is the default value for type [listen_stmt] *)

val default_unlisten_stmt : 
  ?conditionname:string ->
  unit ->
  unlisten_stmt
(** [default_unlisten_stmt ()] is the default value for type [unlisten_stmt] *)

val default_transaction_stmt_kind : unit -> transaction_stmt_kind
(** [default_transaction_stmt_kind ()] is the default value for type [transaction_stmt_kind] *)

val default_view_check_option : unit -> view_check_option
(** [default_view_check_option ()] is the default value for type [view_check_option] *)

val default_load_stmt : 
  ?filename:string ->
  unit ->
  load_stmt
(** [default_load_stmt ()] is the default value for type [load_stmt] *)

val default_variable_set_kind : unit -> variable_set_kind
(** [default_variable_set_kind ()] is the default value for type [variable_set_kind] *)

val default_variable_show_stmt : 
  ?name:string ->
  unit ->
  variable_show_stmt
(** [default_variable_show_stmt ()] is the default value for type [variable_show_stmt] *)

val default_discard_mode : unit -> discard_mode
(** [default_discard_mode ()] is the default value for type [discard_mode] *)

val default_discard_stmt : 
  ?target:discard_mode ->
  unit ->
  discard_stmt
(** [default_discard_stmt ()] is the default value for type [discard_stmt] *)

val default_role_stmt_type : unit -> role_stmt_type
(** [default_role_stmt_type ()] is the default value for type [role_stmt_type] *)

val default_reindex_object_type : unit -> reindex_object_type
(** [default_reindex_object_type ()] is the default value for type [reindex_object_type] *)

val default_alter_database_refresh_coll_stmt : 
  ?dbname:string ->
  unit ->
  alter_database_refresh_coll_stmt
(** [default_alter_database_refresh_coll_stmt ()] is the default value for type [alter_database_refresh_coll_stmt] *)

val default_coercion_context : unit -> coercion_context
(** [default_coercion_context ()] is the default value for type [coercion_context] *)

val default_deallocate_stmt : 
  ?name:string ->
  unit ->
  deallocate_stmt
(** [default_deallocate_stmt ()] is the default value for type [deallocate_stmt] *)

val default_drop_table_space_stmt : 
  ?tablespacename:string ->
  ?missing_ok:bool ->
  unit ->
  drop_table_space_stmt
(** [default_drop_table_space_stmt ()] is the default value for type [drop_table_space_stmt] *)

val default_string : 
  ?sval:string ->
  unit ->
  string
(** [default_string ()] is the default value for type [string] *)

val default_alter_tsconfig_type : unit -> alter_tsconfig_type
(** [default_alter_tsconfig_type ()] is the default value for type [alter_tsconfig_type] *)

val default_drop_user_mapping_stmt : 
  ?user:role_spec option ->
  ?servername:string ->
  ?missing_ok:bool ->
  unit ->
  drop_user_mapping_stmt
(** [default_drop_user_mapping_stmt ()] is the default value for type [drop_user_mapping_stmt] *)

val default_import_foreign_schema_type : unit -> import_foreign_schema_type
(** [default_import_foreign_schema_type ()] is the default value for type [import_foreign_schema_type] *)

val default_alter_event_trig_stmt : 
  ?trigname:string ->
  ?tgenabled:string ->
  unit ->
  alter_event_trig_stmt
(** [default_alter_event_trig_stmt ()] is the default value for type [alter_event_trig_stmt] *)

val default_replica_identity_stmt : 
  ?identity_type:string ->
  ?name:string ->
  unit ->
  replica_identity_stmt
(** [default_replica_identity_stmt ()] is the default value for type [replica_identity_stmt] *)

val default_alter_publication_action : unit -> alter_publication_action
(** [default_alter_publication_action ()] is the default value for type [alter_publication_action] *)

val default_alter_subscription_type : unit -> alter_subscription_type
(** [default_alter_subscription_type ()] is the default value for type [alter_subscription_type] *)

val default_drop_subscription_stmt : 
  ?subname:string ->
  ?missing_ok:bool ->
  ?behavior:drop_behavior ->
  unit ->
  drop_subscription_stmt
(** [default_drop_subscription_stmt ()] is the default value for type [drop_subscription_stmt] *)

val default_a_expr_kind : unit -> a_expr_kind
(** [default_a_expr_kind ()] is the default value for type [a_expr_kind] *)

val default_param_ref : 
  ?number:int32 ->
  ?location:int32 ->
  unit ->
  param_ref
(** [default_param_ref ()] is the default value for type [param_ref] *)

val default_sort_by_dir : unit -> sort_by_dir
(** [default_sort_by_dir ()] is the default value for type [sort_by_dir] *)

val default_sort_by_nulls : unit -> sort_by_nulls
(** [default_sort_by_nulls ()] is the default value for type [sort_by_nulls] *)

val default_constr_type : unit -> constr_type
(** [default_constr_type ()] is the default value for type [constr_type] *)

val default_def_elem_action : unit -> def_elem_action
(** [default_def_elem_action ()] is the default value for type [def_elem_action] *)

val default_rtekind : unit -> rtekind
(** [default_rtekind ()] is the default value for type [rtekind] *)

val default_wcokind : unit -> wcokind
(** [default_wcokind ()] is the default value for type [wcokind] *)

val default_sort_group_clause : 
  ?tle_sort_group_ref:int32 ->
  ?eqop:int32 ->
  ?sortop:int32 ->
  ?nulls_first:bool ->
  ?hashable:bool ->
  unit ->
  sort_group_clause
(** [default_sort_group_clause ()] is the default value for type [sort_group_clause] *)

val default_grouping_set_kind : unit -> grouping_set_kind
(** [default_grouping_set_kind ()] is the default value for type [grouping_set_kind] *)

val default_function_parameter_mode : unit -> function_parameter_mode
(** [default_function_parameter_mode ()] is the default value for type [function_parameter_mode] *)

val default_lock_clause_strength : unit -> lock_clause_strength
(** [default_lock_clause_strength ()] is the default value for type [lock_clause_strength] *)

val default_lock_wait_policy : unit -> lock_wait_policy
(** [default_lock_wait_policy ()] is the default value for type [lock_wait_policy] *)

val default_row_mark_clause : 
  ?rti:int32 ->
  ?strength:lock_clause_strength ->
  ?wait_policy:lock_wait_policy ->
  ?pushed_down:bool ->
  unit ->
  row_mark_clause
(** [default_row_mark_clause ()] is the default value for type [row_mark_clause] *)

val default_ctematerialize : unit -> ctematerialize
(** [default_ctematerialize ()] is the default value for type [ctematerialize] *)

val default_trigger_transition : 
  ?name:string ->
  ?is_new:bool ->
  ?is_table:bool ->
  unit ->
  trigger_transition
(** [default_trigger_transition ()] is the default value for type [trigger_transition] *)

val default_partition_range_datum_kind : unit -> partition_range_datum_kind
(** [default_partition_range_datum_kind ()] is the default value for type [partition_range_datum_kind] *)

val default_publication_obj_spec_type : unit -> publication_obj_spec_type
(** [default_publication_obj_spec_type ()] is the default value for type [publication_obj_spec_type] *)

val default_inline_code_block : 
  ?source_text:string ->
  ?lang_oid:int32 ->
  ?lang_is_trusted:bool ->
  ?atomic:bool ->
  unit ->
  inline_code_block
(** [default_inline_code_block ()] is the default value for type [inline_code_block] *)

val default_call_context : 
  ?atomic:bool ->
  unit ->
  call_context
(** [default_call_context ()] is the default value for type [call_context] *)

val default_integer : 
  ?ival:int32 ->
  unit ->
  integer
(** [default_integer ()] is the default value for type [integer] *)

val default_float : 
  ?fval:string ->
  unit ->
  float
(** [default_float ()] is the default value for type [float] *)

val default_boolean : 
  ?boolval:bool ->
  unit ->
  boolean
(** [default_boolean ()] is the default value for type [boolean] *)

val default_bit_string : 
  ?bsval:string ->
  unit ->
  bit_string
(** [default_bit_string ()] is the default value for type [bit_string] *)

val default_a_const_val : unit -> a_const_val
(** [default_a_const_val ()] is the default value for type [a_const_val] *)

val default_a_const : 
  ?val_:a_const_val ->
  ?isnull:bool ->
  ?location:int32 ->
  unit ->
  a_const
(** [default_a_const ()] is the default value for type [a_const] *)

val default_raw_stmt : 
  ?stmt:node option ->
  ?stmt_location:int32 ->
  ?stmt_len:int32 ->
  unit ->
  raw_stmt
(** [default_raw_stmt ()] is the default value for type [raw_stmt] *)

val default_node : unit -> node
(** [default_node ()] is the default value for type [node] *)

val default_alias : 
  ?aliasname:string ->
  ?colnames:node list ->
  unit ->
  alias
(** [default_alias ()] is the default value for type [alias] *)

val default_range_var : 
  ?catalogname:string ->
  ?schemaname:string ->
  ?relname:string ->
  ?inh:bool ->
  ?relpersistence:string ->
  ?alias:alias option ->
  ?location:int32 ->
  unit ->
  range_var
(** [default_range_var ()] is the default value for type [range_var] *)

val default_table_func : 
  ?ns_uris:node list ->
  ?ns_names:node list ->
  ?docexpr:node option ->
  ?rowexpr:node option ->
  ?colnames:node list ->
  ?coltypes:node list ->
  ?coltypmods:node list ->
  ?colcollations:node list ->
  ?colexprs:node list ->
  ?coldefexprs:node list ->
  ?notnulls:int64 list ->
  ?ordinalitycol:int32 ->
  ?location:int32 ->
  unit ->
  table_func
(** [default_table_func ()] is the default value for type [table_func] *)

val default_var : 
  ?xpr:node option ->
  ?varno:int32 ->
  ?varattno:int32 ->
  ?vartype:int32 ->
  ?vartypmod:int32 ->
  ?varcollid:int32 ->
  ?varlevelsup:int32 ->
  ?varnosyn:int32 ->
  ?varattnosyn:int32 ->
  ?location:int32 ->
  unit ->
  var
(** [default_var ()] is the default value for type [var] *)

val default_param : 
  ?xpr:node option ->
  ?paramkind:param_kind ->
  ?paramid:int32 ->
  ?paramtype:int32 ->
  ?paramtypmod:int32 ->
  ?paramcollid:int32 ->
  ?location:int32 ->
  unit ->
  param
(** [default_param ()] is the default value for type [param] *)

val default_aggref : 
  ?xpr:node option ->
  ?aggfnoid:int32 ->
  ?aggtype:int32 ->
  ?aggcollid:int32 ->
  ?inputcollid:int32 ->
  ?aggtranstype:int32 ->
  ?aggargtypes:node list ->
  ?aggdirectargs:node list ->
  ?args:node list ->
  ?aggorder:node list ->
  ?aggdistinct:node list ->
  ?aggfilter:node option ->
  ?aggstar:bool ->
  ?aggvariadic:bool ->
  ?aggkind:string ->
  ?agglevelsup:int32 ->
  ?aggsplit:agg_split ->
  ?aggno:int32 ->
  ?aggtransno:int32 ->
  ?location:int32 ->
  unit ->
  aggref
(** [default_aggref ()] is the default value for type [aggref] *)

val default_grouping_func : 
  ?xpr:node option ->
  ?args:node list ->
  ?refs:node list ->
  ?cols:node list ->
  ?agglevelsup:int32 ->
  ?location:int32 ->
  unit ->
  grouping_func
(** [default_grouping_func ()] is the default value for type [grouping_func] *)

val default_window_func : 
  ?xpr:node option ->
  ?winfnoid:int32 ->
  ?wintype:int32 ->
  ?wincollid:int32 ->
  ?inputcollid:int32 ->
  ?args:node list ->
  ?aggfilter:node option ->
  ?winref:int32 ->
  ?winstar:bool ->
  ?winagg:bool ->
  ?location:int32 ->
  unit ->
  window_func
(** [default_window_func ()] is the default value for type [window_func] *)

val default_subscripting_ref : 
  ?xpr:node option ->
  ?refcontainertype:int32 ->
  ?refelemtype:int32 ->
  ?refrestype:int32 ->
  ?reftypmod:int32 ->
  ?refcollid:int32 ->
  ?refupperindexpr:node list ->
  ?reflowerindexpr:node list ->
  ?refexpr:node option ->
  ?refassgnexpr:node option ->
  unit ->
  subscripting_ref
(** [default_subscripting_ref ()] is the default value for type [subscripting_ref] *)

val default_func_expr : 
  ?xpr:node option ->
  ?funcid:int32 ->
  ?funcresulttype:int32 ->
  ?funcretset:bool ->
  ?funcvariadic:bool ->
  ?funcformat:coercion_form ->
  ?funccollid:int32 ->
  ?inputcollid:int32 ->
  ?args:node list ->
  ?location:int32 ->
  unit ->
  func_expr
(** [default_func_expr ()] is the default value for type [func_expr] *)

val default_named_arg_expr : 
  ?xpr:node option ->
  ?arg:node option ->
  ?name:string ->
  ?argnumber:int32 ->
  ?location:int32 ->
  unit ->
  named_arg_expr
(** [default_named_arg_expr ()] is the default value for type [named_arg_expr] *)

val default_op_expr : 
  ?xpr:node option ->
  ?opno:int32 ->
  ?opfuncid:int32 ->
  ?opresulttype:int32 ->
  ?opretset:bool ->
  ?opcollid:int32 ->
  ?inputcollid:int32 ->
  ?args:node list ->
  ?location:int32 ->
  unit ->
  op_expr
(** [default_op_expr ()] is the default value for type [op_expr] *)

val default_distinct_expr : 
  ?xpr:node option ->
  ?opno:int32 ->
  ?opfuncid:int32 ->
  ?opresulttype:int32 ->
  ?opretset:bool ->
  ?opcollid:int32 ->
  ?inputcollid:int32 ->
  ?args:node list ->
  ?location:int32 ->
  unit ->
  distinct_expr
(** [default_distinct_expr ()] is the default value for type [distinct_expr] *)

val default_null_if_expr : 
  ?xpr:node option ->
  ?opno:int32 ->
  ?opfuncid:int32 ->
  ?opresulttype:int32 ->
  ?opretset:bool ->
  ?opcollid:int32 ->
  ?inputcollid:int32 ->
  ?args:node list ->
  ?location:int32 ->
  unit ->
  null_if_expr
(** [default_null_if_expr ()] is the default value for type [null_if_expr] *)

val default_scalar_array_op_expr : 
  ?xpr:node option ->
  ?opno:int32 ->
  ?opfuncid:int32 ->
  ?hashfuncid:int32 ->
  ?negfuncid:int32 ->
  ?use_or:bool ->
  ?inputcollid:int32 ->
  ?args:node list ->
  ?location:int32 ->
  unit ->
  scalar_array_op_expr
(** [default_scalar_array_op_expr ()] is the default value for type [scalar_array_op_expr] *)

val default_bool_expr : 
  ?xpr:node option ->
  ?boolop:bool_expr_type ->
  ?args:node list ->
  ?location:int32 ->
  unit ->
  bool_expr
(** [default_bool_expr ()] is the default value for type [bool_expr] *)

val default_sub_link : 
  ?xpr:node option ->
  ?sub_link_type:sub_link_type ->
  ?sub_link_id:int32 ->
  ?testexpr:node option ->
  ?oper_name:node list ->
  ?subselect:node option ->
  ?location:int32 ->
  unit ->
  sub_link
(** [default_sub_link ()] is the default value for type [sub_link] *)

val default_sub_plan : 
  ?xpr:node option ->
  ?sub_link_type:sub_link_type ->
  ?testexpr:node option ->
  ?param_ids:node list ->
  ?plan_id:int32 ->
  ?plan_name:string ->
  ?first_col_type:int32 ->
  ?first_col_typmod:int32 ->
  ?first_col_collation:int32 ->
  ?use_hash_table:bool ->
  ?unknown_eq_false:bool ->
  ?parallel_safe:bool ->
  ?set_param:node list ->
  ?par_param:node list ->
  ?args:node list ->
  ?startup_cost:float ->
  ?per_call_cost:float ->
  unit ->
  sub_plan
(** [default_sub_plan ()] is the default value for type [sub_plan] *)

val default_alternative_sub_plan : 
  ?xpr:node option ->
  ?subplans:node list ->
  unit ->
  alternative_sub_plan
(** [default_alternative_sub_plan ()] is the default value for type [alternative_sub_plan] *)

val default_field_select : 
  ?xpr:node option ->
  ?arg:node option ->
  ?fieldnum:int32 ->
  ?resulttype:int32 ->
  ?resulttypmod:int32 ->
  ?resultcollid:int32 ->
  unit ->
  field_select
(** [default_field_select ()] is the default value for type [field_select] *)

val default_field_store : 
  ?xpr:node option ->
  ?arg:node option ->
  ?newvals:node list ->
  ?fieldnums:node list ->
  ?resulttype:int32 ->
  unit ->
  field_store
(** [default_field_store ()] is the default value for type [field_store] *)

val default_relabel_type : 
  ?xpr:node option ->
  ?arg:node option ->
  ?resulttype:int32 ->
  ?resulttypmod:int32 ->
  ?resultcollid:int32 ->
  ?relabelformat:coercion_form ->
  ?location:int32 ->
  unit ->
  relabel_type
(** [default_relabel_type ()] is the default value for type [relabel_type] *)

val default_coerce_via_io : 
  ?xpr:node option ->
  ?arg:node option ->
  ?resulttype:int32 ->
  ?resultcollid:int32 ->
  ?coerceformat:coercion_form ->
  ?location:int32 ->
  unit ->
  coerce_via_io
(** [default_coerce_via_io ()] is the default value for type [coerce_via_io] *)

val default_array_coerce_expr : 
  ?xpr:node option ->
  ?arg:node option ->
  ?elemexpr:node option ->
  ?resulttype:int32 ->
  ?resulttypmod:int32 ->
  ?resultcollid:int32 ->
  ?coerceformat:coercion_form ->
  ?location:int32 ->
  unit ->
  array_coerce_expr
(** [default_array_coerce_expr ()] is the default value for type [array_coerce_expr] *)

val default_convert_rowtype_expr : 
  ?xpr:node option ->
  ?arg:node option ->
  ?resulttype:int32 ->
  ?convertformat:coercion_form ->
  ?location:int32 ->
  unit ->
  convert_rowtype_expr
(** [default_convert_rowtype_expr ()] is the default value for type [convert_rowtype_expr] *)

val default_collate_expr : 
  ?xpr:node option ->
  ?arg:node option ->
  ?coll_oid:int32 ->
  ?location:int32 ->
  unit ->
  collate_expr
(** [default_collate_expr ()] is the default value for type [collate_expr] *)

val default_case_expr : 
  ?xpr:node option ->
  ?casetype:int32 ->
  ?casecollid:int32 ->
  ?arg:node option ->
  ?args:node list ->
  ?defresult:node option ->
  ?location:int32 ->
  unit ->
  case_expr
(** [default_case_expr ()] is the default value for type [case_expr] *)

val default_case_when : 
  ?xpr:node option ->
  ?expr:node option ->
  ?result:node option ->
  ?location:int32 ->
  unit ->
  case_when
(** [default_case_when ()] is the default value for type [case_when] *)

val default_case_test_expr : 
  ?xpr:node option ->
  ?type_id:int32 ->
  ?type_mod:int32 ->
  ?collation:int32 ->
  unit ->
  case_test_expr
(** [default_case_test_expr ()] is the default value for type [case_test_expr] *)

val default_array_expr : 
  ?xpr:node option ->
  ?array_typeid:int32 ->
  ?array_collid:int32 ->
  ?element_typeid:int32 ->
  ?elements:node list ->
  ?multidims:bool ->
  ?location:int32 ->
  unit ->
  array_expr
(** [default_array_expr ()] is the default value for type [array_expr] *)

val default_row_expr : 
  ?xpr:node option ->
  ?args:node list ->
  ?row_typeid:int32 ->
  ?row_format:coercion_form ->
  ?colnames:node list ->
  ?location:int32 ->
  unit ->
  row_expr
(** [default_row_expr ()] is the default value for type [row_expr] *)

val default_row_compare_expr : 
  ?xpr:node option ->
  ?rctype:row_compare_type ->
  ?opnos:node list ->
  ?opfamilies:node list ->
  ?inputcollids:node list ->
  ?largs:node list ->
  ?rargs:node list ->
  unit ->
  row_compare_expr
(** [default_row_compare_expr ()] is the default value for type [row_compare_expr] *)

val default_coalesce_expr : 
  ?xpr:node option ->
  ?coalescetype:int32 ->
  ?coalescecollid:int32 ->
  ?args:node list ->
  ?location:int32 ->
  unit ->
  coalesce_expr
(** [default_coalesce_expr ()] is the default value for type [coalesce_expr] *)

val default_min_max_expr : 
  ?xpr:node option ->
  ?minmaxtype:int32 ->
  ?minmaxcollid:int32 ->
  ?inputcollid:int32 ->
  ?op:min_max_op ->
  ?args:node list ->
  ?location:int32 ->
  unit ->
  min_max_expr
(** [default_min_max_expr ()] is the default value for type [min_max_expr] *)

val default_sqlvalue_function : 
  ?xpr:node option ->
  ?op:sqlvalue_function_op ->
  ?type_:int32 ->
  ?typmod:int32 ->
  ?location:int32 ->
  unit ->
  sqlvalue_function
(** [default_sqlvalue_function ()] is the default value for type [sqlvalue_function] *)

val default_xml_expr : 
  ?xpr:node option ->
  ?op:xml_expr_op ->
  ?name:string ->
  ?named_args:node list ->
  ?arg_names:node list ->
  ?args:node list ->
  ?xmloption:xml_option_type ->
  ?type_:int32 ->
  ?typmod:int32 ->
  ?location:int32 ->
  unit ->
  xml_expr
(** [default_xml_expr ()] is the default value for type [xml_expr] *)

val default_null_test : 
  ?xpr:node option ->
  ?arg:node option ->
  ?nulltesttype:null_test_type ->
  ?argisrow:bool ->
  ?location:int32 ->
  unit ->
  null_test
(** [default_null_test ()] is the default value for type [null_test] *)

val default_boolean_test : 
  ?xpr:node option ->
  ?arg:node option ->
  ?booltesttype:bool_test_type ->
  ?location:int32 ->
  unit ->
  boolean_test
(** [default_boolean_test ()] is the default value for type [boolean_test] *)

val default_coerce_to_domain : 
  ?xpr:node option ->
  ?arg:node option ->
  ?resulttype:int32 ->
  ?resulttypmod:int32 ->
  ?resultcollid:int32 ->
  ?coercionformat:coercion_form ->
  ?location:int32 ->
  unit ->
  coerce_to_domain
(** [default_coerce_to_domain ()] is the default value for type [coerce_to_domain] *)

val default_coerce_to_domain_value : 
  ?xpr:node option ->
  ?type_id:int32 ->
  ?type_mod:int32 ->
  ?collation:int32 ->
  ?location:int32 ->
  unit ->
  coerce_to_domain_value
(** [default_coerce_to_domain_value ()] is the default value for type [coerce_to_domain_value] *)

val default_set_to_default : 
  ?xpr:node option ->
  ?type_id:int32 ->
  ?type_mod:int32 ->
  ?collation:int32 ->
  ?location:int32 ->
  unit ->
  set_to_default
(** [default_set_to_default ()] is the default value for type [set_to_default] *)

val default_current_of_expr : 
  ?xpr:node option ->
  ?cvarno:int32 ->
  ?cursor_name:string ->
  ?cursor_param:int32 ->
  unit ->
  current_of_expr
(** [default_current_of_expr ()] is the default value for type [current_of_expr] *)

val default_next_value_expr : 
  ?xpr:node option ->
  ?seqid:int32 ->
  ?type_id:int32 ->
  unit ->
  next_value_expr
(** [default_next_value_expr ()] is the default value for type [next_value_expr] *)

val default_inference_elem : 
  ?xpr:node option ->
  ?expr:node option ->
  ?infercollid:int32 ->
  ?inferopclass:int32 ->
  unit ->
  inference_elem
(** [default_inference_elem ()] is the default value for type [inference_elem] *)

val default_target_entry : 
  ?xpr:node option ->
  ?expr:node option ->
  ?resno:int32 ->
  ?resname:string ->
  ?ressortgroupref:int32 ->
  ?resorigtbl:int32 ->
  ?resorigcol:int32 ->
  ?resjunk:bool ->
  unit ->
  target_entry
(** [default_target_entry ()] is the default value for type [target_entry] *)

val default_join_expr : 
  ?jointype:join_type ->
  ?is_natural:bool ->
  ?larg:node option ->
  ?rarg:node option ->
  ?using_clause:node list ->
  ?join_using_alias:alias option ->
  ?quals:node option ->
  ?alias:alias option ->
  ?rtindex:int32 ->
  unit ->
  join_expr
(** [default_join_expr ()] is the default value for type [join_expr] *)

val default_from_expr : 
  ?fromlist:node list ->
  ?quals:node option ->
  unit ->
  from_expr
(** [default_from_expr ()] is the default value for type [from_expr] *)

val default_on_conflict_expr : 
  ?action:on_conflict_action ->
  ?arbiter_elems:node list ->
  ?arbiter_where:node option ->
  ?constraint_:int32 ->
  ?on_conflict_set:node list ->
  ?on_conflict_where:node option ->
  ?excl_rel_index:int32 ->
  ?excl_rel_tlist:node list ->
  unit ->
  on_conflict_expr
(** [default_on_conflict_expr ()] is the default value for type [on_conflict_expr] *)

val default_into_clause : 
  ?rel:range_var option ->
  ?col_names:node list ->
  ?access_method:string ->
  ?options:node list ->
  ?on_commit:on_commit_action ->
  ?table_space_name:string ->
  ?view_query:node option ->
  ?skip_data:bool ->
  unit ->
  into_clause
(** [default_into_clause ()] is the default value for type [into_clause] *)

val default_merge_action : 
  ?matched:bool ->
  ?command_type:cmd_type ->
  ?override:overriding_kind ->
  ?qual:node option ->
  ?target_list:node list ->
  ?update_colnos:node list ->
  unit ->
  merge_action
(** [default_merge_action ()] is the default value for type [merge_action] *)

val default_query : 
  ?command_type:cmd_type ->
  ?query_source:query_source ->
  ?can_set_tag:bool ->
  ?utility_stmt:node option ->
  ?result_relation:int32 ->
  ?has_aggs:bool ->
  ?has_window_funcs:bool ->
  ?has_target_srfs:bool ->
  ?has_sub_links:bool ->
  ?has_distinct_on:bool ->
  ?has_recursive:bool ->
  ?has_modifying_cte:bool ->
  ?has_for_update:bool ->
  ?has_row_security:bool ->
  ?is_return:bool ->
  ?cte_list:node list ->
  ?rtable:node list ->
  ?jointree:from_expr option ->
  ?merge_action_list:node list ->
  ?merge_use_outer_join:bool ->
  ?target_list:node list ->
  ?override:overriding_kind ->
  ?on_conflict:on_conflict_expr option ->
  ?returning_list:node list ->
  ?group_clause:node list ->
  ?group_distinct:bool ->
  ?grouping_sets:node list ->
  ?having_qual:node option ->
  ?window_clause:node list ->
  ?distinct_clause:node list ->
  ?sort_clause:node list ->
  ?limit_offset:node option ->
  ?limit_count:node option ->
  ?limit_option:limit_option ->
  ?row_marks:node list ->
  ?set_operations:node option ->
  ?constraint_deps:node list ->
  ?with_check_options:node list ->
  ?stmt_location:int32 ->
  ?stmt_len:int32 ->
  unit ->
  query
(** [default_query ()] is the default value for type [query] *)

val default_insert_stmt : 
  ?relation:range_var option ->
  ?cols:node list ->
  ?select_stmt:node option ->
  ?on_conflict_clause:on_conflict_clause option ->
  ?returning_list:node list ->
  ?with_clause:with_clause option ->
  ?override:overriding_kind ->
  unit ->
  insert_stmt
(** [default_insert_stmt ()] is the default value for type [insert_stmt] *)

val default_on_conflict_clause : 
  ?action:on_conflict_action ->
  ?infer:infer_clause option ->
  ?target_list:node list ->
  ?where_clause:node option ->
  ?location:int32 ->
  unit ->
  on_conflict_clause
(** [default_on_conflict_clause ()] is the default value for type [on_conflict_clause] *)

val default_infer_clause : 
  ?index_elems:node list ->
  ?where_clause:node option ->
  ?conname:string ->
  ?location:int32 ->
  unit ->
  infer_clause
(** [default_infer_clause ()] is the default value for type [infer_clause] *)

val default_with_clause : 
  ?ctes:node list ->
  ?recursive:bool ->
  ?location:int32 ->
  unit ->
  with_clause
(** [default_with_clause ()] is the default value for type [with_clause] *)

val default_delete_stmt : 
  ?relation:range_var option ->
  ?using_clause:node list ->
  ?where_clause:node option ->
  ?returning_list:node list ->
  ?with_clause:with_clause option ->
  unit ->
  delete_stmt
(** [default_delete_stmt ()] is the default value for type [delete_stmt] *)

val default_update_stmt : 
  ?relation:range_var option ->
  ?target_list:node list ->
  ?where_clause:node option ->
  ?from_clause:node list ->
  ?returning_list:node list ->
  ?with_clause:with_clause option ->
  unit ->
  update_stmt
(** [default_update_stmt ()] is the default value for type [update_stmt] *)

val default_merge_stmt : 
  ?relation:range_var option ->
  ?source_relation:node option ->
  ?join_condition:node option ->
  ?merge_when_clauses:node list ->
  ?with_clause:with_clause option ->
  unit ->
  merge_stmt
(** [default_merge_stmt ()] is the default value for type [merge_stmt] *)

val default_select_stmt : 
  ?distinct_clause:node list ->
  ?into_clause:into_clause option ->
  ?target_list:node list ->
  ?from_clause:node list ->
  ?where_clause:node option ->
  ?group_clause:node list ->
  ?group_distinct:bool ->
  ?having_clause:node option ->
  ?window_clause:node list ->
  ?values_lists:node list ->
  ?sort_clause:node list ->
  ?limit_offset:node option ->
  ?limit_count:node option ->
  ?limit_option:limit_option ->
  ?locking_clause:node list ->
  ?with_clause:with_clause option ->
  ?op:set_operation ->
  ?all:bool ->
  ?larg:select_stmt option ->
  ?rarg:select_stmt option ->
  unit ->
  select_stmt
(** [default_select_stmt ()] is the default value for type [select_stmt] *)

val default_return_stmt : 
  ?returnval:node option ->
  unit ->
  return_stmt
(** [default_return_stmt ()] is the default value for type [return_stmt] *)

val default_plassign_stmt : 
  ?name:string ->
  ?indirection:node list ->
  ?nnames:int32 ->
  ?val_:select_stmt option ->
  ?location:int32 ->
  unit ->
  plassign_stmt
(** [default_plassign_stmt ()] is the default value for type [plassign_stmt] *)

val default_alter_table_stmt : 
  ?relation:range_var option ->
  ?cmds:node list ->
  ?objtype:object_type ->
  ?missing_ok:bool ->
  unit ->
  alter_table_stmt
(** [default_alter_table_stmt ()] is the default value for type [alter_table_stmt] *)

val default_alter_table_cmd : 
  ?subtype:alter_table_type ->
  ?name:string ->
  ?num:int32 ->
  ?newowner:role_spec option ->
  ?def:node option ->
  ?behavior:drop_behavior ->
  ?missing_ok:bool ->
  ?recurse:bool ->
  unit ->
  alter_table_cmd
(** [default_alter_table_cmd ()] is the default value for type [alter_table_cmd] *)

val default_alter_domain_stmt : 
  ?subtype:string ->
  ?type_name:node list ->
  ?name:string ->
  ?def:node option ->
  ?behavior:drop_behavior ->
  ?missing_ok:bool ->
  unit ->
  alter_domain_stmt
(** [default_alter_domain_stmt ()] is the default value for type [alter_domain_stmt] *)

val default_set_operation_stmt : 
  ?op:set_operation ->
  ?all:bool ->
  ?larg:node option ->
  ?rarg:node option ->
  ?col_types:node list ->
  ?col_typmods:node list ->
  ?col_collations:node list ->
  ?group_clauses:node list ->
  unit ->
  set_operation_stmt
(** [default_set_operation_stmt ()] is the default value for type [set_operation_stmt] *)

val default_grant_stmt : 
  ?is_grant:bool ->
  ?targtype:grant_target_type ->
  ?objtype:object_type ->
  ?objects:node list ->
  ?privileges:node list ->
  ?grantees:node list ->
  ?grant_option:bool ->
  ?grantor:role_spec option ->
  ?behavior:drop_behavior ->
  unit ->
  grant_stmt
(** [default_grant_stmt ()] is the default value for type [grant_stmt] *)

val default_grant_role_stmt : 
  ?granted_roles:node list ->
  ?grantee_roles:node list ->
  ?is_grant:bool ->
  ?admin_opt:bool ->
  ?grantor:role_spec option ->
  ?behavior:drop_behavior ->
  unit ->
  grant_role_stmt
(** [default_grant_role_stmt ()] is the default value for type [grant_role_stmt] *)

val default_alter_default_privileges_stmt : 
  ?options:node list ->
  ?action:grant_stmt option ->
  unit ->
  alter_default_privileges_stmt
(** [default_alter_default_privileges_stmt ()] is the default value for type [alter_default_privileges_stmt] *)

val default_cluster_stmt : 
  ?relation:range_var option ->
  ?indexname:string ->
  ?params:node list ->
  unit ->
  cluster_stmt
(** [default_cluster_stmt ()] is the default value for type [cluster_stmt] *)

val default_copy_stmt : 
  ?relation:range_var option ->
  ?query:node option ->
  ?attlist:node list ->
  ?is_from:bool ->
  ?is_program:bool ->
  ?filename:string ->
  ?options:node list ->
  ?where_clause:node option ->
  unit ->
  copy_stmt
(** [default_copy_stmt ()] is the default value for type [copy_stmt] *)

val default_create_stmt : 
  ?relation:range_var option ->
  ?table_elts:node list ->
  ?inh_relations:node list ->
  ?partbound:partition_bound_spec option ->
  ?partspec:partition_spec option ->
  ?of_typename:type_name option ->
  ?constraints:node list ->
  ?options:node list ->
  ?oncommit:on_commit_action ->
  ?tablespacename:string ->
  ?access_method:string ->
  ?if_not_exists:bool ->
  unit ->
  create_stmt
(** [default_create_stmt ()] is the default value for type [create_stmt] *)

val default_partition_bound_spec : 
  ?strategy:string ->
  ?is_default:bool ->
  ?modulus:int32 ->
  ?remainder:int32 ->
  ?listdatums:node list ->
  ?lowerdatums:node list ->
  ?upperdatums:node list ->
  ?location:int32 ->
  unit ->
  partition_bound_spec
(** [default_partition_bound_spec ()] is the default value for type [partition_bound_spec] *)

val default_partition_spec : 
  ?strategy:string ->
  ?part_params:node list ->
  ?location:int32 ->
  unit ->
  partition_spec
(** [default_partition_spec ()] is the default value for type [partition_spec] *)

val default_type_name : 
  ?names:node list ->
  ?type_oid:int32 ->
  ?setof:bool ->
  ?pct_type:bool ->
  ?typmods:node list ->
  ?typemod:int32 ->
  ?array_bounds:node list ->
  ?location:int32 ->
  unit ->
  type_name
(** [default_type_name ()] is the default value for type [type_name] *)

val default_define_stmt : 
  ?kind:object_type ->
  ?oldstyle:bool ->
  ?defnames:node list ->
  ?args:node list ->
  ?definition:node list ->
  ?if_not_exists:bool ->
  ?replace:bool ->
  unit ->
  define_stmt
(** [default_define_stmt ()] is the default value for type [define_stmt] *)

val default_drop_stmt : 
  ?objects:node list ->
  ?remove_type:object_type ->
  ?behavior:drop_behavior ->
  ?missing_ok:bool ->
  ?concurrent:bool ->
  unit ->
  drop_stmt
(** [default_drop_stmt ()] is the default value for type [drop_stmt] *)

val default_truncate_stmt : 
  ?relations:node list ->
  ?restart_seqs:bool ->
  ?behavior:drop_behavior ->
  unit ->
  truncate_stmt
(** [default_truncate_stmt ()] is the default value for type [truncate_stmt] *)

val default_comment_stmt : 
  ?objtype:object_type ->
  ?object_:node option ->
  ?comment:string ->
  unit ->
  comment_stmt
(** [default_comment_stmt ()] is the default value for type [comment_stmt] *)

val default_index_stmt : 
  ?idxname:string ->
  ?relation:range_var option ->
  ?access_method:string ->
  ?table_space:string ->
  ?index_params:node list ->
  ?index_including_params:node list ->
  ?options:node list ->
  ?where_clause:node option ->
  ?exclude_op_names:node list ->
  ?idxcomment:string ->
  ?index_oid:int32 ->
  ?old_node:int32 ->
  ?old_create_subid:int32 ->
  ?old_first_relfilenode_subid:int32 ->
  ?unique:bool ->
  ?nulls_not_distinct:bool ->
  ?primary:bool ->
  ?isconstraint:bool ->
  ?deferrable:bool ->
  ?initdeferred:bool ->
  ?transformed:bool ->
  ?concurrent:bool ->
  ?if_not_exists:bool ->
  ?reset_default_tblspc:bool ->
  unit ->
  index_stmt
(** [default_index_stmt ()] is the default value for type [index_stmt] *)

val default_create_function_stmt : 
  ?is_procedure:bool ->
  ?replace:bool ->
  ?funcname:node list ->
  ?parameters:node list ->
  ?return_type:type_name option ->
  ?options:node list ->
  ?sql_body:node option ->
  unit ->
  create_function_stmt
(** [default_create_function_stmt ()] is the default value for type [create_function_stmt] *)

val default_alter_function_stmt : 
  ?objtype:object_type ->
  ?func:object_with_args option ->
  ?actions:node list ->
  unit ->
  alter_function_stmt
(** [default_alter_function_stmt ()] is the default value for type [alter_function_stmt] *)

val default_object_with_args : 
  ?objname:node list ->
  ?objargs:node list ->
  ?objfuncargs:node list ->
  ?args_unspecified:bool ->
  unit ->
  object_with_args
(** [default_object_with_args ()] is the default value for type [object_with_args] *)

val default_do_stmt : 
  ?args:node list ->
  unit ->
  do_stmt
(** [default_do_stmt ()] is the default value for type [do_stmt] *)

val default_rename_stmt : 
  ?rename_type:object_type ->
  ?relation_type:object_type ->
  ?relation:range_var option ->
  ?object_:node option ->
  ?subname:string ->
  ?newname:string ->
  ?behavior:drop_behavior ->
  ?missing_ok:bool ->
  unit ->
  rename_stmt
(** [default_rename_stmt ()] is the default value for type [rename_stmt] *)

val default_rule_stmt : 
  ?relation:range_var option ->
  ?rulename:string ->
  ?where_clause:node option ->
  ?event:cmd_type ->
  ?instead:bool ->
  ?actions:node list ->
  ?replace:bool ->
  unit ->
  rule_stmt
(** [default_rule_stmt ()] is the default value for type [rule_stmt] *)

val default_transaction_stmt : 
  ?kind:transaction_stmt_kind ->
  ?options:node list ->
  ?savepoint_name:string ->
  ?gid:string ->
  ?chain:bool ->
  unit ->
  transaction_stmt
(** [default_transaction_stmt ()] is the default value for type [transaction_stmt] *)

val default_view_stmt : 
  ?view:range_var option ->
  ?aliases:node list ->
  ?query:node option ->
  ?replace:bool ->
  ?options:node list ->
  ?with_check_option:view_check_option ->
  unit ->
  view_stmt
(** [default_view_stmt ()] is the default value for type [view_stmt] *)

val default_create_domain_stmt : 
  ?domainname:node list ->
  ?type_name:type_name option ->
  ?coll_clause:collate_clause option ->
  ?constraints:node list ->
  unit ->
  create_domain_stmt
(** [default_create_domain_stmt ()] is the default value for type [create_domain_stmt] *)

val default_collate_clause : 
  ?arg:node option ->
  ?collname:node list ->
  ?location:int32 ->
  unit ->
  collate_clause
(** [default_collate_clause ()] is the default value for type [collate_clause] *)

val default_createdb_stmt : 
  ?dbname:string ->
  ?options:node list ->
  unit ->
  createdb_stmt
(** [default_createdb_stmt ()] is the default value for type [createdb_stmt] *)

val default_dropdb_stmt : 
  ?dbname:string ->
  ?missing_ok:bool ->
  ?options:node list ->
  unit ->
  dropdb_stmt
(** [default_dropdb_stmt ()] is the default value for type [dropdb_stmt] *)

val default_vacuum_stmt : 
  ?options:node list ->
  ?rels:node list ->
  ?is_vacuumcmd:bool ->
  unit ->
  vacuum_stmt
(** [default_vacuum_stmt ()] is the default value for type [vacuum_stmt] *)

val default_explain_stmt : 
  ?query:node option ->
  ?options:node list ->
  unit ->
  explain_stmt
(** [default_explain_stmt ()] is the default value for type [explain_stmt] *)

val default_create_table_as_stmt : 
  ?query:node option ->
  ?into:into_clause option ->
  ?objtype:object_type ->
  ?is_select_into:bool ->
  ?if_not_exists:bool ->
  unit ->
  create_table_as_stmt
(** [default_create_table_as_stmt ()] is the default value for type [create_table_as_stmt] *)

val default_create_seq_stmt : 
  ?sequence:range_var option ->
  ?options:node list ->
  ?owner_id:int32 ->
  ?for_identity:bool ->
  ?if_not_exists:bool ->
  unit ->
  create_seq_stmt
(** [default_create_seq_stmt ()] is the default value for type [create_seq_stmt] *)

val default_alter_seq_stmt : 
  ?sequence:range_var option ->
  ?options:node list ->
  ?for_identity:bool ->
  ?missing_ok:bool ->
  unit ->
  alter_seq_stmt
(** [default_alter_seq_stmt ()] is the default value for type [alter_seq_stmt] *)

val default_variable_set_stmt : 
  ?kind:variable_set_kind ->
  ?name:string ->
  ?args:node list ->
  ?is_local:bool ->
  unit ->
  variable_set_stmt
(** [default_variable_set_stmt ()] is the default value for type [variable_set_stmt] *)

val default_create_trig_stmt : 
  ?replace:bool ->
  ?isconstraint:bool ->
  ?trigname:string ->
  ?relation:range_var option ->
  ?funcname:node list ->
  ?args:node list ->
  ?row:bool ->
  ?timing:int32 ->
  ?events:int32 ->
  ?columns:node list ->
  ?when_clause:node option ->
  ?transition_rels:node list ->
  ?deferrable:bool ->
  ?initdeferred:bool ->
  ?constrrel:range_var option ->
  unit ->
  create_trig_stmt
(** [default_create_trig_stmt ()] is the default value for type [create_trig_stmt] *)

val default_create_plang_stmt : 
  ?replace:bool ->
  ?plname:string ->
  ?plhandler:node list ->
  ?plinline:node list ->
  ?plvalidator:node list ->
  ?pltrusted:bool ->
  unit ->
  create_plang_stmt
(** [default_create_plang_stmt ()] is the default value for type [create_plang_stmt] *)

val default_create_role_stmt : 
  ?stmt_type:role_stmt_type ->
  ?role:string ->
  ?options:node list ->
  unit ->
  create_role_stmt
(** [default_create_role_stmt ()] is the default value for type [create_role_stmt] *)

val default_alter_role_stmt : 
  ?role:role_spec option ->
  ?options:node list ->
  ?action:int32 ->
  unit ->
  alter_role_stmt
(** [default_alter_role_stmt ()] is the default value for type [alter_role_stmt] *)

val default_drop_role_stmt : 
  ?roles:node list ->
  ?missing_ok:bool ->
  unit ->
  drop_role_stmt
(** [default_drop_role_stmt ()] is the default value for type [drop_role_stmt] *)

val default_lock_stmt : 
  ?relations:node list ->
  ?mode:int32 ->
  ?nowait:bool ->
  unit ->
  lock_stmt
(** [default_lock_stmt ()] is the default value for type [lock_stmt] *)

val default_constraints_set_stmt : 
  ?constraints:node list ->
  ?deferred:bool ->
  unit ->
  constraints_set_stmt
(** [default_constraints_set_stmt ()] is the default value for type [constraints_set_stmt] *)

val default_reindex_stmt : 
  ?kind:reindex_object_type ->
  ?relation:range_var option ->
  ?name:string ->
  ?params:node list ->
  unit ->
  reindex_stmt
(** [default_reindex_stmt ()] is the default value for type [reindex_stmt] *)

val default_create_schema_stmt : 
  ?schemaname:string ->
  ?authrole:role_spec option ->
  ?schema_elts:node list ->
  ?if_not_exists:bool ->
  unit ->
  create_schema_stmt
(** [default_create_schema_stmt ()] is the default value for type [create_schema_stmt] *)

val default_alter_database_stmt : 
  ?dbname:string ->
  ?options:node list ->
  unit ->
  alter_database_stmt
(** [default_alter_database_stmt ()] is the default value for type [alter_database_stmt] *)

val default_alter_database_set_stmt : 
  ?dbname:string ->
  ?setstmt:variable_set_stmt option ->
  unit ->
  alter_database_set_stmt
(** [default_alter_database_set_stmt ()] is the default value for type [alter_database_set_stmt] *)

val default_alter_role_set_stmt : 
  ?role:role_spec option ->
  ?database:string ->
  ?setstmt:variable_set_stmt option ->
  unit ->
  alter_role_set_stmt
(** [default_alter_role_set_stmt ()] is the default value for type [alter_role_set_stmt] *)

val default_create_conversion_stmt : 
  ?conversion_name:node list ->
  ?for_encoding_name:string ->
  ?to_encoding_name:string ->
  ?func_name:node list ->
  ?def:bool ->
  unit ->
  create_conversion_stmt
(** [default_create_conversion_stmt ()] is the default value for type [create_conversion_stmt] *)

val default_create_cast_stmt : 
  ?sourcetype:type_name option ->
  ?targettype:type_name option ->
  ?func:object_with_args option ->
  ?context:coercion_context ->
  ?inout:bool ->
  unit ->
  create_cast_stmt
(** [default_create_cast_stmt ()] is the default value for type [create_cast_stmt] *)

val default_create_op_class_stmt : 
  ?opclassname:node list ->
  ?opfamilyname:node list ->
  ?amname:string ->
  ?datatype:type_name option ->
  ?items:node list ->
  ?is_default:bool ->
  unit ->
  create_op_class_stmt
(** [default_create_op_class_stmt ()] is the default value for type [create_op_class_stmt] *)

val default_create_op_family_stmt : 
  ?opfamilyname:node list ->
  ?amname:string ->
  unit ->
  create_op_family_stmt
(** [default_create_op_family_stmt ()] is the default value for type [create_op_family_stmt] *)

val default_alter_op_family_stmt : 
  ?opfamilyname:node list ->
  ?amname:string ->
  ?is_drop:bool ->
  ?items:node list ->
  unit ->
  alter_op_family_stmt
(** [default_alter_op_family_stmt ()] is the default value for type [alter_op_family_stmt] *)

val default_prepare_stmt : 
  ?name:string ->
  ?argtypes:node list ->
  ?query:node option ->
  unit ->
  prepare_stmt
(** [default_prepare_stmt ()] is the default value for type [prepare_stmt] *)

val default_execute_stmt : 
  ?name:string ->
  ?params:node list ->
  unit ->
  execute_stmt
(** [default_execute_stmt ()] is the default value for type [execute_stmt] *)

val default_declare_cursor_stmt : 
  ?portalname:string ->
  ?options:int32 ->
  ?query:node option ->
  unit ->
  declare_cursor_stmt
(** [default_declare_cursor_stmt ()] is the default value for type [declare_cursor_stmt] *)

val default_create_table_space_stmt : 
  ?tablespacename:string ->
  ?owner:role_spec option ->
  ?location:string ->
  ?options:node list ->
  unit ->
  create_table_space_stmt
(** [default_create_table_space_stmt ()] is the default value for type [create_table_space_stmt] *)

val default_alter_object_depends_stmt : 
  ?object_type:object_type ->
  ?relation:range_var option ->
  ?object_:node option ->
  ?extname:string option ->
  ?remove:bool ->
  unit ->
  alter_object_depends_stmt
(** [default_alter_object_depends_stmt ()] is the default value for type [alter_object_depends_stmt] *)

val default_alter_object_schema_stmt : 
  ?object_type:object_type ->
  ?relation:range_var option ->
  ?object_:node option ->
  ?newschema:string ->
  ?missing_ok:bool ->
  unit ->
  alter_object_schema_stmt
(** [default_alter_object_schema_stmt ()] is the default value for type [alter_object_schema_stmt] *)

val default_alter_owner_stmt : 
  ?object_type:object_type ->
  ?relation:range_var option ->
  ?object_:node option ->
  ?newowner:role_spec option ->
  unit ->
  alter_owner_stmt
(** [default_alter_owner_stmt ()] is the default value for type [alter_owner_stmt] *)

val default_alter_operator_stmt : 
  ?opername:object_with_args option ->
  ?options:node list ->
  unit ->
  alter_operator_stmt
(** [default_alter_operator_stmt ()] is the default value for type [alter_operator_stmt] *)

val default_alter_type_stmt : 
  ?type_name:node list ->
  ?options:node list ->
  unit ->
  alter_type_stmt
(** [default_alter_type_stmt ()] is the default value for type [alter_type_stmt] *)

val default_drop_owned_stmt : 
  ?roles:node list ->
  ?behavior:drop_behavior ->
  unit ->
  drop_owned_stmt
(** [default_drop_owned_stmt ()] is the default value for type [drop_owned_stmt] *)

val default_reassign_owned_stmt : 
  ?roles:node list ->
  ?newrole:role_spec option ->
  unit ->
  reassign_owned_stmt
(** [default_reassign_owned_stmt ()] is the default value for type [reassign_owned_stmt] *)

val default_composite_type_stmt : 
  ?typevar:range_var option ->
  ?coldeflist:node list ->
  unit ->
  composite_type_stmt
(** [default_composite_type_stmt ()] is the default value for type [composite_type_stmt] *)

val default_create_enum_stmt : 
  ?type_name:node list ->
  ?vals:node list ->
  unit ->
  create_enum_stmt
(** [default_create_enum_stmt ()] is the default value for type [create_enum_stmt] *)

val default_create_range_stmt : 
  ?type_name:node list ->
  ?params:node list ->
  unit ->
  create_range_stmt
(** [default_create_range_stmt ()] is the default value for type [create_range_stmt] *)

val default_alter_enum_stmt : 
  ?type_name:node list ->
  ?old_val:string ->
  ?new_val:string ->
  ?new_val_neighbor:string ->
  ?new_val_is_after:bool ->
  ?skip_if_new_val_exists:bool ->
  unit ->
  alter_enum_stmt
(** [default_alter_enum_stmt ()] is the default value for type [alter_enum_stmt] *)

val default_alter_tsdictionary_stmt : 
  ?dictname:node list ->
  ?options:node list ->
  unit ->
  alter_tsdictionary_stmt
(** [default_alter_tsdictionary_stmt ()] is the default value for type [alter_tsdictionary_stmt] *)

val default_alter_tsconfiguration_stmt : 
  ?kind:alter_tsconfig_type ->
  ?cfgname:node list ->
  ?tokentype:node list ->
  ?dicts:node list ->
  ?override:bool ->
  ?replace:bool ->
  ?missing_ok:bool ->
  unit ->
  alter_tsconfiguration_stmt
(** [default_alter_tsconfiguration_stmt ()] is the default value for type [alter_tsconfiguration_stmt] *)

val default_create_fdw_stmt : 
  ?fdwname:string ->
  ?func_options:node list ->
  ?options:node list ->
  unit ->
  create_fdw_stmt
(** [default_create_fdw_stmt ()] is the default value for type [create_fdw_stmt] *)

val default_alter_fdw_stmt : 
  ?fdwname:string ->
  ?func_options:node list ->
  ?options:node list ->
  unit ->
  alter_fdw_stmt
(** [default_alter_fdw_stmt ()] is the default value for type [alter_fdw_stmt] *)

val default_create_foreign_server_stmt : 
  ?servername:string ->
  ?servertype:string ->
  ?version:string ->
  ?fdwname:string ->
  ?if_not_exists:bool ->
  ?options:node list ->
  unit ->
  create_foreign_server_stmt
(** [default_create_foreign_server_stmt ()] is the default value for type [create_foreign_server_stmt] *)

val default_alter_foreign_server_stmt : 
  ?servername:string ->
  ?version:string ->
  ?options:node list ->
  ?has_version:bool ->
  unit ->
  alter_foreign_server_stmt
(** [default_alter_foreign_server_stmt ()] is the default value for type [alter_foreign_server_stmt] *)

val default_create_user_mapping_stmt : 
  ?user:role_spec option ->
  ?servername:string ->
  ?if_not_exists:bool ->
  ?options:node list ->
  unit ->
  create_user_mapping_stmt
(** [default_create_user_mapping_stmt ()] is the default value for type [create_user_mapping_stmt] *)

val default_alter_user_mapping_stmt : 
  ?user:role_spec option ->
  ?servername:string ->
  ?options:node list ->
  unit ->
  alter_user_mapping_stmt
(** [default_alter_user_mapping_stmt ()] is the default value for type [alter_user_mapping_stmt] *)

val default_alter_table_space_options_stmt : 
  ?tablespacename:string ->
  ?options:node list ->
  ?is_reset:bool ->
  unit ->
  alter_table_space_options_stmt
(** [default_alter_table_space_options_stmt ()] is the default value for type [alter_table_space_options_stmt] *)

val default_alter_table_move_all_stmt : 
  ?orig_tablespacename:string ->
  ?objtype:object_type ->
  ?roles:node list ->
  ?new_tablespacename:string ->
  ?nowait:bool ->
  unit ->
  alter_table_move_all_stmt
(** [default_alter_table_move_all_stmt ()] is the default value for type [alter_table_move_all_stmt] *)

val default_sec_label_stmt : 
  ?objtype:object_type ->
  ?object_:node option ->
  ?provider:string ->
  ?label:string ->
  unit ->
  sec_label_stmt
(** [default_sec_label_stmt ()] is the default value for type [sec_label_stmt] *)

val default_create_foreign_table_stmt : 
  ?base_stmt:create_stmt option ->
  ?servername:string ->
  ?options:node list ->
  unit ->
  create_foreign_table_stmt
(** [default_create_foreign_table_stmt ()] is the default value for type [create_foreign_table_stmt] *)

val default_import_foreign_schema_stmt : 
  ?server_name:string ->
  ?remote_schema:string ->
  ?local_schema:string ->
  ?list_type:import_foreign_schema_type ->
  ?table_list:node list ->
  ?options:node list ->
  unit ->
  import_foreign_schema_stmt
(** [default_import_foreign_schema_stmt ()] is the default value for type [import_foreign_schema_stmt] *)

val default_create_extension_stmt : 
  ?extname:string ->
  ?if_not_exists:bool ->
  ?options:node list ->
  unit ->
  create_extension_stmt
(** [default_create_extension_stmt ()] is the default value for type [create_extension_stmt] *)

val default_alter_extension_stmt : 
  ?extname:string ->
  ?options:node list ->
  unit ->
  alter_extension_stmt
(** [default_alter_extension_stmt ()] is the default value for type [alter_extension_stmt] *)

val default_alter_extension_contents_stmt : 
  ?extname:string ->
  ?action:int32 ->
  ?objtype:object_type ->
  ?object_:node option ->
  unit ->
  alter_extension_contents_stmt
(** [default_alter_extension_contents_stmt ()] is the default value for type [alter_extension_contents_stmt] *)

val default_create_event_trig_stmt : 
  ?trigname:string ->
  ?eventname:string ->
  ?whenclause:node list ->
  ?funcname:node list ->
  unit ->
  create_event_trig_stmt
(** [default_create_event_trig_stmt ()] is the default value for type [create_event_trig_stmt] *)

val default_refresh_mat_view_stmt : 
  ?concurrent:bool ->
  ?skip_data:bool ->
  ?relation:range_var option ->
  unit ->
  refresh_mat_view_stmt
(** [default_refresh_mat_view_stmt ()] is the default value for type [refresh_mat_view_stmt] *)

val default_alter_system_stmt : 
  ?setstmt:variable_set_stmt option ->
  unit ->
  alter_system_stmt
(** [default_alter_system_stmt ()] is the default value for type [alter_system_stmt] *)

val default_create_policy_stmt : 
  ?policy_name:string ->
  ?table:range_var option ->
  ?cmd_name:string ->
  ?permissive:bool ->
  ?roles:node list ->
  ?qual:node option ->
  ?with_check:node option ->
  unit ->
  create_policy_stmt
(** [default_create_policy_stmt ()] is the default value for type [create_policy_stmt] *)

val default_alter_policy_stmt : 
  ?policy_name:string ->
  ?table:range_var option ->
  ?roles:node list ->
  ?qual:node option ->
  ?with_check:node option ->
  unit ->
  alter_policy_stmt
(** [default_alter_policy_stmt ()] is the default value for type [alter_policy_stmt] *)

val default_create_transform_stmt : 
  ?replace:bool ->
  ?type_name:type_name option ->
  ?lang:string ->
  ?fromsql:object_with_args option ->
  ?tosql:object_with_args option ->
  unit ->
  create_transform_stmt
(** [default_create_transform_stmt ()] is the default value for type [create_transform_stmt] *)

val default_create_am_stmt : 
  ?amname:string ->
  ?handler_name:node list ->
  ?amtype:string ->
  unit ->
  create_am_stmt
(** [default_create_am_stmt ()] is the default value for type [create_am_stmt] *)

val default_create_publication_stmt : 
  ?pubname:string ->
  ?options:node list ->
  ?pubobjects:node list ->
  ?for_all_tables:bool ->
  unit ->
  create_publication_stmt
(** [default_create_publication_stmt ()] is the default value for type [create_publication_stmt] *)

val default_alter_publication_stmt : 
  ?pubname:string ->
  ?options:node list ->
  ?pubobjects:node list ->
  ?for_all_tables:bool ->
  ?action:alter_publication_action ->
  unit ->
  alter_publication_stmt
(** [default_alter_publication_stmt ()] is the default value for type [alter_publication_stmt] *)

val default_create_subscription_stmt : 
  ?subname:string ->
  ?conninfo:string ->
  ?publication:node list ->
  ?options:node list ->
  unit ->
  create_subscription_stmt
(** [default_create_subscription_stmt ()] is the default value for type [create_subscription_stmt] *)

val default_alter_subscription_stmt : 
  ?kind:alter_subscription_type ->
  ?subname:string ->
  ?conninfo:string ->
  ?publication:node list ->
  ?options:node list ->
  unit ->
  alter_subscription_stmt
(** [default_alter_subscription_stmt ()] is the default value for type [alter_subscription_stmt] *)

val default_create_stats_stmt : 
  ?defnames:node list ->
  ?stat_types:node list ->
  ?exprs:node list ->
  ?relations:node list ->
  ?stxcomment:string ->
  ?transformed:bool ->
  ?if_not_exists:bool ->
  unit ->
  create_stats_stmt
(** [default_create_stats_stmt ()] is the default value for type [create_stats_stmt] *)

val default_alter_collation_stmt : 
  ?collname:node list ->
  unit ->
  alter_collation_stmt
(** [default_alter_collation_stmt ()] is the default value for type [alter_collation_stmt] *)

val default_call_stmt : 
  ?funccall:func_call option ->
  ?funcexpr:func_expr option ->
  ?outargs:node list ->
  unit ->
  call_stmt
(** [default_call_stmt ()] is the default value for type [call_stmt] *)

val default_func_call : 
  ?funcname:node list ->
  ?args:node list ->
  ?agg_order:node list ->
  ?agg_filter:node option ->
  ?over:window_def option ->
  ?agg_within_group:bool ->
  ?agg_star:bool ->
  ?agg_distinct:bool ->
  ?func_variadic:bool ->
  ?funcformat:coercion_form ->
  ?location:int32 ->
  unit ->
  func_call
(** [default_func_call ()] is the default value for type [func_call] *)

val default_window_def : 
  ?name:string ->
  ?refname:string ->
  ?partition_clause:node list ->
  ?order_clause:node list ->
  ?frame_options:int32 ->
  ?start_offset:node option ->
  ?end_offset:node option ->
  ?location:int32 ->
  unit ->
  window_def
(** [default_window_def ()] is the default value for type [window_def] *)

val default_alter_stats_stmt : 
  ?defnames:node list ->
  ?stxstattarget:int32 ->
  ?missing_ok:bool ->
  unit ->
  alter_stats_stmt
(** [default_alter_stats_stmt ()] is the default value for type [alter_stats_stmt] *)

val default_a_expr : 
  ?kind:a_expr_kind ->
  ?name:node list ->
  ?lexpr:node option ->
  ?rexpr:node option ->
  ?location:int32 ->
  unit ->
  a_expr
(** [default_a_expr ()] is the default value for type [a_expr] *)

val default_column_ref : 
  ?fields:node list ->
  ?location:int32 ->
  unit ->
  column_ref
(** [default_column_ref ()] is the default value for type [column_ref] *)

val default_a_indices : 
  ?is_slice:bool ->
  ?lidx:node option ->
  ?uidx:node option ->
  unit ->
  a_indices
(** [default_a_indices ()] is the default value for type [a_indices] *)

val default_a_indirection : 
  ?arg:node option ->
  ?indirection:node list ->
  unit ->
  a_indirection
(** [default_a_indirection ()] is the default value for type [a_indirection] *)

val default_a_array_expr : 
  ?elements:node list ->
  ?location:int32 ->
  unit ->
  a_array_expr
(** [default_a_array_expr ()] is the default value for type [a_array_expr] *)

val default_res_target : 
  ?name:string ->
  ?indirection:node list ->
  ?val_:node option ->
  ?location:int32 ->
  unit ->
  res_target
(** [default_res_target ()] is the default value for type [res_target] *)

val default_multi_assign_ref : 
  ?source:node option ->
  ?colno:int32 ->
  ?ncolumns:int32 ->
  unit ->
  multi_assign_ref
(** [default_multi_assign_ref ()] is the default value for type [multi_assign_ref] *)

val default_type_cast : 
  ?arg:node option ->
  ?type_name:type_name option ->
  ?location:int32 ->
  unit ->
  type_cast
(** [default_type_cast ()] is the default value for type [type_cast] *)

val default_sort_by : 
  ?node:node option ->
  ?sortby_dir:sort_by_dir ->
  ?sortby_nulls:sort_by_nulls ->
  ?use_op:node list ->
  ?location:int32 ->
  unit ->
  sort_by
(** [default_sort_by ()] is the default value for type [sort_by] *)

val default_range_subselect : 
  ?lateral:bool ->
  ?subquery:node option ->
  ?alias:alias option ->
  unit ->
  range_subselect
(** [default_range_subselect ()] is the default value for type [range_subselect] *)

val default_range_function : 
  ?lateral:bool ->
  ?ordinality:bool ->
  ?is_rowsfrom:bool ->
  ?functions:node list ->
  ?alias:alias option ->
  ?coldeflist:node list ->
  unit ->
  range_function
(** [default_range_function ()] is the default value for type [range_function] *)

val default_range_table_sample : 
  ?relation:node option ->
  ?method_:node list ->
  ?args:node list ->
  ?repeatable:node option ->
  ?location:int32 ->
  unit ->
  range_table_sample
(** [default_range_table_sample ()] is the default value for type [range_table_sample] *)

val default_range_table_func : 
  ?lateral:bool ->
  ?docexpr:node option ->
  ?rowexpr:node option ->
  ?namespaces:node list ->
  ?columns:node list ->
  ?alias:alias option ->
  ?location:int32 ->
  unit ->
  range_table_func
(** [default_range_table_func ()] is the default value for type [range_table_func] *)

val default_range_table_func_col : 
  ?colname:string ->
  ?type_name:type_name option ->
  ?for_ordinality:bool ->
  ?is_not_null:bool ->
  ?colexpr:node option ->
  ?coldefexpr:node option ->
  ?location:int32 ->
  unit ->
  range_table_func_col
(** [default_range_table_func_col ()] is the default value for type [range_table_func_col] *)

val default_column_def : 
  ?colname:string ->
  ?type_name:type_name option ->
  ?compression:string ->
  ?inhcount:int32 ->
  ?is_local:bool ->
  ?is_not_null:bool ->
  ?is_from_type:bool ->
  ?storage:string ->
  ?raw_default:node option ->
  ?cooked_default:node option ->
  ?identity:string ->
  ?identity_sequence:range_var option ->
  ?generated:string ->
  ?coll_clause:collate_clause option ->
  ?coll_oid:int32 ->
  ?constraints:node list ->
  ?fdwoptions:node list ->
  ?location:int32 ->
  unit ->
  column_def
(** [default_column_def ()] is the default value for type [column_def] *)

val default_index_elem : 
  ?name:string ->
  ?expr:node option ->
  ?indexcolname:string ->
  ?collation:node list ->
  ?opclass:node list ->
  ?opclassopts:node list ->
  ?ordering:sort_by_dir ->
  ?nulls_ordering:sort_by_nulls ->
  unit ->
  index_elem
(** [default_index_elem ()] is the default value for type [index_elem] *)

val default_stats_elem : 
  ?name:string ->
  ?expr:node option ->
  unit ->
  stats_elem
(** [default_stats_elem ()] is the default value for type [stats_elem] *)

val default_constraint_ : 
  ?contype:constr_type ->
  ?conname:string ->
  ?deferrable:bool ->
  ?initdeferred:bool ->
  ?location:int32 ->
  ?is_no_inherit:bool ->
  ?raw_expr:node option ->
  ?cooked_expr:string ->
  ?generated_when:string ->
  ?nulls_not_distinct:bool ->
  ?keys:node list ->
  ?including:node list ->
  ?exclusions:node list ->
  ?options:node list ->
  ?indexname:string ->
  ?indexspace:string ->
  ?reset_default_tblspc:bool ->
  ?access_method:string ->
  ?where_clause:node option ->
  ?pktable:range_var option ->
  ?fk_attrs:node list ->
  ?pk_attrs:node list ->
  ?fk_matchtype:string ->
  ?fk_upd_action:string ->
  ?fk_del_action:string ->
  ?fk_del_set_cols:node list ->
  ?old_conpfeqop:node list ->
  ?old_pktable_oid:int32 ->
  ?skip_validation:bool ->
  ?initially_valid:bool ->
  unit ->
  constraint_
(** [default_constraint_ ()] is the default value for type [constraint_] *)

val default_def_elem : 
  ?defnamespace:string ->
  ?defname:string ->
  ?arg:node option ->
  ?defaction:def_elem_action ->
  ?location:int32 ->
  unit ->
  def_elem
(** [default_def_elem ()] is the default value for type [def_elem] *)

val default_range_tbl_entry : 
  ?rtekind:rtekind ->
  ?relid:int32 ->
  ?relkind:string ->
  ?rellockmode:int32 ->
  ?tablesample:table_sample_clause option ->
  ?subquery:query option ->
  ?security_barrier:bool ->
  ?jointype:join_type ->
  ?joinmergedcols:int32 ->
  ?joinaliasvars:node list ->
  ?joinleftcols:node list ->
  ?joinrightcols:node list ->
  ?join_using_alias:alias option ->
  ?functions:node list ->
  ?funcordinality:bool ->
  ?tablefunc:table_func option ->
  ?values_lists:node list ->
  ?ctename:string ->
  ?ctelevelsup:int32 ->
  ?self_reference:bool ->
  ?coltypes:node list ->
  ?coltypmods:node list ->
  ?colcollations:node list ->
  ?enrname:string ->
  ?enrtuples:float ->
  ?alias:alias option ->
  ?eref:alias option ->
  ?lateral:bool ->
  ?inh:bool ->
  ?in_from_cl:bool ->
  ?required_perms:int32 ->
  ?check_as_user:int32 ->
  ?selected_cols:int64 list ->
  ?inserted_cols:int64 list ->
  ?updated_cols:int64 list ->
  ?extra_updated_cols:int64 list ->
  ?security_quals:node list ->
  unit ->
  range_tbl_entry
(** [default_range_tbl_entry ()] is the default value for type [range_tbl_entry] *)

val default_table_sample_clause : 
  ?tsmhandler:int32 ->
  ?args:node list ->
  ?repeatable:node option ->
  unit ->
  table_sample_clause
(** [default_table_sample_clause ()] is the default value for type [table_sample_clause] *)

val default_range_tbl_function : 
  ?funcexpr:node option ->
  ?funccolcount:int32 ->
  ?funccolnames:node list ->
  ?funccoltypes:node list ->
  ?funccoltypmods:node list ->
  ?funccolcollations:node list ->
  ?funcparams:int64 list ->
  unit ->
  range_tbl_function
(** [default_range_tbl_function ()] is the default value for type [range_tbl_function] *)

val default_with_check_option : 
  ?kind:wcokind ->
  ?relname:string ->
  ?polname:string ->
  ?qual:node option ->
  ?cascaded:bool ->
  unit ->
  with_check_option
(** [default_with_check_option ()] is the default value for type [with_check_option] *)

val default_grouping_set : 
  ?kind:grouping_set_kind ->
  ?content:node list ->
  ?location:int32 ->
  unit ->
  grouping_set
(** [default_grouping_set ()] is the default value for type [grouping_set] *)

val default_window_clause : 
  ?name:string ->
  ?refname:string ->
  ?partition_clause:node list ->
  ?order_clause:node list ->
  ?frame_options:int32 ->
  ?start_offset:node option ->
  ?end_offset:node option ->
  ?run_condition:node list ->
  ?start_in_range_func:int32 ->
  ?end_in_range_func:int32 ->
  ?in_range_coll:int32 ->
  ?in_range_asc:bool ->
  ?in_range_nulls_first:bool ->
  ?winref:int32 ->
  ?copied_order:bool ->
  unit ->
  window_clause
(** [default_window_clause ()] is the default value for type [window_clause] *)

val default_access_priv : 
  ?priv_name:string ->
  ?cols:node list ->
  unit ->
  access_priv
(** [default_access_priv ()] is the default value for type [access_priv] *)

val default_create_op_class_item : 
  ?itemtype:int32 ->
  ?name:object_with_args option ->
  ?number:int32 ->
  ?order_family:node list ->
  ?class_args:node list ->
  ?storedtype:type_name option ->
  unit ->
  create_op_class_item
(** [default_create_op_class_item ()] is the default value for type [create_op_class_item] *)

val default_table_like_clause : 
  ?relation:range_var option ->
  ?options:int32 ->
  ?relation_oid:int32 ->
  unit ->
  table_like_clause
(** [default_table_like_clause ()] is the default value for type [table_like_clause] *)

val default_function_parameter : 
  ?name:string ->
  ?arg_type:type_name option ->
  ?mode:function_parameter_mode ->
  ?defexpr:node option ->
  unit ->
  function_parameter
(** [default_function_parameter ()] is the default value for type [function_parameter] *)

val default_locking_clause : 
  ?locked_rels:node list ->
  ?strength:lock_clause_strength ->
  ?wait_policy:lock_wait_policy ->
  unit ->
  locking_clause
(** [default_locking_clause ()] is the default value for type [locking_clause] *)

val default_xml_serialize : 
  ?xmloption:xml_option_type ->
  ?expr:node option ->
  ?type_name:type_name option ->
  ?location:int32 ->
  unit ->
  xml_serialize
(** [default_xml_serialize ()] is the default value for type [xml_serialize] *)

val default_ctesearch_clause : 
  ?search_col_list:node list ->
  ?search_breadth_first:bool ->
  ?search_seq_column:string ->
  ?location:int32 ->
  unit ->
  ctesearch_clause
(** [default_ctesearch_clause ()] is the default value for type [ctesearch_clause] *)

val default_ctecycle_clause : 
  ?cycle_col_list:node list ->
  ?cycle_mark_column:string ->
  ?cycle_mark_value:node option ->
  ?cycle_mark_default:node option ->
  ?cycle_path_column:string ->
  ?location:int32 ->
  ?cycle_mark_type:int32 ->
  ?cycle_mark_typmod:int32 ->
  ?cycle_mark_collation:int32 ->
  ?cycle_mark_neop:int32 ->
  unit ->
  ctecycle_clause
(** [default_ctecycle_clause ()] is the default value for type [ctecycle_clause] *)

val default_common_table_expr : 
  ?ctename:string ->
  ?aliascolnames:node list ->
  ?ctematerialized:ctematerialize ->
  ?ctequery:node option ->
  ?search_clause:ctesearch_clause option ->
  ?cycle_clause:ctecycle_clause option ->
  ?location:int32 ->
  ?cterecursive:bool ->
  ?cterefcount:int32 ->
  ?ctecolnames:node list ->
  ?ctecoltypes:node list ->
  ?ctecoltypmods:node list ->
  ?ctecolcollations:node list ->
  unit ->
  common_table_expr
(** [default_common_table_expr ()] is the default value for type [common_table_expr] *)

val default_merge_when_clause : 
  ?matched:bool ->
  ?command_type:cmd_type ->
  ?override:overriding_kind ->
  ?condition:node option ->
  ?target_list:node list ->
  ?values:node list ->
  unit ->
  merge_when_clause
(** [default_merge_when_clause ()] is the default value for type [merge_when_clause] *)

val default_partition_elem : 
  ?name:string ->
  ?expr:node option ->
  ?collation:node list ->
  ?opclass:node list ->
  ?location:int32 ->
  unit ->
  partition_elem
(** [default_partition_elem ()] is the default value for type [partition_elem] *)

val default_partition_range_datum : 
  ?kind:partition_range_datum_kind ->
  ?value:node option ->
  ?location:int32 ->
  unit ->
  partition_range_datum
(** [default_partition_range_datum ()] is the default value for type [partition_range_datum] *)

val default_partition_cmd : 
  ?name:range_var option ->
  ?bound:partition_bound_spec option ->
  ?concurrent:bool ->
  unit ->
  partition_cmd
(** [default_partition_cmd ()] is the default value for type [partition_cmd] *)

val default_vacuum_relation : 
  ?relation:range_var option ->
  ?oid:int32 ->
  ?va_cols:node list ->
  unit ->
  vacuum_relation
(** [default_vacuum_relation ()] is the default value for type [vacuum_relation] *)

val default_publication_obj_spec : 
  ?pubobjtype:publication_obj_spec_type ->
  ?name:string ->
  ?pubtable:publication_table option ->
  ?location:int32 ->
  unit ->
  publication_obj_spec
(** [default_publication_obj_spec ()] is the default value for type [publication_obj_spec] *)

val default_publication_table : 
  ?relation:range_var option ->
  ?where_clause:node option ->
  ?columns:node list ->
  unit ->
  publication_table
(** [default_publication_table ()] is the default value for type [publication_table] *)

val default_list : 
  ?items:node list ->
  unit ->
  list
(** [default_list ()] is the default value for type [list] *)

val default_int_list : 
  ?items:node list ->
  unit ->
  int_list
(** [default_int_list ()] is the default value for type [int_list] *)

val default_oid_list : 
  ?items:node list ->
  unit ->
  oid_list
(** [default_oid_list ()] is the default value for type [oid_list] *)

val default_parse_result : 
  ?version:int32 ->
  ?stmts:raw_stmt list ->
  unit ->
  parse_result
(** [default_parse_result ()] is the default value for type [parse_result] *)

val default_token : unit -> token
(** [default_token ()] is the default value for type [token] *)

val default_keyword_kind : unit -> keyword_kind
(** [default_keyword_kind ()] is the default value for type [keyword_kind] *)

val default_scan_token : 
  ?start:int32 ->
  ?end_:int32 ->
  ?token:token ->
  ?keyword_kind:keyword_kind ->
  unit ->
  scan_token
(** [default_scan_token ()] is the default value for type [scan_token] *)

val default_scan_result : 
  ?version:int32 ->
  ?tokens:scan_token list ->
  unit ->
  scan_result
(** [default_scan_result ()] is the default value for type [scan_result] *)

val default_set_quantifier : unit -> set_quantifier
(** [default_set_quantifier ()] is the default value for type [set_quantifier] *)

val default_table_like_option : unit -> table_like_option
(** [default_table_like_option ()] is the default value for type [table_like_option] *)

val default_agg_strategy : unit -> agg_strategy
(** [default_agg_strategy ()] is the default value for type [agg_strategy] *)

val default_set_op_cmd : unit -> set_op_cmd
(** [default_set_op_cmd ()] is the default value for type [set_op_cmd] *)

val default_set_op_strategy : unit -> set_op_strategy
(** [default_set_op_strategy ()] is the default value for type [set_op_strategy] *)

val default_lock_tuple_mode : unit -> lock_tuple_mode
(** [default_lock_tuple_mode ()] is the default value for type [lock_tuple_mode] *)
