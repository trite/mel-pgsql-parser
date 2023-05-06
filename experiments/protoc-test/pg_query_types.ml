[@@@ocaml.warning "-27-30-39"]


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

let rec default_param_kind () = (Param_kind_undefined:param_kind)

let rec default_agg_split () = (Agg_split_undefined:agg_split)

let rec default_coercion_form () = (Coercion_form_undefined:coercion_form)

let rec default_bool_expr_type () = (Bool_expr_type_undefined:bool_expr_type)

let rec default_sub_link_type () = (Sub_link_type_undefined:sub_link_type)

let rec default_row_compare_type () = (Row_compare_type_undefined:row_compare_type)

let rec default_min_max_op () = (Min_max_op_undefined:min_max_op)

let rec default_sqlvalue_function_op () = (Sqlvalue_function_op_undefined:sqlvalue_function_op)

let rec default_xml_expr_op () = (Xml_expr_op_undefined:xml_expr_op)

let rec default_xml_option_type () = (Xml_option_type_undefined:xml_option_type)

let rec default_null_test_type () = (Null_test_type_undefined:null_test_type)

let rec default_bool_test_type () = (Bool_test_type_undefined:bool_test_type)

let rec default_range_tbl_ref 
  ?rtindex:((rtindex:int32) = 0l)
  () : range_tbl_ref  = {
  rtindex;
}

let rec default_join_type () = (Join_type_undefined:join_type)

let rec default_on_conflict_action () = (On_conflict_action_undefined:on_conflict_action)

let rec default_on_commit_action () = (On_commit_action_undefined:on_commit_action)

let rec default_cmd_type () = (Cmd_type_undefined:cmd_type)

let rec default_overriding_kind () = (Overriding_kind_undefined:overriding_kind)

let rec default_query_source () = (Query_source_undefined:query_source)

let rec default_limit_option () = (Limit_option_undefined:limit_option)

let rec default_set_operation () = (Set_operation_undefined:set_operation)

let rec default_object_type () = (Object_type_undefined:object_type)

let rec default_alter_table_type () = (Alter_table_type_undefined:alter_table_type)

let rec default_role_spec_type () = (Role_spec_type_undefined:role_spec_type)

let rec default_role_spec 
  ?roletype:((roletype:role_spec_type) = default_role_spec_type ())
  ?rolename:((rolename:string) = "")
  ?location:((location:int32) = 0l)
  () : role_spec  = {
  roletype;
  rolename;
  location;
}

let rec default_drop_behavior () = (Drop_behavior_undefined:drop_behavior)

let rec default_grant_target_type () = (Grant_target_type_undefined:grant_target_type)

let rec default_close_portal_stmt 
  ?portalname:((portalname:string) = "")
  () : close_portal_stmt  = {
  portalname;
}

let rec default_fetch_direction () = (Fetch_direction_undefined:fetch_direction)

let rec default_fetch_stmt 
  ?direction:((direction:fetch_direction) = default_fetch_direction ())
  ?how_many:((how_many:int64) = 0L)
  ?portalname:((portalname:string) = "")
  ?ismove:((ismove:bool) = false)
  () : fetch_stmt  = {
  direction;
  how_many;
  portalname;
  ismove;
}

let rec default_notify_stmt 
  ?conditionname:((conditionname:string) = "")
  ?payload:((payload:string) = "")
  () : notify_stmt  = {
  conditionname;
  payload;
}

let rec default_listen_stmt 
  ?conditionname:((conditionname:string) = "")
  () : listen_stmt  = {
  conditionname;
}

let rec default_unlisten_stmt 
  ?conditionname:((conditionname:string) = "")
  () : unlisten_stmt  = {
  conditionname;
}

let rec default_transaction_stmt_kind () = (Transaction_stmt_kind_undefined:transaction_stmt_kind)

let rec default_view_check_option () = (View_check_option_undefined:view_check_option)

let rec default_load_stmt 
  ?filename:((filename:string) = "")
  () : load_stmt  = {
  filename;
}

let rec default_variable_set_kind () = (Variable_set_kind_undefined:variable_set_kind)

let rec default_variable_show_stmt 
  ?name:((name:string) = "")
  () : variable_show_stmt  = {
  name;
}

let rec default_discard_mode () = (Discard_mode_undefined:discard_mode)

let rec default_discard_stmt 
  ?target:((target:discard_mode) = default_discard_mode ())
  () : discard_stmt  = {
  target;
}

let rec default_role_stmt_type () = (Role_stmt_type_undefined:role_stmt_type)

let rec default_reindex_object_type () = (Reindex_object_type_undefined:reindex_object_type)

let rec default_alter_database_refresh_coll_stmt 
  ?dbname:((dbname:string) = "")
  () : alter_database_refresh_coll_stmt  = {
  dbname;
}

let rec default_coercion_context () = (Coercion_context_undefined:coercion_context)

let rec default_deallocate_stmt 
  ?name:((name:string) = "")
  () : deallocate_stmt  = {
  name;
}

let rec default_drop_table_space_stmt 
  ?tablespacename:((tablespacename:string) = "")
  ?missing_ok:((missing_ok:bool) = false)
  () : drop_table_space_stmt  = {
  tablespacename;
  missing_ok;
}

let rec default_string 
  ?sval:((sval:string) = "")
  () : string  = {
  sval;
}

let rec default_alter_tsconfig_type () = (Alter_tsconfig_type_undefined:alter_tsconfig_type)

let rec default_drop_user_mapping_stmt 
  ?user:((user:role_spec option) = None)
  ?servername:((servername:string) = "")
  ?missing_ok:((missing_ok:bool) = false)
  () : drop_user_mapping_stmt  = {
  user;
  servername;
  missing_ok;
}

let rec default_import_foreign_schema_type () = (Import_foreign_schema_type_undefined:import_foreign_schema_type)

let rec default_alter_event_trig_stmt 
  ?trigname:((trigname:string) = "")
  ?tgenabled:((tgenabled:string) = "")
  () : alter_event_trig_stmt  = {
  trigname;
  tgenabled;
}

let rec default_replica_identity_stmt 
  ?identity_type:((identity_type:string) = "")
  ?name:((name:string) = "")
  () : replica_identity_stmt  = {
  identity_type;
  name;
}

let rec default_alter_publication_action () = (Alter_publication_action_undefined:alter_publication_action)

let rec default_alter_subscription_type () = (Alter_subscription_type_undefined:alter_subscription_type)

let rec default_drop_subscription_stmt 
  ?subname:((subname:string) = "")
  ?missing_ok:((missing_ok:bool) = false)
  ?behavior:((behavior:drop_behavior) = default_drop_behavior ())
  () : drop_subscription_stmt  = {
  subname;
  missing_ok;
  behavior;
}

let rec default_a_expr_kind () = (A_expr_kind_undefined:a_expr_kind)

let rec default_param_ref 
  ?number:((number:int32) = 0l)
  ?location:((location:int32) = 0l)
  () : param_ref  = {
  number;
  location;
}

let rec default_sort_by_dir () = (Sort_by_dir_undefined:sort_by_dir)

let rec default_sort_by_nulls () = (Sort_by_nulls_undefined:sort_by_nulls)

let rec default_constr_type () = (Constr_type_undefined:constr_type)

let rec default_def_elem_action () = (Def_elem_action_undefined:def_elem_action)

let rec default_rtekind () = (Rtekind_undefined:rtekind)

let rec default_wcokind () = (Wcokind_undefined:wcokind)

let rec default_sort_group_clause 
  ?tle_sort_group_ref:((tle_sort_group_ref:int32) = 0l)
  ?eqop:((eqop:int32) = 0l)
  ?sortop:((sortop:int32) = 0l)
  ?nulls_first:((nulls_first:bool) = false)
  ?hashable:((hashable:bool) = false)
  () : sort_group_clause  = {
  tle_sort_group_ref;
  eqop;
  sortop;
  nulls_first;
  hashable;
}

let rec default_grouping_set_kind () = (Grouping_set_kind_undefined:grouping_set_kind)

let rec default_function_parameter_mode () = (Function_parameter_mode_undefined:function_parameter_mode)

let rec default_lock_clause_strength () = (Lock_clause_strength_undefined:lock_clause_strength)

let rec default_lock_wait_policy () = (Lock_wait_policy_undefined:lock_wait_policy)

let rec default_row_mark_clause 
  ?rti:((rti:int32) = 0l)
  ?strength:((strength:lock_clause_strength) = default_lock_clause_strength ())
  ?wait_policy:((wait_policy:lock_wait_policy) = default_lock_wait_policy ())
  ?pushed_down:((pushed_down:bool) = false)
  () : row_mark_clause  = {
  rti;
  strength;
  wait_policy;
  pushed_down;
}

let rec default_ctematerialize () = (Ctematerialize_undefined:ctematerialize)

let rec default_trigger_transition 
  ?name:((name:string) = "")
  ?is_new:((is_new:bool) = false)
  ?is_table:((is_table:bool) = false)
  () : trigger_transition  = {
  name;
  is_new;
  is_table;
}

let rec default_partition_range_datum_kind () = (Partition_range_datum_kind_undefined:partition_range_datum_kind)

let rec default_publication_obj_spec_type () = (Publication_obj_spec_type_undefined:publication_obj_spec_type)

let rec default_inline_code_block 
  ?source_text:((source_text:string) = "")
  ?lang_oid:((lang_oid:int32) = 0l)
  ?lang_is_trusted:((lang_is_trusted:bool) = false)
  ?atomic:((atomic:bool) = false)
  () : inline_code_block  = {
  source_text;
  lang_oid;
  lang_is_trusted;
  atomic;
}

let rec default_call_context 
  ?atomic:((atomic:bool) = false)
  () : call_context  = {
  atomic;
}

let rec default_integer 
  ?ival:((ival:int32) = 0l)
  () : integer  = {
  ival;
}

let rec default_float 
  ?fval:((fval:string) = "")
  () : float  = {
  fval;
}

let rec default_boolean 
  ?boolval:((boolval:bool) = false)
  () : boolean  = {
  boolval;
}

let rec default_bit_string 
  ?bsval:((bsval:string) = "")
  () : bit_string  = {
  bsval;
}

let rec default_a_const_val () : a_const_val = Ival (default_integer ())

and default_a_const 
  ?val_:((val_:a_const_val) = Ival (default_integer ()))
  ?isnull:((isnull:bool) = false)
  ?location:((location:int32) = 0l)
  () : a_const  = {
  val_;
  isnull;
  location;
}

let rec default_raw_stmt 
  ?stmt:((stmt:node option) = None)
  ?stmt_location:((stmt_location:int32) = 0l)
  ?stmt_len:((stmt_len:int32) = 0l)
  () : raw_stmt  = {
  stmt;
  stmt_location;
  stmt_len;
}

and default_node () : node = Alias (default_alias ())

and default_alias 
  ?aliasname:((aliasname:string) = "")
  ?colnames:((colnames:node list) = [])
  () : alias  = {
  aliasname;
  colnames;
}

and default_range_var 
  ?catalogname:((catalogname:string) = "")
  ?schemaname:((schemaname:string) = "")
  ?relname:((relname:string) = "")
  ?inh:((inh:bool) = false)
  ?relpersistence:((relpersistence:string) = "")
  ?alias:((alias:alias option) = None)
  ?location:((location:int32) = 0l)
  () : range_var  = {
  catalogname;
  schemaname;
  relname;
  inh;
  relpersistence;
  alias;
  location;
}

and default_table_func 
  ?ns_uris:((ns_uris:node list) = [])
  ?ns_names:((ns_names:node list) = [])
  ?docexpr:((docexpr:node option) = None)
  ?rowexpr:((rowexpr:node option) = None)
  ?colnames:((colnames:node list) = [])
  ?coltypes:((coltypes:node list) = [])
  ?coltypmods:((coltypmods:node list) = [])
  ?colcollations:((colcollations:node list) = [])
  ?colexprs:((colexprs:node list) = [])
  ?coldefexprs:((coldefexprs:node list) = [])
  ?notnulls:((notnulls:int64 list) = [])
  ?ordinalitycol:((ordinalitycol:int32) = 0l)
  ?location:((location:int32) = 0l)
  () : table_func  = {
  ns_uris;
  ns_names;
  docexpr;
  rowexpr;
  colnames;
  coltypes;
  coltypmods;
  colcollations;
  colexprs;
  coldefexprs;
  notnulls;
  ordinalitycol;
  location;
}

and default_var 
  ?xpr:((xpr:node option) = None)
  ?varno:((varno:int32) = 0l)
  ?varattno:((varattno:int32) = 0l)
  ?vartype:((vartype:int32) = 0l)
  ?vartypmod:((vartypmod:int32) = 0l)
  ?varcollid:((varcollid:int32) = 0l)
  ?varlevelsup:((varlevelsup:int32) = 0l)
  ?varnosyn:((varnosyn:int32) = 0l)
  ?varattnosyn:((varattnosyn:int32) = 0l)
  ?location:((location:int32) = 0l)
  () : var  = {
  xpr;
  varno;
  varattno;
  vartype;
  vartypmod;
  varcollid;
  varlevelsup;
  varnosyn;
  varattnosyn;
  location;
}

