(** pg_query.proto Binary Encoding *)


(** {2 Protobuf Encoding} *)

val encode_param_kind : Pg_query_types.param_kind -> Pbrt.Encoder.t -> unit
(** [encode_param_kind v encoder] encodes [v] with the given [encoder] *)

val encode_agg_split : Pg_query_types.agg_split -> Pbrt.Encoder.t -> unit
(** [encode_agg_split v encoder] encodes [v] with the given [encoder] *)

val encode_coercion_form : Pg_query_types.coercion_form -> Pbrt.Encoder.t -> unit
(** [encode_coercion_form v encoder] encodes [v] with the given [encoder] *)

val encode_bool_expr_type : Pg_query_types.bool_expr_type -> Pbrt.Encoder.t -> unit
(** [encode_bool_expr_type v encoder] encodes [v] with the given [encoder] *)

val encode_sub_link_type : Pg_query_types.sub_link_type -> Pbrt.Encoder.t -> unit
(** [encode_sub_link_type v encoder] encodes [v] with the given [encoder] *)

val encode_row_compare_type : Pg_query_types.row_compare_type -> Pbrt.Encoder.t -> unit
(** [encode_row_compare_type v encoder] encodes [v] with the given [encoder] *)

val encode_min_max_op : Pg_query_types.min_max_op -> Pbrt.Encoder.t -> unit
(** [encode_min_max_op v encoder] encodes [v] with the given [encoder] *)

val encode_sqlvalue_function_op : Pg_query_types.sqlvalue_function_op -> Pbrt.Encoder.t -> unit
(** [encode_sqlvalue_function_op v encoder] encodes [v] with the given [encoder] *)

val encode_xml_expr_op : Pg_query_types.xml_expr_op -> Pbrt.Encoder.t -> unit
(** [encode_xml_expr_op v encoder] encodes [v] with the given [encoder] *)

val encode_xml_option_type : Pg_query_types.xml_option_type -> Pbrt.Encoder.t -> unit
(** [encode_xml_option_type v encoder] encodes [v] with the given [encoder] *)

val encode_null_test_type : Pg_query_types.null_test_type -> Pbrt.Encoder.t -> unit
(** [encode_null_test_type v encoder] encodes [v] with the given [encoder] *)

val encode_bool_test_type : Pg_query_types.bool_test_type -> Pbrt.Encoder.t -> unit
(** [encode_bool_test_type v encoder] encodes [v] with the given [encoder] *)

val encode_range_tbl_ref : Pg_query_types.range_tbl_ref -> Pbrt.Encoder.t -> unit
(** [encode_range_tbl_ref v encoder] encodes [v] with the given [encoder] *)

val encode_join_type : Pg_query_types.join_type -> Pbrt.Encoder.t -> unit
(** [encode_join_type v encoder] encodes [v] with the given [encoder] *)

val encode_on_conflict_action : Pg_query_types.on_conflict_action -> Pbrt.Encoder.t -> unit
(** [encode_on_conflict_action v encoder] encodes [v] with the given [encoder] *)

val encode_on_commit_action : Pg_query_types.on_commit_action -> Pbrt.Encoder.t -> unit
(** [encode_on_commit_action v encoder] encodes [v] with the given [encoder] *)

val encode_cmd_type : Pg_query_types.cmd_type -> Pbrt.Encoder.t -> unit
(** [encode_cmd_type v encoder] encodes [v] with the given [encoder] *)

val encode_overriding_kind : Pg_query_types.overriding_kind -> Pbrt.Encoder.t -> unit
(** [encode_overriding_kind v encoder] encodes [v] with the given [encoder] *)

val encode_query_source : Pg_query_types.query_source -> Pbrt.Encoder.t -> unit
(** [encode_query_source v encoder] encodes [v] with the given [encoder] *)

val encode_limit_option : Pg_query_types.limit_option -> Pbrt.Encoder.t -> unit
(** [encode_limit_option v encoder] encodes [v] with the given [encoder] *)

val encode_set_operation : Pg_query_types.set_operation -> Pbrt.Encoder.t -> unit
(** [encode_set_operation v encoder] encodes [v] with the given [encoder] *)

val encode_object_type : Pg_query_types.object_type -> Pbrt.Encoder.t -> unit
(** [encode_object_type v encoder] encodes [v] with the given [encoder] *)

val encode_alter_table_type : Pg_query_types.alter_table_type -> Pbrt.Encoder.t -> unit
(** [encode_alter_table_type v encoder] encodes [v] with the given [encoder] *)

val encode_role_spec_type : Pg_query_types.role_spec_type -> Pbrt.Encoder.t -> unit
(** [encode_role_spec_type v encoder] encodes [v] with the given [encoder] *)

val encode_role_spec : Pg_query_types.role_spec -> Pbrt.Encoder.t -> unit
(** [encode_role_spec v encoder] encodes [v] with the given [encoder] *)

val encode_drop_behavior : Pg_query_types.drop_behavior -> Pbrt.Encoder.t -> unit
(** [encode_drop_behavior v encoder] encodes [v] with the given [encoder] *)

val encode_grant_target_type : Pg_query_types.grant_target_type -> Pbrt.Encoder.t -> unit
(** [encode_grant_target_type v encoder] encodes [v] with the given [encoder] *)