and default_param 
  ?xpr:((xpr:node option) = None)
  ?paramkind:((paramkind:param_kind) = default_param_kind ())
  ?paramid:((paramid:int32) = 0l)
  ?paramtype:((paramtype:int32) = 0l)
  ?paramtypmod:((paramtypmod:int32) = 0l)
  ?paramcollid:((paramcollid:int32) = 0l)
  ?location:((location:int32) = 0l)
  () : param  = {
  xpr;
  paramkind;
  paramid;
  paramtype;
  paramtypmod;
  paramcollid;
  location;
}

and default_aggref 
  ?xpr:((xpr:node option) = None)
  ?aggfnoid:((aggfnoid:int32) = 0l)
  ?aggtype:((aggtype:int32) = 0l)
  ?aggcollid:((aggcollid:int32) = 0l)
  ?inputcollid:((inputcollid:int32) = 0l)
  ?aggtranstype:((aggtranstype:int32) = 0l)
  ?aggargtypes:((aggargtypes:node list) = [])
  ?aggdirectargs:((aggdirectargs:node list) = [])
  ?args:((args:node list) = [])
  ?aggorder:((aggorder:node list) = [])
  ?aggdistinct:((aggdistinct:node list) = [])
  ?aggfilter:((aggfilter:node option) = None)
  ?aggstar:((aggstar:bool) = false)
  ?aggvariadic:((aggvariadic:bool) = false)
  ?aggkind:((aggkind:string) = "")
  ?agglevelsup:((agglevelsup:int32) = 0l)
  ?aggsplit:((aggsplit:agg_split) = default_agg_split ())
  ?aggno:((aggno:int32) = 0l)
  ?aggtransno:((aggtransno:int32) = 0l)
  ?location:((location:int32) = 0l)
  () : aggref  = {
  xpr;
  aggfnoid;
  aggtype;
  aggcollid;
  inputcollid;
  aggtranstype;
  aggargtypes;
  aggdirectargs;
  args;
  aggorder;
  aggdistinct;
  aggfilter;
  aggstar;
  aggvariadic;
  aggkind;
  agglevelsup;
  aggsplit;
  aggno;
  aggtransno;
  location;
}

and default_grouping_func 
  ?xpr:((xpr:node option) = None)
  ?args:((args:node list) = [])
  ?refs:((refs:node list) = [])
  ?cols:((cols:node list) = [])
  ?agglevelsup:((agglevelsup:int32) = 0l)
  ?location:((location:int32) = 0l)
  () : grouping_func  = {
  xpr;
  args;
  refs;
  cols;
  agglevelsup;
  location;
}

and default_window_func 
  ?xpr:((xpr:node option) = None)
  ?winfnoid:((winfnoid:int32) = 0l)
  ?wintype:((wintype:int32) = 0l)
  ?wincollid:((wincollid:int32) = 0l)
  ?inputcollid:((inputcollid:int32) = 0l)
  ?args:((args:node list) = [])
  ?aggfilter:((aggfilter:node option) = None)
  ?winref:((winref:int32) = 0l)
  ?winstar:((winstar:bool) = false)
  ?winagg:((winagg:bool) = false)
  ?location:((location:int32) = 0l)
  () : window_func  = {
  xpr;
  winfnoid;
  wintype;
  wincollid;
  inputcollid;
  args;
  aggfilter;
  winref;
  winstar;
  winagg;
  location;
}

and default_subscripting_ref 
  ?xpr:((xpr:node option) = None)
  ?refcontainertype:((refcontainertype:int32) = 0l)
  ?refelemtype:((refelemtype:int32) = 0l)
  ?refrestype:((refrestype:int32) = 0l)
  ?reftypmod:((reftypmod:int32) = 0l)
  ?refcollid:((refcollid:int32) = 0l)
  ?refupperindexpr:((refupperindexpr:node list) = [])
  ?reflowerindexpr:((reflowerindexpr:node list) = [])
  ?refexpr:((refexpr:node option) = None)
  ?refassgnexpr:((refassgnexpr:node option) = None)
  () : subscripting_ref  = {
  xpr;
  refcontainertype;
  refelemtype;
  refrestype;
  reftypmod;
  refcollid;
  refupperindexpr;
  reflowerindexpr;
  refexpr;
  refassgnexpr;
}

and default_func_expr 
  ?xpr:((xpr:node option) = None)
  ?funcid:((funcid:int32) = 0l)
  ?funcresulttype:((funcresulttype:int32) = 0l)
  ?funcretset:((funcretset:bool) = false)
  ?funcvariadic:((funcvariadic:bool) = false)
  ?funcformat:((funcformat:coercion_form) = default_coercion_form ())
  ?funccollid:((funccollid:int32) = 0l)
  ?inputcollid:((inputcollid:int32) = 0l)
  ?args:((args:node list) = [])
  ?location:((location:int32) = 0l)
  () : func_expr  = {
  xpr;
  funcid;
  funcresulttype;
  funcretset;
  funcvariadic;
  funcformat;
  funccollid;
  inputcollid;
  args;
  location;
}

and default_named_arg_expr 
  ?xpr:((xpr:node option) = None)
  ?arg:((arg:node option) = None)
  ?name:((name:string) = "")
  ?argnumber:((argnumber:int32) = 0l)
  ?location:((location:int32) = 0l)
  () : named_arg_expr  = {
  xpr;
  arg;
  name;
  argnumber;
  location;
}

and default_op_expr 
  ?xpr:((xpr:node option) = None)
  ?opno:((opno:int32) = 0l)
  ?opfuncid:((opfuncid:int32) = 0l)
  ?opresulttype:((opresulttype:int32) = 0l)
  ?opretset:((opretset:bool) = false)
  ?opcollid:((opcollid:int32) = 0l)
  ?inputcollid:((inputcollid:int32) = 0l)
  ?args:((args:node list) = [])
  ?location:((location:int32) = 0l)
  () : op_expr  = {
  xpr;
  opno;
  opfuncid;
  opresulttype;
  opretset;
  opcollid;
  inputcollid;
  args;
  location;
}

and default_distinct_expr 
  ?xpr:((xpr:node option) = None)
  ?opno:((opno:int32) = 0l)
  ?opfuncid:((opfuncid:int32) = 0l)
  ?opresulttype:((opresulttype:int32) = 0l)
  ?opretset:((opretset:bool) = false)
  ?opcollid:((opcollid:int32) = 0l)
  ?inputcollid:((inputcollid:int32) = 0l)
  ?args:((args:node list) = [])
  ?location:((location:int32) = 0l)
  () : distinct_expr  = {
  xpr;
  opno;
  opfuncid;
  opresulttype;
  opretset;
  opcollid;
  inputcollid;
  args;
  location;
}

and default_null_if_expr 
  ?xpr:((xpr:node option) = None)
  ?opno:((opno:int32) = 0l)
  ?opfuncid:((opfuncid:int32) = 0l)
  ?opresulttype:((opresulttype:int32) = 0l)
  ?opretset:((opretset:bool) = false)
  ?opcollid:((opcollid:int32) = 0l)
  ?inputcollid:((inputcollid:int32) = 0l)
  ?args:((args:node list) = [])
  ?location:((location:int32) = 0l)
  () : null_if_expr  = {
  xpr;
  opno;
  opfuncid;
  opresulttype;
  opretset;
  opcollid;
  inputcollid;
  args;
  location;
}

and default_scalar_array_op_expr 
  ?xpr:((xpr:node option) = None)
  ?opno:((opno:int32) = 0l)
  ?opfuncid:((opfuncid:int32) = 0l)
  ?hashfuncid:((hashfuncid:int32) = 0l)
  ?negfuncid:((negfuncid:int32) = 0l)
  ?use_or:((use_or:bool) = false)
  ?inputcollid:((inputcollid:int32) = 0l)
  ?args:((args:node list) = [])
  ?location:((location:int32) = 0l)
  () : scalar_array_op_expr  = {
  xpr;
  opno;
  opfuncid;
  hashfuncid;
  negfuncid;
  use_or;
  inputcollid;
  args;
  location;
}

and default_bool_expr 
  ?xpr:((xpr:node option) = None)
  ?boolop:((boolop:bool_expr_type) = default_bool_expr_type ())
  ?args:((args:node list) = [])
  ?location:((location:int32) = 0l)
  () : bool_expr  = {
  xpr;
  boolop;
  args;
  location;
}

and default_sub_link 
  ?xpr:((xpr:node option) = None)
  ?sub_link_type:((sub_link_type:sub_link_type) = default_sub_link_type ())
  ?sub_link_id:((sub_link_id:int32) = 0l)
  ?testexpr:((testexpr:node option) = None)
  ?oper_name:((oper_name:node list) = [])
  ?subselect:((subselect:node option) = None)
  ?location:((location:int32) = 0l)
  () : sub_link  = {
  xpr;
  sub_link_type;
  sub_link_id;
  testexpr;
  oper_name;
  subselect;
  location;
}

and default_sub_plan 
  ?xpr:((xpr:node option) = None)
  ?sub_link_type:((sub_link_type:sub_link_type) = default_sub_link_type ())
  ?testexpr:((testexpr:node option) = None)
  ?param_ids:((param_ids:node list) = [])
  ?plan_id:((plan_id:int32) = 0l)
  ?plan_name:((plan_name:string) = "")
  ?first_col_type:((first_col_type:int32) = 0l)
  ?first_col_typmod:((first_col_typmod:int32) = 0l)
  ?first_col_collation:((first_col_collation:int32) = 0l)
  ?use_hash_table:((use_hash_table:bool) = false)
  ?unknown_eq_false:((unknown_eq_false:bool) = false)
  ?parallel_safe:((parallel_safe:bool) = false)
  ?set_param:((set_param:node list) = [])
  ?par_param:((par_param:node list) = [])
  ?args:((args:node list) = [])
  ?startup_cost:((startup_cost:float) = 0.)
  ?per_call_cost:((per_call_cost:float) = 0.)
  () : sub_plan  = {
  xpr;
  sub_link_type;
  testexpr;
  param_ids;
  plan_id;
  plan_name;
  first_col_type;
  first_col_typmod;
  first_col_collation;
  use_hash_table;
  unknown_eq_false;
  parallel_safe;
  set_param;
  par_param;
  args;
  startup_cost;
  per_call_cost;
}

and default_alternative_sub_plan 
  ?xpr:((xpr:node option) = None)
  ?subplans:((subplans:node list) = [])
  () : alternative_sub_plan  = {
  xpr;
  subplans;
}

and default_field_select 
  ?xpr:((xpr:node option) = None)
  ?arg:((arg:node option) = None)
  ?fieldnum:((fieldnum:int32) = 0l)
  ?resulttype:((resulttype:int32) = 0l)
  ?resulttypmod:((resulttypmod:int32) = 0l)
  ?resultcollid:((resultcollid:int32) = 0l)
  () : field_select  = {
  xpr;
  arg;
  fieldnum;
  resulttype;
  resulttypmod;
  resultcollid;
}

and default_field_store 
  ?xpr:((xpr:node option) = None)
  ?arg:((arg:node option) = None)
  ?newvals:((newvals:node list) = [])
  ?fieldnums:((fieldnums:node list) = [])
  ?resulttype:((resulttype:int32) = 0l)
  () : field_store  = {
  xpr;
  arg;
  newvals;
  fieldnums;
  resulttype;
}

and default_relabel_type 
  ?xpr:((xpr:node option) = None)
  ?arg:((arg:node option) = None)
  ?resulttype:((resulttype:int32) = 0l)
  ?resulttypmod:((resulttypmod:int32) = 0l)
  ?resultcollid:((resultcollid:int32) = 0l)
  ?relabelformat:((relabelformat:coercion_form) = default_coercion_form ())
  ?location:((location:int32) = 0l)
  () : relabel_type  = {
  xpr;
  arg;
  resulttype;
  resulttypmod;
  resultcollid;
  relabelformat;
  location;
}

and default_coerce_via_io 
  ?xpr:((xpr:node option) = None)
  ?arg:((arg:node option) = None)
  ?resulttype:((resulttype:int32) = 0l)
  ?resultcollid:((resultcollid:int32) = 0l)
  ?coerceformat:((coerceformat:coercion_form) = default_coercion_form ())
  ?location:((location:int32) = 0l)
  () : coerce_via_io  = {
  xpr;
  arg;
  resulttype;
  resultcollid;
  coerceformat;
  location;
}

and default_array_coerce_expr 
  ?xpr:((xpr:node option) = None)
  ?arg:((arg:node option) = None)
  ?elemexpr:((elemexpr:node option) = None)
  ?resulttype:((resulttype:int32) = 0l)
  ?resulttypmod:((resulttypmod:int32) = 0l)
  ?resultcollid:((resultcollid:int32) = 0l)
  ?coerceformat:((coerceformat:coercion_form) = default_coercion_form ())
  ?location:((location:int32) = 0l)
  () : array_coerce_expr  = {
  xpr;
  arg;
  elemexpr;
  resulttype;
  resulttypmod;
  resultcollid;
  coerceformat;
  location;
}

and default_convert_rowtype_expr 
  ?xpr:((xpr:node option) = None)
  ?arg:((arg:node option) = None)
  ?resulttype:((resulttype:int32) = 0l)
  ?convertformat:((convertformat:coercion_form) = default_coercion_form ())
  ?location:((location:int32) = 0l)
  () : convert_rowtype_expr  = {
  xpr;
  arg;
  resulttype;
  convertformat;
  location;
}

and default_collate_expr 
  ?xpr:((xpr:node option) = None)
  ?arg:((arg:node option) = None)
  ?coll_oid:((coll_oid:int32) = 0l)
  ?location:((location:int32) = 0l)
  () : collate_expr  = {
  xpr;
  arg;
  coll_oid;
  location;
}

and default_case_expr 
  ?xpr:((xpr:node option) = None)
  ?casetype:((casetype:int32) = 0l)
  ?casecollid:((casecollid:int32) = 0l)
  ?arg:((arg:node option) = None)
  ?args:((args:node list) = [])
  ?defresult:((defresult:node option) = None)
  ?location:((location:int32) = 0l)
  () : case_expr  = {
  xpr;
  casetype;
  casecollid;
  arg;
  args;
  defresult;
  location;
}

and default_case_when 
  ?xpr:((xpr:node option) = None)
  ?expr:((expr:node option) = None)
  ?result:((result:node option) = None)
  ?location:((location:int32) = 0l)
  () : case_when  = {
  xpr;
  expr;
  result;
  location;
}

and default_case_test_expr 
  ?xpr:((xpr:node option) = None)
  ?type_id:((type_id:int32) = 0l)
  ?type_mod:((type_mod:int32) = 0l)
  ?collation:((collation:int32) = 0l)
  () : case_test_expr  = {
  xpr;
  type_id;
  type_mod;
  collation;
}

and default_array_expr 
  ?xpr:((xpr:node option) = None)
  ?array_typeid:((array_typeid:int32) = 0l)
  ?array_collid:((array_collid:int32) = 0l)
  ?element_typeid:((element_typeid:int32) = 0l)
  ?elements:((elements:node list) = [])
  ?multidims:((multidims:bool) = false)
  ?location:((location:int32) = 0l)
  () : array_expr  = {
  xpr;
  array_typeid;
  array_collid;
  element_typeid;
  elements;
  multidims;
  location;
}

and default_row_expr 
  ?xpr:((xpr:node option) = None)
  ?args:((args:node list) = [])
  ?row_typeid:((row_typeid:int32) = 0l)
  ?row_format:((row_format:coercion_form) = default_coercion_form ())
  ?colnames:((colnames:node list) = [])
  ?location:((location:int32) = 0l)
  () : row_expr  = {
  xpr;
  args;
  row_typeid;
  row_format;
  colnames;
  location;
}

and default_row_compare_expr 
  ?xpr:((xpr:node option) = None)
  ?rctype:((rctype:row_compare_type) = default_row_compare_type ())
  ?opnos:((opnos:node list) = [])
  ?opfamilies:((opfamilies:node list) = [])
  ?inputcollids:((inputcollids:node list) = [])
  ?largs:((largs:node list) = [])
  ?rargs:((rargs:node list) = [])
  () : row_compare_expr  = {
  xpr;
  rctype;
  opnos;
  opfamilies;
  inputcollids;
  largs;
  rargs;
}

and default_coalesce_expr 
  ?xpr:((xpr:node option) = None)
  ?coalescetype:((coalescetype:int32) = 0l)
  ?coalescecollid:((coalescecollid:int32) = 0l)
  ?args:((args:node list) = [])
  ?location:((location:int32) = 0l)
  () : coalesce_expr  = {
  xpr;
  coalescetype;
  coalescecollid;
  args;
  location;
}

and default_min_max_expr 
  ?xpr:((xpr:node option) = None)
  ?minmaxtype:((minmaxtype:int32) = 0l)
  ?minmaxcollid:((minmaxcollid:int32) = 0l)
  ?inputcollid:((inputcollid:int32) = 0l)
  ?op:((op:min_max_op) = default_min_max_op ())
  ?args:((args:node list) = [])
  ?location:((location:int32) = 0l)
  () : min_max_expr  = {
  xpr;
  minmaxtype;
  minmaxcollid;
  inputcollid;
  op;
  args;
  location;
}

and default_sqlvalue_function 
  ?xpr:((xpr:node option) = None)
  ?op:((op:sqlvalue_function_op) = default_sqlvalue_function_op ())
  ?type_:((type_:int32) = 0l)
  ?typmod:((typmod:int32) = 0l)
  ?location:((location:int32) = 0l)
  () : sqlvalue_function  = {
  xpr;
  op;
  type_;
  typmod;
  location;
}

and default_xml_expr 
  ?xpr:((xpr:node option) = None)
  ?op:((op:xml_expr_op) = default_xml_expr_op ())
  ?name:((name:string) = "")
  ?named_args:((named_args:node list) = [])
  ?arg_names:((arg_names:node list) = [])
  ?args:((args:node list) = [])
  ?xmloption:((xmloption:xml_option_type) = default_xml_option_type ())
  ?type_:((type_:int32) = 0l)
  ?typmod:((typmod:int32) = 0l)
  ?location:((location:int32) = 0l)
  () : xml_expr  = {
  xpr;
  op;
  name;
  named_args;
  arg_names;
  args;
  xmloption;
  type_;
  typmod;
  location;
}

and default_null_test 
  ?xpr:((xpr:node option) = None)
  ?arg:((arg:node option) = None)
  ?nulltesttype:((nulltesttype:null_test_type) = default_null_test_type ())
  ?argisrow:((argisrow:bool) = false)
  ?location:((location:int32) = 0l)
  () : null_test  = {
  xpr;
  arg;
  nulltesttype;
  argisrow;
  location;
}

and default_boolean_test 
  ?xpr:((xpr:node option) = None)
  ?arg:((arg:node option) = None)
  ?booltesttype:((booltesttype:bool_test_type) = default_bool_test_type ())
  ?location:((location:int32) = 0l)
  () : boolean_test  = {
  xpr;
  arg;
  booltesttype;
  location;
}

and default_coerce_to_domain 
  ?xpr:((xpr:node option) = None)
  ?arg:((arg:node option) = None)
  ?resulttype:((resulttype:int32) = 0l)
  ?resulttypmod:((resulttypmod:int32) = 0l)
  ?resultcollid:((resultcollid:int32) = 0l)
  ?coercionformat:((coercionformat:coercion_form) = default_coercion_form ())
  ?location:((location:int32) = 0l)
  () : coerce_to_domain  = {
  xpr;
  arg;
  resulttype;
  resulttypmod;
  resultcollid;
  coercionformat;
  location;
}

and default_coerce_to_domain_value 
  ?xpr:((xpr:node option) = None)
  ?type_id:((type_id:int32) = 0l)
  ?type_mod:((type_mod:int32) = 0l)
  ?collation:((collation:int32) = 0l)
  ?location:((location:int32) = 0l)
  () : coerce_to_domain_value  = {
  xpr;
  type_id;
  type_mod;
  collation;
  location;
}

and default_set_to_default 
  ?xpr:((xpr:node option) = None)
  ?type_id:((type_id:int32) = 0l)
  ?type_mod:((type_mod:int32) = 0l)
  ?collation:((collation:int32) = 0l)
  ?location:((location:int32) = 0l)
  () : set_to_default  = {
  xpr;
  type_id;
  type_mod;
  collation;
  location;
}

and default_current_of_expr 
  ?xpr:((xpr:node option) = None)
  ?cvarno:((cvarno:int32) = 0l)
  ?cursor_name:((cursor_name:string) = "")
  ?cursor_param:((cursor_param:int32) = 0l)
  () : current_of_expr  = {
  xpr;
  cvarno;
  cursor_name;
  cursor_param;
}

and default_next_value_expr 
  ?xpr:((xpr:node option) = None)
  ?seqid:((seqid:int32) = 0l)
  ?type_id:((type_id:int32) = 0l)
  () : next_value_expr  = {
  xpr;
  seqid;
  type_id;
}

and default_inference_elem 
  ?xpr:((xpr:node option) = None)
  ?expr:((expr:node option) = None)
  ?infercollid:((infercollid:int32) = 0l)
  ?inferopclass:((inferopclass:int32) = 0l)
  () : inference_elem  = {
  xpr;
  expr;
  infercollid;
  inferopclass;
}

and default_target_entry 
  ?xpr:((xpr:node option) = None)
  ?expr:((expr:node option) = None)
  ?resno:((resno:int32) = 0l)
  ?resname:((resname:string) = "")
  ?ressortgroupref:((ressortgroupref:int32) = 0l)
  ?resorigtbl:((resorigtbl:int32) = 0l)
  ?resorigcol:((resorigcol:int32) = 0l)
  ?resjunk:((resjunk:bool) = false)
  () : target_entry  = {
  xpr;
  expr;
  resno;
  resname;
  ressortgroupref;
  resorigtbl;
  resorigcol;
  resjunk;
}

and default_join_expr 
  ?jointype:((jointype:join_type) = default_join_type ())
  ?is_natural:((is_natural:bool) = false)
  ?larg:((larg:node option) = None)
  ?rarg:((rarg:node option) = None)
  ?using_clause:((using_clause:node list) = [])
  ?join_using_alias:((join_using_alias:alias option) = None)
  ?quals:((quals:node option) = None)
  ?alias:((alias:alias option) = None)
  ?rtindex:((rtindex:int32) = 0l)
  () : join_expr  = {
  jointype;
  is_natural;
  larg;
  rarg;
  using_clause;
  join_using_alias;
  quals;
  alias;
  rtindex;
}

and default_from_expr 
  ?fromlist:((fromlist:node list) = [])
  ?quals:((quals:node option) = None)
  () : from_expr  = {
  fromlist;
  quals;
}

and default_on_conflict_expr 
  ?action:((action:on_conflict_action) = default_on_conflict_action ())
  ?arbiter_elems:((arbiter_elems:node list) = [])
  ?arbiter_where:((arbiter_where:node option) = None)
  ?constraint_:((constraint_:int32) = 0l)
  ?on_conflict_set:((on_conflict_set:node list) = [])
  ?on_conflict_where:((on_conflict_where:node option) = None)
  ?excl_rel_index:((excl_rel_index:int32) = 0l)
  ?excl_rel_tlist:((excl_rel_tlist:node list) = [])
  () : on_conflict_expr  = {
  action;
  arbiter_elems;
  arbiter_where;
  constraint_;
  on_conflict_set;
  on_conflict_where;
  excl_rel_index;
  excl_rel_tlist;
}

and default_into_clause 
  ?rel:((rel:range_var option) = None)
  ?col_names:((col_names:node list) = [])
  ?access_method:((access_method:string) = "")
  ?options:((options:node list) = [])
  ?on_commit:((on_commit:on_commit_action) = default_on_commit_action ())
  ?table_space_name:((table_space_name:string) = "")
  ?view_query:((view_query:node option) = None)
  ?skip_data:((skip_data:bool) = false)
  () : into_clause  = {
  rel;
  col_names;
  access_method;
  options;
  on_commit;
  table_space_name;
  view_query;
  skip_data;
}

and default_merge_action 
  ?matched:((matched:bool) = false)
  ?command_type:((command_type:cmd_type) = default_cmd_type ())
  ?override:((override:overriding_kind) = default_overriding_kind ())
  ?qual:((qual:node option) = None)
  ?target_list:((target_list:node list) = [])
  ?update_colnos:((update_colnos:node list) = [])
  () : merge_action  = {
  matched;
  command_type;
  override;
  qual;
  target_list;
  update_colnos;
}

and default_query 
  ?command_type:((command_type:cmd_type) = default_cmd_type ())
  ?query_source:((query_source:query_source) = default_query_source ())
  ?can_set_tag:((can_set_tag:bool) = false)
  ?utility_stmt:((utility_stmt:node option) = None)
  ?result_relation:((result_relation:int32) = 0l)
  ?has_aggs:((has_aggs:bool) = false)
  ?has_window_funcs:((has_window_funcs:bool) = false)
  ?has_target_srfs:((has_target_srfs:bool) = false)
  ?has_sub_links:((has_sub_links:bool) = false)
  ?has_distinct_on:((has_distinct_on:bool) = false)
  ?has_recursive:((has_recursive:bool) = false)
  ?has_modifying_cte:((has_modifying_cte:bool) = false)
  ?has_for_update:((has_for_update:bool) = false)
  ?has_row_security:((has_row_security:bool) = false)
  ?is_return:((is_return:bool) = false)
  ?cte_list:((cte_list:node list) = [])
  ?rtable:((rtable:node list) = [])
  ?jointree:((jointree:from_expr option) = None)
  ?merge_action_list:((merge_action_list:node list) = [])
  ?merge_use_outer_join:((merge_use_outer_join:bool) = false)
  ?target_list:((target_list:node list) = [])
  ?override:((override:overriding_kind) = default_overriding_kind ())
  ?on_conflict:((on_conflict:on_conflict_expr option) = None)
  ?returning_list:((returning_list:node list) = [])
  ?group_clause:((group_clause:node list) = [])
  ?group_distinct:((group_distinct:bool) = false)
  ?grouping_sets:((grouping_sets:node list) = [])
  ?having_qual:((having_qual:node option) = None)
  ?window_clause:((window_clause:node list) = [])
  ?distinct_clause:((distinct_clause:node list) = [])
  ?sort_clause:((sort_clause:node list) = [])
  ?limit_offset:((limit_offset:node option) = None)
  ?limit_count:((limit_count:node option) = None)
  ?limit_option:((limit_option:limit_option) = default_limit_option ())
  ?row_marks:((row_marks:node list) = [])
  ?set_operations:((set_operations:node option) = None)
  ?constraint_deps:((constraint_deps:node list) = [])
  ?with_check_options:((with_check_options:node list) = [])
  ?stmt_location:((stmt_location:int32) = 0l)
  ?stmt_len:((stmt_len:int32) = 0l)
  () : query  = {
  command_type;
  query_source;
  can_set_tag;
  utility_stmt;
  result_relation;
  has_aggs;
  has_window_funcs;
  has_target_srfs;
  has_sub_links;
  has_distinct_on;
  has_recursive;
  has_modifying_cte;
  has_for_update;
  has_row_security;
  is_return;
  cte_list;
  rtable;
  jointree;
  merge_action_list;
  merge_use_outer_join;
  target_list;
  override;
  on_conflict;
  returning_list;
  group_clause;
  group_distinct;
  grouping_sets;
  having_qual;
  window_clause;
  distinct_clause;
  sort_clause;
  limit_offset;
  limit_count;
  limit_option;
  row_marks;
  set_operations;
  constraint_deps;
  with_check_options;
  stmt_location;
  stmt_len;
}