val encode_close_portal_stmt : Pg_query_types.close_portal_stmt -> Pbrt.Encoder.t -> unit
(** [encode_close_portal_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_fetch_direction : Pg_query_types.fetch_direction -> Pbrt.Encoder.t -> unit
(** [encode_fetch_direction v encoder] encodes [v] with the given [encoder] *)

val encode_fetch_stmt : Pg_query_types.fetch_stmt -> Pbrt.Encoder.t -> unit
(** [encode_fetch_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_notify_stmt : Pg_query_types.notify_stmt -> Pbrt.Encoder.t -> unit
(** [encode_notify_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_listen_stmt : Pg_query_types.listen_stmt -> Pbrt.Encoder.t -> unit
(** [encode_listen_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_unlisten_stmt : Pg_query_types.unlisten_stmt -> Pbrt.Encoder.t -> unit
(** [encode_unlisten_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_transaction_stmt_kind : Pg_query_types.transaction_stmt_kind -> Pbrt.Encoder.t -> unit
(** [encode_transaction_stmt_kind v encoder] encodes [v] with the given [encoder] *)

val encode_view_check_option : Pg_query_types.view_check_option -> Pbrt.Encoder.t -> unit
(** [encode_view_check_option v encoder] encodes [v] with the given [encoder] *)

val encode_load_stmt : Pg_query_types.load_stmt -> Pbrt.Encoder.t -> unit
(** [encode_load_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_variable_set_kind : Pg_query_types.variable_set_kind -> Pbrt.Encoder.t -> unit
(** [encode_variable_set_kind v encoder] encodes [v] with the given [encoder] *)

val encode_variable_show_stmt : Pg_query_types.variable_show_stmt -> Pbrt.Encoder.t -> unit
(** [encode_variable_show_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_discard_mode : Pg_query_types.discard_mode -> Pbrt.Encoder.t -> unit
(** [encode_discard_mode v encoder] encodes [v] with the given [encoder] *)

val encode_discard_stmt : Pg_query_types.discard_stmt -> Pbrt.Encoder.t -> unit
(** [encode_discard_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_role_stmt_type : Pg_query_types.role_stmt_type -> Pbrt.Encoder.t -> unit
(** [encode_role_stmt_type v encoder] encodes [v] with the given [encoder] *)

val encode_reindex_object_type : Pg_query_types.reindex_object_type -> Pbrt.Encoder.t -> unit
(** [encode_reindex_object_type v encoder] encodes [v] with the given [encoder] *)

val encode_alter_database_refresh_coll_stmt : Pg_query_types.alter_database_refresh_coll_stmt -> Pbrt.Encoder.t -> unit
(** [encode_alter_database_refresh_coll_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_coercion_context : Pg_query_types.coercion_context -> Pbrt.Encoder.t -> unit
(** [encode_coercion_context v encoder] encodes [v] with the given [encoder] *)

val encode_deallocate_stmt : Pg_query_types.deallocate_stmt -> Pbrt.Encoder.t -> unit
(** [encode_deallocate_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_drop_table_space_stmt : Pg_query_types.drop_table_space_stmt -> Pbrt.Encoder.t -> unit
(** [encode_drop_table_space_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_string : Pg_query_types.string -> Pbrt.Encoder.t -> unit
(** [encode_string v encoder] encodes [v] with the given [encoder] *)

val encode_alter_tsconfig_type : Pg_query_types.alter_tsconfig_type -> Pbrt.Encoder.t -> unit
(** [encode_alter_tsconfig_type v encoder] encodes [v] with the given [encoder] *)

val encode_drop_user_mapping_stmt : Pg_query_types.drop_user_mapping_stmt -> Pbrt.Encoder.t -> unit
(** [encode_drop_user_mapping_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_import_foreign_schema_type : Pg_query_types.import_foreign_schema_type -> Pbrt.Encoder.t -> unit
(** [encode_import_foreign_schema_type v encoder] encodes [v] with the given [encoder] *)

val encode_alter_event_trig_stmt : Pg_query_types.alter_event_trig_stmt -> Pbrt.Encoder.t -> unit
(** [encode_alter_event_trig_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_replica_identity_stmt : Pg_query_types.replica_identity_stmt -> Pbrt.Encoder.t -> unit
(** [encode_replica_identity_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_alter_publication_action : Pg_query_types.alter_publication_action -> Pbrt.Encoder.t -> unit
(** [encode_alter_publication_action v encoder] encodes [v] with the given [encoder] *)

val encode_alter_subscription_type : Pg_query_types.alter_subscription_type -> Pbrt.Encoder.t -> unit
(** [encode_alter_subscription_type v encoder] encodes [v] with the given [encoder] *)

val encode_drop_subscription_stmt : Pg_query_types.drop_subscription_stmt -> Pbrt.Encoder.t -> unit
(** [encode_drop_subscription_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_a_expr_kind : Pg_query_types.a_expr_kind -> Pbrt.Encoder.t -> unit
(** [encode_a_expr_kind v encoder] encodes [v] with the given [encoder] *)

val encode_param_ref : Pg_query_types.param_ref -> Pbrt.Encoder.t -> unit
(** [encode_param_ref v encoder] encodes [v] with the given [encoder] *)

val encode_sort_by_dir : Pg_query_types.sort_by_dir -> Pbrt.Encoder.t -> unit
(** [encode_sort_by_dir v encoder] encodes [v] with the given [encoder] *)

val encode_sort_by_nulls : Pg_query_types.sort_by_nulls -> Pbrt.Encoder.t -> unit
(** [encode_sort_by_nulls v encoder] encodes [v] with the given [encoder] *)

val encode_constr_type : Pg_query_types.constr_type -> Pbrt.Encoder.t -> unit
(** [encode_constr_type v encoder] encodes [v] with the given [encoder] *)

val encode_def_elem_action : Pg_query_types.def_elem_action -> Pbrt.Encoder.t -> unit
(** [encode_def_elem_action v encoder] encodes [v] with the given [encoder] *)

val encode_rtekind : Pg_query_types.rtekind -> Pbrt.Encoder.t -> unit
(** [encode_rtekind v encoder] encodes [v] with the given [encoder] *)

val encode_wcokind : Pg_query_types.wcokind -> Pbrt.Encoder.t -> unit
(** [encode_wcokind v encoder] encodes [v] with the given [encoder] *)

val encode_sort_group_clause : Pg_query_types.sort_group_clause -> Pbrt.Encoder.t -> unit
(** [encode_sort_group_clause v encoder] encodes [v] with the given [encoder] *)

val encode_grouping_set_kind : Pg_query_types.grouping_set_kind -> Pbrt.Encoder.t -> unit
(** [encode_grouping_set_kind v encoder] encodes [v] with the given [encoder] *)

val encode_function_parameter_mode : Pg_query_types.function_parameter_mode -> Pbrt.Encoder.t -> unit
(** [encode_function_parameter_mode v encoder] encodes [v] with the given [encoder] *)

val encode_lock_clause_strength : Pg_query_types.lock_clause_strength -> Pbrt.Encoder.t -> unit
(** [encode_lock_clause_strength v encoder] encodes [v] with the given [encoder] *)

val encode_lock_wait_policy : Pg_query_types.lock_wait_policy -> Pbrt.Encoder.t -> unit
(** [encode_lock_wait_policy v encoder] encodes [v] with the given [encoder] *)

val encode_row_mark_clause : Pg_query_types.row_mark_clause -> Pbrt.Encoder.t -> unit
(** [encode_row_mark_clause v encoder] encodes [v] with the given [encoder] *)

val encode_ctematerialize : Pg_query_types.ctematerialize -> Pbrt.Encoder.t -> unit
(** [encode_ctematerialize v encoder] encodes [v] with the given [encoder] *)

val encode_trigger_transition : Pg_query_types.trigger_transition -> Pbrt.Encoder.t -> unit
(** [encode_trigger_transition v encoder] encodes [v] with the given [encoder] *)

val encode_partition_range_datum_kind : Pg_query_types.partition_range_datum_kind -> Pbrt.Encoder.t -> unit
(** [encode_partition_range_datum_kind v encoder] encodes [v] with the given [encoder] *)

val encode_publication_obj_spec_type : Pg_query_types.publication_obj_spec_type -> Pbrt.Encoder.t -> unit
(** [encode_publication_obj_spec_type v encoder] encodes [v] with the given [encoder] *)

val encode_inline_code_block : Pg_query_types.inline_code_block -> Pbrt.Encoder.t -> unit
(** [encode_inline_code_block v encoder] encodes [v] with the given [encoder] *)

val encode_call_context : Pg_query_types.call_context -> Pbrt.Encoder.t -> unit
(** [encode_call_context v encoder] encodes [v] with the given [encoder] *)

val encode_integer : Pg_query_types.integer -> Pbrt.Encoder.t -> unit
(** [encode_integer v encoder] encodes [v] with the given [encoder] *)

val encode_float : Pg_query_types.float -> Pbrt.Encoder.t -> unit
(** [encode_float v encoder] encodes [v] with the given [encoder] *)

val encode_boolean : Pg_query_types.boolean -> Pbrt.Encoder.t -> unit
(** [encode_boolean v encoder] encodes [v] with the given [encoder] *)

val encode_bit_string : Pg_query_types.bit_string -> Pbrt.Encoder.t -> unit
(** [encode_bit_string v encoder] encodes [v] with the given [encoder] *)

val encode_a_const_val : Pg_query_types.a_const_val -> Pbrt.Encoder.t -> unit
(** [encode_a_const_val v encoder] encodes [v] with the given [encoder] *)

val encode_a_const : Pg_query_types.a_const -> Pbrt.Encoder.t -> unit
(** [encode_a_const v encoder] encodes [v] with the given [encoder] *)

val encode_raw_stmt : Pg_query_types.raw_stmt -> Pbrt.Encoder.t -> unit
(** [encode_raw_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_node : Pg_query_types.node -> Pbrt.Encoder.t -> unit
(** [encode_node v encoder] encodes [v] with the given [encoder] *)

val encode_alias : Pg_query_types.alias -> Pbrt.Encoder.t -> unit
(** [encode_alias v encoder] encodes [v] with the given [encoder] *)

val encode_range_var : Pg_query_types.range_var -> Pbrt.Encoder.t -> unit
(** [encode_range_var v encoder] encodes [v] with the given [encoder] *)

val encode_table_func : Pg_query_types.table_func -> Pbrt.Encoder.t -> unit
(** [encode_table_func v encoder] encodes [v] with the given [encoder] *)

val encode_var : Pg_query_types.var -> Pbrt.Encoder.t -> unit
(** [encode_var v encoder] encodes [v] with the given [encoder] *)

val encode_param : Pg_query_types.param -> Pbrt.Encoder.t -> unit
(** [encode_param v encoder] encodes [v] with the given [encoder] *)

val encode_aggref : Pg_query_types.aggref -> Pbrt.Encoder.t -> unit
(** [encode_aggref v encoder] encodes [v] with the given [encoder] *)

val encode_grouping_func : Pg_query_types.grouping_func -> Pbrt.Encoder.t -> unit
(** [encode_grouping_func v encoder] encodes [v] with the given [encoder] *)

val encode_window_func : Pg_query_types.window_func -> Pbrt.Encoder.t -> unit
(** [encode_window_func v encoder] encodes [v] with the given [encoder] *)

val encode_subscripting_ref : Pg_query_types.subscripting_ref -> Pbrt.Encoder.t -> unit
(** [encode_subscripting_ref v encoder] encodes [v] with the given [encoder] *)

val encode_func_expr : Pg_query_types.func_expr -> Pbrt.Encoder.t -> unit
(** [encode_func_expr v encoder] encodes [v] with the given [encoder] *)

val encode_named_arg_expr : Pg_query_types.named_arg_expr -> Pbrt.Encoder.t -> unit
(** [encode_named_arg_expr v encoder] encodes [v] with the given [encoder] *)

val encode_op_expr : Pg_query_types.op_expr -> Pbrt.Encoder.t -> unit
(** [encode_op_expr v encoder] encodes [v] with the given [encoder] *)

val encode_distinct_expr : Pg_query_types.distinct_expr -> Pbrt.Encoder.t -> unit
(** [encode_distinct_expr v encoder] encodes [v] with the given [encoder] *)

val encode_null_if_expr : Pg_query_types.null_if_expr -> Pbrt.Encoder.t -> unit
(** [encode_null_if_expr v encoder] encodes [v] with the given [encoder] *)

val encode_scalar_array_op_expr : Pg_query_types.scalar_array_op_expr -> Pbrt.Encoder.t -> unit
(** [encode_scalar_array_op_expr v encoder] encodes [v] with the given [encoder] *)

val encode_bool_expr : Pg_query_types.bool_expr -> Pbrt.Encoder.t -> unit
(** [encode_bool_expr v encoder] encodes [v] with the given [encoder] *)

val encode_sub_link : Pg_query_types.sub_link -> Pbrt.Encoder.t -> unit
(** [encode_sub_link v encoder] encodes [v] with the given [encoder] *)

val encode_sub_plan : Pg_query_types.sub_plan -> Pbrt.Encoder.t -> unit
(** [encode_sub_plan v encoder] encodes [v] with the given [encoder] *)

val encode_alternative_sub_plan : Pg_query_types.alternative_sub_plan -> Pbrt.Encoder.t -> unit
(** [encode_alternative_sub_plan v encoder] encodes [v] with the given [encoder] *)

val encode_field_select : Pg_query_types.field_select -> Pbrt.Encoder.t -> unit
(** [encode_field_select v encoder] encodes [v] with the given [encoder] *)

val encode_field_store : Pg_query_types.field_store -> Pbrt.Encoder.t -> unit
(** [encode_field_store v encoder] encodes [v] with the given [encoder] *)

val encode_relabel_type : Pg_query_types.relabel_type -> Pbrt.Encoder.t -> unit
(** [encode_relabel_type v encoder] encodes [v] with the given [encoder] *)

val encode_coerce_via_io : Pg_query_types.coerce_via_io -> Pbrt.Encoder.t -> unit
(** [encode_coerce_via_io v encoder] encodes [v] with the given [encoder] *)

val encode_array_coerce_expr : Pg_query_types.array_coerce_expr -> Pbrt.Encoder.t -> unit
(** [encode_array_coerce_expr v encoder] encodes [v] with the given [encoder] *)

val encode_convert_rowtype_expr : Pg_query_types.convert_rowtype_expr -> Pbrt.Encoder.t -> unit
(** [encode_convert_rowtype_expr v encoder] encodes [v] with the given [encoder] *)

val encode_collate_expr : Pg_query_types.collate_expr -> Pbrt.Encoder.t -> unit
(** [encode_collate_expr v encoder] encodes [v] with the given [encoder] *)

val encode_case_expr : Pg_query_types.case_expr -> Pbrt.Encoder.t -> unit
(** [encode_case_expr v encoder] encodes [v] with the given [encoder] *)

val encode_case_when : Pg_query_types.case_when -> Pbrt.Encoder.t -> unit
(** [encode_case_when v encoder] encodes [v] with the given [encoder] *)

val encode_case_test_expr : Pg_query_types.case_test_expr -> Pbrt.Encoder.t -> unit
(** [encode_case_test_expr v encoder] encodes [v] with the given [encoder] *)

val encode_array_expr : Pg_query_types.array_expr -> Pbrt.Encoder.t -> unit
(** [encode_array_expr v encoder] encodes [v] with the given [encoder] *)

val encode_row_expr : Pg_query_types.row_expr -> Pbrt.Encoder.t -> unit
(** [encode_row_expr v encoder] encodes [v] with the given [encoder] *)

val encode_row_compare_expr : Pg_query_types.row_compare_expr -> Pbrt.Encoder.t -> unit
(** [encode_row_compare_expr v encoder] encodes [v] with the given [encoder] *)

val encode_coalesce_expr : Pg_query_types.coalesce_expr -> Pbrt.Encoder.t -> unit
(** [encode_coalesce_expr v encoder] encodes [v] with the given [encoder] *)

val encode_min_max_expr : Pg_query_types.min_max_expr -> Pbrt.Encoder.t -> unit
(** [encode_min_max_expr v encoder] encodes [v] with the given [encoder] *)

val encode_sqlvalue_function : Pg_query_types.sqlvalue_function -> Pbrt.Encoder.t -> unit
(** [encode_sqlvalue_function v encoder] encodes [v] with the given [encoder] *)

val encode_xml_expr : Pg_query_types.xml_expr -> Pbrt.Encoder.t -> unit
(** [encode_xml_expr v encoder] encodes [v] with the given [encoder] *)

val encode_null_test : Pg_query_types.null_test -> Pbrt.Encoder.t -> unit
(** [encode_null_test v encoder] encodes [v] with the given [encoder] *)

val encode_boolean_test : Pg_query_types.boolean_test -> Pbrt.Encoder.t -> unit
(** [encode_boolean_test v encoder] encodes [v] with the given [encoder] *)

val encode_coerce_to_domain : Pg_query_types.coerce_to_domain -> Pbrt.Encoder.t -> unit
(** [encode_coerce_to_domain v encoder] encodes [v] with the given [encoder] *)

val encode_coerce_to_domain_value : Pg_query_types.coerce_to_domain_value -> Pbrt.Encoder.t -> unit
(** [encode_coerce_to_domain_value v encoder] encodes [v] with the given [encoder] *)

val encode_set_to_default : Pg_query_types.set_to_default -> Pbrt.Encoder.t -> unit
(** [encode_set_to_default v encoder] encodes [v] with the given [encoder] *)

val encode_current_of_expr : Pg_query_types.current_of_expr -> Pbrt.Encoder.t -> unit
(** [encode_current_of_expr v encoder] encodes [v] with the given [encoder] *)

val encode_next_value_expr : Pg_query_types.next_value_expr -> Pbrt.Encoder.t -> unit
(** [encode_next_value_expr v encoder] encodes [v] with the given [encoder] *)

val encode_inference_elem : Pg_query_types.inference_elem -> Pbrt.Encoder.t -> unit
(** [encode_inference_elem v encoder] encodes [v] with the given [encoder] *)

val encode_target_entry : Pg_query_types.target_entry -> Pbrt.Encoder.t -> unit
(** [encode_target_entry v encoder] encodes [v] with the given [encoder] *)

val encode_join_expr : Pg_query_types.join_expr -> Pbrt.Encoder.t -> unit
(** [encode_join_expr v encoder] encodes [v] with the given [encoder] *)

val encode_from_expr : Pg_query_types.from_expr -> Pbrt.Encoder.t -> unit
(** [encode_from_expr v encoder] encodes [v] with the given [encoder] *)

val encode_on_conflict_expr : Pg_query_types.on_conflict_expr -> Pbrt.Encoder.t -> unit
(** [encode_on_conflict_expr v encoder] encodes [v] with the given [encoder] *)

val encode_into_clause : Pg_query_types.into_clause -> Pbrt.Encoder.t -> unit
(** [encode_into_clause v encoder] encodes [v] with the given [encoder] *)

val encode_merge_action : Pg_query_types.merge_action -> Pbrt.Encoder.t -> unit
(** [encode_merge_action v encoder] encodes [v] with the given [encoder] *)

val encode_query : Pg_query_types.query -> Pbrt.Encoder.t -> unit
(** [encode_query v encoder] encodes [v] with the given [encoder] *)

val encode_insert_stmt : Pg_query_types.insert_stmt -> Pbrt.Encoder.t -> unit
(** [encode_insert_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_on_conflict_clause : Pg_query_types.on_conflict_clause -> Pbrt.Encoder.t -> unit
(** [encode_on_conflict_clause v encoder] encodes [v] with the given [encoder] *)

val encode_infer_clause : Pg_query_types.infer_clause -> Pbrt.Encoder.t -> unit
(** [encode_infer_clause v encoder] encodes [v] with the given [encoder] *)

val encode_with_clause : Pg_query_types.with_clause -> Pbrt.Encoder.t -> unit
(** [encode_with_clause v encoder] encodes [v] with the given [encoder] *)

val encode_delete_stmt : Pg_query_types.delete_stmt -> Pbrt.Encoder.t -> unit
(** [encode_delete_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_update_stmt : Pg_query_types.update_stmt -> Pbrt.Encoder.t -> unit
(** [encode_update_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_merge_stmt : Pg_query_types.merge_stmt -> Pbrt.Encoder.t -> unit
(** [encode_merge_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_select_stmt : Pg_query_types.select_stmt -> Pbrt.Encoder.t -> unit
(** [encode_select_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_return_stmt : Pg_query_types.return_stmt -> Pbrt.Encoder.t -> unit
(** [encode_return_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_plassign_stmt : Pg_query_types.plassign_stmt -> Pbrt.Encoder.t -> unit
(** [encode_plassign_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_alter_table_stmt : Pg_query_types.alter_table_stmt -> Pbrt.Encoder.t -> unit
(** [encode_alter_table_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_alter_table_cmd : Pg_query_types.alter_table_cmd -> Pbrt.Encoder.t -> unit
(** [encode_alter_table_cmd v encoder] encodes [v] with the given [encoder] *)

val encode_alter_domain_stmt : Pg_query_types.alter_domain_stmt -> Pbrt.Encoder.t -> unit
(** [encode_alter_domain_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_set_operation_stmt : Pg_query_types.set_operation_stmt -> Pbrt.Encoder.t -> unit
(** [encode_set_operation_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_grant_stmt : Pg_query_types.grant_stmt -> Pbrt.Encoder.t -> unit
(** [encode_grant_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_grant_role_stmt : Pg_query_types.grant_role_stmt -> Pbrt.Encoder.t -> unit
(** [encode_grant_role_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_alter_default_privileges_stmt : Pg_query_types.alter_default_privileges_stmt -> Pbrt.Encoder.t -> unit
(** [encode_alter_default_privileges_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_cluster_stmt : Pg_query_types.cluster_stmt -> Pbrt.Encoder.t -> unit
(** [encode_cluster_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_copy_stmt : Pg_query_types.copy_stmt -> Pbrt.Encoder.t -> unit
(** [encode_copy_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_create_stmt : Pg_query_types.create_stmt -> Pbrt.Encoder.t -> unit
(** [encode_create_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_partition_bound_spec : Pg_query_types.partition_bound_spec -> Pbrt.Encoder.t -> unit
(** [encode_partition_bound_spec v encoder] encodes [v] with the given [encoder] *)

val encode_partition_spec : Pg_query_types.partition_spec -> Pbrt.Encoder.t -> unit
(** [encode_partition_spec v encoder] encodes [v] with the given [encoder] *)

val encode_type_name : Pg_query_types.type_name -> Pbrt.Encoder.t -> unit
(** [encode_type_name v encoder] encodes [v] with the given [encoder] *)

val encode_define_stmt : Pg_query_types.define_stmt -> Pbrt.Encoder.t -> unit
(** [encode_define_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_drop_stmt : Pg_query_types.drop_stmt -> Pbrt.Encoder.t -> unit
(** [encode_drop_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_truncate_stmt : Pg_query_types.truncate_stmt -> Pbrt.Encoder.t -> unit
(** [encode_truncate_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_comment_stmt : Pg_query_types.comment_stmt -> Pbrt.Encoder.t -> unit
(** [encode_comment_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_index_stmt : Pg_query_types.index_stmt -> Pbrt.Encoder.t -> unit
(** [encode_index_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_create_function_stmt : Pg_query_types.create_function_stmt -> Pbrt.Encoder.t -> unit
(** [encode_create_function_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_alter_function_stmt : Pg_query_types.alter_function_stmt -> Pbrt.Encoder.t -> unit
(** [encode_alter_function_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_object_with_args : Pg_query_types.object_with_args -> Pbrt.Encoder.t -> unit
(** [encode_object_with_args v encoder] encodes [v] with the given [encoder] *)

val encode_do_stmt : Pg_query_types.do_stmt -> Pbrt.Encoder.t -> unit
(** [encode_do_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_rename_stmt : Pg_query_types.rename_stmt -> Pbrt.Encoder.t -> unit
(** [encode_rename_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_rule_stmt : Pg_query_types.rule_stmt -> Pbrt.Encoder.t -> unit
(** [encode_rule_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_transaction_stmt : Pg_query_types.transaction_stmt -> Pbrt.Encoder.t -> unit
(** [encode_transaction_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_view_stmt : Pg_query_types.view_stmt -> Pbrt.Encoder.t -> unit
(** [encode_view_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_create_domain_stmt : Pg_query_types.create_domain_stmt -> Pbrt.Encoder.t -> unit
(** [encode_create_domain_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_collate_clause : Pg_query_types.collate_clause -> Pbrt.Encoder.t -> unit
(** [encode_collate_clause v encoder] encodes [v] with the given [encoder] *)

val encode_createdb_stmt : Pg_query_types.createdb_stmt -> Pbrt.Encoder.t -> unit
(** [encode_createdb_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_dropdb_stmt : Pg_query_types.dropdb_stmt -> Pbrt.Encoder.t -> unit
(** [encode_dropdb_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_vacuum_stmt : Pg_query_types.vacuum_stmt -> Pbrt.Encoder.t -> unit
(** [encode_vacuum_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_explain_stmt : Pg_query_types.explain_stmt -> Pbrt.Encoder.t -> unit
(** [encode_explain_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_create_table_as_stmt : Pg_query_types.create_table_as_stmt -> Pbrt.Encoder.t -> unit
(** [encode_create_table_as_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_create_seq_stmt : Pg_query_types.create_seq_stmt -> Pbrt.Encoder.t -> unit
(** [encode_create_seq_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_alter_seq_stmt : Pg_query_types.alter_seq_stmt -> Pbrt.Encoder.t -> unit
(** [encode_alter_seq_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_variable_set_stmt : Pg_query_types.variable_set_stmt -> Pbrt.Encoder.t -> unit
(** [encode_variable_set_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_create_trig_stmt : Pg_query_types.create_trig_stmt -> Pbrt.Encoder.t -> unit
(** [encode_create_trig_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_create_plang_stmt : Pg_query_types.create_plang_stmt -> Pbrt.Encoder.t -> unit
(** [encode_create_plang_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_create_role_stmt : Pg_query_types.create_role_stmt -> Pbrt.Encoder.t -> unit
(** [encode_create_role_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_alter_role_stmt : Pg_query_types.alter_role_stmt -> Pbrt.Encoder.t -> unit
(** [encode_alter_role_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_drop_role_stmt : Pg_query_types.drop_role_stmt -> Pbrt.Encoder.t -> unit
(** [encode_drop_role_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_lock_stmt : Pg_query_types.lock_stmt -> Pbrt.Encoder.t -> unit
(** [encode_lock_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_constraints_set_stmt : Pg_query_types.constraints_set_stmt -> Pbrt.Encoder.t -> unit
(** [encode_constraints_set_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_reindex_stmt : Pg_query_types.reindex_stmt -> Pbrt.Encoder.t -> unit
(** [encode_reindex_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_create_schema_stmt : Pg_query_types.create_schema_stmt -> Pbrt.Encoder.t -> unit
(** [encode_create_schema_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_alter_database_stmt : Pg_query_types.alter_database_stmt -> Pbrt.Encoder.t -> unit
(** [encode_alter_database_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_alter_database_set_stmt : Pg_query_types.alter_database_set_stmt -> Pbrt.Encoder.t -> unit
(** [encode_alter_database_set_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_alter_role_set_stmt : Pg_query_types.alter_role_set_stmt -> Pbrt.Encoder.t -> unit
(** [encode_alter_role_set_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_create_conversion_stmt : Pg_query_types.create_conversion_stmt -> Pbrt.Encoder.t -> unit
(** [encode_create_conversion_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_create_cast_stmt : Pg_query_types.create_cast_stmt -> Pbrt.Encoder.t -> unit
(** [encode_create_cast_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_create_op_class_stmt : Pg_query_types.create_op_class_stmt -> Pbrt.Encoder.t -> unit
(** [encode_create_op_class_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_create_op_family_stmt : Pg_query_types.create_op_family_stmt -> Pbrt.Encoder.t -> unit
(** [encode_create_op_family_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_alter_op_family_stmt : Pg_query_types.alter_op_family_stmt -> Pbrt.Encoder.t -> unit
(** [encode_alter_op_family_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_prepare_stmt : Pg_query_types.prepare_stmt -> Pbrt.Encoder.t -> unit
(** [encode_prepare_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_execute_stmt : Pg_query_types.execute_stmt -> Pbrt.Encoder.t -> unit
(** [encode_execute_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_declare_cursor_stmt : Pg_query_types.declare_cursor_stmt -> Pbrt.Encoder.t -> unit
(** [encode_declare_cursor_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_create_table_space_stmt : Pg_query_types.create_table_space_stmt -> Pbrt.Encoder.t -> unit
(** [encode_create_table_space_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_alter_object_depends_stmt : Pg_query_types.alter_object_depends_stmt -> Pbrt.Encoder.t -> unit
(** [encode_alter_object_depends_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_alter_object_schema_stmt : Pg_query_types.alter_object_schema_stmt -> Pbrt.Encoder.t -> unit
(** [encode_alter_object_schema_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_alter_owner_stmt : Pg_query_types.alter_owner_stmt -> Pbrt.Encoder.t -> unit
(** [encode_alter_owner_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_alter_operator_stmt : Pg_query_types.alter_operator_stmt -> Pbrt.Encoder.t -> unit
(** [encode_alter_operator_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_alter_type_stmt : Pg_query_types.alter_type_stmt -> Pbrt.Encoder.t -> unit
(** [encode_alter_type_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_drop_owned_stmt : Pg_query_types.drop_owned_stmt -> Pbrt.Encoder.t -> unit
(** [encode_drop_owned_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_reassign_owned_stmt : Pg_query_types.reassign_owned_stmt -> Pbrt.Encoder.t -> unit
(** [encode_reassign_owned_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_composite_type_stmt : Pg_query_types.composite_type_stmt -> Pbrt.Encoder.t -> unit
(** [encode_composite_type_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_create_enum_stmt : Pg_query_types.create_enum_stmt -> Pbrt.Encoder.t -> unit
(** [encode_create_enum_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_create_range_stmt : Pg_query_types.create_range_stmt -> Pbrt.Encoder.t -> unit
(** [encode_create_range_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_alter_enum_stmt : Pg_query_types.alter_enum_stmt -> Pbrt.Encoder.t -> unit
(** [encode_alter_enum_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_alter_tsdictionary_stmt : Pg_query_types.alter_tsdictionary_stmt -> Pbrt.Encoder.t -> unit
(** [encode_alter_tsdictionary_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_alter_tsconfiguration_stmt : Pg_query_types.alter_tsconfiguration_stmt -> Pbrt.Encoder.t -> unit
(** [encode_alter_tsconfiguration_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_create_fdw_stmt : Pg_query_types.create_fdw_stmt -> Pbrt.Encoder.t -> unit
(** [encode_create_fdw_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_alter_fdw_stmt : Pg_query_types.alter_fdw_stmt -> Pbrt.Encoder.t -> unit
(** [encode_alter_fdw_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_create_foreign_server_stmt : Pg_query_types.create_foreign_server_stmt -> Pbrt.Encoder.t -> unit
(** [encode_create_foreign_server_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_alter_foreign_server_stmt : Pg_query_types.alter_foreign_server_stmt -> Pbrt.Encoder.t -> unit
(** [encode_alter_foreign_server_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_create_user_mapping_stmt : Pg_query_types.create_user_mapping_stmt -> Pbrt.Encoder.t -> unit
(** [encode_create_user_mapping_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_alter_user_mapping_stmt : Pg_query_types.alter_user_mapping_stmt -> Pbrt.Encoder.t -> unit
(** [encode_alter_user_mapping_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_alter_table_space_options_stmt : Pg_query_types.alter_table_space_options_stmt -> Pbrt.Encoder.t -> unit
(** [encode_alter_table_space_options_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_alter_table_move_all_stmt : Pg_query_types.alter_table_move_all_stmt -> Pbrt.Encoder.t -> unit
(** [encode_alter_table_move_all_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_sec_label_stmt : Pg_query_types.sec_label_stmt -> Pbrt.Encoder.t -> unit
(** [encode_sec_label_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_create_foreign_table_stmt : Pg_query_types.create_foreign_table_stmt -> Pbrt.Encoder.t -> unit
(** [encode_create_foreign_table_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_import_foreign_schema_stmt : Pg_query_types.import_foreign_schema_stmt -> Pbrt.Encoder.t -> unit
(** [encode_import_foreign_schema_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_create_extension_stmt : Pg_query_types.create_extension_stmt -> Pbrt.Encoder.t -> unit
(** [encode_create_extension_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_alter_extension_stmt : Pg_query_types.alter_extension_stmt -> Pbrt.Encoder.t -> unit
(** [encode_alter_extension_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_alter_extension_contents_stmt : Pg_query_types.alter_extension_contents_stmt -> Pbrt.Encoder.t -> unit
(** [encode_alter_extension_contents_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_create_event_trig_stmt : Pg_query_types.create_event_trig_stmt -> Pbrt.Encoder.t -> unit
(** [encode_create_event_trig_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_refresh_mat_view_stmt : Pg_query_types.refresh_mat_view_stmt -> Pbrt.Encoder.t -> unit
(** [encode_refresh_mat_view_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_alter_system_stmt : Pg_query_types.alter_system_stmt -> Pbrt.Encoder.t -> unit
(** [encode_alter_system_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_create_policy_stmt : Pg_query_types.create_policy_stmt -> Pbrt.Encoder.t -> unit
(** [encode_create_policy_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_alter_policy_stmt : Pg_query_types.alter_policy_stmt -> Pbrt.Encoder.t -> unit
(** [encode_alter_policy_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_create_transform_stmt : Pg_query_types.create_transform_stmt -> Pbrt.Encoder.t -> unit
(** [encode_create_transform_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_create_am_stmt : Pg_query_types.create_am_stmt -> Pbrt.Encoder.t -> unit
(** [encode_create_am_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_create_publication_stmt : Pg_query_types.create_publication_stmt -> Pbrt.Encoder.t -> unit
(** [encode_create_publication_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_alter_publication_stmt : Pg_query_types.alter_publication_stmt -> Pbrt.Encoder.t -> unit
(** [encode_alter_publication_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_create_subscription_stmt : Pg_query_types.create_subscription_stmt -> Pbrt.Encoder.t -> unit
(** [encode_create_subscription_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_alter_subscription_stmt : Pg_query_types.alter_subscription_stmt -> Pbrt.Encoder.t -> unit
(** [encode_alter_subscription_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_create_stats_stmt : Pg_query_types.create_stats_stmt -> Pbrt.Encoder.t -> unit
(** [encode_create_stats_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_alter_collation_stmt : Pg_query_types.alter_collation_stmt -> Pbrt.Encoder.t -> unit
(** [encode_alter_collation_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_call_stmt : Pg_query_types.call_stmt -> Pbrt.Encoder.t -> unit
(** [encode_call_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_func_call : Pg_query_types.func_call -> Pbrt.Encoder.t -> unit
(** [encode_func_call v encoder] encodes [v] with the given [encoder] *)

val encode_window_def : Pg_query_types.window_def -> Pbrt.Encoder.t -> unit
(** [encode_window_def v encoder] encodes [v] with the given [encoder] *)

val encode_alter_stats_stmt : Pg_query_types.alter_stats_stmt -> Pbrt.Encoder.t -> unit
(** [encode_alter_stats_stmt v encoder] encodes [v] with the given [encoder] *)

val encode_a_expr : Pg_query_types.a_expr -> Pbrt.Encoder.t -> unit
(** [encode_a_expr v encoder] encodes [v] with the given [encoder] *)

val encode_column_ref : Pg_query_types.column_ref -> Pbrt.Encoder.t -> unit
(** [encode_column_ref v encoder] encodes [v] with the given [encoder] *)

val encode_a_indices : Pg_query_types.a_indices -> Pbrt.Encoder.t -> unit
(** [encode_a_indices v encoder] encodes [v] with the given [encoder] *)

val encode_a_indirection : Pg_query_types.a_indirection -> Pbrt.Encoder.t -> unit
(** [encode_a_indirection v encoder] encodes [v] with the given [encoder] *)

val encode_a_array_expr : Pg_query_types.a_array_expr -> Pbrt.Encoder.t -> unit
(** [encode_a_array_expr v encoder] encodes [v] with the given [encoder] *)

val encode_res_target : Pg_query_types.res_target -> Pbrt.Encoder.t -> unit
(** [encode_res_target v encoder] encodes [v] with the given [encoder] *)

val encode_multi_assign_ref : Pg_query_types.multi_assign_ref -> Pbrt.Encoder.t -> unit
(** [encode_multi_assign_ref v encoder] encodes [v] with the given [encoder] *)

val encode_type_cast : Pg_query_types.type_cast -> Pbrt.Encoder.t -> unit
(** [encode_type_cast v encoder] encodes [v] with the given [encoder] *)

val encode_sort_by : Pg_query_types.sort_by -> Pbrt.Encoder.t -> unit
(** [encode_sort_by v encoder] encodes [v] with the given [encoder] *)

val encode_range_subselect : Pg_query_types.range_subselect -> Pbrt.Encoder.t -> unit
(** [encode_range_subselect v encoder] encodes [v] with the given [encoder] *)

val encode_range_function : Pg_query_types.range_function -> Pbrt.Encoder.t -> unit
(** [encode_range_function v encoder] encodes [v] with the given [encoder] *)

val encode_range_table_sample : Pg_query_types.range_table_sample -> Pbrt.Encoder.t -> unit
(** [encode_range_table_sample v encoder] encodes [v] with the given [encoder] *)

val encode_range_table_func : Pg_query_types.range_table_func -> Pbrt.Encoder.t -> unit
(** [encode_range_table_func v encoder] encodes [v] with the given [encoder] *)

val encode_range_table_func_col : Pg_query_types.range_table_func_col -> Pbrt.Encoder.t -> unit
(** [encode_range_table_func_col v encoder] encodes [v] with the given [encoder] *)

val encode_column_def : Pg_query_types.column_def -> Pbrt.Encoder.t -> unit
(** [encode_column_def v encoder] encodes [v] with the given [encoder] *)

val encode_index_elem : Pg_query_types.index_elem -> Pbrt.Encoder.t -> unit
(** [encode_index_elem v encoder] encodes [v] with the given [encoder] *)

val encode_stats_elem : Pg_query_types.stats_elem -> Pbrt.Encoder.t -> unit
(** [encode_stats_elem v encoder] encodes [v] with the given [encoder] *)

val encode_constraint_ : Pg_query_types.constraint_ -> Pbrt.Encoder.t -> unit
(** [encode_constraint_ v encoder] encodes [v] with the given [encoder] *)

val encode_def_elem : Pg_query_types.def_elem -> Pbrt.Encoder.t -> unit
(** [encode_def_elem v encoder] encodes [v] with the given [encoder] *)

val encode_range_tbl_entry : Pg_query_types.range_tbl_entry -> Pbrt.Encoder.t -> unit
(** [encode_range_tbl_entry v encoder] encodes [v] with the given [encoder] *)

val encode_table_sample_clause : Pg_query_types.table_sample_clause -> Pbrt.Encoder.t -> unit
(** [encode_table_sample_clause v encoder] encodes [v] with the given [encoder] *)

val encode_range_tbl_function : Pg_query_types.range_tbl_function -> Pbrt.Encoder.t -> unit
(** [encode_range_tbl_function v encoder] encodes [v] with the given [encoder] *)

val encode_with_check_option : Pg_query_types.with_check_option -> Pbrt.Encoder.t -> unit
(** [encode_with_check_option v encoder] encodes [v] with the given [encoder] *)

val encode_grouping_set : Pg_query_types.grouping_set -> Pbrt.Encoder.t -> unit
(** [encode_grouping_set v encoder] encodes [v] with the given [encoder] *)

val encode_window_clause : Pg_query_types.window_clause -> Pbrt.Encoder.t -> unit
(** [encode_window_clause v encoder] encodes [v] with the given [encoder] *)

val encode_access_priv : Pg_query_types.access_priv -> Pbrt.Encoder.t -> unit
(** [encode_access_priv v encoder] encodes [v] with the given [encoder] *)

val encode_create_op_class_item : Pg_query_types.create_op_class_item -> Pbrt.Encoder.t -> unit
(** [encode_create_op_class_item v encoder] encodes [v] with the given [encoder] *)

val encode_table_like_clause : Pg_query_types.table_like_clause -> Pbrt.Encoder.t -> unit
(** [encode_table_like_clause v encoder] encodes [v] with the given [encoder] *)

val encode_function_parameter : Pg_query_types.function_parameter -> Pbrt.Encoder.t -> unit
(** [encode_function_parameter v encoder] encodes [v] with the given [encoder] *)

val encode_locking_clause : Pg_query_types.locking_clause -> Pbrt.Encoder.t -> unit
(** [encode_locking_clause v encoder] encodes [v] with the given [encoder] *)

val encode_xml_serialize : Pg_query_types.xml_serialize -> Pbrt.Encoder.t -> unit
(** [encode_xml_serialize v encoder] encodes [v] with the given [encoder] *)

val encode_ctesearch_clause : Pg_query_types.ctesearch_clause -> Pbrt.Encoder.t -> unit
(** [encode_ctesearch_clause v encoder] encodes [v] with the given [encoder] *)

val encode_ctecycle_clause : Pg_query_types.ctecycle_clause -> Pbrt.Encoder.t -> unit
(** [encode_ctecycle_clause v encoder] encodes [v] with the given [encoder] *)

val encode_common_table_expr : Pg_query_types.common_table_expr -> Pbrt.Encoder.t -> unit
(** [encode_common_table_expr v encoder] encodes [v] with the given [encoder] *)

val encode_merge_when_clause : Pg_query_types.merge_when_clause -> Pbrt.Encoder.t -> unit
(** [encode_merge_when_clause v encoder] encodes [v] with the given [encoder] *)

val encode_partition_elem : Pg_query_types.partition_elem -> Pbrt.Encoder.t -> unit
(** [encode_partition_elem v encoder] encodes [v] with the given [encoder] *)

val encode_partition_range_datum : Pg_query_types.partition_range_datum -> Pbrt.Encoder.t -> unit
(** [encode_partition_range_datum v encoder] encodes [v] with the given [encoder] *)

val encode_partition_cmd : Pg_query_types.partition_cmd -> Pbrt.Encoder.t -> unit
(** [encode_partition_cmd v encoder] encodes [v] with the given [encoder] *)

val encode_vacuum_relation : Pg_query_types.vacuum_relation -> Pbrt.Encoder.t -> unit
(** [encode_vacuum_relation v encoder] encodes [v] with the given [encoder] *)

val encode_publication_obj_spec : Pg_query_types.publication_obj_spec -> Pbrt.Encoder.t -> unit
(** [encode_publication_obj_spec v encoder] encodes [v] with the given [encoder] *)

val encode_publication_table : Pg_query_types.publication_table -> Pbrt.Encoder.t -> unit
(** [encode_publication_table v encoder] encodes [v] with the given [encoder] *)

val encode_list : Pg_query_types.list -> Pbrt.Encoder.t -> unit
(** [encode_list v encoder] encodes [v] with the given [encoder] *)

val encode_int_list : Pg_query_types.int_list -> Pbrt.Encoder.t -> unit
(** [encode_int_list v encoder] encodes [v] with the given [encoder] *)

val encode_oid_list : Pg_query_types.oid_list -> Pbrt.Encoder.t -> unit
(** [encode_oid_list v encoder] encodes [v] with the given [encoder] *)

val encode_parse_result : Pg_query_types.parse_result -> Pbrt.Encoder.t -> unit
(** [encode_parse_result v encoder] encodes [v] with the given [encoder] *)

val encode_token : Pg_query_types.token -> Pbrt.Encoder.t -> unit
(** [encode_token v encoder] encodes [v] with the given [encoder] *)

val encode_keyword_kind : Pg_query_types.keyword_kind -> Pbrt.Encoder.t -> unit
(** [encode_keyword_kind v encoder] encodes [v] with the given [encoder] *)

val encode_scan_token : Pg_query_types.scan_token -> Pbrt.Encoder.t -> unit
(** [encode_scan_token v encoder] encodes [v] with the given [encoder] *)

val encode_scan_result : Pg_query_types.scan_result -> Pbrt.Encoder.t -> unit
(** [encode_scan_result v encoder] encodes [v] with the given [encoder] *)

val encode_set_quantifier : Pg_query_types.set_quantifier -> Pbrt.Encoder.t -> unit
(** [encode_set_quantifier v encoder] encodes [v] with the given [encoder] *)

val encode_table_like_option : Pg_query_types.table_like_option -> Pbrt.Encoder.t -> unit
(** [encode_table_like_option v encoder] encodes [v] with the given [encoder] *)

val encode_agg_strategy : Pg_query_types.agg_strategy -> Pbrt.Encoder.t -> unit
(** [encode_agg_strategy v encoder] encodes [v] with the given [encoder] *)

val encode_set_op_cmd : Pg_query_types.set_op_cmd -> Pbrt.Encoder.t -> unit
(** [encode_set_op_cmd v encoder] encodes [v] with the given [encoder] *)

val encode_set_op_strategy : Pg_query_types.set_op_strategy -> Pbrt.Encoder.t -> unit
(** [encode_set_op_strategy v encoder] encodes [v] with the given [encoder] *)

val encode_lock_tuple_mode : Pg_query_types.lock_tuple_mode -> Pbrt.Encoder.t -> unit
(** [encode_lock_tuple_mode v encoder] encodes [v] with the given [encoder] *)


(** {2 Protobuf Decoding} *)

val decode_param_kind : Pbrt.Decoder.t -> Pg_query_types.param_kind
(** [decode_param_kind decoder] decodes a [param_kind] value from [decoder] *)

val decode_agg_split : Pbrt.Decoder.t -> Pg_query_types.agg_split
(** [decode_agg_split decoder] decodes a [agg_split] value from [decoder] *)

val decode_coercion_form : Pbrt.Decoder.t -> Pg_query_types.coercion_form
(** [decode_coercion_form decoder] decodes a [coercion_form] value from [decoder] *)

val decode_bool_expr_type : Pbrt.Decoder.t -> Pg_query_types.bool_expr_type
(** [decode_bool_expr_type decoder] decodes a [bool_expr_type] value from [decoder] *)

val decode_sub_link_type : Pbrt.Decoder.t -> Pg_query_types.sub_link_type
(** [decode_sub_link_type decoder] decodes a [sub_link_type] value from [decoder] *)

val decode_row_compare_type : Pbrt.Decoder.t -> Pg_query_types.row_compare_type
(** [decode_row_compare_type decoder] decodes a [row_compare_type] value from [decoder] *)

val decode_min_max_op : Pbrt.Decoder.t -> Pg_query_types.min_max_op
(** [decode_min_max_op decoder] decodes a [min_max_op] value from [decoder] *)

val decode_sqlvalue_function_op : Pbrt.Decoder.t -> Pg_query_types.sqlvalue_function_op
(** [decode_sqlvalue_function_op decoder] decodes a [sqlvalue_function_op] value from [decoder] *)

val decode_xml_expr_op : Pbrt.Decoder.t -> Pg_query_types.xml_expr_op
(** [decode_xml_expr_op decoder] decodes a [xml_expr_op] value from [decoder] *)

val decode_xml_option_type : Pbrt.Decoder.t -> Pg_query_types.xml_option_type
(** [decode_xml_option_type decoder] decodes a [xml_option_type] value from [decoder] *)

val decode_null_test_type : Pbrt.Decoder.t -> Pg_query_types.null_test_type
(** [decode_null_test_type decoder] decodes a [null_test_type] value from [decoder] *)

val decode_bool_test_type : Pbrt.Decoder.t -> Pg_query_types.bool_test_type
(** [decode_bool_test_type decoder] decodes a [bool_test_type] value from [decoder] *)

val decode_range_tbl_ref : Pbrt.Decoder.t -> Pg_query_types.range_tbl_ref
(** [decode_range_tbl_ref decoder] decodes a [range_tbl_ref] value from [decoder] *)

val decode_join_type : Pbrt.Decoder.t -> Pg_query_types.join_type
(** [decode_join_type decoder] decodes a [join_type] value from [decoder] *)

val decode_on_conflict_action : Pbrt.Decoder.t -> Pg_query_types.on_conflict_action
(** [decode_on_conflict_action decoder] decodes a [on_conflict_action] value from [decoder] *)

val decode_on_commit_action : Pbrt.Decoder.t -> Pg_query_types.on_commit_action
(** [decode_on_commit_action decoder] decodes a [on_commit_action] value from [decoder] *)

val decode_cmd_type : Pbrt.Decoder.t -> Pg_query_types.cmd_type
(** [decode_cmd_type decoder] decodes a [cmd_type] value from [decoder] *)

val decode_overriding_kind : Pbrt.Decoder.t -> Pg_query_types.overriding_kind
(** [decode_overriding_kind decoder] decodes a [overriding_kind] value from [decoder] *)

val decode_query_source : Pbrt.Decoder.t -> Pg_query_types.query_source
(** [decode_query_source decoder] decodes a [query_source] value from [decoder] *)

val decode_limit_option : Pbrt.Decoder.t -> Pg_query_types.limit_option
(** [decode_limit_option decoder] decodes a [limit_option] value from [decoder] *)

val decode_set_operation : Pbrt.Decoder.t -> Pg_query_types.set_operation
(** [decode_set_operation decoder] decodes a [set_operation] value from [decoder] *)

val decode_object_type : Pbrt.Decoder.t -> Pg_query_types.object_type
(** [decode_object_type decoder] decodes a [object_type] value from [decoder] *)

val decode_alter_table_type : Pbrt.Decoder.t -> Pg_query_types.alter_table_type
(** [decode_alter_table_type decoder] decodes a [alter_table_type] value from [decoder] *)

val decode_role_spec_type : Pbrt.Decoder.t -> Pg_query_types.role_spec_type
(** [decode_role_spec_type decoder] decodes a [role_spec_type] value from [decoder] *)

val decode_role_spec : Pbrt.Decoder.t -> Pg_query_types.role_spec
(** [decode_role_spec decoder] decodes a [role_spec] value from [decoder] *)

val decode_drop_behavior : Pbrt.Decoder.t -> Pg_query_types.drop_behavior
(** [decode_drop_behavior decoder] decodes a [drop_behavior] value from [decoder] *)

val decode_grant_target_type : Pbrt.Decoder.t -> Pg_query_types.grant_target_type
(** [decode_grant_target_type decoder] decodes a [grant_target_type] value from [decoder] *)

val decode_close_portal_stmt : Pbrt.Decoder.t -> Pg_query_types.close_portal_stmt
(** [decode_close_portal_stmt decoder] decodes a [close_portal_stmt] value from [decoder] *)

val decode_fetch_direction : Pbrt.Decoder.t -> Pg_query_types.fetch_direction
(** [decode_fetch_direction decoder] decodes a [fetch_direction] value from [decoder] *)

val decode_fetch_stmt : Pbrt.Decoder.t -> Pg_query_types.fetch_stmt
(** [decode_fetch_stmt decoder] decodes a [fetch_stmt] value from [decoder] *)

val decode_notify_stmt : Pbrt.Decoder.t -> Pg_query_types.notify_stmt
(** [decode_notify_stmt decoder] decodes a [notify_stmt] value from [decoder] *)

val decode_listen_stmt : Pbrt.Decoder.t -> Pg_query_types.listen_stmt
(** [decode_listen_stmt decoder] decodes a [listen_stmt] value from [decoder] *)

val decode_unlisten_stmt : Pbrt.Decoder.t -> Pg_query_types.unlisten_stmt
(** [decode_unlisten_stmt decoder] decodes a [unlisten_stmt] value from [decoder] *)

val decode_transaction_stmt_kind : Pbrt.Decoder.t -> Pg_query_types.transaction_stmt_kind
(** [decode_transaction_stmt_kind decoder] decodes a [transaction_stmt_kind] value from [decoder] *)

val decode_view_check_option : Pbrt.Decoder.t -> Pg_query_types.view_check_option
(** [decode_view_check_option decoder] decodes a [view_check_option] value from [decoder] *)

val decode_load_stmt : Pbrt.Decoder.t -> Pg_query_types.load_stmt
(** [decode_load_stmt decoder] decodes a [load_stmt] value from [decoder] *)

val decode_variable_set_kind : Pbrt.Decoder.t -> Pg_query_types.variable_set_kind
(** [decode_variable_set_kind decoder] decodes a [variable_set_kind] value from [decoder] *)

val decode_variable_show_stmt : Pbrt.Decoder.t -> Pg_query_types.variable_show_stmt
(** [decode_variable_show_stmt decoder] decodes a [variable_show_stmt] value from [decoder] *)

val decode_discard_mode : Pbrt.Decoder.t -> Pg_query_types.discard_mode
(** [decode_discard_mode decoder] decodes a [discard_mode] value from [decoder] *)

val decode_discard_stmt : Pbrt.Decoder.t -> Pg_query_types.discard_stmt
(** [decode_discard_stmt decoder] decodes a [discard_stmt] value from [decoder] *)

val decode_role_stmt_type : Pbrt.Decoder.t -> Pg_query_types.role_stmt_type
(** [decode_role_stmt_type decoder] decodes a [role_stmt_type] value from [decoder] *)

val decode_reindex_object_type : Pbrt.Decoder.t -> Pg_query_types.reindex_object_type
(** [decode_reindex_object_type decoder] decodes a [reindex_object_type] value from [decoder] *)

val decode_alter_database_refresh_coll_stmt : Pbrt.Decoder.t -> Pg_query_types.alter_database_refresh_coll_stmt
(** [decode_alter_database_refresh_coll_stmt decoder] decodes a [alter_database_refresh_coll_stmt] value from [decoder] *)

val decode_coercion_context : Pbrt.Decoder.t -> Pg_query_types.coercion_context
(** [decode_coercion_context decoder] decodes a [coercion_context] value from [decoder] *)

val decode_deallocate_stmt : Pbrt.Decoder.t -> Pg_query_types.deallocate_stmt
(** [decode_deallocate_stmt decoder] decodes a [deallocate_stmt] value from [decoder] *)

val decode_drop_table_space_stmt : Pbrt.Decoder.t -> Pg_query_types.drop_table_space_stmt
(** [decode_drop_table_space_stmt decoder] decodes a [drop_table_space_stmt] value from [decoder] *)

val decode_string : Pbrt.Decoder.t -> Pg_query_types.string
(** [decode_string decoder] decodes a [string] value from [decoder] *)

val decode_alter_tsconfig_type : Pbrt.Decoder.t -> Pg_query_types.alter_tsconfig_type
(** [decode_alter_tsconfig_type decoder] decodes a [alter_tsconfig_type] value from [decoder] *)

val decode_drop_user_mapping_stmt : Pbrt.Decoder.t -> Pg_query_types.drop_user_mapping_stmt
(** [decode_drop_user_mapping_stmt decoder] decodes a [drop_user_mapping_stmt] value from [decoder] *)

val decode_import_foreign_schema_type : Pbrt.Decoder.t -> Pg_query_types.import_foreign_schema_type
(** [decode_import_foreign_schema_type decoder] decodes a [import_foreign_schema_type] value from [decoder] *)

val decode_alter_event_trig_stmt : Pbrt.Decoder.t -> Pg_query_types.alter_event_trig_stmt
(** [decode_alter_event_trig_stmt decoder] decodes a [alter_event_trig_stmt] value from [decoder] *)

val decode_replica_identity_stmt : Pbrt.Decoder.t -> Pg_query_types.replica_identity_stmt
(** [decode_replica_identity_stmt decoder] decodes a [replica_identity_stmt] value from [decoder] *)

val decode_alter_publication_action : Pbrt.Decoder.t -> Pg_query_types.alter_publication_action
(** [decode_alter_publication_action decoder] decodes a [alter_publication_action] value from [decoder] *)

val decode_alter_subscription_type : Pbrt.Decoder.t -> Pg_query_types.alter_subscription_type
(** [decode_alter_subscription_type decoder] decodes a [alter_subscription_type] value from [decoder] *)

val decode_drop_subscription_stmt : Pbrt.Decoder.t -> Pg_query_types.drop_subscription_stmt
(** [decode_drop_subscription_stmt decoder] decodes a [drop_subscription_stmt] value from [decoder] *)

val decode_a_expr_kind : Pbrt.Decoder.t -> Pg_query_types.a_expr_kind
(** [decode_a_expr_kind decoder] decodes a [a_expr_kind] value from [decoder] *)

val decode_param_ref : Pbrt.Decoder.t -> Pg_query_types.param_ref
(** [decode_param_ref decoder] decodes a [param_ref] value from [decoder] *)

val decode_sort_by_dir : Pbrt.Decoder.t -> Pg_query_types.sort_by_dir
(** [decode_sort_by_dir decoder] decodes a [sort_by_dir] value from [decoder] *)

val decode_sort_by_nulls : Pbrt.Decoder.t -> Pg_query_types.sort_by_nulls
(** [decode_sort_by_nulls decoder] decodes a [sort_by_nulls] value from [decoder] *)

val decode_constr_type : Pbrt.Decoder.t -> Pg_query_types.constr_type
(** [decode_constr_type decoder] decodes a [constr_type] value from [decoder] *)

val decode_def_elem_action : Pbrt.Decoder.t -> Pg_query_types.def_elem_action
(** [decode_def_elem_action decoder] decodes a [def_elem_action] value from [decoder] *)

val decode_rtekind : Pbrt.Decoder.t -> Pg_query_types.rtekind
(** [decode_rtekind decoder] decodes a [rtekind] value from [decoder] *)

val decode_wcokind : Pbrt.Decoder.t -> Pg_query_types.wcokind
(** [decode_wcokind decoder] decodes a [wcokind] value from [decoder] *)

val decode_sort_group_clause : Pbrt.Decoder.t -> Pg_query_types.sort_group_clause
(** [decode_sort_group_clause decoder] decodes a [sort_group_clause] value from [decoder] *)

val decode_grouping_set_kind : Pbrt.Decoder.t -> Pg_query_types.grouping_set_kind
(** [decode_grouping_set_kind decoder] decodes a [grouping_set_kind] value from [decoder] *)

val decode_function_parameter_mode : Pbrt.Decoder.t -> Pg_query_types.function_parameter_mode
(** [decode_function_parameter_mode decoder] decodes a [function_parameter_mode] value from [decoder] *)

val decode_lock_clause_strength : Pbrt.Decoder.t -> Pg_query_types.lock_clause_strength
(** [decode_lock_clause_strength decoder] decodes a [lock_clause_strength] value from [decoder] *)

val decode_lock_wait_policy : Pbrt.Decoder.t -> Pg_query_types.lock_wait_policy
(** [decode_lock_wait_policy decoder] decodes a [lock_wait_policy] value from [decoder] *)

val decode_row_mark_clause : Pbrt.Decoder.t -> Pg_query_types.row_mark_clause
(** [decode_row_mark_clause decoder] decodes a [row_mark_clause] value from [decoder] *)

val decode_ctematerialize : Pbrt.Decoder.t -> Pg_query_types.ctematerialize
(** [decode_ctematerialize decoder] decodes a [ctematerialize] value from [decoder] *)

val decode_trigger_transition : Pbrt.Decoder.t -> Pg_query_types.trigger_transition
(** [decode_trigger_transition decoder] decodes a [trigger_transition] value from [decoder] *)

val decode_partition_range_datum_kind : Pbrt.Decoder.t -> Pg_query_types.partition_range_datum_kind
(** [decode_partition_range_datum_kind decoder] decodes a [partition_range_datum_kind] value from [decoder] *)

val decode_publication_obj_spec_type : Pbrt.Decoder.t -> Pg_query_types.publication_obj_spec_type
(** [decode_publication_obj_spec_type decoder] decodes a [publication_obj_spec_type] value from [decoder] *)

val decode_inline_code_block : Pbrt.Decoder.t -> Pg_query_types.inline_code_block
(** [decode_inline_code_block decoder] decodes a [inline_code_block] value from [decoder] *)

val decode_call_context : Pbrt.Decoder.t -> Pg_query_types.call_context
(** [decode_call_context decoder] decodes a [call_context] value from [decoder] *)

val decode_integer : Pbrt.Decoder.t -> Pg_query_types.integer
(** [decode_integer decoder] decodes a [integer] value from [decoder] *)

val decode_float : Pbrt.Decoder.t -> Pg_query_types.float
(** [decode_float decoder] decodes a [float] value from [decoder] *)

val decode_boolean : Pbrt.Decoder.t -> Pg_query_types.boolean
(** [decode_boolean decoder] decodes a [boolean] value from [decoder] *)

val decode_bit_string : Pbrt.Decoder.t -> Pg_query_types.bit_string
(** [decode_bit_string decoder] decodes a [bit_string] value from [decoder] *)

val decode_a_const_val : Pbrt.Decoder.t -> Pg_query_types.a_const_val
(** [decode_a_const_val decoder] decodes a [a_const_val] value from [decoder] *)

val decode_a_const : Pbrt.Decoder.t -> Pg_query_types.a_const
(** [decode_a_const decoder] decodes a [a_const] value from [decoder] *)

val decode_raw_stmt : Pbrt.Decoder.t -> Pg_query_types.raw_stmt
(** [decode_raw_stmt decoder] decodes a [raw_stmt] value from [decoder] *)

val decode_node : Pbrt.Decoder.t -> Pg_query_types.node
(** [decode_node decoder] decodes a [node] value from [decoder] *)

val decode_alias : Pbrt.Decoder.t -> Pg_query_types.alias
(** [decode_alias decoder] decodes a [alias] value from [decoder] *)

val decode_range_var : Pbrt.Decoder.t -> Pg_query_types.range_var
(** [decode_range_var decoder] decodes a [range_var] value from [decoder] *)

val decode_table_func : Pbrt.Decoder.t -> Pg_query_types.table_func
(** [decode_table_func decoder] decodes a [table_func] value from [decoder] *)

val decode_var : Pbrt.Decoder.t -> Pg_query_types.var
(** [decode_var decoder] decodes a [var] value from [decoder] *)

val decode_param : Pbrt.Decoder.t -> Pg_query_types.param
(** [decode_param decoder] decodes a [param] value from [decoder] *)

val decode_aggref : Pbrt.Decoder.t -> Pg_query_types.aggref
(** [decode_aggref decoder] decodes a [aggref] value from [decoder] *)

val decode_grouping_func : Pbrt.Decoder.t -> Pg_query_types.grouping_func
(** [decode_grouping_func decoder] decodes a [grouping_func] value from [decoder] *)

val decode_window_func : Pbrt.Decoder.t -> Pg_query_types.window_func
(** [decode_window_func decoder] decodes a [window_func] value from [decoder] *)

val decode_subscripting_ref : Pbrt.Decoder.t -> Pg_query_types.subscripting_ref
(** [decode_subscripting_ref decoder] decodes a [subscripting_ref] value from [decoder] *)

val decode_func_expr : Pbrt.Decoder.t -> Pg_query_types.func_expr
(** [decode_func_expr decoder] decodes a [func_expr] value from [decoder] *)

val decode_named_arg_expr : Pbrt.Decoder.t -> Pg_query_types.named_arg_expr
(** [decode_named_arg_expr decoder] decodes a [named_arg_expr] value from [decoder] *)

val decode_op_expr : Pbrt.Decoder.t -> Pg_query_types.op_expr
(** [decode_op_expr decoder] decodes a [op_expr] value from [decoder] *)

val decode_distinct_expr : Pbrt.Decoder.t -> Pg_query_types.distinct_expr
(** [decode_distinct_expr decoder] decodes a [distinct_expr] value from [decoder] *)

val decode_null_if_expr : Pbrt.Decoder.t -> Pg_query_types.null_if_expr
(** [decode_null_if_expr decoder] decodes a [null_if_expr] value from [decoder] *)

val decode_scalar_array_op_expr : Pbrt.Decoder.t -> Pg_query_types.scalar_array_op_expr
(** [decode_scalar_array_op_expr decoder] decodes a [scalar_array_op_expr] value from [decoder] *)

val decode_bool_expr : Pbrt.Decoder.t -> Pg_query_types.bool_expr
(** [decode_bool_expr decoder] decodes a [bool_expr] value from [decoder] *)

val decode_sub_link : Pbrt.Decoder.t -> Pg_query_types.sub_link
(** [decode_sub_link decoder] decodes a [sub_link] value from [decoder] *)

val decode_sub_plan : Pbrt.Decoder.t -> Pg_query_types.sub_plan
(** [decode_sub_plan decoder] decodes a [sub_plan] value from [decoder] *)

val decode_alternative_sub_plan : Pbrt.Decoder.t -> Pg_query_types.alternative_sub_plan
(** [decode_alternative_sub_plan decoder] decodes a [alternative_sub_plan] value from [decoder] *)

val decode_field_select : Pbrt.Decoder.t -> Pg_query_types.field_select
(** [decode_field_select decoder] decodes a [field_select] value from [decoder] *)

val decode_field_store : Pbrt.Decoder.t -> Pg_query_types.field_store
(** [decode_field_store decoder] decodes a [field_store] value from [decoder] *)

val decode_relabel_type : Pbrt.Decoder.t -> Pg_query_types.relabel_type
(** [decode_relabel_type decoder] decodes a [relabel_type] value from [decoder] *)

val decode_coerce_via_io : Pbrt.Decoder.t -> Pg_query_types.coerce_via_io
(** [decode_coerce_via_io decoder] decodes a [coerce_via_io] value from [decoder] *)

val decode_array_coerce_expr : Pbrt.Decoder.t -> Pg_query_types.array_coerce_expr
(** [decode_array_coerce_expr decoder] decodes a [array_coerce_expr] value from [decoder] *)

val decode_convert_rowtype_expr : Pbrt.Decoder.t -> Pg_query_types.convert_rowtype_expr
(** [decode_convert_rowtype_expr decoder] decodes a [convert_rowtype_expr] value from [decoder] *)

val decode_collate_expr : Pbrt.Decoder.t -> Pg_query_types.collate_expr
(** [decode_collate_expr decoder] decodes a [collate_expr] value from [decoder] *)

val decode_case_expr : Pbrt.Decoder.t -> Pg_query_types.case_expr
(** [decode_case_expr decoder] decodes a [case_expr] value from [decoder] *)

val decode_case_when : Pbrt.Decoder.t -> Pg_query_types.case_when
(** [decode_case_when decoder] decodes a [case_when] value from [decoder] *)

val decode_case_test_expr : Pbrt.Decoder.t -> Pg_query_types.case_test_expr
(** [decode_case_test_expr decoder] decodes a [case_test_expr] value from [decoder] *)

val decode_array_expr : Pbrt.Decoder.t -> Pg_query_types.array_expr
(** [decode_array_expr decoder] decodes a [array_expr] value from [decoder] *)

val decode_row_expr : Pbrt.Decoder.t -> Pg_query_types.row_expr
(** [decode_row_expr decoder] decodes a [row_expr] value from [decoder] *)

val decode_row_compare_expr : Pbrt.Decoder.t -> Pg_query_types.row_compare_expr
(** [decode_row_compare_expr decoder] decodes a [row_compare_expr] value from [decoder] *)

val decode_coalesce_expr : Pbrt.Decoder.t -> Pg_query_types.coalesce_expr
(** [decode_coalesce_expr decoder] decodes a [coalesce_expr] value from [decoder] *)

val decode_min_max_expr : Pbrt.Decoder.t -> Pg_query_types.min_max_expr
(** [decode_min_max_expr decoder] decodes a [min_max_expr] value from [decoder] *)

val decode_sqlvalue_function : Pbrt.Decoder.t -> Pg_query_types.sqlvalue_function
(** [decode_sqlvalue_function decoder] decodes a [sqlvalue_function] value from [decoder] *)

val decode_xml_expr : Pbrt.Decoder.t -> Pg_query_types.xml_expr
(** [decode_xml_expr decoder] decodes a [xml_expr] value from [decoder] *)

val decode_null_test : Pbrt.Decoder.t -> Pg_query_types.null_test
(** [decode_null_test decoder] decodes a [null_test] value from [decoder] *)

val decode_boolean_test : Pbrt.Decoder.t -> Pg_query_types.boolean_test
(** [decode_boolean_test decoder] decodes a [boolean_test] value from [decoder] *)

val decode_coerce_to_domain : Pbrt.Decoder.t -> Pg_query_types.coerce_to_domain
(** [decode_coerce_to_domain decoder] decodes a [coerce_to_domain] value from [decoder] *)

val decode_coerce_to_domain_value : Pbrt.Decoder.t -> Pg_query_types.coerce_to_domain_value
(** [decode_coerce_to_domain_value decoder] decodes a [coerce_to_domain_value] value from [decoder] *)

val decode_set_to_default : Pbrt.Decoder.t -> Pg_query_types.set_to_default
(** [decode_set_to_default decoder] decodes a [set_to_default] value from [decoder] *)

val decode_current_of_expr : Pbrt.Decoder.t -> Pg_query_types.current_of_expr
(** [decode_current_of_expr decoder] decodes a [current_of_expr] value from [decoder] *)

val decode_next_value_expr : Pbrt.Decoder.t -> Pg_query_types.next_value_expr
(** [decode_next_value_expr decoder] decodes a [next_value_expr] value from [decoder] *)

val decode_inference_elem : Pbrt.Decoder.t -> Pg_query_types.inference_elem
(** [decode_inference_elem decoder] decodes a [inference_elem] value from [decoder] *)

val decode_target_entry : Pbrt.Decoder.t -> Pg_query_types.target_entry
(** [decode_target_entry decoder] decodes a [target_entry] value from [decoder] *)

val decode_join_expr : Pbrt.Decoder.t -> Pg_query_types.join_expr
(** [decode_join_expr decoder] decodes a [join_expr] value from [decoder] *)

val decode_from_expr : Pbrt.Decoder.t -> Pg_query_types.from_expr
(** [decode_from_expr decoder] decodes a [from_expr] value from [decoder] *)

val decode_on_conflict_expr : Pbrt.Decoder.t -> Pg_query_types.on_conflict_expr
(** [decode_on_conflict_expr decoder] decodes a [on_conflict_expr] value from [decoder] *)

val decode_into_clause : Pbrt.Decoder.t -> Pg_query_types.into_clause
(** [decode_into_clause decoder] decodes a [into_clause] value from [decoder] *)

val decode_merge_action : Pbrt.Decoder.t -> Pg_query_types.merge_action
(** [decode_merge_action decoder] decodes a [merge_action] value from [decoder] *)

val decode_query : Pbrt.Decoder.t -> Pg_query_types.query
(** [decode_query decoder] decodes a [query] value from [decoder] *)

val decode_insert_stmt : Pbrt.Decoder.t -> Pg_query_types.insert_stmt
(** [decode_insert_stmt decoder] decodes a [insert_stmt] value from [decoder] *)

val decode_on_conflict_clause : Pbrt.Decoder.t -> Pg_query_types.on_conflict_clause
(** [decode_on_conflict_clause decoder] decodes a [on_conflict_clause] value from [decoder] *)

val decode_infer_clause : Pbrt.Decoder.t -> Pg_query_types.infer_clause
(** [decode_infer_clause decoder] decodes a [infer_clause] value from [decoder] *)

val decode_with_clause : Pbrt.Decoder.t -> Pg_query_types.with_clause
(** [decode_with_clause decoder] decodes a [with_clause] value from [decoder] *)

val decode_delete_stmt : Pbrt.Decoder.t -> Pg_query_types.delete_stmt
(** [decode_delete_stmt decoder] decodes a [delete_stmt] value from [decoder] *)

val decode_update_stmt : Pbrt.Decoder.t -> Pg_query_types.update_stmt
(** [decode_update_stmt decoder] decodes a [update_stmt] value from [decoder] *)

val decode_merge_stmt : Pbrt.Decoder.t -> Pg_query_types.merge_stmt
(** [decode_merge_stmt decoder] decodes a [merge_stmt] value from [decoder] *)

val decode_select_stmt : Pbrt.Decoder.t -> Pg_query_types.select_stmt
(** [decode_select_stmt decoder] decodes a [select_stmt] value from [decoder] *)

val decode_return_stmt : Pbrt.Decoder.t -> Pg_query_types.return_stmt
(** [decode_return_stmt decoder] decodes a [return_stmt] value from [decoder] *)

val decode_plassign_stmt : Pbrt.Decoder.t -> Pg_query_types.plassign_stmt
(** [decode_plassign_stmt decoder] decodes a [plassign_stmt] value from [decoder] *)

val decode_alter_table_stmt : Pbrt.Decoder.t -> Pg_query_types.alter_table_stmt
(** [decode_alter_table_stmt decoder] decodes a [alter_table_stmt] value from [decoder] *)

val decode_alter_table_cmd : Pbrt.Decoder.t -> Pg_query_types.alter_table_cmd
(** [decode_alter_table_cmd decoder] decodes a [alter_table_cmd] value from [decoder] *)

val decode_alter_domain_stmt : Pbrt.Decoder.t -> Pg_query_types.alter_domain_stmt
(** [decode_alter_domain_stmt decoder] decodes a [alter_domain_stmt] value from [decoder] *)

val decode_set_operation_stmt : Pbrt.Decoder.t -> Pg_query_types.set_operation_stmt
(** [decode_set_operation_stmt decoder] decodes a [set_operation_stmt] value from [decoder] *)

val decode_grant_stmt : Pbrt.Decoder.t -> Pg_query_types.grant_stmt
(** [decode_grant_stmt decoder] decodes a [grant_stmt] value from [decoder] *)

val decode_grant_role_stmt : Pbrt.Decoder.t -> Pg_query_types.grant_role_stmt
(** [decode_grant_role_stmt decoder] decodes a [grant_role_stmt] value from [decoder] *)

val decode_alter_default_privileges_stmt : Pbrt.Decoder.t -> Pg_query_types.alter_default_privileges_stmt
(** [decode_alter_default_privileges_stmt decoder] decodes a [alter_default_privileges_stmt] value from [decoder] *)

val decode_cluster_stmt : Pbrt.Decoder.t -> Pg_query_types.cluster_stmt
(** [decode_cluster_stmt decoder] decodes a [cluster_stmt] value from [decoder] *)

val decode_copy_stmt : Pbrt.Decoder.t -> Pg_query_types.copy_stmt
(** [decode_copy_stmt decoder] decodes a [copy_stmt] value from [decoder] *)

val decode_create_stmt : Pbrt.Decoder.t -> Pg_query_types.create_stmt
(** [decode_create_stmt decoder] decodes a [create_stmt] value from [decoder] *)

val decode_partition_bound_spec : Pbrt.Decoder.t -> Pg_query_types.partition_bound_spec
(** [decode_partition_bound_spec decoder] decodes a [partition_bound_spec] value from [decoder] *)

val decode_partition_spec : Pbrt.Decoder.t -> Pg_query_types.partition_spec
(** [decode_partition_spec decoder] decodes a [partition_spec] value from [decoder] *)

val decode_type_name : Pbrt.Decoder.t -> Pg_query_types.type_name
(** [decode_type_name decoder] decodes a [type_name] value from [decoder] *)

val decode_define_stmt : Pbrt.Decoder.t -> Pg_query_types.define_stmt
(** [decode_define_stmt decoder] decodes a [define_stmt] value from [decoder] *)

val decode_drop_stmt : Pbrt.Decoder.t -> Pg_query_types.drop_stmt
(** [decode_drop_stmt decoder] decodes a [drop_stmt] value from [decoder] *)

val decode_truncate_stmt : Pbrt.Decoder.t -> Pg_query_types.truncate_stmt
(** [decode_truncate_stmt decoder] decodes a [truncate_stmt] value from [decoder] *)

val decode_comment_stmt : Pbrt.Decoder.t -> Pg_query_types.comment_stmt
(** [decode_comment_stmt decoder] decodes a [comment_stmt] value from [decoder] *)

val decode_index_stmt : Pbrt.Decoder.t -> Pg_query_types.index_stmt
(** [decode_index_stmt decoder] decodes a [index_stmt] value from [decoder] *)

val decode_create_function_stmt : Pbrt.Decoder.t -> Pg_query_types.create_function_stmt
(** [decode_create_function_stmt decoder] decodes a [create_function_stmt] value from [decoder] *)

val decode_alter_function_stmt : Pbrt.Decoder.t -> Pg_query_types.alter_function_stmt
(** [decode_alter_function_stmt decoder] decodes a [alter_function_stmt] value from [decoder] *)

val decode_object_with_args : Pbrt.Decoder.t -> Pg_query_types.object_with_args
(** [decode_object_with_args decoder] decodes a [object_with_args] value from [decoder] *)

val decode_do_stmt : Pbrt.Decoder.t -> Pg_query_types.do_stmt
(** [decode_do_stmt decoder] decodes a [do_stmt] value from [decoder] *)

val decode_rename_stmt : Pbrt.Decoder.t -> Pg_query_types.rename_stmt
(** [decode_rename_stmt decoder] decodes a [rename_stmt] value from [decoder] *)

val decode_rule_stmt : Pbrt.Decoder.t -> Pg_query_types.rule_stmt
(** [decode_rule_stmt decoder] decodes a [rule_stmt] value from [decoder] *)

val decode_transaction_stmt : Pbrt.Decoder.t -> Pg_query_types.transaction_stmt
(** [decode_transaction_stmt decoder] decodes a [transaction_stmt] value from [decoder] *)

val decode_view_stmt : Pbrt.Decoder.t -> Pg_query_types.view_stmt
(** [decode_view_stmt decoder] decodes a [view_stmt] value from [decoder] *)

val decode_create_domain_stmt : Pbrt.Decoder.t -> Pg_query_types.create_domain_stmt
(** [decode_create_domain_stmt decoder] decodes a [create_domain_stmt] value from [decoder] *)

val decode_collate_clause : Pbrt.Decoder.t -> Pg_query_types.collate_clause
(** [decode_collate_clause decoder] decodes a [collate_clause] value from [decoder] *)

val decode_createdb_stmt : Pbrt.Decoder.t -> Pg_query_types.createdb_stmt
(** [decode_createdb_stmt decoder] decodes a [createdb_stmt] value from [decoder] *)

val decode_dropdb_stmt : Pbrt.Decoder.t -> Pg_query_types.dropdb_stmt
(** [decode_dropdb_stmt decoder] decodes a [dropdb_stmt] value from [decoder] *)

val decode_vacuum_stmt : Pbrt.Decoder.t -> Pg_query_types.vacuum_stmt
(** [decode_vacuum_stmt decoder] decodes a [vacuum_stmt] value from [decoder] *)

val decode_explain_stmt : Pbrt.Decoder.t -> Pg_query_types.explain_stmt
(** [decode_explain_stmt decoder] decodes a [explain_stmt] value from [decoder] *)

val decode_create_table_as_stmt : Pbrt.Decoder.t -> Pg_query_types.create_table_as_stmt
(** [decode_create_table_as_stmt decoder] decodes a [create_table_as_stmt] value from [decoder] *)

val decode_create_seq_stmt : Pbrt.Decoder.t -> Pg_query_types.create_seq_stmt
(** [decode_create_seq_stmt decoder] decodes a [create_seq_stmt] value from [decoder] *)

val decode_alter_seq_stmt : Pbrt.Decoder.t -> Pg_query_types.alter_seq_stmt
(** [decode_alter_seq_stmt decoder] decodes a [alter_seq_stmt] value from [decoder] *)

val decode_variable_set_stmt : Pbrt.Decoder.t -> Pg_query_types.variable_set_stmt
(** [decode_variable_set_stmt decoder] decodes a [variable_set_stmt] value from [decoder] *)

val decode_create_trig_stmt : Pbrt.Decoder.t -> Pg_query_types.create_trig_stmt
(** [decode_create_trig_stmt decoder] decodes a [create_trig_stmt] value from [decoder] *)

val decode_create_plang_stmt : Pbrt.Decoder.t -> Pg_query_types.create_plang_stmt
(** [decode_create_plang_stmt decoder] decodes a [create_plang_stmt] value from [decoder] *)

val decode_create_role_stmt : Pbrt.Decoder.t -> Pg_query_types.create_role_stmt
(** [decode_create_role_stmt decoder] decodes a [create_role_stmt] value from [decoder] *)

val decode_alter_role_stmt : Pbrt.Decoder.t -> Pg_query_types.alter_role_stmt
(** [decode_alter_role_stmt decoder] decodes a [alter_role_stmt] value from [decoder] *)

val decode_drop_role_stmt : Pbrt.Decoder.t -> Pg_query_types.drop_role_stmt
(** [decode_drop_role_stmt decoder] decodes a [drop_role_stmt] value from [decoder] *)

val decode_lock_stmt : Pbrt.Decoder.t -> Pg_query_types.lock_stmt
(** [decode_lock_stmt decoder] decodes a [lock_stmt] value from [decoder] *)

val decode_constraints_set_stmt : Pbrt.Decoder.t -> Pg_query_types.constraints_set_stmt
(** [decode_constraints_set_stmt decoder] decodes a [constraints_set_stmt] value from [decoder] *)

val decode_reindex_stmt : Pbrt.Decoder.t -> Pg_query_types.reindex_stmt
(** [decode_reindex_stmt decoder] decodes a [reindex_stmt] value from [decoder] *)

val decode_create_schema_stmt : Pbrt.Decoder.t -> Pg_query_types.create_schema_stmt
(** [decode_create_schema_stmt decoder] decodes a [create_schema_stmt] value from [decoder] *)

val decode_alter_database_stmt : Pbrt.Decoder.t -> Pg_query_types.alter_database_stmt
(** [decode_alter_database_stmt decoder] decodes a [alter_database_stmt] value from [decoder] *)

val decode_alter_database_set_stmt : Pbrt.Decoder.t -> Pg_query_types.alter_database_set_stmt
(** [decode_alter_database_set_stmt decoder] decodes a [alter_database_set_stmt] value from [decoder] *)

val decode_alter_role_set_stmt : Pbrt.Decoder.t -> Pg_query_types.alter_role_set_stmt
(** [decode_alter_role_set_stmt decoder] decodes a [alter_role_set_stmt] value from [decoder] *)

val decode_create_conversion_stmt : Pbrt.Decoder.t -> Pg_query_types.create_conversion_stmt
(** [decode_create_conversion_stmt decoder] decodes a [create_conversion_stmt] value from [decoder] *)

val decode_create_cast_stmt : Pbrt.Decoder.t -> Pg_query_types.create_cast_stmt
(** [decode_create_cast_stmt decoder] decodes a [create_cast_stmt] value from [decoder] *)

val decode_create_op_class_stmt : Pbrt.Decoder.t -> Pg_query_types.create_op_class_stmt
(** [decode_create_op_class_stmt decoder] decodes a [create_op_class_stmt] value from [decoder] *)

val decode_create_op_family_stmt : Pbrt.Decoder.t -> Pg_query_types.create_op_family_stmt
(** [decode_create_op_family_stmt decoder] decodes a [create_op_family_stmt] value from [decoder] *)

val decode_alter_op_family_stmt : Pbrt.Decoder.t -> Pg_query_types.alter_op_family_stmt
(** [decode_alter_op_family_stmt decoder] decodes a [alter_op_family_stmt] value from [decoder] *)

val decode_prepare_stmt : Pbrt.Decoder.t -> Pg_query_types.prepare_stmt
(** [decode_prepare_stmt decoder] decodes a [prepare_stmt] value from [decoder] *)

val decode_execute_stmt : Pbrt.Decoder.t -> Pg_query_types.execute_stmt
(** [decode_execute_stmt decoder] decodes a [execute_stmt] value from [decoder] *)

val decode_declare_cursor_stmt : Pbrt.Decoder.t -> Pg_query_types.declare_cursor_stmt
(** [decode_declare_cursor_stmt decoder] decodes a [declare_cursor_stmt] value from [decoder] *)

val decode_create_table_space_stmt : Pbrt.Decoder.t -> Pg_query_types.create_table_space_stmt
(** [decode_create_table_space_stmt decoder] decodes a [create_table_space_stmt] value from [decoder] *)

val decode_alter_object_depends_stmt : Pbrt.Decoder.t -> Pg_query_types.alter_object_depends_stmt
(** [decode_alter_object_depends_stmt decoder] decodes a [alter_object_depends_stmt] value from [decoder] *)

val decode_alter_object_schema_stmt : Pbrt.Decoder.t -> Pg_query_types.alter_object_schema_stmt
(** [decode_alter_object_schema_stmt decoder] decodes a [alter_object_schema_stmt] value from [decoder] *)

val decode_alter_owner_stmt : Pbrt.Decoder.t -> Pg_query_types.alter_owner_stmt
(** [decode_alter_owner_stmt decoder] decodes a [alter_owner_stmt] value from [decoder] *)

val decode_alter_operator_stmt : Pbrt.Decoder.t -> Pg_query_types.alter_operator_stmt
(** [decode_alter_operator_stmt decoder] decodes a [alter_operator_stmt] value from [decoder] *)

val decode_alter_type_stmt : Pbrt.Decoder.t -> Pg_query_types.alter_type_stmt
(** [decode_alter_type_stmt decoder] decodes a [alter_type_stmt] value from [decoder] *)

val decode_drop_owned_stmt : Pbrt.Decoder.t -> Pg_query_types.drop_owned_stmt
(** [decode_drop_owned_stmt decoder] decodes a [drop_owned_stmt] value from [decoder] *)

val decode_reassign_owned_stmt : Pbrt.Decoder.t -> Pg_query_types.reassign_owned_stmt
(** [decode_reassign_owned_stmt decoder] decodes a [reassign_owned_stmt] value from [decoder] *)

val decode_composite_type_stmt : Pbrt.Decoder.t -> Pg_query_types.composite_type_stmt
(** [decode_composite_type_stmt decoder] decodes a [composite_type_stmt] value from [decoder] *)

val decode_create_enum_stmt : Pbrt.Decoder.t -> Pg_query_types.create_enum_stmt
(** [decode_create_enum_stmt decoder] decodes a [create_enum_stmt] value from [decoder] *)

val decode_create_range_stmt : Pbrt.Decoder.t -> Pg_query_types.create_range_stmt
(** [decode_create_range_stmt decoder] decodes a [create_range_stmt] value from [decoder] *)

val decode_alter_enum_stmt : Pbrt.Decoder.t -> Pg_query_types.alter_enum_stmt
(** [decode_alter_enum_stmt decoder] decodes a [alter_enum_stmt] value from [decoder] *)

val decode_alter_tsdictionary_stmt : Pbrt.Decoder.t -> Pg_query_types.alter_tsdictionary_stmt
(** [decode_alter_tsdictionary_stmt decoder] decodes a [alter_tsdictionary_stmt] value from [decoder] *)

val decode_alter_tsconfiguration_stmt : Pbrt.Decoder.t -> Pg_query_types.alter_tsconfiguration_stmt
(** [decode_alter_tsconfiguration_stmt decoder] decodes a [alter_tsconfiguration_stmt] value from [decoder] *)

val decode_create_fdw_stmt : Pbrt.Decoder.t -> Pg_query_types.create_fdw_stmt
(** [decode_create_fdw_stmt decoder] decodes a [create_fdw_stmt] value from [decoder] *)

val decode_alter_fdw_stmt : Pbrt.Decoder.t -> Pg_query_types.alter_fdw_stmt
(** [decode_alter_fdw_stmt decoder] decodes a [alter_fdw_stmt] value from [decoder] *)

val decode_create_foreign_server_stmt : Pbrt.Decoder.t -> Pg_query_types.create_foreign_server_stmt
(** [decode_create_foreign_server_stmt decoder] decodes a [create_foreign_server_stmt] value from [decoder] *)

val decode_alter_foreign_server_stmt : Pbrt.Decoder.t -> Pg_query_types.alter_foreign_server_stmt
(** [decode_alter_foreign_server_stmt decoder] decodes a [alter_foreign_server_stmt] value from [decoder] *)

val decode_create_user_mapping_stmt : Pbrt.Decoder.t -> Pg_query_types.create_user_mapping_stmt
(** [decode_create_user_mapping_stmt decoder] decodes a [create_user_mapping_stmt] value from [decoder] *)

val decode_alter_user_mapping_stmt : Pbrt.Decoder.t -> Pg_query_types.alter_user_mapping_stmt
(** [decode_alter_user_mapping_stmt decoder] decodes a [alter_user_mapping_stmt] value from [decoder] *)

val decode_alter_table_space_options_stmt : Pbrt.Decoder.t -> Pg_query_types.alter_table_space_options_stmt
(** [decode_alter_table_space_options_stmt decoder] decodes a [alter_table_space_options_stmt] value from [decoder] *)

val decode_alter_table_move_all_stmt : Pbrt.Decoder.t -> Pg_query_types.alter_table_move_all_stmt
(** [decode_alter_table_move_all_stmt decoder] decodes a [alter_table_move_all_stmt] value from [decoder] *)

val decode_sec_label_stmt : Pbrt.Decoder.t -> Pg_query_types.sec_label_stmt
(** [decode_sec_label_stmt decoder] decodes a [sec_label_stmt] value from [decoder] *)

val decode_create_foreign_table_stmt : Pbrt.Decoder.t -> Pg_query_types.create_foreign_table_stmt
(** [decode_create_foreign_table_stmt decoder] decodes a [create_foreign_table_stmt] value from [decoder] *)

val decode_import_foreign_schema_stmt : Pbrt.Decoder.t -> Pg_query_types.import_foreign_schema_stmt
(** [decode_import_foreign_schema_stmt decoder] decodes a [import_foreign_schema_stmt] value from [decoder] *)

val decode_create_extension_stmt : Pbrt.Decoder.t -> Pg_query_types.create_extension_stmt
(** [decode_create_extension_stmt decoder] decodes a [create_extension_stmt] value from [decoder] *)

val decode_alter_extension_stmt : Pbrt.Decoder.t -> Pg_query_types.alter_extension_stmt
(** [decode_alter_extension_stmt decoder] decodes a [alter_extension_stmt] value from [decoder] *)

val decode_alter_extension_contents_stmt : Pbrt.Decoder.t -> Pg_query_types.alter_extension_contents_stmt
(** [decode_alter_extension_contents_stmt decoder] decodes a [alter_extension_contents_stmt] value from [decoder] *)

val decode_create_event_trig_stmt : Pbrt.Decoder.t -> Pg_query_types.create_event_trig_stmt
(** [decode_create_event_trig_stmt decoder] decodes a [create_event_trig_stmt] value from [decoder] *)

val decode_refresh_mat_view_stmt : Pbrt.Decoder.t -> Pg_query_types.refresh_mat_view_stmt
(** [decode_refresh_mat_view_stmt decoder] decodes a [refresh_mat_view_stmt] value from [decoder] *)

val decode_alter_system_stmt : Pbrt.Decoder.t -> Pg_query_types.alter_system_stmt
(** [decode_alter_system_stmt decoder] decodes a [alter_system_stmt] value from [decoder] *)

val decode_create_policy_stmt : Pbrt.Decoder.t -> Pg_query_types.create_policy_stmt
(** [decode_create_policy_stmt decoder] decodes a [create_policy_stmt] value from [decoder] *)

val decode_alter_policy_stmt : Pbrt.Decoder.t -> Pg_query_types.alter_policy_stmt
(** [decode_alter_policy_stmt decoder] decodes a [alter_policy_stmt] value from [decoder] *)

val decode_create_transform_stmt : Pbrt.Decoder.t -> Pg_query_types.create_transform_stmt
(** [decode_create_transform_stmt decoder] decodes a [create_transform_stmt] value from [decoder] *)

val decode_create_am_stmt : Pbrt.Decoder.t -> Pg_query_types.create_am_stmt
(** [decode_create_am_stmt decoder] decodes a [create_am_stmt] value from [decoder] *)

val decode_create_publication_stmt : Pbrt.Decoder.t -> Pg_query_types.create_publication_stmt
(** [decode_create_publication_stmt decoder] decodes a [create_publication_stmt] value from [decoder] *)

val decode_alter_publication_stmt : Pbrt.Decoder.t -> Pg_query_types.alter_publication_stmt
(** [decode_alter_publication_stmt decoder] decodes a [alter_publication_stmt] value from [decoder] *)

val decode_create_subscription_stmt : Pbrt.Decoder.t -> Pg_query_types.create_subscription_stmt
(** [decode_create_subscription_stmt decoder] decodes a [create_subscription_stmt] value from [decoder] *)

val decode_alter_subscription_stmt : Pbrt.Decoder.t -> Pg_query_types.alter_subscription_stmt
(** [decode_alter_subscription_stmt decoder] decodes a [alter_subscription_stmt] value from [decoder] *)

val decode_create_stats_stmt : Pbrt.Decoder.t -> Pg_query_types.create_stats_stmt
(** [decode_create_stats_stmt decoder] decodes a [create_stats_stmt] value from [decoder] *)

val decode_alter_collation_stmt : Pbrt.Decoder.t -> Pg_query_types.alter_collation_stmt
(** [decode_alter_collation_stmt decoder] decodes a [alter_collation_stmt] value from [decoder] *)

val decode_call_stmt : Pbrt.Decoder.t -> Pg_query_types.call_stmt
(** [decode_call_stmt decoder] decodes a [call_stmt] value from [decoder] *)

val decode_func_call : Pbrt.Decoder.t -> Pg_query_types.func_call
(** [decode_func_call decoder] decodes a [func_call] value from [decoder] *)

val decode_window_def : Pbrt.Decoder.t -> Pg_query_types.window_def
(** [decode_window_def decoder] decodes a [window_def] value from [decoder] *)

val decode_alter_stats_stmt : Pbrt.Decoder.t -> Pg_query_types.alter_stats_stmt
(** [decode_alter_stats_stmt decoder] decodes a [alter_stats_stmt] value from [decoder] *)

val decode_a_expr : Pbrt.Decoder.t -> Pg_query_types.a_expr
(** [decode_a_expr decoder] decodes a [a_expr] value from [decoder] *)

val decode_column_ref : Pbrt.Decoder.t -> Pg_query_types.column_ref
(** [decode_column_ref decoder] decodes a [column_ref] value from [decoder] *)

val decode_a_indices : Pbrt.Decoder.t -> Pg_query_types.a_indices
(** [decode_a_indices decoder] decodes a [a_indices] value from [decoder] *)

val decode_a_indirection : Pbrt.Decoder.t -> Pg_query_types.a_indirection
(** [decode_a_indirection decoder] decodes a [a_indirection] value from [decoder] *)

val decode_a_array_expr : Pbrt.Decoder.t -> Pg_query_types.a_array_expr
(** [decode_a_array_expr decoder] decodes a [a_array_expr] value from [decoder] *)

val decode_res_target : Pbrt.Decoder.t -> Pg_query_types.res_target
(** [decode_res_target decoder] decodes a [res_target] value from [decoder] *)

val decode_multi_assign_ref : Pbrt.Decoder.t -> Pg_query_types.multi_assign_ref
(** [decode_multi_assign_ref decoder] decodes a [multi_assign_ref] value from [decoder] *)

val decode_type_cast : Pbrt.Decoder.t -> Pg_query_types.type_cast
(** [decode_type_cast decoder] decodes a [type_cast] value from [decoder] *)

val decode_sort_by : Pbrt.Decoder.t -> Pg_query_types.sort_by
(** [decode_sort_by decoder] decodes a [sort_by] value from [decoder] *)

val decode_range_subselect : Pbrt.Decoder.t -> Pg_query_types.range_subselect
(** [decode_range_subselect decoder] decodes a [range_subselect] value from [decoder] *)

val decode_range_function : Pbrt.Decoder.t -> Pg_query_types.range_function
(** [decode_range_function decoder] decodes a [range_function] value from [decoder] *)

val decode_range_table_sample : Pbrt.Decoder.t -> Pg_query_types.range_table_sample
(** [decode_range_table_sample decoder] decodes a [range_table_sample] value from [decoder] *)

val decode_range_table_func : Pbrt.Decoder.t -> Pg_query_types.range_table_func
(** [decode_range_table_func decoder] decodes a [range_table_func] value from [decoder] *)

val decode_range_table_func_col : Pbrt.Decoder.t -> Pg_query_types.range_table_func_col
(** [decode_range_table_func_col decoder] decodes a [range_table_func_col] value from [decoder] *)

val decode_column_def : Pbrt.Decoder.t -> Pg_query_types.column_def
(** [decode_column_def decoder] decodes a [column_def] value from [decoder] *)

val decode_index_elem : Pbrt.Decoder.t -> Pg_query_types.index_elem
(** [decode_index_elem decoder] decodes a [index_elem] value from [decoder] *)

val decode_stats_elem : Pbrt.Decoder.t -> Pg_query_types.stats_elem
(** [decode_stats_elem decoder] decodes a [stats_elem] value from [decoder] *)

val decode_constraint_ : Pbrt.Decoder.t -> Pg_query_types.constraint_
(** [decode_constraint_ decoder] decodes a [constraint_] value from [decoder] *)

val decode_def_elem : Pbrt.Decoder.t -> Pg_query_types.def_elem
(** [decode_def_elem decoder] decodes a [def_elem] value from [decoder] *)

val decode_range_tbl_entry : Pbrt.Decoder.t -> Pg_query_types.range_tbl_entry
(** [decode_range_tbl_entry decoder] decodes a [range_tbl_entry] value from [decoder] *)

val decode_table_sample_clause : Pbrt.Decoder.t -> Pg_query_types.table_sample_clause
(** [decode_table_sample_clause decoder] decodes a [table_sample_clause] value from [decoder] *)

val decode_range_tbl_function : Pbrt.Decoder.t -> Pg_query_types.range_tbl_function
(** [decode_range_tbl_function decoder] decodes a [range_tbl_function] value from [decoder] *)

val decode_with_check_option : Pbrt.Decoder.t -> Pg_query_types.with_check_option
(** [decode_with_check_option decoder] decodes a [with_check_option] value from [decoder] *)

val decode_grouping_set : Pbrt.Decoder.t -> Pg_query_types.grouping_set
(** [decode_grouping_set decoder] decodes a [grouping_set] value from [decoder] *)

val decode_window_clause : Pbrt.Decoder.t -> Pg_query_types.window_clause
(** [decode_window_clause decoder] decodes a [window_clause] value from [decoder] *)

val decode_access_priv : Pbrt.Decoder.t -> Pg_query_types.access_priv
(** [decode_access_priv decoder] decodes a [access_priv] value from [decoder] *)

val decode_create_op_class_item : Pbrt.Decoder.t -> Pg_query_types.create_op_class_item
(** [decode_create_op_class_item decoder] decodes a [create_op_class_item] value from [decoder] *)

val decode_table_like_clause : Pbrt.Decoder.t -> Pg_query_types.table_like_clause
(** [decode_table_like_clause decoder] decodes a [table_like_clause] value from [decoder] *)

val decode_function_parameter : Pbrt.Decoder.t -> Pg_query_types.function_parameter
(** [decode_function_parameter decoder] decodes a [function_parameter] value from [decoder] *)

val decode_locking_clause : Pbrt.Decoder.t -> Pg_query_types.locking_clause
(** [decode_locking_clause decoder] decodes a [locking_clause] value from [decoder] *)

val decode_xml_serialize : Pbrt.Decoder.t -> Pg_query_types.xml_serialize
(** [decode_xml_serialize decoder] decodes a [xml_serialize] value from [decoder] *)

val decode_ctesearch_clause : Pbrt.Decoder.t -> Pg_query_types.ctesearch_clause
(** [decode_ctesearch_clause decoder] decodes a [ctesearch_clause] value from [decoder] *)

val decode_ctecycle_clause : Pbrt.Decoder.t -> Pg_query_types.ctecycle_clause
(** [decode_ctecycle_clause decoder] decodes a [ctecycle_clause] value from [decoder] *)

val decode_common_table_expr : Pbrt.Decoder.t -> Pg_query_types.common_table_expr
(** [decode_common_table_expr decoder] decodes a [common_table_expr] value from [decoder] *)

val decode_merge_when_clause : Pbrt.Decoder.t -> Pg_query_types.merge_when_clause
(** [decode_merge_when_clause decoder] decodes a [merge_when_clause] value from [decoder] *)

val decode_partition_elem : Pbrt.Decoder.t -> Pg_query_types.partition_elem
(** [decode_partition_elem decoder] decodes a [partition_elem] value from [decoder] *)

val decode_partition_range_datum : Pbrt.Decoder.t -> Pg_query_types.partition_range_datum
(** [decode_partition_range_datum decoder] decodes a [partition_range_datum] value from [decoder] *)

val decode_partition_cmd : Pbrt.Decoder.t -> Pg_query_types.partition_cmd
(** [decode_partition_cmd decoder] decodes a [partition_cmd] value from [decoder] *)

val decode_vacuum_relation : Pbrt.Decoder.t -> Pg_query_types.vacuum_relation
(** [decode_vacuum_relation decoder] decodes a [vacuum_relation] value from [decoder] *)

val decode_publication_obj_spec : Pbrt.Decoder.t -> Pg_query_types.publication_obj_spec
(** [decode_publication_obj_spec decoder] decodes a [publication_obj_spec] value from [decoder] *)

val decode_publication_table : Pbrt.Decoder.t -> Pg_query_types.publication_table
(** [decode_publication_table decoder] decodes a [publication_table] value from [decoder] *)

val decode_list : Pbrt.Decoder.t -> Pg_query_types.list
(** [decode_list decoder] decodes a [list] value from [decoder] *)

val decode_int_list : Pbrt.Decoder.t -> Pg_query_types.int_list
(** [decode_int_list decoder] decodes a [int_list] value from [decoder] *)

val decode_oid_list : Pbrt.Decoder.t -> Pg_query_types.oid_list
(** [decode_oid_list decoder] decodes a [oid_list] value from [decoder] *)

val decode_parse_result : Pbrt.Decoder.t -> Pg_query_types.parse_result
(** [decode_parse_result decoder] decodes a [parse_result] value from [decoder] *)

val decode_token : Pbrt.Decoder.t -> Pg_query_types.token
(** [decode_token decoder] decodes a [token] value from [decoder] *)

val decode_keyword_kind : Pbrt.Decoder.t -> Pg_query_types.keyword_kind
(** [decode_keyword_kind decoder] decodes a [keyword_kind] value from [decoder] *)

val decode_scan_token : Pbrt.Decoder.t -> Pg_query_types.scan_token
(** [decode_scan_token decoder] decodes a [scan_token] value from [decoder] *)

val decode_scan_result : Pbrt.Decoder.t -> Pg_query_types.scan_result
(** [decode_scan_result decoder] decodes a [scan_result] value from [decoder] *)

val decode_set_quantifier : Pbrt.Decoder.t -> Pg_query_types.set_quantifier
(** [decode_set_quantifier decoder] decodes a [set_quantifier] value from [decoder] *)

val decode_table_like_option : Pbrt.Decoder.t -> Pg_query_types.table_like_option
(** [decode_table_like_option decoder] decodes a [table_like_option] value from [decoder] *)

val decode_agg_strategy : Pbrt.Decoder.t -> Pg_query_types.agg_strategy
(** [decode_agg_strategy decoder] decodes a [agg_strategy] value from [decoder] *)

val decode_set_op_cmd : Pbrt.Decoder.t -> Pg_query_types.set_op_cmd
(** [decode_set_op_cmd decoder] decodes a [set_op_cmd] value from [decoder] *)

val decode_set_op_strategy : Pbrt.Decoder.t -> Pg_query_types.set_op_strategy
(** [decode_set_op_strategy decoder] decodes a [set_op_strategy] value from [decoder] *)

val decode_lock_tuple_mode : Pbrt.Decoder.t -> Pg_query_types.lock_tuple_mode
(** [decode_lock_tuple_mode decoder] decodes a [lock_tuple_mode] value from [decoder] *)