and default_insert_stmt 
  ?relation:((relation:range_var option) = None)
  ?cols:((cols:node list) = [])
  ?select_stmt:((select_stmt:node option) = None)
  ?on_conflict_clause:((on_conflict_clause:on_conflict_clause option) = None)
  ?returning_list:((returning_list:node list) = [])
  ?with_clause:((with_clause:with_clause option) = None)
  ?override:((override:overriding_kind) = default_overriding_kind ())
  () : insert_stmt  = {
  relation;
  cols;
  select_stmt;
  on_conflict_clause;
  returning_list;
  with_clause;
  override;
}

and default_on_conflict_clause 
  ?action:((action:on_conflict_action) = default_on_conflict_action ())
  ?infer:((infer:infer_clause option) = None)
  ?target_list:((target_list:node list) = [])
  ?where_clause:((where_clause:node option) = None)
  ?location:((location:int32) = 0l)
  () : on_conflict_clause  = {
  action;
  infer;
  target_list;
  where_clause;
  location;
}

and default_infer_clause 
  ?index_elems:((index_elems:node list) = [])
  ?where_clause:((where_clause:node option) = None)
  ?conname:((conname:string) = "")
  ?location:((location:int32) = 0l)
  () : infer_clause  = {
  index_elems;
  where_clause;
  conname;
  location;
}

and default_with_clause 
  ?ctes:((ctes:node list) = [])
  ?recursive:((recursive:bool) = false)
  ?location:((location:int32) = 0l)
  () : with_clause  = {
  ctes;
  recursive;
  location;
}

and default_delete_stmt 
  ?relation:((relation:range_var option) = None)
  ?using_clause:((using_clause:node list) = [])
  ?where_clause:((where_clause:node option) = None)
  ?returning_list:((returning_list:node list) = [])
  ?with_clause:((with_clause:with_clause option) = None)
  () : delete_stmt  = {
  relation;
  using_clause;
  where_clause;
  returning_list;
  with_clause;
}

and default_update_stmt 
  ?relation:((relation:range_var option) = None)
  ?target_list:((target_list:node list) = [])
  ?where_clause:((where_clause:node option) = None)
  ?from_clause:((from_clause:node list) = [])
  ?returning_list:((returning_list:node list) = [])
  ?with_clause:((with_clause:with_clause option) = None)
  () : update_stmt  = {
  relation;
  target_list;
  where_clause;
  from_clause;
  returning_list;
  with_clause;
}

and default_merge_stmt 
  ?relation:((relation:range_var option) = None)
  ?source_relation:((source_relation:node option) = None)
  ?join_condition:((join_condition:node option) = None)
  ?merge_when_clauses:((merge_when_clauses:node list) = [])
  ?with_clause:((with_clause:with_clause option) = None)
  () : merge_stmt  = {
  relation;
  source_relation;
  join_condition;
  merge_when_clauses;
  with_clause;
}

and default_select_stmt 
  ?distinct_clause:((distinct_clause:node list) = [])
  ?into_clause:((into_clause:into_clause option) = None)
  ?target_list:((target_list:node list) = [])
  ?from_clause:((from_clause:node list) = [])
  ?where_clause:((where_clause:node option) = None)
  ?group_clause:((group_clause:node list) = [])
  ?group_distinct:((group_distinct:bool) = false)
  ?having_clause:((having_clause:node option) = None)
  ?window_clause:((window_clause:node list) = [])
  ?values_lists:((values_lists:node list) = [])
  ?sort_clause:((sort_clause:node list) = [])
  ?limit_offset:((limit_offset:node option) = None)
  ?limit_count:((limit_count:node option) = None)
  ?limit_option:((limit_option:limit_option) = default_limit_option ())
  ?locking_clause:((locking_clause:node list) = [])
  ?with_clause:((with_clause:with_clause option) = None)
  ?op:((op:set_operation) = default_set_operation ())
  ?all:((all:bool) = false)
  ?larg:((larg:select_stmt option) = None)
  ?rarg:((rarg:select_stmt option) = None)
  () : select_stmt  = {
  distinct_clause;
  into_clause;
  target_list;
  from_clause;
  where_clause;
  group_clause;
  group_distinct;
  having_clause;
  window_clause;
  values_lists;
  sort_clause;
  limit_offset;
  limit_count;
  limit_option;
  locking_clause;
  with_clause;
  op;
  all;
  larg;
  rarg;
}

and default_return_stmt 
  ?returnval:((returnval:node option) = None)
  () : return_stmt  = {
  returnval;
}

and default_plassign_stmt 
  ?name:((name:string) = "")
  ?indirection:((indirection:node list) = [])
  ?nnames:((nnames:int32) = 0l)
  ?val_:((val_:select_stmt option) = None)
  ?location:((location:int32) = 0l)
  () : plassign_stmt  = {
  name;
  indirection;
  nnames;
  val_;
  location;
}

and default_alter_table_stmt 
  ?relation:((relation:range_var option) = None)
  ?cmds:((cmds:node list) = [])
  ?objtype:((objtype:object_type) = default_object_type ())
  ?missing_ok:((missing_ok:bool) = false)
  () : alter_table_stmt  = {
  relation;
  cmds;
  objtype;
  missing_ok;
}

and default_alter_table_cmd 
  ?subtype:((subtype:alter_table_type) = default_alter_table_type ())
  ?name:((name:string) = "")
  ?num:((num:int32) = 0l)
  ?newowner:((newowner:role_spec option) = None)
  ?def:((def:node option) = None)
  ?behavior:((behavior:drop_behavior) = default_drop_behavior ())
  ?missing_ok:((missing_ok:bool) = false)
  ?recurse:((recurse:bool) = false)
  () : alter_table_cmd  = {
  subtype;
  name;
  num;
  newowner;
  def;
  behavior;
  missing_ok;
  recurse;
}

and default_alter_domain_stmt 
  ?subtype:((subtype:string) = "")
  ?type_name:((type_name:node list) = [])
  ?name:((name:string) = "")
  ?def:((def:node option) = None)
  ?behavior:((behavior:drop_behavior) = default_drop_behavior ())
  ?missing_ok:((missing_ok:bool) = false)
  () : alter_domain_stmt  = {
  subtype;
  type_name;
  name;
  def;
  behavior;
  missing_ok;
}

and default_set_operation_stmt 
  ?op:((op:set_operation) = default_set_operation ())
  ?all:((all:bool) = false)
  ?larg:((larg:node option) = None)
  ?rarg:((rarg:node option) = None)
  ?col_types:((col_types:node list) = [])
  ?col_typmods:((col_typmods:node list) = [])
  ?col_collations:((col_collations:node list) = [])
  ?group_clauses:((group_clauses:node list) = [])
  () : set_operation_stmt  = {
  op;
  all;
  larg;
  rarg;
  col_types;
  col_typmods;
  col_collations;
  group_clauses;
}

and default_grant_stmt 
  ?is_grant:((is_grant:bool) = false)
  ?targtype:((targtype:grant_target_type) = default_grant_target_type ())
  ?objtype:((objtype:object_type) = default_object_type ())
  ?objects:((objects:node list) = [])
  ?privileges:((privileges:node list) = [])
  ?grantees:((grantees:node list) = [])
  ?grant_option:((grant_option:bool) = false)
  ?grantor:((grantor:role_spec option) = None)
  ?behavior:((behavior:drop_behavior) = default_drop_behavior ())
  () : grant_stmt  = {
  is_grant;
  targtype;
  objtype;
  objects;
  privileges;
  grantees;
  grant_option;
  grantor;
  behavior;
}

and default_grant_role_stmt 
  ?granted_roles:((granted_roles:node list) = [])
  ?grantee_roles:((grantee_roles:node list) = [])
  ?is_grant:((is_grant:bool) = false)
  ?admin_opt:((admin_opt:bool) = false)
  ?grantor:((grantor:role_spec option) = None)
  ?behavior:((behavior:drop_behavior) = default_drop_behavior ())
  () : grant_role_stmt  = {
  granted_roles;
  grantee_roles;
  is_grant;
  admin_opt;
  grantor;
  behavior;
}

and default_alter_default_privileges_stmt 
  ?options:((options:node list) = [])
  ?action:((action:grant_stmt option) = None)
  () : alter_default_privileges_stmt  = {
  options;
  action;
}

and default_cluster_stmt 
  ?relation:((relation:range_var option) = None)
  ?indexname:((indexname:string) = "")
  ?params:((params:node list) = [])
  () : cluster_stmt  = {
  relation;
  indexname;
  params;
}

and default_copy_stmt 
  ?relation:((relation:range_var option) = None)
  ?query:((query:node option) = None)
  ?attlist:((attlist:node list) = [])
  ?is_from:((is_from:bool) = false)
  ?is_program:((is_program:bool) = false)
  ?filename:((filename:string) = "")
  ?options:((options:node list) = [])
  ?where_clause:((where_clause:node option) = None)
  () : copy_stmt  = {
  relation;
  query;
  attlist;
  is_from;
  is_program;
  filename;
  options;
  where_clause;
}

and default_create_stmt 
  ?relation:((relation:range_var option) = None)
  ?table_elts:((table_elts:node list) = [])
  ?inh_relations:((inh_relations:node list) = [])
  ?partbound:((partbound:partition_bound_spec option) = None)
  ?partspec:((partspec:partition_spec option) = None)
  ?of_typename:((of_typename:type_name option) = None)
  ?constraints:((constraints:node list) = [])
  ?options:((options:node list) = [])
  ?oncommit:((oncommit:on_commit_action) = default_on_commit_action ())
  ?tablespacename:((tablespacename:string) = "")
  ?access_method:((access_method:string) = "")
  ?if_not_exists:((if_not_exists:bool) = false)
  () : create_stmt  = {
  relation;
  table_elts;
  inh_relations;
  partbound;
  partspec;
  of_typename;
  constraints;
  options;
  oncommit;
  tablespacename;
  access_method;
  if_not_exists;
}

and default_partition_bound_spec 
  ?strategy:((strategy:string) = "")
  ?is_default:((is_default:bool) = false)
  ?modulus:((modulus:int32) = 0l)
  ?remainder:((remainder:int32) = 0l)
  ?listdatums:((listdatums:node list) = [])
  ?lowerdatums:((lowerdatums:node list) = [])
  ?upperdatums:((upperdatums:node list) = [])
  ?location:((location:int32) = 0l)
  () : partition_bound_spec  = {
  strategy;
  is_default;
  modulus;
  remainder;
  listdatums;
  lowerdatums;
  upperdatums;
  location;
}

and default_partition_spec 
  ?strategy:((strategy:string) = "")
  ?part_params:((part_params:node list) = [])
  ?location:((location:int32) = 0l)
  () : partition_spec  = {
  strategy;
  part_params;
  location;
}

and default_type_name 
  ?names:((names:node list) = [])
  ?type_oid:((type_oid:int32) = 0l)
  ?setof:((setof:bool) = false)
  ?pct_type:((pct_type:bool) = false)
  ?typmods:((typmods:node list) = [])
  ?typemod:((typemod:int32) = 0l)
  ?array_bounds:((array_bounds:node list) = [])
  ?location:((location:int32) = 0l)
  () : type_name  = {
  names;
  type_oid;
  setof;
  pct_type;
  typmods;
  typemod;
  array_bounds;
  location;
}

and default_define_stmt 
  ?kind:((kind:object_type) = default_object_type ())
  ?oldstyle:((oldstyle:bool) = false)
  ?defnames:((defnames:node list) = [])
  ?args:((args:node list) = [])
  ?definition:((definition:node list) = [])
  ?if_not_exists:((if_not_exists:bool) = false)
  ?replace:((replace:bool) = false)
  () : define_stmt  = {
  kind;
  oldstyle;
  defnames;
  args;
  definition;
  if_not_exists;
  replace;
}

and default_drop_stmt 
  ?objects:((objects:node list) = [])
  ?remove_type:((remove_type:object_type) = default_object_type ())
  ?behavior:((behavior:drop_behavior) = default_drop_behavior ())
  ?missing_ok:((missing_ok:bool) = false)
  ?concurrent:((concurrent:bool) = false)
  () : drop_stmt  = {
  objects;
  remove_type;
  behavior;
  missing_ok;
  concurrent;
}

and default_truncate_stmt 
  ?relations:((relations:node list) = [])
  ?restart_seqs:((restart_seqs:bool) = false)
  ?behavior:((behavior:drop_behavior) = default_drop_behavior ())
  () : truncate_stmt  = {
  relations;
  restart_seqs;
  behavior;
}

and default_comment_stmt 
  ?objtype:((objtype:object_type) = default_object_type ())
  ?object_:((object_:node option) = None)
  ?comment:((comment:string) = "")
  () : comment_stmt  = {
  objtype;
  object_;
  comment;
}

and default_index_stmt 
  ?idxname:((idxname:string) = "")
  ?relation:((relation:range_var option) = None)
  ?access_method:((access_method:string) = "")
  ?table_space:((table_space:string) = "")
  ?index_params:((index_params:node list) = [])
  ?index_including_params:((index_including_params:node list) = [])
  ?options:((options:node list) = [])
  ?where_clause:((where_clause:node option) = None)
  ?exclude_op_names:((exclude_op_names:node list) = [])
  ?idxcomment:((idxcomment:string) = "")
  ?index_oid:((index_oid:int32) = 0l)
  ?old_node:((old_node:int32) = 0l)
  ?old_create_subid:((old_create_subid:int32) = 0l)
  ?old_first_relfilenode_subid:((old_first_relfilenode_subid:int32) = 0l)
  ?unique:((unique:bool) = false)
  ?nulls_not_distinct:((nulls_not_distinct:bool) = false)
  ?primary:((primary:bool) = false)
  ?isconstraint:((isconstraint:bool) = false)
  ?deferrable:((deferrable:bool) = false)
  ?initdeferred:((initdeferred:bool) = false)
  ?transformed:((transformed:bool) = false)
  ?concurrent:((concurrent:bool) = false)
  ?if_not_exists:((if_not_exists:bool) = false)
  ?reset_default_tblspc:((reset_default_tblspc:bool) = false)
  () : index_stmt  = {
  idxname;
  relation;
  access_method;
  table_space;
  index_params;
  index_including_params;
  options;
  where_clause;
  exclude_op_names;
  idxcomment;
  index_oid;
  old_node;
  old_create_subid;
  old_first_relfilenode_subid;
  unique;
  nulls_not_distinct;
  primary;
  isconstraint;
  deferrable;
  initdeferred;
  transformed;
  concurrent;
  if_not_exists;
  reset_default_tblspc;
}

and default_create_function_stmt 
  ?is_procedure:((is_procedure:bool) = false)
  ?replace:((replace:bool) = false)
  ?funcname:((funcname:node list) = [])
  ?parameters:((parameters:node list) = [])
  ?return_type:((return_type:type_name option) = None)
  ?options:((options:node list) = [])
  ?sql_body:((sql_body:node option) = None)
  () : create_function_stmt  = {
  is_procedure;
  replace;
  funcname;
  parameters;
  return_type;
  options;
  sql_body;
}

and default_alter_function_stmt 
  ?objtype:((objtype:object_type) = default_object_type ())
  ?func:((func:object_with_args option) = None)
  ?actions:((actions:node list) = [])
  () : alter_function_stmt  = {
  objtype;
  func;
  actions;
}

and default_object_with_args 
  ?objname:((objname:node list) = [])
  ?objargs:((objargs:node list) = [])
  ?objfuncargs:((objfuncargs:node list) = [])
  ?args_unspecified:((args_unspecified:bool) = false)
  () : object_with_args  = {
  objname;
  objargs;
  objfuncargs;
  args_unspecified;
}

and default_do_stmt 
  ?args:((args:node list) = [])
  () : do_stmt  = {
  args;
}

and default_rename_stmt 
  ?rename_type:((rename_type:object_type) = default_object_type ())
  ?relation_type:((relation_type:object_type) = default_object_type ())
  ?relation:((relation:range_var option) = None)
  ?object_:((object_:node option) = None)
  ?subname:((subname:string) = "")
  ?newname:((newname:string) = "")
  ?behavior:((behavior:drop_behavior) = default_drop_behavior ())
  ?missing_ok:((missing_ok:bool) = false)
  () : rename_stmt  = {
  rename_type;
  relation_type;
  relation;
  object_;
  subname;
  newname;
  behavior;
  missing_ok;
}

and default_rule_stmt 
  ?relation:((relation:range_var option) = None)
  ?rulename:((rulename:string) = "")
  ?where_clause:((where_clause:node option) = None)
  ?event:((event:cmd_type) = default_cmd_type ())
  ?instead:((instead:bool) = false)
  ?actions:((actions:node list) = [])
  ?replace:((replace:bool) = false)
  () : rule_stmt  = {
  relation;
  rulename;
  where_clause;
  event;
  instead;
  actions;
  replace;
}

and default_transaction_stmt 
  ?kind:((kind:transaction_stmt_kind) = default_transaction_stmt_kind ())
  ?options:((options:node list) = [])
  ?savepoint_name:((savepoint_name:string) = "")
  ?gid:((gid:string) = "")
  ?chain:((chain:bool) = false)
  () : transaction_stmt  = {
  kind;
  options;
  savepoint_name;
  gid;
  chain;
}

and default_view_stmt 
  ?view:((view:range_var option) = None)
  ?aliases:((aliases:node list) = [])
  ?query:((query:node option) = None)
  ?replace:((replace:bool) = false)
  ?options:((options:node list) = [])
  ?with_check_option:((with_check_option:view_check_option) = default_view_check_option ())
  () : view_stmt  = {
  view;
  aliases;
  query;
  replace;
  options;
  with_check_option;
}

and default_create_domain_stmt 
  ?domainname:((domainname:node list) = [])
  ?type_name:((type_name:type_name option) = None)
  ?coll_clause:((coll_clause:collate_clause option) = None)
  ?constraints:((constraints:node list) = [])
  () : create_domain_stmt  = {
  domainname;
  type_name;
  coll_clause;
  constraints;
}

and default_collate_clause 
  ?arg:((arg:node option) = None)
  ?collname:((collname:node list) = [])
  ?location:((location:int32) = 0l)
  () : collate_clause  = {
  arg;
  collname;
  location;
}

and default_createdb_stmt 
  ?dbname:((dbname:string) = "")
  ?options:((options:node list) = [])
  () : createdb_stmt  = {
  dbname;
  options;
}

and default_dropdb_stmt 
  ?dbname:((dbname:string) = "")
  ?missing_ok:((missing_ok:bool) = false)
  ?options:((options:node list) = [])
  () : dropdb_stmt  = {
  dbname;
  missing_ok;
  options;
}

and default_vacuum_stmt 
  ?options:((options:node list) = [])
  ?rels:((rels:node list) = [])
  ?is_vacuumcmd:((is_vacuumcmd:bool) = false)
  () : vacuum_stmt  = {
  options;
  rels;
  is_vacuumcmd;
}

and default_explain_stmt 
  ?query:((query:node option) = None)
  ?options:((options:node list) = [])
  () : explain_stmt  = {
  query;
  options;
}

and default_create_table_as_stmt 
  ?query:((query:node option) = None)
  ?into:((into:into_clause option) = None)
  ?objtype:((objtype:object_type) = default_object_type ())
  ?is_select_into:((is_select_into:bool) = false)
  ?if_not_exists:((if_not_exists:bool) = false)
  () : create_table_as_stmt  = {
  query;
  into;
  objtype;
  is_select_into;
  if_not_exists;
}

and default_create_seq_stmt 
  ?sequence:((sequence:range_var option) = None)
  ?options:((options:node list) = [])
  ?owner_id:((owner_id:int32) = 0l)
  ?for_identity:((for_identity:bool) = false)
  ?if_not_exists:((if_not_exists:bool) = false)
  () : create_seq_stmt  = {
  sequence;
  options;
  owner_id;
  for_identity;
  if_not_exists;
}

and default_alter_seq_stmt 
  ?sequence:((sequence:range_var option) = None)
  ?options:((options:node list) = [])
  ?for_identity:((for_identity:bool) = false)
  ?missing_ok:((missing_ok:bool) = false)
  () : alter_seq_stmt  = {
  sequence;
  options;
  for_identity;
  missing_ok;
}

and default_variable_set_stmt 
  ?kind:((kind:variable_set_kind) = default_variable_set_kind ())
  ?name:((name:string) = "")
  ?args:((args:node list) = [])
  ?is_local:((is_local:bool) = false)
  () : variable_set_stmt  = {
  kind;
  name;
  args;
  is_local;
}

and default_create_trig_stmt 
  ?replace:((replace:bool) = false)
  ?isconstraint:((isconstraint:bool) = false)
  ?trigname:((trigname:string) = "")
  ?relation:((relation:range_var option) = None)
  ?funcname:((funcname:node list) = [])
  ?args:((args:node list) = [])
  ?row:((row:bool) = false)
  ?timing:((timing:int32) = 0l)
  ?events:((events:int32) = 0l)
  ?columns:((columns:node list) = [])
  ?when_clause:((when_clause:node option) = None)
  ?transition_rels:((transition_rels:node list) = [])
  ?deferrable:((deferrable:bool) = false)
  ?initdeferred:((initdeferred:bool) = false)
  ?constrrel:((constrrel:range_var option) = None)
  () : create_trig_stmt  = {
  replace;
  isconstraint;
  trigname;
  relation;
  funcname;
  args;
  row;
  timing;
  events;
  columns;
  when_clause;
  transition_rels;
  deferrable;
  initdeferred;
  constrrel;
}

and default_create_plang_stmt 
  ?replace:((replace:bool) = false)
  ?plname:((plname:string) = "")
  ?plhandler:((plhandler:node list) = [])
  ?plinline:((plinline:node list) = [])
  ?plvalidator:((plvalidator:node list) = [])
  ?pltrusted:((pltrusted:bool) = false)
  () : create_plang_stmt  = {
  replace;
  plname;
  plhandler;
  plinline;
  plvalidator;
  pltrusted;
}

and default_create_role_stmt 
  ?stmt_type:((stmt_type:role_stmt_type) = default_role_stmt_type ())
  ?role:((role:string) = "")
  ?options:((options:node list) = [])
  () : create_role_stmt  = {
  stmt_type;
  role;
  options;
}

and default_alter_role_stmt 
  ?role:((role:role_spec option) = None)
  ?options:((options:node list) = [])
  ?action:((action:int32) = 0l)
  () : alter_role_stmt  = {
  role;
  options;
  action;
}

and default_drop_role_stmt 
  ?roles:((roles:node list) = [])
  ?missing_ok:((missing_ok:bool) = false)
  () : drop_role_stmt  = {
  roles;
  missing_ok;
}

and default_lock_stmt 
  ?relations:((relations:node list) = [])
  ?mode:((mode:int32) = 0l)
  ?nowait:((nowait:bool) = false)
  () : lock_stmt  = {
  relations;
  mode;
  nowait;
}

and default_constraints_set_stmt 
  ?constraints:((constraints:node list) = [])
  ?deferred:((deferred:bool) = false)
  () : constraints_set_stmt  = {
  constraints;
  deferred;
}

and default_reindex_stmt 
  ?kind:((kind:reindex_object_type) = default_reindex_object_type ())
  ?relation:((relation:range_var option) = None)
  ?name:((name:string) = "")
  ?params:((params:node list) = [])
  () : reindex_stmt  = {
  kind;
  relation;
  name;
  params;
}

and default_create_schema_stmt 
  ?schemaname:((schemaname:string) = "")
  ?authrole:((authrole:role_spec option) = None)
  ?schema_elts:((schema_elts:node list) = [])
  ?if_not_exists:((if_not_exists:bool) = false)
  () : create_schema_stmt  = {
  schemaname;
  authrole;
  schema_elts;
  if_not_exists;
}

and default_alter_database_stmt 
  ?dbname:((dbname:string) = "")
  ?options:((options:node list) = [])
  () : alter_database_stmt  = {
  dbname;
  options;
}

and default_alter_database_set_stmt 
  ?dbname:((dbname:string) = "")
  ?setstmt:((setstmt:variable_set_stmt option) = None)
  () : alter_database_set_stmt  = {
  dbname;
  setstmt;
}

and default_alter_role_set_stmt 
  ?role:((role:role_spec option) = None)
  ?database:((database:string) = "")
  ?setstmt:((setstmt:variable_set_stmt option) = None)
  () : alter_role_set_stmt  = {
  role;
  database;
  setstmt;
}

and default_create_conversion_stmt 
  ?conversion_name:((conversion_name:node list) = [])
  ?for_encoding_name:((for_encoding_name:string) = "")
  ?to_encoding_name:((to_encoding_name:string) = "")
  ?func_name:((func_name:node list) = [])
  ?def:((def:bool) = false)
  () : create_conversion_stmt  = {
  conversion_name;
  for_encoding_name;
  to_encoding_name;
  func_name;
  def;
}

and default_create_cast_stmt 
  ?sourcetype:((sourcetype:type_name option) = None)
  ?targettype:((targettype:type_name option) = None)
  ?func:((func:object_with_args option) = None)
  ?context:((context:coercion_context) = default_coercion_context ())
  ?inout:((inout:bool) = false)
  () : create_cast_stmt  = {
  sourcetype;
  targettype;
  func;
  context;
  inout;
}

and default_create_op_class_stmt 
  ?opclassname:((opclassname:node list) = [])
  ?opfamilyname:((opfamilyname:node list) = [])
  ?amname:((amname:string) = "")
  ?datatype:((datatype:type_name option) = None)
  ?items:((items:node list) = [])
  ?is_default:((is_default:bool) = false)
  () : create_op_class_stmt  = {
  opclassname;
  opfamilyname;
  amname;
  datatype;
  items;
  is_default;
}

and default_create_op_family_stmt 
  ?opfamilyname:((opfamilyname:node list) = [])
  ?amname:((amname:string) = "")
  () : create_op_family_stmt  = {
  opfamilyname;
  amname;
}

and default_alter_op_family_stmt 
  ?opfamilyname:((opfamilyname:node list) = [])
  ?amname:((amname:string) = "")
  ?is_drop:((is_drop:bool) = false)
  ?items:((items:node list) = [])
  () : alter_op_family_stmt  = {
  opfamilyname;
  amname;
  is_drop;
  items;
}

and default_prepare_stmt 
  ?name:((name:string) = "")
  ?argtypes:((argtypes:node list) = [])
  ?query:((query:node option) = None)
  () : prepare_stmt  = {
  name;
  argtypes;
  query;
}

and default_execute_stmt 
  ?name:((name:string) = "")
  ?params:((params:node list) = [])
  () : execute_stmt  = {
  name;
  params;
}

and default_declare_cursor_stmt 
  ?portalname:((portalname:string) = "")
  ?options:((options:int32) = 0l)
  ?query:((query:node option) = None)
  () : declare_cursor_stmt  = {
  portalname;
  options;
  query;
}

and default_create_table_space_stmt 
  ?tablespacename:((tablespacename:string) = "")
  ?owner:((owner:role_spec option) = None)
  ?location:((location:string) = "")
  ?options:((options:node list) = [])
  () : create_table_space_stmt  = {
  tablespacename;
  owner;
  location;
  options;
}

and default_alter_object_depends_stmt 
  ?object_type:((object_type:object_type) = default_object_type ())
  ?relation:((relation:range_var option) = None)
  ?object_:((object_:node option) = None)
  ?extname:((extname:string option) = None)
  ?remove:((remove:bool) = false)
  () : alter_object_depends_stmt  = {
  object_type;
  relation;
  object_;
  extname;
  remove;
}

and default_alter_object_schema_stmt 
  ?object_type:((object_type:object_type) = default_object_type ())
  ?relation:((relation:range_var option) = None)
  ?object_:((object_:node option) = None)
  ?newschema:((newschema:string) = "")
  ?missing_ok:((missing_ok:bool) = false)
  () : alter_object_schema_stmt  = {
  object_type;
  relation;
  object_;
  newschema;
  missing_ok;
}

and default_alter_owner_stmt 
  ?object_type:((object_type:object_type) = default_object_type ())
  ?relation:((relation:range_var option) = None)
  ?object_:((object_:node option) = None)
  ?newowner:((newowner:role_spec option) = None)
  () : alter_owner_stmt  = {
  object_type;
  relation;
  object_;
  newowner;
}

and default_alter_operator_stmt 
  ?opername:((opername:object_with_args option) = None)
  ?options:((options:node list) = [])
  () : alter_operator_stmt  = {
  opername;
  options;
}

and default_alter_type_stmt 
  ?type_name:((type_name:node list) = [])
  ?options:((options:node list) = [])
  () : alter_type_stmt  = {
  type_name;
  options;
}

and default_drop_owned_stmt 
  ?roles:((roles:node list) = [])
  ?behavior:((behavior:drop_behavior) = default_drop_behavior ())
  () : drop_owned_stmt  = {
  roles;
  behavior;
}

and default_reassign_owned_stmt 
  ?roles:((roles:node list) = [])
  ?newrole:((newrole:role_spec option) = None)
  () : reassign_owned_stmt  = {
  roles;
  newrole;
}

and default_composite_type_stmt 
  ?typevar:((typevar:range_var option) = None)
  ?coldeflist:((coldeflist:node list) = [])
  () : composite_type_stmt  = {
  typevar;
  coldeflist;
}

and default_create_enum_stmt 
  ?type_name:((type_name:node list) = [])
  ?vals:((vals:node list) = [])
  () : create_enum_stmt  = {
  type_name;
  vals;
}

and default_create_range_stmt 
  ?type_name:((type_name:node list) = [])
  ?params:((params:node list) = [])
  () : create_range_stmt  = {
  type_name;
  params;
}

and default_alter_enum_stmt 
  ?type_name:((type_name:node list) = [])
  ?old_val:((old_val:string) = "")
  ?new_val:((new_val:string) = "")
  ?new_val_neighbor:((new_val_neighbor:string) = "")
  ?new_val_is_after:((new_val_is_after:bool) = false)
  ?skip_if_new_val_exists:((skip_if_new_val_exists:bool) = false)
  () : alter_enum_stmt  = {
  type_name;
  old_val;
  new_val;
  new_val_neighbor;
  new_val_is_after;
  skip_if_new_val_exists;
}

and default_alter_tsdictionary_stmt 
  ?dictname:((dictname:node list) = [])
  ?options:((options:node list) = [])
  () : alter_tsdictionary_stmt  = {
  dictname;
  options;
}

and default_alter_tsconfiguration_stmt 
  ?kind:((kind:alter_tsconfig_type) = default_alter_tsconfig_type ())
  ?cfgname:((cfgname:node list) = [])
  ?tokentype:((tokentype:node list) = [])
  ?dicts:((dicts:node list) = [])
  ?override:((override:bool) = false)
  ?replace:((replace:bool) = false)
  ?missing_ok:((missing_ok:bool) = false)
  () : alter_tsconfiguration_stmt  = {
  kind;
  cfgname;
  tokentype;
  dicts;
  override;
  replace;
  missing_ok;
}

and default_create_fdw_stmt 
  ?fdwname:((fdwname:string) = "")
  ?func_options:((func_options:node list) = [])
  ?options:((options:node list) = [])
  () : create_fdw_stmt  = {
  fdwname;
  func_options;
  options;
}

and default_alter_fdw_stmt 
  ?fdwname:((fdwname:string) = "")
  ?func_options:((func_options:node list) = [])
  ?options:((options:node list) = [])
  () : alter_fdw_stmt  = {
  fdwname;
  func_options;
  options;
}

and default_create_foreign_server_stmt 
  ?servername:((servername:string) = "")
  ?servertype:((servertype:string) = "")
  ?version:((version:string) = "")
  ?fdwname:((fdwname:string) = "")
  ?if_not_exists:((if_not_exists:bool) = false)
  ?options:((options:node list) = [])
  () : create_foreign_server_stmt  = {
  servername;
  servertype;
  version;
  fdwname;
  if_not_exists;
  options;
}

and default_alter_foreign_server_stmt 
  ?servername:((servername:string) = "")
  ?version:((version:string) = "")
  ?options:((options:node list) = [])
  ?has_version:((has_version:bool) = false)
  () : alter_foreign_server_stmt  = {
  servername;
  version;
  options;
  has_version;
}

and default_create_user_mapping_stmt 
  ?user:((user:role_spec option) = None)
  ?servername:((servername:string) = "")
  ?if_not_exists:((if_not_exists:bool) = false)
  ?options:((options:node list) = [])
  () : create_user_mapping_stmt  = {
  user;
  servername;
  if_not_exists;
  options;
}

and default_alter_user_mapping_stmt 
  ?user:((user:role_spec option) = None)
  ?servername:((servername:string) = "")
  ?options:((options:node list) = [])
  () : alter_user_mapping_stmt  = {
  user;
  servername;
  options;
}

and default_alter_table_space_options_stmt 
  ?tablespacename:((tablespacename:string) = "")
  ?options:((options:node list) = [])
  ?is_reset:((is_reset:bool) = false)
  () : alter_table_space_options_stmt  = {
  tablespacename;
  options;
  is_reset;
}

and default_alter_table_move_all_stmt 
  ?orig_tablespacename:((orig_tablespacename:string) = "")
  ?objtype:((objtype:object_type) = default_object_type ())
  ?roles:((roles:node list) = [])
  ?new_tablespacename:((new_tablespacename:string) = "")
  ?nowait:((nowait:bool) = false)
  () : alter_table_move_all_stmt  = {
  orig_tablespacename;
  objtype;
  roles;
  new_tablespacename;
  nowait;
}

and default_sec_label_stmt 
  ?objtype:((objtype:object_type) = default_object_type ())
  ?object_:((object_:node option) = None)
  ?provider:((provider:string) = "")
  ?label:((label:string) = "")
  () : sec_label_stmt  = {
  objtype;
  object_;
  provider;
  label;
}

and default_create_foreign_table_stmt 
  ?base_stmt:((base_stmt:create_stmt option) = None)
  ?servername:((servername:string) = "")
  ?options:((options:node list) = [])
  () : create_foreign_table_stmt  = {
  base_stmt;
  servername;
  options;
}

and default_import_foreign_schema_stmt 
  ?server_name:((server_name:string) = "")
  ?remote_schema:((remote_schema:string) = "")
  ?local_schema:((local_schema:string) = "")
  ?list_type:((list_type:import_foreign_schema_type) = default_import_foreign_schema_type ())
  ?table_list:((table_list:node list) = [])
  ?options:((options:node list) = [])
  () : import_foreign_schema_stmt  = {
  server_name;
  remote_schema;
  local_schema;
  list_type;
  table_list;
  options;
}

and default_create_extension_stmt 
  ?extname:((extname:string) = "")
  ?if_not_exists:((if_not_exists:bool) = false)
  ?options:((options:node list) = [])
  () : create_extension_stmt  = {
  extname;
  if_not_exists;
  options;
}

and default_alter_extension_stmt 
  ?extname:((extname:string) = "")
  ?options:((options:node list) = [])
  () : alter_extension_stmt  = {
  extname;
  options;
}

and default_alter_extension_contents_stmt 
  ?extname:((extname:string) = "")
  ?action:((action:int32) = 0l)
  ?objtype:((objtype:object_type) = default_object_type ())
  ?object_:((object_:node option) = None)
  () : alter_extension_contents_stmt  = {
  extname;
  action;
  objtype;
  object_;
}

and default_create_event_trig_stmt 
  ?trigname:((trigname:string) = "")
  ?eventname:((eventname:string) = "")
  ?whenclause:((whenclause:node list) = [])
  ?funcname:((funcname:node list) = [])
  () : create_event_trig_stmt  = {
  trigname;
  eventname;
  whenclause;
  funcname;
}

and default_refresh_mat_view_stmt 
  ?concurrent:((concurrent:bool) = false)
  ?skip_data:((skip_data:bool) = false)
  ?relation:((relation:range_var option) = None)
  () : refresh_mat_view_stmt  = {
  concurrent;
  skip_data;
  relation;
}

and default_alter_system_stmt 
  ?setstmt:((setstmt:variable_set_stmt option) = None)
  () : alter_system_stmt  = {
  setstmt;
}

and default_create_policy_stmt 
  ?policy_name:((policy_name:string) = "")
  ?table:((table:range_var option) = None)
  ?cmd_name:((cmd_name:string) = "")
  ?permissive:((permissive:bool) = false)
  ?roles:((roles:node list) = [])
  ?qual:((qual:node option) = None)
  ?with_check:((with_check:node option) = None)
  () : create_policy_stmt  = {
  policy_name;
  table;
  cmd_name;
  permissive;
  roles;
  qual;
  with_check;
}

and default_alter_policy_stmt 
  ?policy_name:((policy_name:string) = "")
  ?table:((table:range_var option) = None)
  ?roles:((roles:node list) = [])
  ?qual:((qual:node option) = None)
  ?with_check:((with_check:node option) = None)
  () : alter_policy_stmt  = {
  policy_name;
  table;
  roles;
  qual;
  with_check;
}

and default_create_transform_stmt 
  ?replace:((replace:bool) = false)
  ?type_name:((type_name:type_name option) = None)
  ?lang:((lang:string) = "")
  ?fromsql:((fromsql:object_with_args option) = None)
  ?tosql:((tosql:object_with_args option) = None)
  () : create_transform_stmt  = {
  replace;
  type_name;
  lang;
  fromsql;
  tosql;
}

and default_create_am_stmt 
  ?amname:((amname:string) = "")
  ?handler_name:((handler_name:node list) = [])
  ?amtype:((amtype:string) = "")
  () : create_am_stmt  = {
  amname;
  handler_name;
  amtype;
}

and default_create_publication_stmt 
  ?pubname:((pubname:string) = "")
  ?options:((options:node list) = [])
  ?pubobjects:((pubobjects:node list) = [])
  ?for_all_tables:((for_all_tables:bool) = false)
  () : create_publication_stmt  = {
  pubname;
  options;
  pubobjects;
  for_all_tables;
}

and default_alter_publication_stmt 
  ?pubname:((pubname:string) = "")
  ?options:((options:node list) = [])
  ?pubobjects:((pubobjects:node list) = [])
  ?for_all_tables:((for_all_tables:bool) = false)
  ?action:((action:alter_publication_action) = default_alter_publication_action ())
  () : alter_publication_stmt  = {
  pubname;
  options;
  pubobjects;
  for_all_tables;
  action;
}

and default_create_subscription_stmt 
  ?subname:((subname:string) = "")
  ?conninfo:((conninfo:string) = "")
  ?publication:((publication:node list) = [])
  ?options:((options:node list) = [])
  () : create_subscription_stmt  = {
  subname;
  conninfo;
  publication;
  options;
}

and default_alter_subscription_stmt 
  ?kind:((kind:alter_subscription_type) = default_alter_subscription_type ())
  ?subname:((subname:string) = "")
  ?conninfo:((conninfo:string) = "")
  ?publication:((publication:node list) = [])
  ?options:((options:node list) = [])
  () : alter_subscription_stmt  = {
  kind;
  subname;
  conninfo;
  publication;
  options;
}

and default_create_stats_stmt 
  ?defnames:((defnames:node list) = [])
  ?stat_types:((stat_types:node list) = [])
  ?exprs:((exprs:node list) = [])
  ?relations:((relations:node list) = [])
  ?stxcomment:((stxcomment:string) = "")
  ?transformed:((transformed:bool) = false)
  ?if_not_exists:((if_not_exists:bool) = false)
  () : create_stats_stmt  = {
  defnames;
  stat_types;
  exprs;
  relations;
  stxcomment;
  transformed;
  if_not_exists;
}

and default_alter_collation_stmt 
  ?collname:((collname:node list) = [])
  () : alter_collation_stmt  = {
  collname;
}

and default_call_stmt 
  ?funccall:((funccall:func_call option) = None)
  ?funcexpr:((funcexpr:func_expr option) = None)
  ?outargs:((outargs:node list) = [])
  () : call_stmt  = {
  funccall;
  funcexpr;
  outargs;
}

and default_func_call 
  ?funcname:((funcname:node list) = [])
  ?args:((args:node list) = [])
  ?agg_order:((agg_order:node list) = [])
  ?agg_filter:((agg_filter:node option) = None)
  ?over:((over:window_def option) = None)
  ?agg_within_group:((agg_within_group:bool) = false)
  ?agg_star:((agg_star:bool) = false)
  ?agg_distinct:((agg_distinct:bool) = false)
  ?func_variadic:((func_variadic:bool) = false)
  ?funcformat:((funcformat:coercion_form) = default_coercion_form ())
  ?location:((location:int32) = 0l)
  () : func_call  = {
  funcname;
  args;
  agg_order;
  agg_filter;
  over;
  agg_within_group;
  agg_star;
  agg_distinct;
  func_variadic;
  funcformat;
  location;
}

and default_window_def 
  ?name:((name:string) = "")
  ?refname:((refname:string) = "")
  ?partition_clause:((partition_clause:node list) = [])
  ?order_clause:((order_clause:node list) = [])
  ?frame_options:((frame_options:int32) = 0l)
  ?start_offset:((start_offset:node option) = None)
  ?end_offset:((end_offset:node option) = None)
  ?location:((location:int32) = 0l)
  () : window_def  = {
  name;
  refname;
  partition_clause;
  order_clause;
  frame_options;
  start_offset;
  end_offset;
  location;
}

and default_alter_stats_stmt 
  ?defnames:((defnames:node list) = [])
  ?stxstattarget:((stxstattarget:int32) = 0l)
  ?missing_ok:((missing_ok:bool) = false)
  () : alter_stats_stmt  = {
  defnames;
  stxstattarget;
  missing_ok;
}

and default_a_expr 
  ?kind:((kind:a_expr_kind) = default_a_expr_kind ())
  ?name:((name:node list) = [])
  ?lexpr:((lexpr:node option) = None)
  ?rexpr:((rexpr:node option) = None)
  ?location:((location:int32) = 0l)
  () : a_expr  = {
  kind;
  name;
  lexpr;
  rexpr;
  location;
}

and default_column_ref 
  ?fields:((fields:node list) = [])
  ?location:((location:int32) = 0l)
  () : column_ref  = {
  fields;
  location;
}

and default_a_indices 
  ?is_slice:((is_slice:bool) = false)
  ?lidx:((lidx:node option) = None)
  ?uidx:((uidx:node option) = None)
  () : a_indices  = {
  is_slice;
  lidx;
  uidx;
}

and default_a_indirection 
  ?arg:((arg:node option) = None)
  ?indirection:((indirection:node list) = [])
  () : a_indirection  = {
  arg;
  indirection;
}

and default_a_array_expr 
  ?elements:((elements:node list) = [])
  ?location:((location:int32) = 0l)
  () : a_array_expr  = {
  elements;
  location;
}

and default_res_target 
  ?name:((name:string) = "")
  ?indirection:((indirection:node list) = [])
  ?val_:((val_:node option) = None)
  ?location:((location:int32) = 0l)
  () : res_target  = {
  name;
  indirection;
  val_;
  location;
}

and default_multi_assign_ref 
  ?source:((source:node option) = None)
  ?colno:((colno:int32) = 0l)
  ?ncolumns:((ncolumns:int32) = 0l)
  () : multi_assign_ref  = {
  source;
  colno;
  ncolumns;
}

and default_type_cast 
  ?arg:((arg:node option) = None)
  ?type_name:((type_name:type_name option) = None)
  ?location:((location:int32) = 0l)
  () : type_cast  = {
  arg;
  type_name;
  location;
}

and default_sort_by 
  ?node:((node:node option) = None)
  ?sortby_dir:((sortby_dir:sort_by_dir) = default_sort_by_dir ())
  ?sortby_nulls:((sortby_nulls:sort_by_nulls) = default_sort_by_nulls ())
  ?use_op:((use_op:node list) = [])
  ?location:((location:int32) = 0l)
  () : sort_by  = {
  node;
  sortby_dir;
  sortby_nulls;
  use_op;
  location;
}

and default_range_subselect 
  ?lateral:((lateral:bool) = false)
  ?subquery:((subquery:node option) = None)
  ?alias:((alias:alias option) = None)
  () : range_subselect  = {
  lateral;
  subquery;
  alias;
}

and default_range_function 
  ?lateral:((lateral:bool) = false)
  ?ordinality:((ordinality:bool) = false)
  ?is_rowsfrom:((is_rowsfrom:bool) = false)
  ?functions:((functions:node list) = [])
  ?alias:((alias:alias option) = None)
  ?coldeflist:((coldeflist:node list) = [])
  () : range_function  = {
  lateral;
  ordinality;
  is_rowsfrom;
  functions;
  alias;
  coldeflist;
}

and default_range_table_sample 
  ?relation:((relation:node option) = None)
  ?method_:((method_:node list) = [])
  ?args:((args:node list) = [])
  ?repeatable:((repeatable:node option) = None)
  ?location:((location:int32) = 0l)
  () : range_table_sample  = {
  relation;
  method_;
  args;
  repeatable;
  location;
}

and default_range_table_func 
  ?lateral:((lateral:bool) = false)
  ?docexpr:((docexpr:node option) = None)
  ?rowexpr:((rowexpr:node option) = None)
  ?namespaces:((namespaces:node list) = [])
  ?columns:((columns:node list) = [])
  ?alias:((alias:alias option) = None)
  ?location:((location:int32) = 0l)
  () : range_table_func  = {
  lateral;
  docexpr;
  rowexpr;
  namespaces;
  columns;
  alias;
  location;
}

and default_range_table_func_col 
  ?colname:((colname:string) = "")
  ?type_name:((type_name:type_name option) = None)
  ?for_ordinality:((for_ordinality:bool) = false)
  ?is_not_null:((is_not_null:bool) = false)
  ?colexpr:((colexpr:node option) = None)
  ?coldefexpr:((coldefexpr:node option) = None)
  ?location:((location:int32) = 0l)
  () : range_table_func_col  = {
  colname;
  type_name;
  for_ordinality;
  is_not_null;
  colexpr;
  coldefexpr;
  location;
}

and default_column_def 
  ?colname:((colname:string) = "")
  ?type_name:((type_name:type_name option) = None)
  ?compression:((compression:string) = "")
  ?inhcount:((inhcount:int32) = 0l)
  ?is_local:((is_local:bool) = false)
  ?is_not_null:((is_not_null:bool) = false)
  ?is_from_type:((is_from_type:bool) = false)
  ?storage:((storage:string) = "")
  ?raw_default:((raw_default:node option) = None)
  ?cooked_default:((cooked_default:node option) = None)
  ?identity:((identity:string) = "")
  ?identity_sequence:((identity_sequence:range_var option) = None)
  ?generated:((generated:string) = "")
  ?coll_clause:((coll_clause:collate_clause option) = None)
  ?coll_oid:((coll_oid:int32) = 0l)
  ?constraints:((constraints:node list) = [])
  ?fdwoptions:((fdwoptions:node list) = [])
  ?location:((location:int32) = 0l)
  () : column_def  = {
  colname;
  type_name;
  compression;
  inhcount;
  is_local;
  is_not_null;
  is_from_type;
  storage;
  raw_default;
  cooked_default;
  identity;
  identity_sequence;
  generated;
  coll_clause;
  coll_oid;
  constraints;
  fdwoptions;
  location;
}

and default_index_elem 
  ?name:((name:string) = "")
  ?expr:((expr:node option) = None)
  ?indexcolname:((indexcolname:string) = "")
  ?collation:((collation:node list) = [])
  ?opclass:((opclass:node list) = [])
  ?opclassopts:((opclassopts:node list) = [])
  ?ordering:((ordering:sort_by_dir) = default_sort_by_dir ())
  ?nulls_ordering:((nulls_ordering:sort_by_nulls) = default_sort_by_nulls ())
  () : index_elem  = {
  name;
  expr;
  indexcolname;
  collation;
  opclass;
  opclassopts;
  ordering;
  nulls_ordering;
}

and default_stats_elem 
  ?name:((name:string) = "")
  ?expr:((expr:node option) = None)
  () : stats_elem  = {
  name;
  expr;
}

and default_constraint_ 
  ?contype:((contype:constr_type) = default_constr_type ())
  ?conname:((conname:string) = "")
  ?deferrable:((deferrable:bool) = false)
  ?initdeferred:((initdeferred:bool) = false)
  ?location:((location:int32) = 0l)
  ?is_no_inherit:((is_no_inherit:bool) = false)
  ?raw_expr:((raw_expr:node option) = None)
  ?cooked_expr:((cooked_expr:string) = "")
  ?generated_when:((generated_when:string) = "")
  ?nulls_not_distinct:((nulls_not_distinct:bool) = false)
  ?keys:((keys:node list) = [])
  ?including:((including:node list) = [])
  ?exclusions:((exclusions:node list) = [])
  ?options:((options:node list) = [])
  ?indexname:((indexname:string) = "")
  ?indexspace:((indexspace:string) = "")
  ?reset_default_tblspc:((reset_default_tblspc:bool) = false)
  ?access_method:((access_method:string) = "")
  ?where_clause:((where_clause:node option) = None)
  ?pktable:((pktable:range_var option) = None)
  ?fk_attrs:((fk_attrs:node list) = [])
  ?pk_attrs:((pk_attrs:node list) = [])
  ?fk_matchtype:((fk_matchtype:string) = "")
  ?fk_upd_action:((fk_upd_action:string) = "")
  ?fk_del_action:((fk_del_action:string) = "")
  ?fk_del_set_cols:((fk_del_set_cols:node list) = [])
  ?old_conpfeqop:((old_conpfeqop:node list) = [])
  ?old_pktable_oid:((old_pktable_oid:int32) = 0l)
  ?skip_validation:((skip_validation:bool) = false)
  ?initially_valid:((initially_valid:bool) = false)
  () : constraint_  = {
  contype;
  conname;
  deferrable;
  initdeferred;
  location;
  is_no_inherit;
  raw_expr;
  cooked_expr;
  generated_when;
  nulls_not_distinct;
  keys;
  including;
  exclusions;
  options;
  indexname;
  indexspace;
  reset_default_tblspc;
  access_method;
  where_clause;
  pktable;
  fk_attrs;
  pk_attrs;
  fk_matchtype;
  fk_upd_action;
  fk_del_action;
  fk_del_set_cols;
  old_conpfeqop;
  old_pktable_oid;
  skip_validation;
  initially_valid;
}

and default_def_elem 
  ?defnamespace:((defnamespace:string) = "")
  ?defname:((defname:string) = "")
  ?arg:((arg:node option) = None)
  ?defaction:((defaction:def_elem_action) = default_def_elem_action ())
  ?location:((location:int32) = 0l)
  () : def_elem  = {
  defnamespace;
  defname;
  arg;
  defaction;
  location;
}

and default_range_tbl_entry 
  ?rtekind:((rtekind:rtekind) = default_rtekind ())
  ?relid:((relid:int32) = 0l)
  ?relkind:((relkind:string) = "")
  ?rellockmode:((rellockmode:int32) = 0l)
  ?tablesample:((tablesample:table_sample_clause option) = None)
  ?subquery:((subquery:query option) = None)
  ?security_barrier:((security_barrier:bool) = false)
  ?jointype:((jointype:join_type) = default_join_type ())
  ?joinmergedcols:((joinmergedcols:int32) = 0l)
  ?joinaliasvars:((joinaliasvars:node list) = [])
  ?joinleftcols:((joinleftcols:node list) = [])
  ?joinrightcols:((joinrightcols:node list) = [])
  ?join_using_alias:((join_using_alias:alias option) = None)
  ?functions:((functions:node list) = [])
  ?funcordinality:((funcordinality:bool) = false)
  ?tablefunc:((tablefunc:table_func option) = None)
  ?values_lists:((values_lists:node list) = [])
  ?ctename:((ctename:string) = "")
  ?ctelevelsup:((ctelevelsup:int32) = 0l)
  ?self_reference:((self_reference:bool) = false)
  ?coltypes:((coltypes:node list) = [])
  ?coltypmods:((coltypmods:node list) = [])
  ?colcollations:((colcollations:node list) = [])
  ?enrname:((enrname:string) = "")
  ?enrtuples:((enrtuples:float) = 0.)
  ?alias:((alias:alias option) = None)
  ?eref:((eref:alias option) = None)
  ?lateral:((lateral:bool) = false)
  ?inh:((inh:bool) = false)
  ?in_from_cl:((in_from_cl:bool) = false)
  ?required_perms:((required_perms:int32) = 0l)
  ?check_as_user:((check_as_user:int32) = 0l)
  ?selected_cols:((selected_cols:int64 list) = [])
  ?inserted_cols:((inserted_cols:int64 list) = [])
  ?updated_cols:((updated_cols:int64 list) = [])
  ?extra_updated_cols:((extra_updated_cols:int64 list) = [])
  ?security_quals:((security_quals:node list) = [])
  () : range_tbl_entry  = {
  rtekind;
  relid;
  relkind;
  rellockmode;
  tablesample;
  subquery;
  security_barrier;
  jointype;
  joinmergedcols;
  joinaliasvars;
  joinleftcols;
  joinrightcols;
  join_using_alias;
  functions;
  funcordinality;
  tablefunc;
  values_lists;
  ctename;
  ctelevelsup;
  self_reference;
  coltypes;
  coltypmods;
  colcollations;
  enrname;
  enrtuples;
  alias;
  eref;
  lateral;
  inh;
  in_from_cl;
  required_perms;
  check_as_user;
  selected_cols;
  inserted_cols;
  updated_cols;
  extra_updated_cols;
  security_quals;
}

and default_table_sample_clause 
  ?tsmhandler:((tsmhandler:int32) = 0l)
  ?args:((args:node list) = [])
  ?repeatable:((repeatable:node option) = None)
  () : table_sample_clause  = {
  tsmhandler;
  args;
  repeatable;
}

and default_range_tbl_function 
  ?funcexpr:((funcexpr:node option) = None)
  ?funccolcount:((funccolcount:int32) = 0l)
  ?funccolnames:((funccolnames:node list) = [])
  ?funccoltypes:((funccoltypes:node list) = [])
  ?funccoltypmods:((funccoltypmods:node list) = [])
  ?funccolcollations:((funccolcollations:node list) = [])
  ?funcparams:((funcparams:int64 list) = [])
  () : range_tbl_function  = {
  funcexpr;
  funccolcount;
  funccolnames;
  funccoltypes;
  funccoltypmods;
  funccolcollations;
  funcparams;
}

and default_with_check_option 
  ?kind:((kind:wcokind) = default_wcokind ())
  ?relname:((relname:string) = "")
  ?polname:((polname:string) = "")
  ?qual:((qual:node option) = None)
  ?cascaded:((cascaded:bool) = false)
  () : with_check_option  = {
  kind;
  relname;
  polname;
  qual;
  cascaded;
}

and default_grouping_set 
  ?kind:((kind:grouping_set_kind) = default_grouping_set_kind ())
  ?content:((content:node list) = [])
  ?location:((location:int32) = 0l)
  () : grouping_set  = {
  kind;
  content;
  location;
}

and default_window_clause 
  ?name:((name:string) = "")
  ?refname:((refname:string) = "")
  ?partition_clause:((partition_clause:node list) = [])
  ?order_clause:((order_clause:node list) = [])
  ?frame_options:((frame_options:int32) = 0l)
  ?start_offset:((start_offset:node option) = None)
  ?end_offset:((end_offset:node option) = None)
  ?run_condition:((run_condition:node list) = [])
  ?start_in_range_func:((start_in_range_func:int32) = 0l)
  ?end_in_range_func:((end_in_range_func:int32) = 0l)
  ?in_range_coll:((in_range_coll:int32) = 0l)
  ?in_range_asc:((in_range_asc:bool) = false)
  ?in_range_nulls_first:((in_range_nulls_first:bool) = false)
  ?winref:((winref:int32) = 0l)
  ?copied_order:((copied_order:bool) = false)
  () : window_clause  = {
  name;
  refname;
  partition_clause;
  order_clause;
  frame_options;
  start_offset;
  end_offset;
  run_condition;
  start_in_range_func;
  end_in_range_func;
  in_range_coll;
  in_range_asc;
  in_range_nulls_first;
  winref;
  copied_order;
}

and default_access_priv 
  ?priv_name:((priv_name:string) = "")
  ?cols:((cols:node list) = [])
  () : access_priv  = {
  priv_name;
  cols;
}

and default_create_op_class_item 
  ?itemtype:((itemtype:int32) = 0l)
  ?name:((name:object_with_args option) = None)
  ?number:((number:int32) = 0l)
  ?order_family:((order_family:node list) = [])
  ?class_args:((class_args:node list) = [])
  ?storedtype:((storedtype:type_name option) = None)
  () : create_op_class_item  = {
  itemtype;
  name;
  number;
  order_family;
  class_args;
  storedtype;
}

and default_table_like_clause 
  ?relation:((relation:range_var option) = None)
  ?options:((options:int32) = 0l)
  ?relation_oid:((relation_oid:int32) = 0l)
  () : table_like_clause  = {
  relation;
  options;
  relation_oid;
}

and default_function_parameter 
  ?name:((name:string) = "")
  ?arg_type:((arg_type:type_name option) = None)
  ?mode:((mode:function_parameter_mode) = default_function_parameter_mode ())
  ?defexpr:((defexpr:node option) = None)
  () : function_parameter  = {
  name;
  arg_type;
  mode;
  defexpr;
}

and default_locking_clause 
  ?locked_rels:((locked_rels:node list) = [])
  ?strength:((strength:lock_clause_strength) = default_lock_clause_strength ())
  ?wait_policy:((wait_policy:lock_wait_policy) = default_lock_wait_policy ())
  () : locking_clause  = {
  locked_rels;
  strength;
  wait_policy;
}

and default_xml_serialize 
  ?xmloption:((xmloption:xml_option_type) = default_xml_option_type ())
  ?expr:((expr:node option) = None)
  ?type_name:((type_name:type_name option) = None)
  ?location:((location:int32) = 0l)
  () : xml_serialize  = {
  xmloption;
  expr;
  type_name;
  location;
}

and default_ctesearch_clause 
  ?search_col_list:((search_col_list:node list) = [])
  ?search_breadth_first:((search_breadth_first:bool) = false)
  ?search_seq_column:((search_seq_column:string) = "")
  ?location:((location:int32) = 0l)
  () : ctesearch_clause  = {
  search_col_list;
  search_breadth_first;
  search_seq_column;
  location;
}

and default_ctecycle_clause 
  ?cycle_col_list:((cycle_col_list:node list) = [])
  ?cycle_mark_column:((cycle_mark_column:string) = "")
  ?cycle_mark_value:((cycle_mark_value:node option) = None)
  ?cycle_mark_default:((cycle_mark_default:node option) = None)
  ?cycle_path_column:((cycle_path_column:string) = "")
  ?location:((location:int32) = 0l)
  ?cycle_mark_type:((cycle_mark_type:int32) = 0l)
  ?cycle_mark_typmod:((cycle_mark_typmod:int32) = 0l)
  ?cycle_mark_collation:((cycle_mark_collation:int32) = 0l)
  ?cycle_mark_neop:((cycle_mark_neop:int32) = 0l)
  () : ctecycle_clause  = {
  cycle_col_list;
  cycle_mark_column;
  cycle_mark_value;
  cycle_mark_default;
  cycle_path_column;
  location;
  cycle_mark_type;
  cycle_mark_typmod;
  cycle_mark_collation;
  cycle_mark_neop;
}

and default_common_table_expr 
  ?ctename:((ctename:string) = "")
  ?aliascolnames:((aliascolnames:node list) = [])
  ?ctematerialized:((ctematerialized:ctematerialize) = default_ctematerialize ())
  ?ctequery:((ctequery:node option) = None)
  ?search_clause:((search_clause:ctesearch_clause option) = None)
  ?cycle_clause:((cycle_clause:ctecycle_clause option) = None)
  ?location:((location:int32) = 0l)
  ?cterecursive:((cterecursive:bool) = false)
  ?cterefcount:((cterefcount:int32) = 0l)
  ?ctecolnames:((ctecolnames:node list) = [])
  ?ctecoltypes:((ctecoltypes:node list) = [])
  ?ctecoltypmods:((ctecoltypmods:node list) = [])
  ?ctecolcollations:((ctecolcollations:node list) = [])
  () : common_table_expr  = {
  ctename;
  aliascolnames;
  ctematerialized;
  ctequery;
  search_clause;
  cycle_clause;
  location;
  cterecursive;
  cterefcount;
  ctecolnames;
  ctecoltypes;
  ctecoltypmods;
  ctecolcollations;
}

and default_merge_when_clause 
  ?matched:((matched:bool) = false)
  ?command_type:((command_type:cmd_type) = default_cmd_type ())
  ?override:((override:overriding_kind) = default_overriding_kind ())
  ?condition:((condition:node option) = None)
  ?target_list:((target_list:node list) = [])
  ?values:((values:node list) = [])
  () : merge_when_clause  = {
  matched;
  command_type;
  override;
  condition;
  target_list;
  values;
}

and default_partition_elem 
  ?name:((name:string) = "")
  ?expr:((expr:node option) = None)
  ?collation:((collation:node list) = [])
  ?opclass:((opclass:node list) = [])
  ?location:((location:int32) = 0l)
  () : partition_elem  = {
  name;
  expr;
  collation;
  opclass;
  location;
}

and default_partition_range_datum 
  ?kind:((kind:partition_range_datum_kind) = default_partition_range_datum_kind ())
  ?value:((value:node option) = None)
  ?location:((location:int32) = 0l)
  () : partition_range_datum  = {
  kind;
  value;
  location;
}

and default_partition_cmd 
  ?name:((name:range_var option) = None)
  ?bound:((bound:partition_bound_spec option) = None)
  ?concurrent:((concurrent:bool) = false)
  () : partition_cmd  = {
  name;
  bound;
  concurrent;
}

and default_vacuum_relation 
  ?relation:((relation:range_var option) = None)
  ?oid:((oid:int32) = 0l)
  ?va_cols:((va_cols:node list) = [])
  () : vacuum_relation  = {
  relation;
  oid;
  va_cols;
}

and default_publication_obj_spec 
  ?pubobjtype:((pubobjtype:publication_obj_spec_type) = default_publication_obj_spec_type ())
  ?name:((name:string) = "")
  ?pubtable:((pubtable:publication_table option) = None)
  ?location:((location:int32) = 0l)
  () : publication_obj_spec  = {
  pubobjtype;
  name;
  pubtable;
  location;
}

and default_publication_table 
  ?relation:((relation:range_var option) = None)
  ?where_clause:((where_clause:node option) = None)
  ?columns:((columns:node list) = [])
  () : publication_table  = {
  relation;
  where_clause;
  columns;
}

and default_list 
  ?items:((items:node list) = [])
  () : list  = {
  items;
}

and default_int_list 
  ?items:((items:node list) = [])
  () : int_list  = {
  items;
}

and default_oid_list 
  ?items:((items:node list) = [])
  () : oid_list  = {
  items;
}

let rec default_parse_result 
  ?version:((version:int32) = 0l)
  ?stmts:((stmts:raw_stmt list) = [])
  () : parse_result  = {
  version;
  stmts;
}

let rec default_token () = (Nul:token)

let rec default_keyword_kind () = (No_keyword:keyword_kind)

let rec default_scan_token 
  ?start:((start:int32) = 0l)
  ?end_:((end_:int32) = 0l)
  ?token:((token:token) = default_token ())
  ?keyword_kind:((keyword_kind:keyword_kind) = default_keyword_kind ())
  () : scan_token  = {
  start;
  end_;
  token;
  keyword_kind;
}

let rec default_scan_result 
  ?version:((version:int32) = 0l)
  ?tokens:((tokens:scan_token list) = [])
  () : scan_result  = {
  version;
  tokens;
}

let rec default_set_quantifier () = (Set_quantifier_undefined:set_quantifier)

let rec default_table_like_option () = (Table_like_option_undefined:table_like_option)

let rec default_agg_strategy () = (Agg_strategy_undefined:agg_strategy)

let rec default_set_op_cmd () = (Set_op_cmd_undefined:set_op_cmd)

let rec default_set_op_strategy () = (Set_op_strategy_undefined:set_op_strategy)

let rec default_lock_tuple_mode () = (Lock_tuple_mode_undefined:lock_tuple_mode)
