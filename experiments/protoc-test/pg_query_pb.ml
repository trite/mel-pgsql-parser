[@@@ocaml.warning "-27-30-39"]

type range_tbl_ref_mutable = {
  mutable rtindex : int32;
}

let default_range_tbl_ref_mutable () : range_tbl_ref_mutable = {
  rtindex = 0l;
}

type role_spec_mutable = {
  mutable roletype : Pg_query_types.role_spec_type;
  mutable rolename : string;
  mutable location : int32;
}

let default_role_spec_mutable () : role_spec_mutable = {
  roletype = Pg_query_types.default_role_spec_type ();
  rolename = "";
  location = 0l;
}

type close_portal_stmt_mutable = {
  mutable portalname : string;
}

let default_close_portal_stmt_mutable () : close_portal_stmt_mutable = {
  portalname = "";
}

type fetch_stmt_mutable = {
  mutable direction : Pg_query_types.fetch_direction;
  mutable how_many : int64;
  mutable portalname : string;
  mutable ismove : bool;
}

let default_fetch_stmt_mutable () : fetch_stmt_mutable = {
  direction = Pg_query_types.default_fetch_direction ();
  how_many = 0L;
  portalname = "";
  ismove = false;
}

type notify_stmt_mutable = {
  mutable conditionname : string;
  mutable payload : string;
}

let default_notify_stmt_mutable () : notify_stmt_mutable = {
  conditionname = "";
  payload = "";
}

type listen_stmt_mutable = {
  mutable conditionname : string;
}

let default_listen_stmt_mutable () : listen_stmt_mutable = {
  conditionname = "";
}

type unlisten_stmt_mutable = {
  mutable conditionname : string;
}

let default_unlisten_stmt_mutable () : unlisten_stmt_mutable = {
  conditionname = "";
}

type load_stmt_mutable = {
  mutable filename : string;
}

let default_load_stmt_mutable () : load_stmt_mutable = {
  filename = "";
}

type variable_show_stmt_mutable = {
  mutable name : string;
}

let default_variable_show_stmt_mutable () : variable_show_stmt_mutable = {
  name = "";
}

type discard_stmt_mutable = {
  mutable target : Pg_query_types.discard_mode;
}

let default_discard_stmt_mutable () : discard_stmt_mutable = {
  target = Pg_query_types.default_discard_mode ();
}

type alter_database_refresh_coll_stmt_mutable = {
  mutable dbname : string;
}

let default_alter_database_refresh_coll_stmt_mutable () : alter_database_refresh_coll_stmt_mutable = {
  dbname = "";
}

type deallocate_stmt_mutable = {
  mutable name : string;
}

let default_deallocate_stmt_mutable () : deallocate_stmt_mutable = {
  name = "";
}

type drop_table_space_stmt_mutable = {
  mutable tablespacename : string;
  mutable missing_ok : bool;
}

let default_drop_table_space_stmt_mutable () : drop_table_space_stmt_mutable = {
  tablespacename = "";
  missing_ok = false;
}

type string_mutable = {
  mutable sval : string;
}

let default_string_mutable () : string_mutable = {
  sval = "";
}

type drop_user_mapping_stmt_mutable = {
  mutable user : Pg_query_types.role_spec option;
  mutable servername : string;
  mutable missing_ok : bool;
}

let default_drop_user_mapping_stmt_mutable () : drop_user_mapping_stmt_mutable = {
  user = None;
  servername = "";
  missing_ok = false;
}

type alter_event_trig_stmt_mutable = {
  mutable trigname : string;
  mutable tgenabled : string;
}

let default_alter_event_trig_stmt_mutable () : alter_event_trig_stmt_mutable = {
  trigname = "";
  tgenabled = "";
}

type replica_identity_stmt_mutable = {
  mutable identity_type : string;
  mutable name : string;
}

let default_replica_identity_stmt_mutable () : replica_identity_stmt_mutable = {
  identity_type = "";
  name = "";
}

type drop_subscription_stmt_mutable = {
  mutable subname : string;
  mutable missing_ok : bool;
  mutable behavior : Pg_query_types.drop_behavior;
}

let default_drop_subscription_stmt_mutable () : drop_subscription_stmt_mutable = {
  subname = "";
  missing_ok = false;
  behavior = Pg_query_types.default_drop_behavior ();
}

type param_ref_mutable = {
  mutable number : int32;
  mutable location : int32;
}

let default_param_ref_mutable () : param_ref_mutable = {
  number = 0l;
  location = 0l;
}

type sort_group_clause_mutable = {
  mutable tle_sort_group_ref : int32;
  mutable eqop : int32;
  mutable sortop : int32;
  mutable nulls_first : bool;
  mutable hashable : bool;
}

let default_sort_group_clause_mutable () : sort_group_clause_mutable = {
  tle_sort_group_ref = 0l;
  eqop = 0l;
  sortop = 0l;
  nulls_first = false;
  hashable = false;
}

type row_mark_clause_mutable = {
  mutable rti : int32;
  mutable strength : Pg_query_types.lock_clause_strength;
  mutable wait_policy : Pg_query_types.lock_wait_policy;
  mutable pushed_down : bool;
}

let default_row_mark_clause_mutable () : row_mark_clause_mutable = {
  rti = 0l;
  strength = Pg_query_types.default_lock_clause_strength ();
  wait_policy = Pg_query_types.default_lock_wait_policy ();
  pushed_down = false;
}

type trigger_transition_mutable = {
  mutable name : string;
  mutable is_new : bool;
  mutable is_table : bool;
}

let default_trigger_transition_mutable () : trigger_transition_mutable = {
  name = "";
  is_new = false;
  is_table = false;
}

type inline_code_block_mutable = {
  mutable source_text : string;
  mutable lang_oid : int32;
  mutable lang_is_trusted : bool;
  mutable atomic : bool;
}

let default_inline_code_block_mutable () : inline_code_block_mutable = {
  source_text = "";
  lang_oid = 0l;
  lang_is_trusted = false;
  atomic = false;
}

type call_context_mutable = {
  mutable atomic : bool;
}

let default_call_context_mutable () : call_context_mutable = {
  atomic = false;
}

type integer_mutable = {
  mutable ival : int32;
}

let default_integer_mutable () : integer_mutable = {
  ival = 0l;
}

type float_mutable = {
  mutable fval : string;
}

let default_float_mutable () : float_mutable = {
  fval = "";
}

type boolean_mutable = {
  mutable boolval : bool;
}

let default_boolean_mutable () : boolean_mutable = {
  boolval = false;
}

type bit_string_mutable = {
  mutable bsval : string;
}

let default_bit_string_mutable () : bit_string_mutable = {
  bsval = "";
}

type a_const_mutable = {
  mutable val_ : Pg_query_types.a_const_val;
  mutable isnull : bool;
  mutable location : int32;
}

let default_a_const_mutable () : a_const_mutable = {
  val_ = Pg_query_types.Ival (Pg_query_types.default_integer ());
  isnull = false;
  location = 0l;
}

type raw_stmt_mutable = {
  mutable stmt : Pg_query_types.node option;
  mutable stmt_location : int32;
  mutable stmt_len : int32;
}

let default_raw_stmt_mutable () : raw_stmt_mutable = {
  stmt = None;
  stmt_location = 0l;
  stmt_len = 0l;
}

type alias_mutable = {
  mutable aliasname : string;
  mutable colnames : Pg_query_types.node list;
}

let default_alias_mutable () : alias_mutable = {
  aliasname = "";
  colnames = [];
}

type range_var_mutable = {
  mutable catalogname : string;
  mutable schemaname : string;
  mutable relname : string;
  mutable inh : bool;
  mutable relpersistence : string;
  mutable alias : Pg_query_types.alias option;
  mutable location : int32;
}

let default_range_var_mutable () : range_var_mutable = {
  catalogname = "";
  schemaname = "";
  relname = "";
  inh = false;
  relpersistence = "";
  alias = None;
  location = 0l;
}

type table_func_mutable = {
  mutable ns_uris : Pg_query_types.node list;
  mutable ns_names : Pg_query_types.node list;
  mutable docexpr : Pg_query_types.node option;
  mutable rowexpr : Pg_query_types.node option;
  mutable colnames : Pg_query_types.node list;
  mutable coltypes : Pg_query_types.node list;
  mutable coltypmods : Pg_query_types.node list;
  mutable colcollations : Pg_query_types.node list;
  mutable colexprs : Pg_query_types.node list;
  mutable coldefexprs : Pg_query_types.node list;
  mutable notnulls : int64 list;
  mutable ordinalitycol : int32;
  mutable location : int32;
}

let default_table_func_mutable () : table_func_mutable = {
  ns_uris = [];
  ns_names = [];
  docexpr = None;
  rowexpr = None;
  colnames = [];
  coltypes = [];
  coltypmods = [];
  colcollations = [];
  colexprs = [];
  coldefexprs = [];
  notnulls = [];
  ordinalitycol = 0l;
  location = 0l;
}

type var_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable varno : int32;
  mutable varattno : int32;
  mutable vartype : int32;
  mutable vartypmod : int32;
  mutable varcollid : int32;
  mutable varlevelsup : int32;
  mutable varnosyn : int32;
  mutable varattnosyn : int32;
  mutable location : int32;
}

let default_var_mutable () : var_mutable = {
  xpr = None;
  varno = 0l;
  varattno = 0l;
  vartype = 0l;
  vartypmod = 0l;
  varcollid = 0l;
  varlevelsup = 0l;
  varnosyn = 0l;
  varattnosyn = 0l;
  location = 0l;
}

type param_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable paramkind : Pg_query_types.param_kind;
  mutable paramid : int32;
  mutable paramtype : int32;
  mutable paramtypmod : int32;
  mutable paramcollid : int32;
  mutable location : int32;
}

let default_param_mutable () : param_mutable = {
  xpr = None;
  paramkind = Pg_query_types.default_param_kind ();
  paramid = 0l;
  paramtype = 0l;
  paramtypmod = 0l;
  paramcollid = 0l;
  location = 0l;
}

type aggref_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable aggfnoid : int32;
  mutable aggtype : int32;
  mutable aggcollid : int32;
  mutable inputcollid : int32;
  mutable aggtranstype : int32;
  mutable aggargtypes : Pg_query_types.node list;
  mutable aggdirectargs : Pg_query_types.node list;
  mutable args : Pg_query_types.node list;
  mutable aggorder : Pg_query_types.node list;
  mutable aggdistinct : Pg_query_types.node list;
  mutable aggfilter : Pg_query_types.node option;
  mutable aggstar : bool;
  mutable aggvariadic : bool;
  mutable aggkind : string;
  mutable agglevelsup : int32;
  mutable aggsplit : Pg_query_types.agg_split;
  mutable aggno : int32;
  mutable aggtransno : int32;
  mutable location : int32;
}

let default_aggref_mutable () : aggref_mutable = {
  xpr = None;
  aggfnoid = 0l;
  aggtype = 0l;
  aggcollid = 0l;
  inputcollid = 0l;
  aggtranstype = 0l;
  aggargtypes = [];
  aggdirectargs = [];
  args = [];
  aggorder = [];
  aggdistinct = [];
  aggfilter = None;
  aggstar = false;
  aggvariadic = false;
  aggkind = "";
  agglevelsup = 0l;
  aggsplit = Pg_query_types.default_agg_split ();
  aggno = 0l;
  aggtransno = 0l;
  location = 0l;
}

type grouping_func_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable args : Pg_query_types.node list;
  mutable refs : Pg_query_types.node list;
  mutable cols : Pg_query_types.node list;
  mutable agglevelsup : int32;
  mutable location : int32;
}

let default_grouping_func_mutable () : grouping_func_mutable = {
  xpr = None;
  args = [];
  refs = [];
  cols = [];
  agglevelsup = 0l;
  location = 0l;
}

type window_func_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable winfnoid : int32;
  mutable wintype : int32;
  mutable wincollid : int32;
  mutable inputcollid : int32;
  mutable args : Pg_query_types.node list;
  mutable aggfilter : Pg_query_types.node option;
  mutable winref : int32;
  mutable winstar : bool;
  mutable winagg : bool;
  mutable location : int32;
}

let default_window_func_mutable () : window_func_mutable = {
  xpr = None;
  winfnoid = 0l;
  wintype = 0l;
  wincollid = 0l;
  inputcollid = 0l;
  args = [];
  aggfilter = None;
  winref = 0l;
  winstar = false;
  winagg = false;
  location = 0l;
}

type subscripting_ref_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable refcontainertype : int32;
  mutable refelemtype : int32;
  mutable refrestype : int32;
  mutable reftypmod : int32;
  mutable refcollid : int32;
  mutable refupperindexpr : Pg_query_types.node list;
  mutable reflowerindexpr : Pg_query_types.node list;
  mutable refexpr : Pg_query_types.node option;
  mutable refassgnexpr : Pg_query_types.node option;
}

let default_subscripting_ref_mutable () : subscripting_ref_mutable = {
  xpr = None;
  refcontainertype = 0l;
  refelemtype = 0l;
  refrestype = 0l;
  reftypmod = 0l;
  refcollid = 0l;
  refupperindexpr = [];
  reflowerindexpr = [];
  refexpr = None;
  refassgnexpr = None;
}

type func_expr_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable funcid : int32;
  mutable funcresulttype : int32;
  mutable funcretset : bool;
  mutable funcvariadic : bool;
  mutable funcformat : Pg_query_types.coercion_form;
  mutable funccollid : int32;
  mutable inputcollid : int32;
  mutable args : Pg_query_types.node list;
  mutable location : int32;
}

let default_func_expr_mutable () : func_expr_mutable = {
  xpr = None;
  funcid = 0l;
  funcresulttype = 0l;
  funcretset = false;
  funcvariadic = false;
  funcformat = Pg_query_types.default_coercion_form ();
  funccollid = 0l;
  inputcollid = 0l;
  args = [];
  location = 0l;
}

type named_arg_expr_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable arg : Pg_query_types.node option;
  mutable name : string;
  mutable argnumber : int32;
  mutable location : int32;
}

let default_named_arg_expr_mutable () : named_arg_expr_mutable = {
  xpr = None;
  arg = None;
  name = "";
  argnumber = 0l;
  location = 0l;
}

type op_expr_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable opno : int32;
  mutable opfuncid : int32;
  mutable opresulttype : int32;
  mutable opretset : bool;
  mutable opcollid : int32;
  mutable inputcollid : int32;
  mutable args : Pg_query_types.node list;
  mutable location : int32;
}

let default_op_expr_mutable () : op_expr_mutable = {
  xpr = None;
  opno = 0l;
  opfuncid = 0l;
  opresulttype = 0l;
  opretset = false;
  opcollid = 0l;
  inputcollid = 0l;
  args = [];
  location = 0l;
}

type distinct_expr_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable opno : int32;
  mutable opfuncid : int32;
  mutable opresulttype : int32;
  mutable opretset : bool;
  mutable opcollid : int32;
  mutable inputcollid : int32;
  mutable args : Pg_query_types.node list;
  mutable location : int32;
}

let default_distinct_expr_mutable () : distinct_expr_mutable = {
  xpr = None;
  opno = 0l;
  opfuncid = 0l;
  opresulttype = 0l;
  opretset = false;
  opcollid = 0l;
  inputcollid = 0l;
  args = [];
  location = 0l;
}

type null_if_expr_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable opno : int32;
  mutable opfuncid : int32;
  mutable opresulttype : int32;
  mutable opretset : bool;
  mutable opcollid : int32;
  mutable inputcollid : int32;
  mutable args : Pg_query_types.node list;
  mutable location : int32;
}

let default_null_if_expr_mutable () : null_if_expr_mutable = {
  xpr = None;
  opno = 0l;
  opfuncid = 0l;
  opresulttype = 0l;
  opretset = false;
  opcollid = 0l;
  inputcollid = 0l;
  args = [];
  location = 0l;
}

type scalar_array_op_expr_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable opno : int32;
  mutable opfuncid : int32;
  mutable hashfuncid : int32;
  mutable negfuncid : int32;
  mutable use_or : bool;
  mutable inputcollid : int32;
  mutable args : Pg_query_types.node list;
  mutable location : int32;
}

let default_scalar_array_op_expr_mutable () : scalar_array_op_expr_mutable = {
  xpr = None;
  opno = 0l;
  opfuncid = 0l;
  hashfuncid = 0l;
  negfuncid = 0l;
  use_or = false;
  inputcollid = 0l;
  args = [];
  location = 0l;
}

type bool_expr_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable boolop : Pg_query_types.bool_expr_type;
  mutable args : Pg_query_types.node list;
  mutable location : int32;
}

let default_bool_expr_mutable () : bool_expr_mutable = {
  xpr = None;
  boolop = Pg_query_types.default_bool_expr_type ();
  args = [];
  location = 0l;
}

type sub_link_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable sub_link_type : Pg_query_types.sub_link_type;
  mutable sub_link_id : int32;
  mutable testexpr : Pg_query_types.node option;
  mutable oper_name : Pg_query_types.node list;
  mutable subselect : Pg_query_types.node option;
  mutable location : int32;
}

let default_sub_link_mutable () : sub_link_mutable = {
  xpr = None;
  sub_link_type = Pg_query_types.default_sub_link_type ();
  sub_link_id = 0l;
  testexpr = None;
  oper_name = [];
  subselect = None;
  location = 0l;
}

type sub_plan_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable sub_link_type : Pg_query_types.sub_link_type;
  mutable testexpr : Pg_query_types.node option;
  mutable param_ids : Pg_query_types.node list;
  mutable plan_id : int32;
  mutable plan_name : string;
  mutable first_col_type : int32;
  mutable first_col_typmod : int32;
  mutable first_col_collation : int32;
  mutable use_hash_table : bool;
  mutable unknown_eq_false : bool;
  mutable parallel_safe : bool;
  mutable set_param : Pg_query_types.node list;
  mutable par_param : Pg_query_types.node list;
  mutable args : Pg_query_types.node list;
  mutable startup_cost : float;
  mutable per_call_cost : float;
}

let default_sub_plan_mutable () : sub_plan_mutable = {
  xpr = None;
  sub_link_type = Pg_query_types.default_sub_link_type ();
  testexpr = None;
  param_ids = [];
  plan_id = 0l;
  plan_name = "";
  first_col_type = 0l;
  first_col_typmod = 0l;
  first_col_collation = 0l;
  use_hash_table = false;
  unknown_eq_false = false;
  parallel_safe = false;
  set_param = [];
  par_param = [];
  args = [];
  startup_cost = 0.;
  per_call_cost = 0.;
}

type alternative_sub_plan_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable subplans : Pg_query_types.node list;
}

let default_alternative_sub_plan_mutable () : alternative_sub_plan_mutable = {
  xpr = None;
  subplans = [];
}

type field_select_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable arg : Pg_query_types.node option;
  mutable fieldnum : int32;
  mutable resulttype : int32;
  mutable resulttypmod : int32;
  mutable resultcollid : int32;
}

let default_field_select_mutable () : field_select_mutable = {
  xpr = None;
  arg = None;
  fieldnum = 0l;
  resulttype = 0l;
  resulttypmod = 0l;
  resultcollid = 0l;
}

type field_store_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable arg : Pg_query_types.node option;
  mutable newvals : Pg_query_types.node list;
  mutable fieldnums : Pg_query_types.node list;
  mutable resulttype : int32;
}

let default_field_store_mutable () : field_store_mutable = {
  xpr = None;
  arg = None;
  newvals = [];
  fieldnums = [];
  resulttype = 0l;
}

type relabel_type_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable arg : Pg_query_types.node option;
  mutable resulttype : int32;
  mutable resulttypmod : int32;
  mutable resultcollid : int32;
  mutable relabelformat : Pg_query_types.coercion_form;
  mutable location : int32;
}

let default_relabel_type_mutable () : relabel_type_mutable = {
  xpr = None;
  arg = None;
  resulttype = 0l;
  resulttypmod = 0l;
  resultcollid = 0l;
  relabelformat = Pg_query_types.default_coercion_form ();
  location = 0l;
}

type coerce_via_io_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable arg : Pg_query_types.node option;
  mutable resulttype : int32;
  mutable resultcollid : int32;
  mutable coerceformat : Pg_query_types.coercion_form;
  mutable location : int32;
}

let default_coerce_via_io_mutable () : coerce_via_io_mutable = {
  xpr = None;
  arg = None;
  resulttype = 0l;
  resultcollid = 0l;
  coerceformat = Pg_query_types.default_coercion_form ();
  location = 0l;
}

type array_coerce_expr_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable arg : Pg_query_types.node option;
  mutable elemexpr : Pg_query_types.node option;
  mutable resulttype : int32;
  mutable resulttypmod : int32;
  mutable resultcollid : int32;
  mutable coerceformat : Pg_query_types.coercion_form;
  mutable location : int32;
}

let default_array_coerce_expr_mutable () : array_coerce_expr_mutable = {
  xpr = None;
  arg = None;
  elemexpr = None;
  resulttype = 0l;
  resulttypmod = 0l;
  resultcollid = 0l;
  coerceformat = Pg_query_types.default_coercion_form ();
  location = 0l;
}

type convert_rowtype_expr_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable arg : Pg_query_types.node option;
  mutable resulttype : int32;
  mutable convertformat : Pg_query_types.coercion_form;
  mutable location : int32;
}

let default_convert_rowtype_expr_mutable () : convert_rowtype_expr_mutable = {
  xpr = None;
  arg = None;
  resulttype = 0l;
  convertformat = Pg_query_types.default_coercion_form ();
  location = 0l;
}

type collate_expr_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable arg : Pg_query_types.node option;
  mutable coll_oid : int32;
  mutable location : int32;
}

let default_collate_expr_mutable () : collate_expr_mutable = {
  xpr = None;
  arg = None;
  coll_oid = 0l;
  location = 0l;
}

type case_expr_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable casetype : int32;
  mutable casecollid : int32;
  mutable arg : Pg_query_types.node option;
  mutable args : Pg_query_types.node list;
  mutable defresult : Pg_query_types.node option;
  mutable location : int32;
}

let default_case_expr_mutable () : case_expr_mutable = {
  xpr = None;
  casetype = 0l;
  casecollid = 0l;
  arg = None;
  args = [];
  defresult = None;
  location = 0l;
}

type case_when_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable expr : Pg_query_types.node option;
  mutable result : Pg_query_types.node option;
  mutable location : int32;
}

let default_case_when_mutable () : case_when_mutable = {
  xpr = None;
  expr = None;
  result = None;
  location = 0l;
}

type case_test_expr_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable type_id : int32;
  mutable type_mod : int32;
  mutable collation : int32;
}

let default_case_test_expr_mutable () : case_test_expr_mutable = {
  xpr = None;
  type_id = 0l;
  type_mod = 0l;
  collation = 0l;
}

type array_expr_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable array_typeid : int32;
  mutable array_collid : int32;
  mutable element_typeid : int32;
  mutable elements : Pg_query_types.node list;
  mutable multidims : bool;
  mutable location : int32;
}

let default_array_expr_mutable () : array_expr_mutable = {
  xpr = None;
  array_typeid = 0l;
  array_collid = 0l;
  element_typeid = 0l;
  elements = [];
  multidims = false;
  location = 0l;
}

type row_expr_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable args : Pg_query_types.node list;
  mutable row_typeid : int32;
  mutable row_format : Pg_query_types.coercion_form;
  mutable colnames : Pg_query_types.node list;
  mutable location : int32;
}

let default_row_expr_mutable () : row_expr_mutable = {
  xpr = None;
  args = [];
  row_typeid = 0l;
  row_format = Pg_query_types.default_coercion_form ();
  colnames = [];
  location = 0l;
}

type row_compare_expr_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable rctype : Pg_query_types.row_compare_type;
  mutable opnos : Pg_query_types.node list;
  mutable opfamilies : Pg_query_types.node list;
  mutable inputcollids : Pg_query_types.node list;
  mutable largs : Pg_query_types.node list;
  mutable rargs : Pg_query_types.node list;
}

let default_row_compare_expr_mutable () : row_compare_expr_mutable = {
  xpr = None;
  rctype = Pg_query_types.default_row_compare_type ();
  opnos = [];
  opfamilies = [];
  inputcollids = [];
  largs = [];
  rargs = [];
}

type coalesce_expr_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable coalescetype : int32;
  mutable coalescecollid : int32;
  mutable args : Pg_query_types.node list;
  mutable location : int32;
}

let default_coalesce_expr_mutable () : coalesce_expr_mutable = {
  xpr = None;
  coalescetype = 0l;
  coalescecollid = 0l;
  args = [];
  location = 0l;
}

type min_max_expr_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable minmaxtype : int32;
  mutable minmaxcollid : int32;
  mutable inputcollid : int32;
  mutable op : Pg_query_types.min_max_op;
  mutable args : Pg_query_types.node list;
  mutable location : int32;
}

let default_min_max_expr_mutable () : min_max_expr_mutable = {
  xpr = None;
  minmaxtype = 0l;
  minmaxcollid = 0l;
  inputcollid = 0l;
  op = Pg_query_types.default_min_max_op ();
  args = [];
  location = 0l;
}

type sqlvalue_function_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable op : Pg_query_types.sqlvalue_function_op;
  mutable type_ : int32;
  mutable typmod : int32;
  mutable location : int32;
}

let default_sqlvalue_function_mutable () : sqlvalue_function_mutable = {
  xpr = None;
  op = Pg_query_types.default_sqlvalue_function_op ();
  type_ = 0l;
  typmod = 0l;
  location = 0l;
}

type xml_expr_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable op : Pg_query_types.xml_expr_op;
  mutable name : string;
  mutable named_args : Pg_query_types.node list;
  mutable arg_names : Pg_query_types.node list;
  mutable args : Pg_query_types.node list;
  mutable xmloption : Pg_query_types.xml_option_type;
  mutable type_ : int32;
  mutable typmod : int32;
  mutable location : int32;
}

let default_xml_expr_mutable () : xml_expr_mutable = {
  xpr = None;
  op = Pg_query_types.default_xml_expr_op ();
  name = "";
  named_args = [];
  arg_names = [];
  args = [];
  xmloption = Pg_query_types.default_xml_option_type ();
  type_ = 0l;
  typmod = 0l;
  location = 0l;
}

type null_test_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable arg : Pg_query_types.node option;
  mutable nulltesttype : Pg_query_types.null_test_type;
  mutable argisrow : bool;
  mutable location : int32;
}

let default_null_test_mutable () : null_test_mutable = {
  xpr = None;
  arg = None;
  nulltesttype = Pg_query_types.default_null_test_type ();
  argisrow = false;
  location = 0l;
}

type boolean_test_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable arg : Pg_query_types.node option;
  mutable booltesttype : Pg_query_types.bool_test_type;
  mutable location : int32;
}

let default_boolean_test_mutable () : boolean_test_mutable = {
  xpr = None;
  arg = None;
  booltesttype = Pg_query_types.default_bool_test_type ();
  location = 0l;
}

type coerce_to_domain_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable arg : Pg_query_types.node option;
  mutable resulttype : int32;
  mutable resulttypmod : int32;
  mutable resultcollid : int32;
  mutable coercionformat : Pg_query_types.coercion_form;
  mutable location : int32;
}

let default_coerce_to_domain_mutable () : coerce_to_domain_mutable = {
  xpr = None;
  arg = None;
  resulttype = 0l;
  resulttypmod = 0l;
  resultcollid = 0l;
  coercionformat = Pg_query_types.default_coercion_form ();
  location = 0l;
}

type coerce_to_domain_value_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable type_id : int32;
  mutable type_mod : int32;
  mutable collation : int32;
  mutable location : int32;
}

let default_coerce_to_domain_value_mutable () : coerce_to_domain_value_mutable = {
  xpr = None;
  type_id = 0l;
  type_mod = 0l;
  collation = 0l;
  location = 0l;
}

type set_to_default_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable type_id : int32;
  mutable type_mod : int32;
  mutable collation : int32;
  mutable location : int32;
}

let default_set_to_default_mutable () : set_to_default_mutable = {
  xpr = None;
  type_id = 0l;
  type_mod = 0l;
  collation = 0l;
  location = 0l;
}

type current_of_expr_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable cvarno : int32;
  mutable cursor_name : string;
  mutable cursor_param : int32;
}

let default_current_of_expr_mutable () : current_of_expr_mutable = {
  xpr = None;
  cvarno = 0l;
  cursor_name = "";
  cursor_param = 0l;
}

type next_value_expr_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable seqid : int32;
  mutable type_id : int32;
}

let default_next_value_expr_mutable () : next_value_expr_mutable = {
  xpr = None;
  seqid = 0l;
  type_id = 0l;
}

type inference_elem_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable expr : Pg_query_types.node option;
  mutable infercollid : int32;
  mutable inferopclass : int32;
}

let default_inference_elem_mutable () : inference_elem_mutable = {
  xpr = None;
  expr = None;
  infercollid = 0l;
  inferopclass = 0l;
}

type target_entry_mutable = {
  mutable xpr : Pg_query_types.node option;
  mutable expr : Pg_query_types.node option;
  mutable resno : int32;
  mutable resname : string;
  mutable ressortgroupref : int32;
  mutable resorigtbl : int32;
  mutable resorigcol : int32;
  mutable resjunk : bool;
}

let default_target_entry_mutable () : target_entry_mutable = {
  xpr = None;
  expr = None;
  resno = 0l;
  resname = "";
  ressortgroupref = 0l;
  resorigtbl = 0l;
  resorigcol = 0l;
  resjunk = false;
}

type join_expr_mutable = {
  mutable jointype : Pg_query_types.join_type;
  mutable is_natural : bool;
  mutable larg : Pg_query_types.node option;
  mutable rarg : Pg_query_types.node option;
  mutable using_clause : Pg_query_types.node list;
  mutable join_using_alias : Pg_query_types.alias option;
  mutable quals : Pg_query_types.node option;
  mutable alias : Pg_query_types.alias option;
  mutable rtindex : int32;
}

let default_join_expr_mutable () : join_expr_mutable = {
  jointype = Pg_query_types.default_join_type ();
  is_natural = false;
  larg = None;
  rarg = None;
  using_clause = [];
  join_using_alias = None;
  quals = None;
  alias = None;
  rtindex = 0l;
}

type from_expr_mutable = {
  mutable fromlist : Pg_query_types.node list;
  mutable quals : Pg_query_types.node option;
}

let default_from_expr_mutable () : from_expr_mutable = {
  fromlist = [];
  quals = None;
}

type on_conflict_expr_mutable = {
  mutable action : Pg_query_types.on_conflict_action;
  mutable arbiter_elems : Pg_query_types.node list;
  mutable arbiter_where : Pg_query_types.node option;
  mutable constraint_ : int32;
  mutable on_conflict_set : Pg_query_types.node list;
  mutable on_conflict_where : Pg_query_types.node option;
  mutable excl_rel_index : int32;
  mutable excl_rel_tlist : Pg_query_types.node list;
}

let default_on_conflict_expr_mutable () : on_conflict_expr_mutable = {
  action = Pg_query_types.default_on_conflict_action ();
  arbiter_elems = [];
  arbiter_where = None;
  constraint_ = 0l;
  on_conflict_set = [];
  on_conflict_where = None;
  excl_rel_index = 0l;
  excl_rel_tlist = [];
}

type into_clause_mutable = {
  mutable rel : Pg_query_types.range_var option;
  mutable col_names : Pg_query_types.node list;
  mutable access_method : string;
  mutable options : Pg_query_types.node list;
  mutable on_commit : Pg_query_types.on_commit_action;
  mutable table_space_name : string;
  mutable view_query : Pg_query_types.node option;
  mutable skip_data : bool;
}

let default_into_clause_mutable () : into_clause_mutable = {
  rel = None;
  col_names = [];
  access_method = "";
  options = [];
  on_commit = Pg_query_types.default_on_commit_action ();
  table_space_name = "";
  view_query = None;
  skip_data = false;
}

type merge_action_mutable = {
  mutable matched : bool;
  mutable command_type : Pg_query_types.cmd_type;
  mutable override : Pg_query_types.overriding_kind;
  mutable qual : Pg_query_types.node option;
  mutable target_list : Pg_query_types.node list;
  mutable update_colnos : Pg_query_types.node list;
}

let default_merge_action_mutable () : merge_action_mutable = {
  matched = false;
  command_type = Pg_query_types.default_cmd_type ();
  override = Pg_query_types.default_overriding_kind ();
  qual = None;
  target_list = [];
  update_colnos = [];
}

type query_mutable = {
  mutable command_type : Pg_query_types.cmd_type;
  mutable query_source : Pg_query_types.query_source;
  mutable can_set_tag : bool;
  mutable utility_stmt : Pg_query_types.node option;
  mutable result_relation : int32;
  mutable has_aggs : bool;
  mutable has_window_funcs : bool;
  mutable has_target_srfs : bool;
  mutable has_sub_links : bool;
  mutable has_distinct_on : bool;
  mutable has_recursive : bool;
  mutable has_modifying_cte : bool;
  mutable has_for_update : bool;
  mutable has_row_security : bool;
  mutable is_return : bool;
  mutable cte_list : Pg_query_types.node list;
  mutable rtable : Pg_query_types.node list;
  mutable jointree : Pg_query_types.from_expr option;
  mutable merge_action_list : Pg_query_types.node list;
  mutable merge_use_outer_join : bool;
  mutable target_list : Pg_query_types.node list;
  mutable override : Pg_query_types.overriding_kind;
  mutable on_conflict : Pg_query_types.on_conflict_expr option;
  mutable returning_list : Pg_query_types.node list;
  mutable group_clause : Pg_query_types.node list;
  mutable group_distinct : bool;
  mutable grouping_sets : Pg_query_types.node list;
  mutable having_qual : Pg_query_types.node option;
  mutable window_clause : Pg_query_types.node list;
  mutable distinct_clause : Pg_query_types.node list;
  mutable sort_clause : Pg_query_types.node list;
  mutable limit_offset : Pg_query_types.node option;
  mutable limit_count : Pg_query_types.node option;
  mutable limit_option : Pg_query_types.limit_option;
  mutable row_marks : Pg_query_types.node list;
  mutable set_operations : Pg_query_types.node option;
  mutable constraint_deps : Pg_query_types.node list;
  mutable with_check_options : Pg_query_types.node list;
  mutable stmt_location : int32;
  mutable stmt_len : int32;
}

let default_query_mutable () : query_mutable = {
  command_type = Pg_query_types.default_cmd_type ();
  query_source = Pg_query_types.default_query_source ();
  can_set_tag = false;
  utility_stmt = None;
  result_relation = 0l;
  has_aggs = false;
  has_window_funcs = false;
  has_target_srfs = false;
  has_sub_links = false;
  has_distinct_on = false;
  has_recursive = false;
  has_modifying_cte = false;
  has_for_update = false;
  has_row_security = false;
  is_return = false;
  cte_list = [];
  rtable = [];
  jointree = None;
  merge_action_list = [];
  merge_use_outer_join = false;
  target_list = [];
  override = Pg_query_types.default_overriding_kind ();
  on_conflict = None;
  returning_list = [];
  group_clause = [];
  group_distinct = false;
  grouping_sets = [];
  having_qual = None;
  window_clause = [];
  distinct_clause = [];
  sort_clause = [];
  limit_offset = None;
  limit_count = None;
  limit_option = Pg_query_types.default_limit_option ();
  row_marks = [];
  set_operations = None;
  constraint_deps = [];
  with_check_options = [];
  stmt_location = 0l;
  stmt_len = 0l;
}

type insert_stmt_mutable = {
  mutable relation : Pg_query_types.range_var option;
  mutable cols : Pg_query_types.node list;
  mutable select_stmt : Pg_query_types.node option;
  mutable on_conflict_clause : Pg_query_types.on_conflict_clause option;
  mutable returning_list : Pg_query_types.node list;
  mutable with_clause : Pg_query_types.with_clause option;
  mutable override : Pg_query_types.overriding_kind;
}

let default_insert_stmt_mutable () : insert_stmt_mutable = {
  relation = None;
  cols = [];
  select_stmt = None;
  on_conflict_clause = None;
  returning_list = [];
  with_clause = None;
  override = Pg_query_types.default_overriding_kind ();
}

type on_conflict_clause_mutable = {
  mutable action : Pg_query_types.on_conflict_action;
  mutable infer : Pg_query_types.infer_clause option;
  mutable target_list : Pg_query_types.node list;
  mutable where_clause : Pg_query_types.node option;
  mutable location : int32;
}

let default_on_conflict_clause_mutable () : on_conflict_clause_mutable = {
  action = Pg_query_types.default_on_conflict_action ();
  infer = None;
  target_list = [];
  where_clause = None;
  location = 0l;
}

type infer_clause_mutable = {
  mutable index_elems : Pg_query_types.node list;
  mutable where_clause : Pg_query_types.node option;
  mutable conname : string;
  mutable location : int32;
}

let default_infer_clause_mutable () : infer_clause_mutable = {
  index_elems = [];
  where_clause = None;
  conname = "";
  location = 0l;
}

type with_clause_mutable = {
  mutable ctes : Pg_query_types.node list;
  mutable recursive : bool;
  mutable location : int32;
}

let default_with_clause_mutable () : with_clause_mutable = {
  ctes = [];
  recursive = false;
  location = 0l;
}

type delete_stmt_mutable = {
  mutable relation : Pg_query_types.range_var option;
  mutable using_clause : Pg_query_types.node list;
  mutable where_clause : Pg_query_types.node option;
  mutable returning_list : Pg_query_types.node list;
  mutable with_clause : Pg_query_types.with_clause option;
}

let default_delete_stmt_mutable () : delete_stmt_mutable = {
  relation = None;
  using_clause = [];
  where_clause = None;
  returning_list = [];
  with_clause = None;
}

type update_stmt_mutable = {
  mutable relation : Pg_query_types.range_var option;
  mutable target_list : Pg_query_types.node list;
  mutable where_clause : Pg_query_types.node option;
  mutable from_clause : Pg_query_types.node list;
  mutable returning_list : Pg_query_types.node list;
  mutable with_clause : Pg_query_types.with_clause option;
}

let default_update_stmt_mutable () : update_stmt_mutable = {
  relation = None;
  target_list = [];
  where_clause = None;
  from_clause = [];
  returning_list = [];
  with_clause = None;
}

type merge_stmt_mutable = {
  mutable relation : Pg_query_types.range_var option;
  mutable source_relation : Pg_query_types.node option;
  mutable join_condition : Pg_query_types.node option;
  mutable merge_when_clauses : Pg_query_types.node list;
  mutable with_clause : Pg_query_types.with_clause option;
}

let default_merge_stmt_mutable () : merge_stmt_mutable = {
  relation = None;
  source_relation = None;
  join_condition = None;
  merge_when_clauses = [];
  with_clause = None;
}

type select_stmt_mutable = {
  mutable distinct_clause : Pg_query_types.node list;
  mutable into_clause : Pg_query_types.into_clause option;
  mutable target_list : Pg_query_types.node list;
  mutable from_clause : Pg_query_types.node list;
  mutable where_clause : Pg_query_types.node option;
  mutable group_clause : Pg_query_types.node list;
  mutable group_distinct : bool;
  mutable having_clause : Pg_query_types.node option;
  mutable window_clause : Pg_query_types.node list;
  mutable values_lists : Pg_query_types.node list;
  mutable sort_clause : Pg_query_types.node list;
  mutable limit_offset : Pg_query_types.node option;
  mutable limit_count : Pg_query_types.node option;
  mutable limit_option : Pg_query_types.limit_option;
  mutable locking_clause : Pg_query_types.node list;
  mutable with_clause : Pg_query_types.with_clause option;
  mutable op : Pg_query_types.set_operation;
  mutable all : bool;
  mutable larg : Pg_query_types.select_stmt option;
  mutable rarg : Pg_query_types.select_stmt option;
}

let default_select_stmt_mutable () : select_stmt_mutable = {
  distinct_clause = [];
  into_clause = None;
  target_list = [];
  from_clause = [];
  where_clause = None;
  group_clause = [];
  group_distinct = false;
  having_clause = None;
  window_clause = [];
  values_lists = [];
  sort_clause = [];
  limit_offset = None;
  limit_count = None;
  limit_option = Pg_query_types.default_limit_option ();
  locking_clause = [];
  with_clause = None;
  op = Pg_query_types.default_set_operation ();
  all = false;
  larg = None;
  rarg = None;
}

type return_stmt_mutable = {
  mutable returnval : Pg_query_types.node option;
}

let default_return_stmt_mutable () : return_stmt_mutable = {
  returnval = None;
}

type plassign_stmt_mutable = {
  mutable name : string;
  mutable indirection : Pg_query_types.node list;
  mutable nnames : int32;
  mutable val_ : Pg_query_types.select_stmt option;
  mutable location : int32;
}

let default_plassign_stmt_mutable () : plassign_stmt_mutable = {
  name = "";
  indirection = [];
  nnames = 0l;
  val_ = None;
  location = 0l;
}

type alter_table_stmt_mutable = {
  mutable relation : Pg_query_types.range_var option;
  mutable cmds : Pg_query_types.node list;
  mutable objtype : Pg_query_types.object_type;
  mutable missing_ok : bool;
}

let default_alter_table_stmt_mutable () : alter_table_stmt_mutable = {
  relation = None;
  cmds = [];
  objtype = Pg_query_types.default_object_type ();
  missing_ok = false;
}

type alter_table_cmd_mutable = {
  mutable subtype : Pg_query_types.alter_table_type;
  mutable name : string;
  mutable num : int32;
  mutable newowner : Pg_query_types.role_spec option;
  mutable def : Pg_query_types.node option;
  mutable behavior : Pg_query_types.drop_behavior;
  mutable missing_ok : bool;
  mutable recurse : bool;
}

let default_alter_table_cmd_mutable () : alter_table_cmd_mutable = {
  subtype = Pg_query_types.default_alter_table_type ();
  name = "";
  num = 0l;
  newowner = None;
  def = None;
  behavior = Pg_query_types.default_drop_behavior ();
  missing_ok = false;
  recurse = false;
}

type alter_domain_stmt_mutable = {
  mutable subtype : string;
  mutable type_name : Pg_query_types.node list;
  mutable name : string;
  mutable def : Pg_query_types.node option;
  mutable behavior : Pg_query_types.drop_behavior;
  mutable missing_ok : bool;
}

let default_alter_domain_stmt_mutable () : alter_domain_stmt_mutable = {
  subtype = "";
  type_name = [];
  name = "";
  def = None;
  behavior = Pg_query_types.default_drop_behavior ();
  missing_ok = false;
}

type set_operation_stmt_mutable = {
  mutable op : Pg_query_types.set_operation;
  mutable all : bool;
  mutable larg : Pg_query_types.node option;
  mutable rarg : Pg_query_types.node option;
  mutable col_types : Pg_query_types.node list;
  mutable col_typmods : Pg_query_types.node list;
  mutable col_collations : Pg_query_types.node list;
  mutable group_clauses : Pg_query_types.node list;
}

let default_set_operation_stmt_mutable () : set_operation_stmt_mutable = {
  op = Pg_query_types.default_set_operation ();
  all = false;
  larg = None;
  rarg = None;
  col_types = [];
  col_typmods = [];
  col_collations = [];
  group_clauses = [];
}

type grant_stmt_mutable = {
  mutable is_grant : bool;
  mutable targtype : Pg_query_types.grant_target_type;
  mutable objtype : Pg_query_types.object_type;
  mutable objects : Pg_query_types.node list;
  mutable privileges : Pg_query_types.node list;
  mutable grantees : Pg_query_types.node list;
  mutable grant_option : bool;
  mutable grantor : Pg_query_types.role_spec option;
  mutable behavior : Pg_query_types.drop_behavior;
}

let default_grant_stmt_mutable () : grant_stmt_mutable = {
  is_grant = false;
  targtype = Pg_query_types.default_grant_target_type ();
  objtype = Pg_query_types.default_object_type ();
  objects = [];
  privileges = [];
  grantees = [];
  grant_option = false;
  grantor = None;
  behavior = Pg_query_types.default_drop_behavior ();
}

type grant_role_stmt_mutable = {
  mutable granted_roles : Pg_query_types.node list;
  mutable grantee_roles : Pg_query_types.node list;
  mutable is_grant : bool;
  mutable admin_opt : bool;
  mutable grantor : Pg_query_types.role_spec option;
  mutable behavior : Pg_query_types.drop_behavior;
}

let default_grant_role_stmt_mutable () : grant_role_stmt_mutable = {
  granted_roles = [];
  grantee_roles = [];
  is_grant = false;
  admin_opt = false;
  grantor = None;
  behavior = Pg_query_types.default_drop_behavior ();
}

type alter_default_privileges_stmt_mutable = {
  mutable options : Pg_query_types.node list;
  mutable action : Pg_query_types.grant_stmt option;
}

let default_alter_default_privileges_stmt_mutable () : alter_default_privileges_stmt_mutable = {
  options = [];
  action = None;
}

type cluster_stmt_mutable = {
  mutable relation : Pg_query_types.range_var option;
  mutable indexname : string;
  mutable params : Pg_query_types.node list;
}

let default_cluster_stmt_mutable () : cluster_stmt_mutable = {
  relation = None;
  indexname = "";
  params = [];
}

type copy_stmt_mutable = {
  mutable relation : Pg_query_types.range_var option;
  mutable query : Pg_query_types.node option;
  mutable attlist : Pg_query_types.node list;
  mutable is_from : bool;
  mutable is_program : bool;
  mutable filename : string;
  mutable options : Pg_query_types.node list;
  mutable where_clause : Pg_query_types.node option;
}

let default_copy_stmt_mutable () : copy_stmt_mutable = {
  relation = None;
  query = None;
  attlist = [];
  is_from = false;
  is_program = false;
  filename = "";
  options = [];
  where_clause = None;
}

type create_stmt_mutable = {
  mutable relation : Pg_query_types.range_var option;
  mutable table_elts : Pg_query_types.node list;
  mutable inh_relations : Pg_query_types.node list;
  mutable partbound : Pg_query_types.partition_bound_spec option;
  mutable partspec : Pg_query_types.partition_spec option;
  mutable of_typename : Pg_query_types.type_name option;
  mutable constraints : Pg_query_types.node list;
  mutable options : Pg_query_types.node list;
  mutable oncommit : Pg_query_types.on_commit_action;
  mutable tablespacename : string;
  mutable access_method : string;
  mutable if_not_exists : bool;
}

let default_create_stmt_mutable () : create_stmt_mutable = {
  relation = None;
  table_elts = [];
  inh_relations = [];
  partbound = None;
  partspec = None;
  of_typename = None;
  constraints = [];
  options = [];
  oncommit = Pg_query_types.default_on_commit_action ();
  tablespacename = "";
  access_method = "";
  if_not_exists = false;
}

type partition_bound_spec_mutable = {
  mutable strategy : string;
  mutable is_default : bool;
  mutable modulus : int32;
  mutable remainder : int32;
  mutable listdatums : Pg_query_types.node list;
  mutable lowerdatums : Pg_query_types.node list;
  mutable upperdatums : Pg_query_types.node list;
  mutable location : int32;
}

let default_partition_bound_spec_mutable () : partition_bound_spec_mutable = {
  strategy = "";
  is_default = false;
  modulus = 0l;
  remainder = 0l;
  listdatums = [];
  lowerdatums = [];
  upperdatums = [];
  location = 0l;
}

type partition_spec_mutable = {
  mutable strategy : string;
  mutable part_params : Pg_query_types.node list;
  mutable location : int32;
}

let default_partition_spec_mutable () : partition_spec_mutable = {
  strategy = "";
  part_params = [];
  location = 0l;
}

type type_name_mutable = {
  mutable names : Pg_query_types.node list;
  mutable type_oid : int32;
  mutable setof : bool;
  mutable pct_type : bool;
  mutable typmods : Pg_query_types.node list;
  mutable typemod : int32;
  mutable array_bounds : Pg_query_types.node list;
  mutable location : int32;
}

let default_type_name_mutable () : type_name_mutable = {
  names = [];
  type_oid = 0l;
  setof = false;
  pct_type = false;
  typmods = [];
  typemod = 0l;
  array_bounds = [];
  location = 0l;
}

type define_stmt_mutable = {
  mutable kind : Pg_query_types.object_type;
  mutable oldstyle : bool;
  mutable defnames : Pg_query_types.node list;
  mutable args : Pg_query_types.node list;
  mutable definition : Pg_query_types.node list;
  mutable if_not_exists : bool;
  mutable replace : bool;
}

let default_define_stmt_mutable () : define_stmt_mutable = {
  kind = Pg_query_types.default_object_type ();
  oldstyle = false;
  defnames = [];
  args = [];
  definition = [];
  if_not_exists = false;
  replace = false;
}

type drop_stmt_mutable = {
  mutable objects : Pg_query_types.node list;
  mutable remove_type : Pg_query_types.object_type;
  mutable behavior : Pg_query_types.drop_behavior;
  mutable missing_ok : bool;
  mutable concurrent : bool;
}

let default_drop_stmt_mutable () : drop_stmt_mutable = {
  objects = [];
  remove_type = Pg_query_types.default_object_type ();
  behavior = Pg_query_types.default_drop_behavior ();
  missing_ok = false;
  concurrent = false;
}

type truncate_stmt_mutable = {
  mutable relations : Pg_query_types.node list;
  mutable restart_seqs : bool;
  mutable behavior : Pg_query_types.drop_behavior;
}

let default_truncate_stmt_mutable () : truncate_stmt_mutable = {
  relations = [];
  restart_seqs = false;
  behavior = Pg_query_types.default_drop_behavior ();
}

type comment_stmt_mutable = {
  mutable objtype : Pg_query_types.object_type;
  mutable object_ : Pg_query_types.node option;
  mutable comment : string;
}

let default_comment_stmt_mutable () : comment_stmt_mutable = {
  objtype = Pg_query_types.default_object_type ();
  object_ = None;
  comment = "";
}

type index_stmt_mutable = {
  mutable idxname : string;
  mutable relation : Pg_query_types.range_var option;
  mutable access_method : string;
  mutable table_space : string;
  mutable index_params : Pg_query_types.node list;
  mutable index_including_params : Pg_query_types.node list;
  mutable options : Pg_query_types.node list;
  mutable where_clause : Pg_query_types.node option;
  mutable exclude_op_names : Pg_query_types.node list;
  mutable idxcomment : string;
  mutable index_oid : int32;
  mutable old_node : int32;
  mutable old_create_subid : int32;
  mutable old_first_relfilenode_subid : int32;
  mutable unique : bool;
  mutable nulls_not_distinct : bool;
  mutable primary : bool;
  mutable isconstraint : bool;
  mutable deferrable : bool;
  mutable initdeferred : bool;
  mutable transformed : bool;
  mutable concurrent : bool;
  mutable if_not_exists : bool;
  mutable reset_default_tblspc : bool;
}

let default_index_stmt_mutable () : index_stmt_mutable = {
  idxname = "";
  relation = None;
  access_method = "";
  table_space = "";
  index_params = [];
  index_including_params = [];
  options = [];
  where_clause = None;
  exclude_op_names = [];
  idxcomment = "";
  index_oid = 0l;
  old_node = 0l;
  old_create_subid = 0l;
  old_first_relfilenode_subid = 0l;
  unique = false;
  nulls_not_distinct = false;
  primary = false;
  isconstraint = false;
  deferrable = false;
  initdeferred = false;
  transformed = false;
  concurrent = false;
  if_not_exists = false;
  reset_default_tblspc = false;
}

type create_function_stmt_mutable = {
  mutable is_procedure : bool;
  mutable replace : bool;
  mutable funcname : Pg_query_types.node list;
  mutable parameters : Pg_query_types.node list;
  mutable return_type : Pg_query_types.type_name option;
  mutable options : Pg_query_types.node list;
  mutable sql_body : Pg_query_types.node option;
}

let default_create_function_stmt_mutable () : create_function_stmt_mutable = {
  is_procedure = false;
  replace = false;
  funcname = [];
  parameters = [];
  return_type = None;
  options = [];
  sql_body = None;
}

type alter_function_stmt_mutable = {
  mutable objtype : Pg_query_types.object_type;
  mutable func : Pg_query_types.object_with_args option;
  mutable actions : Pg_query_types.node list;
}

let default_alter_function_stmt_mutable () : alter_function_stmt_mutable = {
  objtype = Pg_query_types.default_object_type ();
  func = None;
  actions = [];
}

type object_with_args_mutable = {
  mutable objname : Pg_query_types.node list;
  mutable objargs : Pg_query_types.node list;
  mutable objfuncargs : Pg_query_types.node list;
  mutable args_unspecified : bool;
}

let default_object_with_args_mutable () : object_with_args_mutable = {
  objname = [];
  objargs = [];
  objfuncargs = [];
  args_unspecified = false;
}

type do_stmt_mutable = {
  mutable args : Pg_query_types.node list;
}

let default_do_stmt_mutable () : do_stmt_mutable = {
  args = [];
}

type rename_stmt_mutable = {
  mutable rename_type : Pg_query_types.object_type;
  mutable relation_type : Pg_query_types.object_type;
  mutable relation : Pg_query_types.range_var option;
  mutable object_ : Pg_query_types.node option;
  mutable subname : string;
  mutable newname : string;
  mutable behavior : Pg_query_types.drop_behavior;
  mutable missing_ok : bool;
}

let default_rename_stmt_mutable () : rename_stmt_mutable = {
  rename_type = Pg_query_types.default_object_type ();
  relation_type = Pg_query_types.default_object_type ();
  relation = None;
  object_ = None;
  subname = "";
  newname = "";
  behavior = Pg_query_types.default_drop_behavior ();
  missing_ok = false;
}

type rule_stmt_mutable = {
  mutable relation : Pg_query_types.range_var option;
  mutable rulename : string;
  mutable where_clause : Pg_query_types.node option;
  mutable event : Pg_query_types.cmd_type;
  mutable instead : bool;
  mutable actions : Pg_query_types.node list;
  mutable replace : bool;
}

let default_rule_stmt_mutable () : rule_stmt_mutable = {
  relation = None;
  rulename = "";
  where_clause = None;
  event = Pg_query_types.default_cmd_type ();
  instead = false;
  actions = [];
  replace = false;
}

type transaction_stmt_mutable = {
  mutable kind : Pg_query_types.transaction_stmt_kind;
  mutable options : Pg_query_types.node list;
  mutable savepoint_name : string;
  mutable gid : string;
  mutable chain : bool;
}

let default_transaction_stmt_mutable () : transaction_stmt_mutable = {
  kind = Pg_query_types.default_transaction_stmt_kind ();
  options = [];
  savepoint_name = "";
  gid = "";
  chain = false;
}

type view_stmt_mutable = {
  mutable view : Pg_query_types.range_var option;
  mutable aliases : Pg_query_types.node list;
  mutable query : Pg_query_types.node option;
  mutable replace : bool;
  mutable options : Pg_query_types.node list;
  mutable with_check_option : Pg_query_types.view_check_option;
}

let default_view_stmt_mutable () : view_stmt_mutable = {
  view = None;
  aliases = [];
  query = None;
  replace = false;
  options = [];
  with_check_option = Pg_query_types.default_view_check_option ();
}

type create_domain_stmt_mutable = {
  mutable domainname : Pg_query_types.node list;
  mutable type_name : Pg_query_types.type_name option;
  mutable coll_clause : Pg_query_types.collate_clause option;
  mutable constraints : Pg_query_types.node list;
}

let default_create_domain_stmt_mutable () : create_domain_stmt_mutable = {
  domainname = [];
  type_name = None;
  coll_clause = None;
  constraints = [];
}

type collate_clause_mutable = {
  mutable arg : Pg_query_types.node option;
  mutable collname : Pg_query_types.node list;
  mutable location : int32;
}

let default_collate_clause_mutable () : collate_clause_mutable = {
  arg = None;
  collname = [];
  location = 0l;
}

type createdb_stmt_mutable = {
  mutable dbname : string;
  mutable options : Pg_query_types.node list;
}

let default_createdb_stmt_mutable () : createdb_stmt_mutable = {
  dbname = "";
  options = [];
}

type dropdb_stmt_mutable = {
  mutable dbname : string;
  mutable missing_ok : bool;
  mutable options : Pg_query_types.node list;
}

let default_dropdb_stmt_mutable () : dropdb_stmt_mutable = {
  dbname = "";
  missing_ok = false;
  options = [];
}

type vacuum_stmt_mutable = {
  mutable options : Pg_query_types.node list;
  mutable rels : Pg_query_types.node list;
  mutable is_vacuumcmd : bool;
}

let default_vacuum_stmt_mutable () : vacuum_stmt_mutable = {
  options = [];
  rels = [];
  is_vacuumcmd = false;
}

type explain_stmt_mutable = {
  mutable query : Pg_query_types.node option;
  mutable options : Pg_query_types.node list;
}

let default_explain_stmt_mutable () : explain_stmt_mutable = {
  query = None;
  options = [];
}

type create_table_as_stmt_mutable = {
  mutable query : Pg_query_types.node option;
  mutable into : Pg_query_types.into_clause option;
  mutable objtype : Pg_query_types.object_type;
  mutable is_select_into : bool;
  mutable if_not_exists : bool;
}

let default_create_table_as_stmt_mutable () : create_table_as_stmt_mutable = {
  query = None;
  into = None;
  objtype = Pg_query_types.default_object_type ();
  is_select_into = false;
  if_not_exists = false;
}

type create_seq_stmt_mutable = {
  mutable sequence : Pg_query_types.range_var option;
  mutable options : Pg_query_types.node list;
  mutable owner_id : int32;
  mutable for_identity : bool;
  mutable if_not_exists : bool;
}

let default_create_seq_stmt_mutable () : create_seq_stmt_mutable = {
  sequence = None;
  options = [];
  owner_id = 0l;
  for_identity = false;
  if_not_exists = false;
}

type alter_seq_stmt_mutable = {
  mutable sequence : Pg_query_types.range_var option;
  mutable options : Pg_query_types.node list;
  mutable for_identity : bool;
  mutable missing_ok : bool;
}

let default_alter_seq_stmt_mutable () : alter_seq_stmt_mutable = {
  sequence = None;
  options = [];
  for_identity = false;
  missing_ok = false;
}

type variable_set_stmt_mutable = {
  mutable kind : Pg_query_types.variable_set_kind;
  mutable name : string;
  mutable args : Pg_query_types.node list;
  mutable is_local : bool;
}

let default_variable_set_stmt_mutable () : variable_set_stmt_mutable = {
  kind = Pg_query_types.default_variable_set_kind ();
  name = "";
  args = [];
  is_local = false;
}

type create_trig_stmt_mutable = {
  mutable replace : bool;
  mutable isconstraint : bool;
  mutable trigname : string;
  mutable relation : Pg_query_types.range_var option;
  mutable funcname : Pg_query_types.node list;
  mutable args : Pg_query_types.node list;
  mutable row : bool;
  mutable timing : int32;
  mutable events : int32;
  mutable columns : Pg_query_types.node list;
  mutable when_clause : Pg_query_types.node option;
  mutable transition_rels : Pg_query_types.node list;
  mutable deferrable : bool;
  mutable initdeferred : bool;
  mutable constrrel : Pg_query_types.range_var option;
}

let default_create_trig_stmt_mutable () : create_trig_stmt_mutable = {
  replace = false;
  isconstraint = false;
  trigname = "";
  relation = None;
  funcname = [];
  args = [];
  row = false;
  timing = 0l;
  events = 0l;
  columns = [];
  when_clause = None;
  transition_rels = [];
  deferrable = false;
  initdeferred = false;
  constrrel = None;
}

type create_plang_stmt_mutable = {
  mutable replace : bool;
  mutable plname : string;
  mutable plhandler : Pg_query_types.node list;
  mutable plinline : Pg_query_types.node list;
  mutable plvalidator : Pg_query_types.node list;
  mutable pltrusted : bool;
}

let default_create_plang_stmt_mutable () : create_plang_stmt_mutable = {
  replace = false;
  plname = "";
  plhandler = [];
  plinline = [];
  plvalidator = [];
  pltrusted = false;
}

type create_role_stmt_mutable = {
  mutable stmt_type : Pg_query_types.role_stmt_type;
  mutable role : string;
  mutable options : Pg_query_types.node list;
}

let default_create_role_stmt_mutable () : create_role_stmt_mutable = {
  stmt_type = Pg_query_types.default_role_stmt_type ();
  role = "";
  options = [];
}

type alter_role_stmt_mutable = {
  mutable role : Pg_query_types.role_spec option;
  mutable options : Pg_query_types.node list;
  mutable action : int32;
}

let default_alter_role_stmt_mutable () : alter_role_stmt_mutable = {
  role = None;
  options = [];
  action = 0l;
}

type drop_role_stmt_mutable = {
  mutable roles : Pg_query_types.node list;
  mutable missing_ok : bool;
}

let default_drop_role_stmt_mutable () : drop_role_stmt_mutable = {
  roles = [];
  missing_ok = false;
}

type lock_stmt_mutable = {
  mutable relations : Pg_query_types.node list;
  mutable mode : int32;
  mutable nowait : bool;
}

let default_lock_stmt_mutable () : lock_stmt_mutable = {
  relations = [];
  mode = 0l;
  nowait = false;
}

type constraints_set_stmt_mutable = {
  mutable constraints : Pg_query_types.node list;
  mutable deferred : bool;
}

let default_constraints_set_stmt_mutable () : constraints_set_stmt_mutable = {
  constraints = [];
  deferred = false;
}

type reindex_stmt_mutable = {
  mutable kind : Pg_query_types.reindex_object_type;
  mutable relation : Pg_query_types.range_var option;
  mutable name : string;
  mutable params : Pg_query_types.node list;
}

let default_reindex_stmt_mutable () : reindex_stmt_mutable = {
  kind = Pg_query_types.default_reindex_object_type ();
  relation = None;
  name = "";
  params = [];
}

type create_schema_stmt_mutable = {
  mutable schemaname : string;
  mutable authrole : Pg_query_types.role_spec option;
  mutable schema_elts : Pg_query_types.node list;
  mutable if_not_exists : bool;
}

let default_create_schema_stmt_mutable () : create_schema_stmt_mutable = {
  schemaname = "";
  authrole = None;
  schema_elts = [];
  if_not_exists = false;
}

type alter_database_stmt_mutable = {
  mutable dbname : string;
  mutable options : Pg_query_types.node list;
}

let default_alter_database_stmt_mutable () : alter_database_stmt_mutable = {
  dbname = "";
  options = [];
}

type alter_database_set_stmt_mutable = {
  mutable dbname : string;
  mutable setstmt : Pg_query_types.variable_set_stmt option;
}

let default_alter_database_set_stmt_mutable () : alter_database_set_stmt_mutable = {
  dbname = "";
  setstmt = None;
}

type alter_role_set_stmt_mutable = {
  mutable role : Pg_query_types.role_spec option;
  mutable database : string;
  mutable setstmt : Pg_query_types.variable_set_stmt option;
}

let default_alter_role_set_stmt_mutable () : alter_role_set_stmt_mutable = {
  role = None;
  database = "";
  setstmt = None;
}

type create_conversion_stmt_mutable = {
  mutable conversion_name : Pg_query_types.node list;
  mutable for_encoding_name : string;
  mutable to_encoding_name : string;
  mutable func_name : Pg_query_types.node list;
  mutable def : bool;
}

let default_create_conversion_stmt_mutable () : create_conversion_stmt_mutable = {
  conversion_name = [];
  for_encoding_name = "";
  to_encoding_name = "";
  func_name = [];
  def = false;
}

type create_cast_stmt_mutable = {
  mutable sourcetype : Pg_query_types.type_name option;
  mutable targettype : Pg_query_types.type_name option;
  mutable func : Pg_query_types.object_with_args option;
  mutable context : Pg_query_types.coercion_context;
  mutable inout : bool;
}

let default_create_cast_stmt_mutable () : create_cast_stmt_mutable = {
  sourcetype = None;
  targettype = None;
  func = None;
  context = Pg_query_types.default_coercion_context ();
  inout = false;
}

type create_op_class_stmt_mutable = {
  mutable opclassname : Pg_query_types.node list;
  mutable opfamilyname : Pg_query_types.node list;
  mutable amname : string;
  mutable datatype : Pg_query_types.type_name option;
  mutable items : Pg_query_types.node list;
  mutable is_default : bool;
}

let default_create_op_class_stmt_mutable () : create_op_class_stmt_mutable = {
  opclassname = [];
  opfamilyname = [];
  amname = "";
  datatype = None;
  items = [];
  is_default = false;
}

type create_op_family_stmt_mutable = {
  mutable opfamilyname : Pg_query_types.node list;
  mutable amname : string;
}

let default_create_op_family_stmt_mutable () : create_op_family_stmt_mutable = {
  opfamilyname = [];
  amname = "";
}

type alter_op_family_stmt_mutable = {
  mutable opfamilyname : Pg_query_types.node list;
  mutable amname : string;
  mutable is_drop : bool;
  mutable items : Pg_query_types.node list;
}

let default_alter_op_family_stmt_mutable () : alter_op_family_stmt_mutable = {
  opfamilyname = [];
  amname = "";
  is_drop = false;
  items = [];
}

type prepare_stmt_mutable = {
  mutable name : string;
  mutable argtypes : Pg_query_types.node list;
  mutable query : Pg_query_types.node option;
}

let default_prepare_stmt_mutable () : prepare_stmt_mutable = {
  name = "";
  argtypes = [];
  query = None;
}

type execute_stmt_mutable = {
  mutable name : string;
  mutable params : Pg_query_types.node list;
}

let default_execute_stmt_mutable () : execute_stmt_mutable = {
  name = "";
  params = [];
}

type declare_cursor_stmt_mutable = {
  mutable portalname : string;
  mutable options : int32;
  mutable query : Pg_query_types.node option;
}

let default_declare_cursor_stmt_mutable () : declare_cursor_stmt_mutable = {
  portalname = "";
  options = 0l;
  query = None;
}

type create_table_space_stmt_mutable = {
  mutable tablespacename : string;
  mutable owner : Pg_query_types.role_spec option;
  mutable location : string;
  mutable options : Pg_query_types.node list;
}

let default_create_table_space_stmt_mutable () : create_table_space_stmt_mutable = {
  tablespacename = "";
  owner = None;
  location = "";
  options = [];
}

type alter_object_depends_stmt_mutable = {
  mutable object_type : Pg_query_types.object_type;
  mutable relation : Pg_query_types.range_var option;
  mutable object_ : Pg_query_types.node option;
  mutable extname : Pg_query_types.string option;
  mutable remove : bool;
}

let default_alter_object_depends_stmt_mutable () : alter_object_depends_stmt_mutable = {
  object_type = Pg_query_types.default_object_type ();
  relation = None;
  object_ = None;
  extname = None;
  remove = false;
}

type alter_object_schema_stmt_mutable = {
  mutable object_type : Pg_query_types.object_type;
  mutable relation : Pg_query_types.range_var option;
  mutable object_ : Pg_query_types.node option;
  mutable newschema : string;
  mutable missing_ok : bool;
}

let default_alter_object_schema_stmt_mutable () : alter_object_schema_stmt_mutable = {
  object_type = Pg_query_types.default_object_type ();
  relation = None;
  object_ = None;
  newschema = "";
  missing_ok = false;
}

type alter_owner_stmt_mutable = {
  mutable object_type : Pg_query_types.object_type;
  mutable relation : Pg_query_types.range_var option;
  mutable object_ : Pg_query_types.node option;
  mutable newowner : Pg_query_types.role_spec option;
}

let default_alter_owner_stmt_mutable () : alter_owner_stmt_mutable = {
  object_type = Pg_query_types.default_object_type ();
  relation = None;
  object_ = None;
  newowner = None;
}

type alter_operator_stmt_mutable = {
  mutable opername : Pg_query_types.object_with_args option;
  mutable options : Pg_query_types.node list;
}

let default_alter_operator_stmt_mutable () : alter_operator_stmt_mutable = {
  opername = None;
  options = [];
}

type alter_type_stmt_mutable = {
  mutable type_name : Pg_query_types.node list;
  mutable options : Pg_query_types.node list;
}

let default_alter_type_stmt_mutable () : alter_type_stmt_mutable = {
  type_name = [];
  options = [];
}

type drop_owned_stmt_mutable = {
  mutable roles : Pg_query_types.node list;
  mutable behavior : Pg_query_types.drop_behavior;
}

let default_drop_owned_stmt_mutable () : drop_owned_stmt_mutable = {
  roles = [];
  behavior = Pg_query_types.default_drop_behavior ();
}

type reassign_owned_stmt_mutable = {
  mutable roles : Pg_query_types.node list;
  mutable newrole : Pg_query_types.role_spec option;
}

let default_reassign_owned_stmt_mutable () : reassign_owned_stmt_mutable = {
  roles = [];
  newrole = None;
}

type composite_type_stmt_mutable = {
  mutable typevar : Pg_query_types.range_var option;
  mutable coldeflist : Pg_query_types.node list;
}

let default_composite_type_stmt_mutable () : composite_type_stmt_mutable = {
  typevar = None;
  coldeflist = [];
}

type create_enum_stmt_mutable = {
  mutable type_name : Pg_query_types.node list;
  mutable vals : Pg_query_types.node list;
}

let default_create_enum_stmt_mutable () : create_enum_stmt_mutable = {
  type_name = [];
  vals = [];
}

type create_range_stmt_mutable = {
  mutable type_name : Pg_query_types.node list;
  mutable params : Pg_query_types.node list;
}

let default_create_range_stmt_mutable () : create_range_stmt_mutable = {
  type_name = [];
  params = [];
}

type alter_enum_stmt_mutable = {
  mutable type_name : Pg_query_types.node list;
  mutable old_val : string;
  mutable new_val : string;
  mutable new_val_neighbor : string;
  mutable new_val_is_after : bool;
  mutable skip_if_new_val_exists : bool;
}

let default_alter_enum_stmt_mutable () : alter_enum_stmt_mutable = {
  type_name = [];
  old_val = "";
  new_val = "";
  new_val_neighbor = "";
  new_val_is_after = false;
  skip_if_new_val_exists = false;
}

type alter_tsdictionary_stmt_mutable = {
  mutable dictname : Pg_query_types.node list;
  mutable options : Pg_query_types.node list;
}

let default_alter_tsdictionary_stmt_mutable () : alter_tsdictionary_stmt_mutable = {
  dictname = [];
  options = [];
}

type alter_tsconfiguration_stmt_mutable = {
  mutable kind : Pg_query_types.alter_tsconfig_type;
  mutable cfgname : Pg_query_types.node list;
  mutable tokentype : Pg_query_types.node list;
  mutable dicts : Pg_query_types.node list;
  mutable override : bool;
  mutable replace : bool;
  mutable missing_ok : bool;
}

let default_alter_tsconfiguration_stmt_mutable () : alter_tsconfiguration_stmt_mutable = {
  kind = Pg_query_types.default_alter_tsconfig_type ();
  cfgname = [];
  tokentype = [];
  dicts = [];
  override = false;
  replace = false;
  missing_ok = false;
}

type create_fdw_stmt_mutable = {
  mutable fdwname : string;
  mutable func_options : Pg_query_types.node list;
  mutable options : Pg_query_types.node list;
}

let default_create_fdw_stmt_mutable () : create_fdw_stmt_mutable = {
  fdwname = "";
  func_options = [];
  options = [];
}

type alter_fdw_stmt_mutable = {
  mutable fdwname : string;
  mutable func_options : Pg_query_types.node list;
  mutable options : Pg_query_types.node list;
}

let default_alter_fdw_stmt_mutable () : alter_fdw_stmt_mutable = {
  fdwname = "";
  func_options = [];
  options = [];
}

type create_foreign_server_stmt_mutable = {
  mutable servername : string;
  mutable servertype : string;
  mutable version : string;
  mutable fdwname : string;
  mutable if_not_exists : bool;
  mutable options : Pg_query_types.node list;
}

let default_create_foreign_server_stmt_mutable () : create_foreign_server_stmt_mutable = {
  servername = "";
  servertype = "";
  version = "";
  fdwname = "";
  if_not_exists = false;
  options = [];
}

type alter_foreign_server_stmt_mutable = {
  mutable servername : string;
  mutable version : string;
  mutable options : Pg_query_types.node list;
  mutable has_version : bool;
}

let default_alter_foreign_server_stmt_mutable () : alter_foreign_server_stmt_mutable = {
  servername = "";
  version = "";
  options = [];
  has_version = false;
}

type create_user_mapping_stmt_mutable = {
  mutable user : Pg_query_types.role_spec option;
  mutable servername : string;
  mutable if_not_exists : bool;
  mutable options : Pg_query_types.node list;
}

let default_create_user_mapping_stmt_mutable () : create_user_mapping_stmt_mutable = {
  user = None;
  servername = "";
  if_not_exists = false;
  options = [];
}

type alter_user_mapping_stmt_mutable = {
  mutable user : Pg_query_types.role_spec option;
  mutable servername : string;
  mutable options : Pg_query_types.node list;
}

let default_alter_user_mapping_stmt_mutable () : alter_user_mapping_stmt_mutable = {
  user = None;
  servername = "";
  options = [];
}

type alter_table_space_options_stmt_mutable = {
  mutable tablespacename : string;
  mutable options : Pg_query_types.node list;
  mutable is_reset : bool;
}

let default_alter_table_space_options_stmt_mutable () : alter_table_space_options_stmt_mutable = {
  tablespacename = "";
  options = [];
  is_reset = false;
}

type alter_table_move_all_stmt_mutable = {
  mutable orig_tablespacename : string;
  mutable objtype : Pg_query_types.object_type;
  mutable roles : Pg_query_types.node list;
  mutable new_tablespacename : string;
  mutable nowait : bool;
}

let default_alter_table_move_all_stmt_mutable () : alter_table_move_all_stmt_mutable = {
  orig_tablespacename = "";
  objtype = Pg_query_types.default_object_type ();
  roles = [];
  new_tablespacename = "";
  nowait = false;
}

type sec_label_stmt_mutable = {
  mutable objtype : Pg_query_types.object_type;
  mutable object_ : Pg_query_types.node option;
  mutable provider : string;
  mutable label : string;
}

let default_sec_label_stmt_mutable () : sec_label_stmt_mutable = {
  objtype = Pg_query_types.default_object_type ();
  object_ = None;
  provider = "";
  label = "";
}

type create_foreign_table_stmt_mutable = {
  mutable base_stmt : Pg_query_types.create_stmt option;
  mutable servername : string;
  mutable options : Pg_query_types.node list;
}

let default_create_foreign_table_stmt_mutable () : create_foreign_table_stmt_mutable = {
  base_stmt = None;
  servername = "";
  options = [];
}

type import_foreign_schema_stmt_mutable = {
  mutable server_name : string;
  mutable remote_schema : string;
  mutable local_schema : string;
  mutable list_type : Pg_query_types.import_foreign_schema_type;
  mutable table_list : Pg_query_types.node list;
  mutable options : Pg_query_types.node list;
}

let default_import_foreign_schema_stmt_mutable () : import_foreign_schema_stmt_mutable = {
  server_name = "";
  remote_schema = "";
  local_schema = "";
  list_type = Pg_query_types.default_import_foreign_schema_type ();
  table_list = [];
  options = [];
}

type create_extension_stmt_mutable = {
  mutable extname : string;
  mutable if_not_exists : bool;
  mutable options : Pg_query_types.node list;
}

let default_create_extension_stmt_mutable () : create_extension_stmt_mutable = {
  extname = "";
  if_not_exists = false;
  options = [];
}

type alter_extension_stmt_mutable = {
  mutable extname : string;
  mutable options : Pg_query_types.node list;
}

let default_alter_extension_stmt_mutable () : alter_extension_stmt_mutable = {
  extname = "";
  options = [];
}

type alter_extension_contents_stmt_mutable = {
  mutable extname : string;
  mutable action : int32;
  mutable objtype : Pg_query_types.object_type;
  mutable object_ : Pg_query_types.node option;
}

let default_alter_extension_contents_stmt_mutable () : alter_extension_contents_stmt_mutable = {
  extname = "";
  action = 0l;
  objtype = Pg_query_types.default_object_type ();
  object_ = None;
}

type create_event_trig_stmt_mutable = {
  mutable trigname : string;
  mutable eventname : string;
  mutable whenclause : Pg_query_types.node list;
  mutable funcname : Pg_query_types.node list;
}

let default_create_event_trig_stmt_mutable () : create_event_trig_stmt_mutable = {
  trigname = "";
  eventname = "";
  whenclause = [];
  funcname = [];
}

type refresh_mat_view_stmt_mutable = {
  mutable concurrent : bool;
  mutable skip_data : bool;
  mutable relation : Pg_query_types.range_var option;
}

let default_refresh_mat_view_stmt_mutable () : refresh_mat_view_stmt_mutable = {
  concurrent = false;
  skip_data = false;
  relation = None;
}

type alter_system_stmt_mutable = {
  mutable setstmt : Pg_query_types.variable_set_stmt option;
}

let default_alter_system_stmt_mutable () : alter_system_stmt_mutable = {
  setstmt = None;
}

type create_policy_stmt_mutable = {
  mutable policy_name : string;
  mutable table : Pg_query_types.range_var option;
  mutable cmd_name : string;
  mutable permissive : bool;
  mutable roles : Pg_query_types.node list;
  mutable qual : Pg_query_types.node option;
  mutable with_check : Pg_query_types.node option;
}

let default_create_policy_stmt_mutable () : create_policy_stmt_mutable = {
  policy_name = "";
  table = None;
  cmd_name = "";
  permissive = false;
  roles = [];
  qual = None;
  with_check = None;
}

type alter_policy_stmt_mutable = {
  mutable policy_name : string;
  mutable table : Pg_query_types.range_var option;
  mutable roles : Pg_query_types.node list;
  mutable qual : Pg_query_types.node option;
  mutable with_check : Pg_query_types.node option;
}

let default_alter_policy_stmt_mutable () : alter_policy_stmt_mutable = {
  policy_name = "";
  table = None;
  roles = [];
  qual = None;
  with_check = None;
}

type create_transform_stmt_mutable = {
  mutable replace : bool;
  mutable type_name : Pg_query_types.type_name option;
  mutable lang : string;
  mutable fromsql : Pg_query_types.object_with_args option;
  mutable tosql : Pg_query_types.object_with_args option;
}

let default_create_transform_stmt_mutable () : create_transform_stmt_mutable = {
  replace = false;
  type_name = None;
  lang = "";
  fromsql = None;
  tosql = None;
}

type create_am_stmt_mutable = {
  mutable amname : string;
  mutable handler_name : Pg_query_types.node list;
  mutable amtype : string;
}

let default_create_am_stmt_mutable () : create_am_stmt_mutable = {
  amname = "";
  handler_name = [];
  amtype = "";
}

type create_publication_stmt_mutable = {
  mutable pubname : string;
  mutable options : Pg_query_types.node list;
  mutable pubobjects : Pg_query_types.node list;
  mutable for_all_tables : bool;
}

let default_create_publication_stmt_mutable () : create_publication_stmt_mutable = {
  pubname = "";
  options = [];
  pubobjects = [];
  for_all_tables = false;
}

type alter_publication_stmt_mutable = {
  mutable pubname : string;
  mutable options : Pg_query_types.node list;
  mutable pubobjects : Pg_query_types.node list;
  mutable for_all_tables : bool;
  mutable action : Pg_query_types.alter_publication_action;
}

let default_alter_publication_stmt_mutable () : alter_publication_stmt_mutable = {
  pubname = "";
  options = [];
  pubobjects = [];
  for_all_tables = false;
  action = Pg_query_types.default_alter_publication_action ();
}

type create_subscription_stmt_mutable = {
  mutable subname : string;
  mutable conninfo : string;
  mutable publication : Pg_query_types.node list;
  mutable options : Pg_query_types.node list;
}

let default_create_subscription_stmt_mutable () : create_subscription_stmt_mutable = {
  subname = "";
  conninfo = "";
  publication = [];
  options = [];
}

type alter_subscription_stmt_mutable = {
  mutable kind : Pg_query_types.alter_subscription_type;
  mutable subname : string;
  mutable conninfo : string;
  mutable publication : Pg_query_types.node list;
  mutable options : Pg_query_types.node list;
}

let default_alter_subscription_stmt_mutable () : alter_subscription_stmt_mutable = {
  kind = Pg_query_types.default_alter_subscription_type ();
  subname = "";
  conninfo = "";
  publication = [];
  options = [];
}

type create_stats_stmt_mutable = {
  mutable defnames : Pg_query_types.node list;
  mutable stat_types : Pg_query_types.node list;
  mutable exprs : Pg_query_types.node list;
  mutable relations : Pg_query_types.node list;
  mutable stxcomment : string;
  mutable transformed : bool;
  mutable if_not_exists : bool;
}

let default_create_stats_stmt_mutable () : create_stats_stmt_mutable = {
  defnames = [];
  stat_types = [];
  exprs = [];
  relations = [];
  stxcomment = "";
  transformed = false;
  if_not_exists = false;
}

type alter_collation_stmt_mutable = {
  mutable collname : Pg_query_types.node list;
}

let default_alter_collation_stmt_mutable () : alter_collation_stmt_mutable = {
  collname = [];
}

type call_stmt_mutable = {
  mutable funccall : Pg_query_types.func_call option;
  mutable funcexpr : Pg_query_types.func_expr option;
  mutable outargs : Pg_query_types.node list;
}

let default_call_stmt_mutable () : call_stmt_mutable = {
  funccall = None;
  funcexpr = None;
  outargs = [];
}

type func_call_mutable = {
  mutable funcname : Pg_query_types.node list;
  mutable args : Pg_query_types.node list;
  mutable agg_order : Pg_query_types.node list;
  mutable agg_filter : Pg_query_types.node option;
  mutable over : Pg_query_types.window_def option;
  mutable agg_within_group : bool;
  mutable agg_star : bool;
  mutable agg_distinct : bool;
  mutable func_variadic : bool;
  mutable funcformat : Pg_query_types.coercion_form;
  mutable location : int32;
}

let default_func_call_mutable () : func_call_mutable = {
  funcname = [];
  args = [];
  agg_order = [];
  agg_filter = None;
  over = None;
  agg_within_group = false;
  agg_star = false;
  agg_distinct = false;
  func_variadic = false;
  funcformat = Pg_query_types.default_coercion_form ();
  location = 0l;
}

type window_def_mutable = {
  mutable name : string;
  mutable refname : string;
  mutable partition_clause : Pg_query_types.node list;
  mutable order_clause : Pg_query_types.node list;
  mutable frame_options : int32;
  mutable start_offset : Pg_query_types.node option;
  mutable end_offset : Pg_query_types.node option;
  mutable location : int32;
}

let default_window_def_mutable () : window_def_mutable = {
  name = "";
  refname = "";
  partition_clause = [];
  order_clause = [];
  frame_options = 0l;
  start_offset = None;
  end_offset = None;
  location = 0l;
}

type alter_stats_stmt_mutable = {
  mutable defnames : Pg_query_types.node list;
  mutable stxstattarget : int32;
  mutable missing_ok : bool;
}

let default_alter_stats_stmt_mutable () : alter_stats_stmt_mutable = {
  defnames = [];
  stxstattarget = 0l;
  missing_ok = false;
}

type a_expr_mutable = {
  mutable kind : Pg_query_types.a_expr_kind;
  mutable name : Pg_query_types.node list;
  mutable lexpr : Pg_query_types.node option;
  mutable rexpr : Pg_query_types.node option;
  mutable location : int32;
}

let default_a_expr_mutable () : a_expr_mutable = {
  kind = Pg_query_types.default_a_expr_kind ();
  name = [];
  lexpr = None;
  rexpr = None;
  location = 0l;
}

type column_ref_mutable = {
  mutable fields : Pg_query_types.node list;
  mutable location : int32;
}

let default_column_ref_mutable () : column_ref_mutable = {
  fields = [];
  location = 0l;
}

type a_indices_mutable = {
  mutable is_slice : bool;
  mutable lidx : Pg_query_types.node option;
  mutable uidx : Pg_query_types.node option;
}

let default_a_indices_mutable () : a_indices_mutable = {
  is_slice = false;
  lidx = None;
  uidx = None;
}

type a_indirection_mutable = {
  mutable arg : Pg_query_types.node option;
  mutable indirection : Pg_query_types.node list;
}

let default_a_indirection_mutable () : a_indirection_mutable = {
  arg = None;
  indirection = [];
}

type a_array_expr_mutable = {
  mutable elements : Pg_query_types.node list;
  mutable location : int32;
}

let default_a_array_expr_mutable () : a_array_expr_mutable = {
  elements = [];
  location = 0l;
}

type res_target_mutable = {
  mutable name : string;
  mutable indirection : Pg_query_types.node list;
  mutable val_ : Pg_query_types.node option;
  mutable location : int32;
}

let default_res_target_mutable () : res_target_mutable = {
  name = "";
  indirection = [];
  val_ = None;
  location = 0l;
}

type multi_assign_ref_mutable = {
  mutable source : Pg_query_types.node option;
  mutable colno : int32;
  mutable ncolumns : int32;
}

let default_multi_assign_ref_mutable () : multi_assign_ref_mutable = {
  source = None;
  colno = 0l;
  ncolumns = 0l;
}

type type_cast_mutable = {
  mutable arg : Pg_query_types.node option;
  mutable type_name : Pg_query_types.type_name option;
  mutable location : int32;
}

let default_type_cast_mutable () : type_cast_mutable = {
  arg = None;
  type_name = None;
  location = 0l;
}

type sort_by_mutable = {
  mutable node : Pg_query_types.node option;
  mutable sortby_dir : Pg_query_types.sort_by_dir;
  mutable sortby_nulls : Pg_query_types.sort_by_nulls;
  mutable use_op : Pg_query_types.node list;
  mutable location : int32;
}

let default_sort_by_mutable () : sort_by_mutable = {
  node = None;
  sortby_dir = Pg_query_types.default_sort_by_dir ();
  sortby_nulls = Pg_query_types.default_sort_by_nulls ();
  use_op = [];
  location = 0l;
}

type range_subselect_mutable = {
  mutable lateral : bool;
  mutable subquery : Pg_query_types.node option;
  mutable alias : Pg_query_types.alias option;
}

let default_range_subselect_mutable () : range_subselect_mutable = {
  lateral = false;
  subquery = None;
  alias = None;
}

type range_function_mutable = {
  mutable lateral : bool;
  mutable ordinality : bool;
  mutable is_rowsfrom : bool;
  mutable functions : Pg_query_types.node list;
  mutable alias : Pg_query_types.alias option;
  mutable coldeflist : Pg_query_types.node list;
}

let default_range_function_mutable () : range_function_mutable = {
  lateral = false;
  ordinality = false;
  is_rowsfrom = false;
  functions = [];
  alias = None;
  coldeflist = [];
}

type range_table_sample_mutable = {
  mutable relation : Pg_query_types.node option;
  mutable method_ : Pg_query_types.node list;
  mutable args : Pg_query_types.node list;
  mutable repeatable : Pg_query_types.node option;
  mutable location : int32;
}

let default_range_table_sample_mutable () : range_table_sample_mutable = {
  relation = None;
  method_ = [];
  args = [];
  repeatable = None;
  location = 0l;
}

type range_table_func_mutable = {
  mutable lateral : bool;
  mutable docexpr : Pg_query_types.node option;
  mutable rowexpr : Pg_query_types.node option;
  mutable namespaces : Pg_query_types.node list;
  mutable columns : Pg_query_types.node list;
  mutable alias : Pg_query_types.alias option;
  mutable location : int32;
}

let default_range_table_func_mutable () : range_table_func_mutable = {
  lateral = false;
  docexpr = None;
  rowexpr = None;
  namespaces = [];
  columns = [];
  alias = None;
  location = 0l;
}

type range_table_func_col_mutable = {
  mutable colname : string;
  mutable type_name : Pg_query_types.type_name option;
  mutable for_ordinality : bool;
  mutable is_not_null : bool;
  mutable colexpr : Pg_query_types.node option;
  mutable coldefexpr : Pg_query_types.node option;
  mutable location : int32;
}

let default_range_table_func_col_mutable () : range_table_func_col_mutable = {
  colname = "";
  type_name = None;
  for_ordinality = false;
  is_not_null = false;
  colexpr = None;
  coldefexpr = None;
  location = 0l;
}

type column_def_mutable = {
  mutable colname : string;
  mutable type_name : Pg_query_types.type_name option;
  mutable compression : string;
  mutable inhcount : int32;
  mutable is_local : bool;
  mutable is_not_null : bool;
  mutable is_from_type : bool;
  mutable storage : string;
  mutable raw_default : Pg_query_types.node option;
  mutable cooked_default : Pg_query_types.node option;
  mutable identity : string;
  mutable identity_sequence : Pg_query_types.range_var option;
  mutable generated : string;
  mutable coll_clause : Pg_query_types.collate_clause option;
  mutable coll_oid : int32;
  mutable constraints : Pg_query_types.node list;
  mutable fdwoptions : Pg_query_types.node list;
  mutable location : int32;
}

let default_column_def_mutable () : column_def_mutable = {
  colname = "";
  type_name = None;
  compression = "";
  inhcount = 0l;
  is_local = false;
  is_not_null = false;
  is_from_type = false;
  storage = "";
  raw_default = None;
  cooked_default = None;
  identity = "";
  identity_sequence = None;
  generated = "";
  coll_clause = None;
  coll_oid = 0l;
  constraints = [];
  fdwoptions = [];
  location = 0l;
}

type index_elem_mutable = {
  mutable name : string;
  mutable expr : Pg_query_types.node option;
  mutable indexcolname : string;
  mutable collation : Pg_query_types.node list;
  mutable opclass : Pg_query_types.node list;
  mutable opclassopts : Pg_query_types.node list;
  mutable ordering : Pg_query_types.sort_by_dir;
  mutable nulls_ordering : Pg_query_types.sort_by_nulls;
}

let default_index_elem_mutable () : index_elem_mutable = {
  name = "";
  expr = None;
  indexcolname = "";
  collation = [];
  opclass = [];
  opclassopts = [];
  ordering = Pg_query_types.default_sort_by_dir ();
  nulls_ordering = Pg_query_types.default_sort_by_nulls ();
}

type stats_elem_mutable = {
  mutable name : string;
  mutable expr : Pg_query_types.node option;
}

let default_stats_elem_mutable () : stats_elem_mutable = {
  name = "";
  expr = None;
}

type constraint__mutable = {
  mutable contype : Pg_query_types.constr_type;
  mutable conname : string;
  mutable deferrable : bool;
  mutable initdeferred : bool;
  mutable location : int32;
  mutable is_no_inherit : bool;
  mutable raw_expr : Pg_query_types.node option;
  mutable cooked_expr : string;
  mutable generated_when : string;
  mutable nulls_not_distinct : bool;
  mutable keys : Pg_query_types.node list;
  mutable including : Pg_query_types.node list;
  mutable exclusions : Pg_query_types.node list;
  mutable options : Pg_query_types.node list;
  mutable indexname : string;
  mutable indexspace : string;
  mutable reset_default_tblspc : bool;
  mutable access_method : string;
  mutable where_clause : Pg_query_types.node option;
  mutable pktable : Pg_query_types.range_var option;
  mutable fk_attrs : Pg_query_types.node list;
  mutable pk_attrs : Pg_query_types.node list;
  mutable fk_matchtype : string;
  mutable fk_upd_action : string;
  mutable fk_del_action : string;
  mutable fk_del_set_cols : Pg_query_types.node list;
  mutable old_conpfeqop : Pg_query_types.node list;
  mutable old_pktable_oid : int32;
  mutable skip_validation : bool;
  mutable initially_valid : bool;
}

let default_constraint__mutable () : constraint__mutable = {
  contype = Pg_query_types.default_constr_type ();
  conname = "";
  deferrable = false;
  initdeferred = false;
  location = 0l;
  is_no_inherit = false;
  raw_expr = None;
  cooked_expr = "";
  generated_when = "";
  nulls_not_distinct = false;
  keys = [];
  including = [];
  exclusions = [];
  options = [];
  indexname = "";
  indexspace = "";
  reset_default_tblspc = false;
  access_method = "";
  where_clause = None;
  pktable = None;
  fk_attrs = [];
  pk_attrs = [];
  fk_matchtype = "";
  fk_upd_action = "";
  fk_del_action = "";
  fk_del_set_cols = [];
  old_conpfeqop = [];
  old_pktable_oid = 0l;
  skip_validation = false;
  initially_valid = false;
}

type def_elem_mutable = {
  mutable defnamespace : string;
  mutable defname : string;
  mutable arg : Pg_query_types.node option;
  mutable defaction : Pg_query_types.def_elem_action;
  mutable location : int32;
}

let default_def_elem_mutable () : def_elem_mutable = {
  defnamespace = "";
  defname = "";
  arg = None;
  defaction = Pg_query_types.default_def_elem_action ();
  location = 0l;
}

type range_tbl_entry_mutable = {
  mutable rtekind : Pg_query_types.rtekind;
  mutable relid : int32;
  mutable relkind : string;
  mutable rellockmode : int32;
  mutable tablesample : Pg_query_types.table_sample_clause option;
  mutable subquery : Pg_query_types.query option;
  mutable security_barrier : bool;
  mutable jointype : Pg_query_types.join_type;
  mutable joinmergedcols : int32;
  mutable joinaliasvars : Pg_query_types.node list;
  mutable joinleftcols : Pg_query_types.node list;
  mutable joinrightcols : Pg_query_types.node list;
  mutable join_using_alias : Pg_query_types.alias option;
  mutable functions : Pg_query_types.node list;
  mutable funcordinality : bool;
  mutable tablefunc : Pg_query_types.table_func option;
  mutable values_lists : Pg_query_types.node list;
  mutable ctename : string;
  mutable ctelevelsup : int32;
  mutable self_reference : bool;
  mutable coltypes : Pg_query_types.node list;
  mutable coltypmods : Pg_query_types.node list;
  mutable colcollations : Pg_query_types.node list;
  mutable enrname : string;
  mutable enrtuples : float;
  mutable alias : Pg_query_types.alias option;
  mutable eref : Pg_query_types.alias option;
  mutable lateral : bool;
  mutable inh : bool;
  mutable in_from_cl : bool;
  mutable required_perms : int32;
  mutable check_as_user : int32;
  mutable selected_cols : int64 list;
  mutable inserted_cols : int64 list;
  mutable updated_cols : int64 list;
  mutable extra_updated_cols : int64 list;
  mutable security_quals : Pg_query_types.node list;
}

let default_range_tbl_entry_mutable () : range_tbl_entry_mutable = {
  rtekind = Pg_query_types.default_rtekind ();
  relid = 0l;
  relkind = "";
  rellockmode = 0l;
  tablesample = None;
  subquery = None;
  security_barrier = false;
  jointype = Pg_query_types.default_join_type ();
  joinmergedcols = 0l;
  joinaliasvars = [];
  joinleftcols = [];
  joinrightcols = [];
  join_using_alias = None;
  functions = [];
  funcordinality = false;
  tablefunc = None;
  values_lists = [];
  ctename = "";
  ctelevelsup = 0l;
  self_reference = false;
  coltypes = [];
  coltypmods = [];
  colcollations = [];
  enrname = "";
  enrtuples = 0.;
  alias = None;
  eref = None;
  lateral = false;
  inh = false;
  in_from_cl = false;
  required_perms = 0l;
  check_as_user = 0l;
  selected_cols = [];
  inserted_cols = [];
  updated_cols = [];
  extra_updated_cols = [];
  security_quals = [];
}

type table_sample_clause_mutable = {
  mutable tsmhandler : int32;
  mutable args : Pg_query_types.node list;
  mutable repeatable : Pg_query_types.node option;
}

let default_table_sample_clause_mutable () : table_sample_clause_mutable = {
  tsmhandler = 0l;
  args = [];
  repeatable = None;
}

type range_tbl_function_mutable = {
  mutable funcexpr : Pg_query_types.node option;
  mutable funccolcount : int32;
  mutable funccolnames : Pg_query_types.node list;
  mutable funccoltypes : Pg_query_types.node list;
  mutable funccoltypmods : Pg_query_types.node list;
  mutable funccolcollations : Pg_query_types.node list;
  mutable funcparams : int64 list;
}

let default_range_tbl_function_mutable () : range_tbl_function_mutable = {
  funcexpr = None;
  funccolcount = 0l;
  funccolnames = [];
  funccoltypes = [];
  funccoltypmods = [];
  funccolcollations = [];
  funcparams = [];
}

type with_check_option_mutable = {
  mutable kind : Pg_query_types.wcokind;
  mutable relname : string;
  mutable polname : string;
  mutable qual : Pg_query_types.node option;
  mutable cascaded : bool;
}

let default_with_check_option_mutable () : with_check_option_mutable = {
  kind = Pg_query_types.default_wcokind ();
  relname = "";
  polname = "";
  qual = None;
  cascaded = false;
}

type grouping_set_mutable = {
  mutable kind : Pg_query_types.grouping_set_kind;
  mutable content : Pg_query_types.node list;
  mutable location : int32;
}

let default_grouping_set_mutable () : grouping_set_mutable = {
  kind = Pg_query_types.default_grouping_set_kind ();
  content = [];
  location = 0l;
}

type window_clause_mutable = {
  mutable name : string;
  mutable refname : string;
  mutable partition_clause : Pg_query_types.node list;
  mutable order_clause : Pg_query_types.node list;
  mutable frame_options : int32;
  mutable start_offset : Pg_query_types.node option;
  mutable end_offset : Pg_query_types.node option;
  mutable run_condition : Pg_query_types.node list;
  mutable start_in_range_func : int32;
  mutable end_in_range_func : int32;
  mutable in_range_coll : int32;
  mutable in_range_asc : bool;
  mutable in_range_nulls_first : bool;
  mutable winref : int32;
  mutable copied_order : bool;
}

let default_window_clause_mutable () : window_clause_mutable = {
  name = "";
  refname = "";
  partition_clause = [];
  order_clause = [];
  frame_options = 0l;
  start_offset = None;
  end_offset = None;
  run_condition = [];
  start_in_range_func = 0l;
  end_in_range_func = 0l;
  in_range_coll = 0l;
  in_range_asc = false;
  in_range_nulls_first = false;
  winref = 0l;
  copied_order = false;
}

type access_priv_mutable = {
  mutable priv_name : string;
  mutable cols : Pg_query_types.node list;
}

let default_access_priv_mutable () : access_priv_mutable = {
  priv_name = "";
  cols = [];
}

type create_op_class_item_mutable = {
  mutable itemtype : int32;
  mutable name : Pg_query_types.object_with_args option;
  mutable number : int32;
  mutable order_family : Pg_query_types.node list;
  mutable class_args : Pg_query_types.node list;
  mutable storedtype : Pg_query_types.type_name option;
}

let default_create_op_class_item_mutable () : create_op_class_item_mutable = {
  itemtype = 0l;
  name = None;
  number = 0l;
  order_family = [];
  class_args = [];
  storedtype = None;
}

type table_like_clause_mutable = {
  mutable relation : Pg_query_types.range_var option;
  mutable options : int32;
  mutable relation_oid : int32;
}

let default_table_like_clause_mutable () : table_like_clause_mutable = {
  relation = None;
  options = 0l;
  relation_oid = 0l;
}

type function_parameter_mutable = {
  mutable name : string;
  mutable arg_type : Pg_query_types.type_name option;
  mutable mode : Pg_query_types.function_parameter_mode;
  mutable defexpr : Pg_query_types.node option;
}

let default_function_parameter_mutable () : function_parameter_mutable = {
  name = "";
  arg_type = None;
  mode = Pg_query_types.default_function_parameter_mode ();
  defexpr = None;
}

type locking_clause_mutable = {
  mutable locked_rels : Pg_query_types.node list;
  mutable strength : Pg_query_types.lock_clause_strength;
  mutable wait_policy : Pg_query_types.lock_wait_policy;
}

let default_locking_clause_mutable () : locking_clause_mutable = {
  locked_rels = [];
  strength = Pg_query_types.default_lock_clause_strength ();
  wait_policy = Pg_query_types.default_lock_wait_policy ();
}

type xml_serialize_mutable = {
  mutable xmloption : Pg_query_types.xml_option_type;
  mutable expr : Pg_query_types.node option;
  mutable type_name : Pg_query_types.type_name option;
  mutable location : int32;
}

let default_xml_serialize_mutable () : xml_serialize_mutable = {
  xmloption = Pg_query_types.default_xml_option_type ();
  expr = None;
  type_name = None;
  location = 0l;
}

type ctesearch_clause_mutable = {
  mutable search_col_list : Pg_query_types.node list;
  mutable search_breadth_first : bool;
  mutable search_seq_column : string;
  mutable location : int32;
}

let default_ctesearch_clause_mutable () : ctesearch_clause_mutable = {
  search_col_list = [];
  search_breadth_first = false;
  search_seq_column = "";
  location = 0l;
}

type ctecycle_clause_mutable = {
  mutable cycle_col_list : Pg_query_types.node list;
  mutable cycle_mark_column : string;
  mutable cycle_mark_value : Pg_query_types.node option;
  mutable cycle_mark_default : Pg_query_types.node option;
  mutable cycle_path_column : string;
  mutable location : int32;
  mutable cycle_mark_type : int32;
  mutable cycle_mark_typmod : int32;
  mutable cycle_mark_collation : int32;
  mutable cycle_mark_neop : int32;
}

let default_ctecycle_clause_mutable () : ctecycle_clause_mutable = {
  cycle_col_list = [];
  cycle_mark_column = "";
  cycle_mark_value = None;
  cycle_mark_default = None;
  cycle_path_column = "";
  location = 0l;
  cycle_mark_type = 0l;
  cycle_mark_typmod = 0l;
  cycle_mark_collation = 0l;
  cycle_mark_neop = 0l;
}

type common_table_expr_mutable = {
  mutable ctename : string;
  mutable aliascolnames : Pg_query_types.node list;
  mutable ctematerialized : Pg_query_types.ctematerialize;
  mutable ctequery : Pg_query_types.node option;
  mutable search_clause : Pg_query_types.ctesearch_clause option;
  mutable cycle_clause : Pg_query_types.ctecycle_clause option;
  mutable location : int32;
  mutable cterecursive : bool;
  mutable cterefcount : int32;
  mutable ctecolnames : Pg_query_types.node list;
  mutable ctecoltypes : Pg_query_types.node list;
  mutable ctecoltypmods : Pg_query_types.node list;
  mutable ctecolcollations : Pg_query_types.node list;
}

let default_common_table_expr_mutable () : common_table_expr_mutable = {
  ctename = "";
  aliascolnames = [];
  ctematerialized = Pg_query_types.default_ctematerialize ();
  ctequery = None;
  search_clause = None;
  cycle_clause = None;
  location = 0l;
  cterecursive = false;
  cterefcount = 0l;
  ctecolnames = [];
  ctecoltypes = [];
  ctecoltypmods = [];
  ctecolcollations = [];
}

type merge_when_clause_mutable = {
  mutable matched : bool;
  mutable command_type : Pg_query_types.cmd_type;
  mutable override : Pg_query_types.overriding_kind;
  mutable condition : Pg_query_types.node option;
  mutable target_list : Pg_query_types.node list;
  mutable values : Pg_query_types.node list;
}

let default_merge_when_clause_mutable () : merge_when_clause_mutable = {
  matched = false;
  command_type = Pg_query_types.default_cmd_type ();
  override = Pg_query_types.default_overriding_kind ();
  condition = None;
  target_list = [];
  values = [];
}

type partition_elem_mutable = {
  mutable name : string;
  mutable expr : Pg_query_types.node option;
  mutable collation : Pg_query_types.node list;
  mutable opclass : Pg_query_types.node list;
  mutable location : int32;
}

let default_partition_elem_mutable () : partition_elem_mutable = {
  name = "";
  expr = None;
  collation = [];
  opclass = [];
  location = 0l;
}

type partition_range_datum_mutable = {
  mutable kind : Pg_query_types.partition_range_datum_kind;
  mutable value : Pg_query_types.node option;
  mutable location : int32;
}

let default_partition_range_datum_mutable () : partition_range_datum_mutable = {
  kind = Pg_query_types.default_partition_range_datum_kind ();
  value = None;
  location = 0l;
}

type partition_cmd_mutable = {
  mutable name : Pg_query_types.range_var option;
  mutable bound : Pg_query_types.partition_bound_spec option;
  mutable concurrent : bool;
}

let default_partition_cmd_mutable () : partition_cmd_mutable = {
  name = None;
  bound = None;
  concurrent = false;
}

type vacuum_relation_mutable = {
  mutable relation : Pg_query_types.range_var option;
  mutable oid : int32;
  mutable va_cols : Pg_query_types.node list;
}

let default_vacuum_relation_mutable () : vacuum_relation_mutable = {
  relation = None;
  oid = 0l;
  va_cols = [];
}

type publication_obj_spec_mutable = {
  mutable pubobjtype : Pg_query_types.publication_obj_spec_type;
  mutable name : string;
  mutable pubtable : Pg_query_types.publication_table option;
  mutable location : int32;
}

let default_publication_obj_spec_mutable () : publication_obj_spec_mutable = {
  pubobjtype = Pg_query_types.default_publication_obj_spec_type ();
  name = "";
  pubtable = None;
  location = 0l;
}

type publication_table_mutable = {
  mutable relation : Pg_query_types.range_var option;
  mutable where_clause : Pg_query_types.node option;
  mutable columns : Pg_query_types.node list;
}

let default_publication_table_mutable () : publication_table_mutable = {
  relation = None;
  where_clause = None;
  columns = [];
}

type list_mutable = {
  mutable items : Pg_query_types.node list;
}

let default_list_mutable () : list_mutable = {
  items = [];
}

type int_list_mutable = {
  mutable items : Pg_query_types.node list;
}

let default_int_list_mutable () : int_list_mutable = {
  items = [];
}

type oid_list_mutable = {
  mutable items : Pg_query_types.node list;
}

let default_oid_list_mutable () : oid_list_mutable = {
  items = [];
}

type parse_result_mutable = {
  mutable version : int32;
  mutable stmts : Pg_query_types.raw_stmt list;
}

let default_parse_result_mutable () : parse_result_mutable = {
  version = 0l;
  stmts = [];
}

type scan_token_mutable = {
  mutable start : int32;
  mutable end_ : int32;
  mutable token : Pg_query_types.token;
  mutable keyword_kind : Pg_query_types.keyword_kind;
}

let default_scan_token_mutable () : scan_token_mutable = {
  start = 0l;
  end_ = 0l;
  token = Pg_query_types.default_token ();
  keyword_kind = Pg_query_types.default_keyword_kind ();
}

type scan_result_mutable = {
  mutable version : int32;
  mutable tokens : Pg_query_types.scan_token list;
}

let default_scan_result_mutable () : scan_result_mutable = {
  version = 0l;
  tokens = [];
}


let rec decode_param_kind d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Param_kind_undefined:Pg_query_types.param_kind)
  | 1 -> (Pg_query_types.Param_extern:Pg_query_types.param_kind)
  | 2 -> (Pg_query_types.Param_exec:Pg_query_types.param_kind)
  | 3 -> (Pg_query_types.Param_sublink:Pg_query_types.param_kind)
  | 4 -> (Pg_query_types.Param_multiexpr:Pg_query_types.param_kind)
  | _ -> Pbrt.Decoder.malformed_variant "param_kind"

let rec decode_agg_split d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Agg_split_undefined:Pg_query_types.agg_split)
  | 1 -> (Pg_query_types.Aggsplit_simple:Pg_query_types.agg_split)
  | 2 -> (Pg_query_types.Aggsplit_initial_serial:Pg_query_types.agg_split)
  | 3 -> (Pg_query_types.Aggsplit_final_deserial:Pg_query_types.agg_split)
  | _ -> Pbrt.Decoder.malformed_variant "agg_split"

let rec decode_coercion_form d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Coercion_form_undefined:Pg_query_types.coercion_form)
  | 1 -> (Pg_query_types.Coerce_explicit_call:Pg_query_types.coercion_form)
  | 2 -> (Pg_query_types.Coerce_explicit_cast:Pg_query_types.coercion_form)
  | 3 -> (Pg_query_types.Coerce_implicit_cast:Pg_query_types.coercion_form)
  | 4 -> (Pg_query_types.Coerce_sql_syntax:Pg_query_types.coercion_form)
  | _ -> Pbrt.Decoder.malformed_variant "coercion_form"

let rec decode_bool_expr_type d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Bool_expr_type_undefined:Pg_query_types.bool_expr_type)
  | 1 -> (Pg_query_types.And_expr:Pg_query_types.bool_expr_type)
  | 2 -> (Pg_query_types.Or_expr:Pg_query_types.bool_expr_type)
  | 3 -> (Pg_query_types.Not_expr:Pg_query_types.bool_expr_type)
  | _ -> Pbrt.Decoder.malformed_variant "bool_expr_type"

let rec decode_sub_link_type d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Sub_link_type_undefined:Pg_query_types.sub_link_type)
  | 1 -> (Pg_query_types.Exists_sublink:Pg_query_types.sub_link_type)
  | 2 -> (Pg_query_types.All_sublink:Pg_query_types.sub_link_type)
  | 3 -> (Pg_query_types.Any_sublink:Pg_query_types.sub_link_type)
  | 4 -> (Pg_query_types.Rowcompare_sublink:Pg_query_types.sub_link_type)
  | 5 -> (Pg_query_types.Expr_sublink:Pg_query_types.sub_link_type)
  | 6 -> (Pg_query_types.Multiexpr_sublink:Pg_query_types.sub_link_type)
  | 7 -> (Pg_query_types.Array_sublink:Pg_query_types.sub_link_type)
  | 8 -> (Pg_query_types.Cte_sublink:Pg_query_types.sub_link_type)
  | _ -> Pbrt.Decoder.malformed_variant "sub_link_type"

let rec decode_row_compare_type d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Row_compare_type_undefined:Pg_query_types.row_compare_type)
  | 1 -> (Pg_query_types.Rowcompare_lt:Pg_query_types.row_compare_type)
  | 2 -> (Pg_query_types.Rowcompare_le:Pg_query_types.row_compare_type)
  | 3 -> (Pg_query_types.Rowcompare_eq:Pg_query_types.row_compare_type)
  | 4 -> (Pg_query_types.Rowcompare_ge:Pg_query_types.row_compare_type)
  | 5 -> (Pg_query_types.Rowcompare_gt:Pg_query_types.row_compare_type)
  | 6 -> (Pg_query_types.Rowcompare_ne:Pg_query_types.row_compare_type)
  | _ -> Pbrt.Decoder.malformed_variant "row_compare_type"

let rec decode_min_max_op d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Min_max_op_undefined:Pg_query_types.min_max_op)
  | 1 -> (Pg_query_types.Is_greatest:Pg_query_types.min_max_op)
  | 2 -> (Pg_query_types.Is_least:Pg_query_types.min_max_op)
  | _ -> Pbrt.Decoder.malformed_variant "min_max_op"

let rec decode_sqlvalue_function_op d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Sqlvalue_function_op_undefined:Pg_query_types.sqlvalue_function_op)
  | 1 -> (Pg_query_types.Svfop_current_date:Pg_query_types.sqlvalue_function_op)
  | 2 -> (Pg_query_types.Svfop_current_time:Pg_query_types.sqlvalue_function_op)
  | 3 -> (Pg_query_types.Svfop_current_time_n:Pg_query_types.sqlvalue_function_op)
  | 4 -> (Pg_query_types.Svfop_current_timestamp:Pg_query_types.sqlvalue_function_op)
  | 5 -> (Pg_query_types.Svfop_current_timestamp_n:Pg_query_types.sqlvalue_function_op)
  | 6 -> (Pg_query_types.Svfop_localtime:Pg_query_types.sqlvalue_function_op)
  | 7 -> (Pg_query_types.Svfop_localtime_n:Pg_query_types.sqlvalue_function_op)
  | 8 -> (Pg_query_types.Svfop_localtimestamp:Pg_query_types.sqlvalue_function_op)
  | 9 -> (Pg_query_types.Svfop_localtimestamp_n:Pg_query_types.sqlvalue_function_op)
  | 10 -> (Pg_query_types.Svfop_current_role:Pg_query_types.sqlvalue_function_op)
  | 11 -> (Pg_query_types.Svfop_current_user:Pg_query_types.sqlvalue_function_op)
  | 12 -> (Pg_query_types.Svfop_user:Pg_query_types.sqlvalue_function_op)
  | 13 -> (Pg_query_types.Svfop_session_user:Pg_query_types.sqlvalue_function_op)
  | 14 -> (Pg_query_types.Svfop_current_catalog:Pg_query_types.sqlvalue_function_op)
  | 15 -> (Pg_query_types.Svfop_current_schema:Pg_query_types.sqlvalue_function_op)
  | _ -> Pbrt.Decoder.malformed_variant "sqlvalue_function_op"

let rec decode_xml_expr_op d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Xml_expr_op_undefined:Pg_query_types.xml_expr_op)
  | 1 -> (Pg_query_types.Is_xmlconcat:Pg_query_types.xml_expr_op)
  | 2 -> (Pg_query_types.Is_xmlelement:Pg_query_types.xml_expr_op)
  | 3 -> (Pg_query_types.Is_xmlforest:Pg_query_types.xml_expr_op)
  | 4 -> (Pg_query_types.Is_xmlparse:Pg_query_types.xml_expr_op)
  | 5 -> (Pg_query_types.Is_xmlpi:Pg_query_types.xml_expr_op)
  | 6 -> (Pg_query_types.Is_xmlroot:Pg_query_types.xml_expr_op)
  | 7 -> (Pg_query_types.Is_xmlserialize:Pg_query_types.xml_expr_op)
  | 8 -> (Pg_query_types.Is_document:Pg_query_types.xml_expr_op)
  | _ -> Pbrt.Decoder.malformed_variant "xml_expr_op"

let rec decode_xml_option_type d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Xml_option_type_undefined:Pg_query_types.xml_option_type)
  | 1 -> (Pg_query_types.Xmloption_document:Pg_query_types.xml_option_type)
  | 2 -> (Pg_query_types.Xmloption_content:Pg_query_types.xml_option_type)
  | _ -> Pbrt.Decoder.malformed_variant "xml_option_type"

let rec decode_null_test_type d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Null_test_type_undefined:Pg_query_types.null_test_type)
  | 1 -> (Pg_query_types.Is_null:Pg_query_types.null_test_type)
  | 2 -> (Pg_query_types.Is_not_null:Pg_query_types.null_test_type)
  | _ -> Pbrt.Decoder.malformed_variant "null_test_type"

let rec decode_bool_test_type d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Bool_test_type_undefined:Pg_query_types.bool_test_type)
  | 1 -> (Pg_query_types.Is_true:Pg_query_types.bool_test_type)
  | 2 -> (Pg_query_types.Is_not_true:Pg_query_types.bool_test_type)
  | 3 -> (Pg_query_types.Is_false:Pg_query_types.bool_test_type)
  | 4 -> (Pg_query_types.Is_not_false:Pg_query_types.bool_test_type)
  | 5 -> (Pg_query_types.Is_unknown:Pg_query_types.bool_test_type)
  | 6 -> (Pg_query_types.Is_not_unknown:Pg_query_types.bool_test_type)
  | _ -> Pbrt.Decoder.malformed_variant "bool_test_type"

let rec decode_range_tbl_ref d =
  let v = default_range_tbl_ref_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.rtindex <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_ref), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.rtindex = v.rtindex;
  } : Pg_query_types.range_tbl_ref)

let rec decode_join_type d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Join_type_undefined:Pg_query_types.join_type)
  | 1 -> (Pg_query_types.Join_inner:Pg_query_types.join_type)
  | 2 -> (Pg_query_types.Join_left:Pg_query_types.join_type)
  | 3 -> (Pg_query_types.Join_full:Pg_query_types.join_type)
  | 4 -> (Pg_query_types.Join_right:Pg_query_types.join_type)
  | 5 -> (Pg_query_types.Join_semi:Pg_query_types.join_type)
  | 6 -> (Pg_query_types.Join_anti:Pg_query_types.join_type)
  | 7 -> (Pg_query_types.Join_unique_outer:Pg_query_types.join_type)
  | 8 -> (Pg_query_types.Join_unique_inner:Pg_query_types.join_type)
  | _ -> Pbrt.Decoder.malformed_variant "join_type"

let rec decode_on_conflict_action d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.On_conflict_action_undefined:Pg_query_types.on_conflict_action)
  | 1 -> (Pg_query_types.Onconflict_none:Pg_query_types.on_conflict_action)
  | 2 -> (Pg_query_types.Onconflict_nothing:Pg_query_types.on_conflict_action)
  | 3 -> (Pg_query_types.Onconflict_update:Pg_query_types.on_conflict_action)
  | _ -> Pbrt.Decoder.malformed_variant "on_conflict_action"

let rec decode_on_commit_action d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.On_commit_action_undefined:Pg_query_types.on_commit_action)
  | 1 -> (Pg_query_types.Oncommit_noop:Pg_query_types.on_commit_action)
  | 2 -> (Pg_query_types.Oncommit_preserve_rows:Pg_query_types.on_commit_action)
  | 3 -> (Pg_query_types.Oncommit_delete_rows:Pg_query_types.on_commit_action)
  | 4 -> (Pg_query_types.Oncommit_drop:Pg_query_types.on_commit_action)
  | _ -> Pbrt.Decoder.malformed_variant "on_commit_action"

let rec decode_cmd_type d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Cmd_type_undefined:Pg_query_types.cmd_type)
  | 1 -> (Pg_query_types.Cmd_unknown:Pg_query_types.cmd_type)
  | 2 -> (Pg_query_types.Cmd_select:Pg_query_types.cmd_type)
  | 3 -> (Pg_query_types.Cmd_update:Pg_query_types.cmd_type)
  | 4 -> (Pg_query_types.Cmd_insert:Pg_query_types.cmd_type)
  | 5 -> (Pg_query_types.Cmd_delete:Pg_query_types.cmd_type)
  | 6 -> (Pg_query_types.Cmd_merge:Pg_query_types.cmd_type)
  | 7 -> (Pg_query_types.Cmd_utility:Pg_query_types.cmd_type)
  | 8 -> (Pg_query_types.Cmd_nothing:Pg_query_types.cmd_type)
  | _ -> Pbrt.Decoder.malformed_variant "cmd_type"

let rec decode_overriding_kind d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Overriding_kind_undefined:Pg_query_types.overriding_kind)
  | 1 -> (Pg_query_types.Overriding_not_set:Pg_query_types.overriding_kind)
  | 2 -> (Pg_query_types.Overriding_user_value:Pg_query_types.overriding_kind)
  | 3 -> (Pg_query_types.Overriding_system_value:Pg_query_types.overriding_kind)
  | _ -> Pbrt.Decoder.malformed_variant "overriding_kind"

let rec decode_query_source d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Query_source_undefined:Pg_query_types.query_source)
  | 1 -> (Pg_query_types.Qsrc_original:Pg_query_types.query_source)
  | 2 -> (Pg_query_types.Qsrc_parser:Pg_query_types.query_source)
  | 3 -> (Pg_query_types.Qsrc_instead_rule:Pg_query_types.query_source)
  | 4 -> (Pg_query_types.Qsrc_qual_instead_rule:Pg_query_types.query_source)
  | 5 -> (Pg_query_types.Qsrc_non_instead_rule:Pg_query_types.query_source)
  | _ -> Pbrt.Decoder.malformed_variant "query_source"

let rec decode_limit_option d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Limit_option_undefined:Pg_query_types.limit_option)
  | 1 -> (Pg_query_types.Limit_option_default:Pg_query_types.limit_option)
  | 2 -> (Pg_query_types.Limit_option_count:Pg_query_types.limit_option)
  | 3 -> (Pg_query_types.Limit_option_with_ties:Pg_query_types.limit_option)
  | _ -> Pbrt.Decoder.malformed_variant "limit_option"

let rec decode_set_operation d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Set_operation_undefined:Pg_query_types.set_operation)
  | 1 -> (Pg_query_types.Setop_none:Pg_query_types.set_operation)
  | 2 -> (Pg_query_types.Setop_union:Pg_query_types.set_operation)
  | 3 -> (Pg_query_types.Setop_intersect:Pg_query_types.set_operation)
  | 4 -> (Pg_query_types.Setop_except:Pg_query_types.set_operation)
  | _ -> Pbrt.Decoder.malformed_variant "set_operation"

let rec decode_object_type d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Object_type_undefined:Pg_query_types.object_type)
  | 1 -> (Pg_query_types.Object_access_method:Pg_query_types.object_type)
  | 2 -> (Pg_query_types.Object_aggregate:Pg_query_types.object_type)
  | 3 -> (Pg_query_types.Object_amop:Pg_query_types.object_type)
  | 4 -> (Pg_query_types.Object_amproc:Pg_query_types.object_type)
  | 5 -> (Pg_query_types.Object_attribute:Pg_query_types.object_type)
  | 6 -> (Pg_query_types.Object_cast:Pg_query_types.object_type)
  | 7 -> (Pg_query_types.Object_column:Pg_query_types.object_type)
  | 8 -> (Pg_query_types.Object_collation:Pg_query_types.object_type)
  | 9 -> (Pg_query_types.Object_conversion:Pg_query_types.object_type)
  | 10 -> (Pg_query_types.Object_database:Pg_query_types.object_type)
  | 11 -> (Pg_query_types.Object_default:Pg_query_types.object_type)
  | 12 -> (Pg_query_types.Object_defacl:Pg_query_types.object_type)
  | 13 -> (Pg_query_types.Object_domain:Pg_query_types.object_type)
  | 14 -> (Pg_query_types.Object_domconstraint:Pg_query_types.object_type)
  | 15 -> (Pg_query_types.Object_event_trigger:Pg_query_types.object_type)
  | 16 -> (Pg_query_types.Object_extension:Pg_query_types.object_type)
  | 17 -> (Pg_query_types.Object_fdw:Pg_query_types.object_type)
  | 18 -> (Pg_query_types.Object_foreign_server:Pg_query_types.object_type)
  | 19 -> (Pg_query_types.Object_foreign_table:Pg_query_types.object_type)
  | 20 -> (Pg_query_types.Object_function:Pg_query_types.object_type)
  | 21 -> (Pg_query_types.Object_index:Pg_query_types.object_type)
  | 22 -> (Pg_query_types.Object_language:Pg_query_types.object_type)
  | 23 -> (Pg_query_types.Object_largeobject:Pg_query_types.object_type)
  | 24 -> (Pg_query_types.Object_matview:Pg_query_types.object_type)
  | 25 -> (Pg_query_types.Object_opclass:Pg_query_types.object_type)
  | 26 -> (Pg_query_types.Object_operator:Pg_query_types.object_type)
  | 27 -> (Pg_query_types.Object_opfamily:Pg_query_types.object_type)
  | 28 -> (Pg_query_types.Object_parameter_acl:Pg_query_types.object_type)
  | 29 -> (Pg_query_types.Object_policy:Pg_query_types.object_type)
  | 30 -> (Pg_query_types.Object_procedure:Pg_query_types.object_type)
  | 31 -> (Pg_query_types.Object_publication:Pg_query_types.object_type)
  | 32 -> (Pg_query_types.Object_publication_namespace:Pg_query_types.object_type)
  | 33 -> (Pg_query_types.Object_publication_rel:Pg_query_types.object_type)
  | 34 -> (Pg_query_types.Object_role:Pg_query_types.object_type)
  | 35 -> (Pg_query_types.Object_routine:Pg_query_types.object_type)
  | 36 -> (Pg_query_types.Object_rule:Pg_query_types.object_type)
  | 37 -> (Pg_query_types.Object_schema:Pg_query_types.object_type)
  | 38 -> (Pg_query_types.Object_sequence:Pg_query_types.object_type)
  | 39 -> (Pg_query_types.Object_subscription:Pg_query_types.object_type)
  | 40 -> (Pg_query_types.Object_statistic_ext:Pg_query_types.object_type)
  | 41 -> (Pg_query_types.Object_tabconstraint:Pg_query_types.object_type)
  | 42 -> (Pg_query_types.Object_table:Pg_query_types.object_type)
  | 43 -> (Pg_query_types.Object_tablespace:Pg_query_types.object_type)
  | 44 -> (Pg_query_types.Object_transform:Pg_query_types.object_type)
  | 45 -> (Pg_query_types.Object_trigger:Pg_query_types.object_type)
  | 46 -> (Pg_query_types.Object_tsconfiguration:Pg_query_types.object_type)
  | 47 -> (Pg_query_types.Object_tsdictionary:Pg_query_types.object_type)
  | 48 -> (Pg_query_types.Object_tsparser:Pg_query_types.object_type)
  | 49 -> (Pg_query_types.Object_tstemplate:Pg_query_types.object_type)
  | 50 -> (Pg_query_types.Object_type:Pg_query_types.object_type)
  | 51 -> (Pg_query_types.Object_user_mapping:Pg_query_types.object_type)
  | 52 -> (Pg_query_types.Object_view:Pg_query_types.object_type)
  | _ -> Pbrt.Decoder.malformed_variant "object_type"

let rec decode_alter_table_type d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Alter_table_type_undefined:Pg_query_types.alter_table_type)
  | 1 -> (Pg_query_types.At_add_column:Pg_query_types.alter_table_type)
  | 2 -> (Pg_query_types.At_add_column_recurse:Pg_query_types.alter_table_type)
  | 3 -> (Pg_query_types.At_add_column_to_view:Pg_query_types.alter_table_type)
  | 4 -> (Pg_query_types.At_column_default:Pg_query_types.alter_table_type)
  | 5 -> (Pg_query_types.At_cooked_column_default:Pg_query_types.alter_table_type)
  | 6 -> (Pg_query_types.At_drop_not_null:Pg_query_types.alter_table_type)
  | 7 -> (Pg_query_types.At_set_not_null:Pg_query_types.alter_table_type)
  | 8 -> (Pg_query_types.At_drop_expression:Pg_query_types.alter_table_type)
  | 9 -> (Pg_query_types.At_check_not_null:Pg_query_types.alter_table_type)
  | 10 -> (Pg_query_types.At_set_statistics:Pg_query_types.alter_table_type)
  | 11 -> (Pg_query_types.At_set_options:Pg_query_types.alter_table_type)
  | 12 -> (Pg_query_types.At_reset_options:Pg_query_types.alter_table_type)
  | 13 -> (Pg_query_types.At_set_storage:Pg_query_types.alter_table_type)
  | 14 -> (Pg_query_types.At_set_compression:Pg_query_types.alter_table_type)
  | 15 -> (Pg_query_types.At_drop_column:Pg_query_types.alter_table_type)
  | 16 -> (Pg_query_types.At_drop_column_recurse:Pg_query_types.alter_table_type)
  | 17 -> (Pg_query_types.At_add_index:Pg_query_types.alter_table_type)
  | 18 -> (Pg_query_types.At_re_add_index:Pg_query_types.alter_table_type)
  | 19 -> (Pg_query_types.At_add_constraint:Pg_query_types.alter_table_type)
  | 20 -> (Pg_query_types.At_add_constraint_recurse:Pg_query_types.alter_table_type)
  | 21 -> (Pg_query_types.At_re_add_constraint:Pg_query_types.alter_table_type)
  | 22 -> (Pg_query_types.At_re_add_domain_constraint:Pg_query_types.alter_table_type)
  | 23 -> (Pg_query_types.At_alter_constraint:Pg_query_types.alter_table_type)
  | 24 -> (Pg_query_types.At_validate_constraint:Pg_query_types.alter_table_type)
  | 25 -> (Pg_query_types.At_validate_constraint_recurse:Pg_query_types.alter_table_type)
  | 26 -> (Pg_query_types.At_add_index_constraint:Pg_query_types.alter_table_type)
  | 27 -> (Pg_query_types.At_drop_constraint:Pg_query_types.alter_table_type)
  | 28 -> (Pg_query_types.At_drop_constraint_recurse:Pg_query_types.alter_table_type)
  | 29 -> (Pg_query_types.At_re_add_comment:Pg_query_types.alter_table_type)
  | 30 -> (Pg_query_types.At_alter_column_type:Pg_query_types.alter_table_type)
  | 31 -> (Pg_query_types.At_alter_column_generic_options:Pg_query_types.alter_table_type)
  | 32 -> (Pg_query_types.At_change_owner:Pg_query_types.alter_table_type)
  | 33 -> (Pg_query_types.At_cluster_on:Pg_query_types.alter_table_type)
  | 34 -> (Pg_query_types.At_drop_cluster:Pg_query_types.alter_table_type)
  | 35 -> (Pg_query_types.At_set_logged:Pg_query_types.alter_table_type)
  | 36 -> (Pg_query_types.At_set_un_logged:Pg_query_types.alter_table_type)
  | 37 -> (Pg_query_types.At_drop_oids:Pg_query_types.alter_table_type)
  | 38 -> (Pg_query_types.At_set_access_method:Pg_query_types.alter_table_type)
  | 39 -> (Pg_query_types.At_set_table_space:Pg_query_types.alter_table_type)
  | 40 -> (Pg_query_types.At_set_rel_options:Pg_query_types.alter_table_type)
  | 41 -> (Pg_query_types.At_reset_rel_options:Pg_query_types.alter_table_type)
  | 42 -> (Pg_query_types.At_replace_rel_options:Pg_query_types.alter_table_type)
  | 43 -> (Pg_query_types.At_enable_trig:Pg_query_types.alter_table_type)
  | 44 -> (Pg_query_types.At_enable_always_trig:Pg_query_types.alter_table_type)
  | 45 -> (Pg_query_types.At_enable_replica_trig:Pg_query_types.alter_table_type)
  | 46 -> (Pg_query_types.At_disable_trig:Pg_query_types.alter_table_type)
  | 47 -> (Pg_query_types.At_enable_trig_all:Pg_query_types.alter_table_type)
  | 48 -> (Pg_query_types.At_disable_trig_all:Pg_query_types.alter_table_type)
  | 49 -> (Pg_query_types.At_enable_trig_user:Pg_query_types.alter_table_type)
  | 50 -> (Pg_query_types.At_disable_trig_user:Pg_query_types.alter_table_type)
  | 51 -> (Pg_query_types.At_enable_rule:Pg_query_types.alter_table_type)
  | 52 -> (Pg_query_types.At_enable_always_rule:Pg_query_types.alter_table_type)
  | 53 -> (Pg_query_types.At_enable_replica_rule:Pg_query_types.alter_table_type)
  | 54 -> (Pg_query_types.At_disable_rule:Pg_query_types.alter_table_type)
  | 55 -> (Pg_query_types.At_add_inherit:Pg_query_types.alter_table_type)
  | 56 -> (Pg_query_types.At_drop_inherit:Pg_query_types.alter_table_type)
  | 57 -> (Pg_query_types.At_add_of:Pg_query_types.alter_table_type)
  | 58 -> (Pg_query_types.At_drop_of:Pg_query_types.alter_table_type)
  | 59 -> (Pg_query_types.At_replica_identity:Pg_query_types.alter_table_type)
  | 60 -> (Pg_query_types.At_enable_row_security:Pg_query_types.alter_table_type)
  | 61 -> (Pg_query_types.At_disable_row_security:Pg_query_types.alter_table_type)
  | 62 -> (Pg_query_types.At_force_row_security:Pg_query_types.alter_table_type)
  | 63 -> (Pg_query_types.At_no_force_row_security:Pg_query_types.alter_table_type)
  | 64 -> (Pg_query_types.At_generic_options:Pg_query_types.alter_table_type)
  | 65 -> (Pg_query_types.At_attach_partition:Pg_query_types.alter_table_type)
  | 66 -> (Pg_query_types.At_detach_partition:Pg_query_types.alter_table_type)
  | 67 -> (Pg_query_types.At_detach_partition_finalize:Pg_query_types.alter_table_type)
  | 68 -> (Pg_query_types.At_add_identity:Pg_query_types.alter_table_type)
  | 69 -> (Pg_query_types.At_set_identity:Pg_query_types.alter_table_type)
  | 70 -> (Pg_query_types.At_drop_identity:Pg_query_types.alter_table_type)
  | 71 -> (Pg_query_types.At_re_add_statistics:Pg_query_types.alter_table_type)
  | _ -> Pbrt.Decoder.malformed_variant "alter_table_type"

let rec decode_role_spec_type d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Role_spec_type_undefined:Pg_query_types.role_spec_type)
  | 1 -> (Pg_query_types.Rolespec_cstring:Pg_query_types.role_spec_type)
  | 2 -> (Pg_query_types.Rolespec_current_role:Pg_query_types.role_spec_type)
  | 3 -> (Pg_query_types.Rolespec_current_user:Pg_query_types.role_spec_type)
  | 4 -> (Pg_query_types.Rolespec_session_user:Pg_query_types.role_spec_type)
  | 5 -> (Pg_query_types.Rolespec_public:Pg_query_types.role_spec_type)
  | _ -> Pbrt.Decoder.malformed_variant "role_spec_type"

let rec decode_role_spec d =
  let v = default_role_spec_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.roletype <- decode_role_spec_type d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(role_spec), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.rolename <- Pbrt.Decoder.string d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(role_spec), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(role_spec), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.roletype = v.roletype;
    Pg_query_types.rolename = v.rolename;
    Pg_query_types.location = v.location;
  } : Pg_query_types.role_spec)

let rec decode_drop_behavior d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Drop_behavior_undefined:Pg_query_types.drop_behavior)
  | 1 -> (Pg_query_types.Drop_restrict:Pg_query_types.drop_behavior)
  | 2 -> (Pg_query_types.Drop_cascade:Pg_query_types.drop_behavior)
  | _ -> Pbrt.Decoder.malformed_variant "drop_behavior"

let rec decode_grant_target_type d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Grant_target_type_undefined:Pg_query_types.grant_target_type)
  | 1 -> (Pg_query_types.Acl_target_object:Pg_query_types.grant_target_type)
  | 2 -> (Pg_query_types.Acl_target_all_in_schema:Pg_query_types.grant_target_type)
  | 3 -> (Pg_query_types.Acl_target_defaults:Pg_query_types.grant_target_type)
  | _ -> Pbrt.Decoder.malformed_variant "grant_target_type"

let rec decode_close_portal_stmt d =
  let v = default_close_portal_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.portalname <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(close_portal_stmt), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.portalname = v.portalname;
  } : Pg_query_types.close_portal_stmt)

let rec decode_fetch_direction d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Fetch_direction_undefined:Pg_query_types.fetch_direction)
  | 1 -> (Pg_query_types.Fetch_forward:Pg_query_types.fetch_direction)
  | 2 -> (Pg_query_types.Fetch_backward:Pg_query_types.fetch_direction)
  | 3 -> (Pg_query_types.Fetch_absolute:Pg_query_types.fetch_direction)
  | 4 -> (Pg_query_types.Fetch_relative:Pg_query_types.fetch_direction)
  | _ -> Pbrt.Decoder.malformed_variant "fetch_direction"

let rec decode_fetch_stmt d =
  let v = default_fetch_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.direction <- decode_fetch_direction d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(fetch_stmt), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.how_many <- Pbrt.Decoder.int64_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(fetch_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.portalname <- Pbrt.Decoder.string d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(fetch_stmt), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.ismove <- Pbrt.Decoder.bool d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(fetch_stmt), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.direction = v.direction;
    Pg_query_types.how_many = v.how_many;
    Pg_query_types.portalname = v.portalname;
    Pg_query_types.ismove = v.ismove;
  } : Pg_query_types.fetch_stmt)

let rec decode_notify_stmt d =
  let v = default_notify_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.conditionname <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(notify_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.payload <- Pbrt.Decoder.string d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(notify_stmt), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.conditionname = v.conditionname;
    Pg_query_types.payload = v.payload;
  } : Pg_query_types.notify_stmt)

let rec decode_listen_stmt d =
  let v = default_listen_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.conditionname <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(listen_stmt), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.conditionname = v.conditionname;
  } : Pg_query_types.listen_stmt)

let rec decode_unlisten_stmt d =
  let v = default_unlisten_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.conditionname <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(unlisten_stmt), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.conditionname = v.conditionname;
  } : Pg_query_types.unlisten_stmt)

let rec decode_transaction_stmt_kind d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Transaction_stmt_kind_undefined:Pg_query_types.transaction_stmt_kind)
  | 1 -> (Pg_query_types.Trans_stmt_begin:Pg_query_types.transaction_stmt_kind)
  | 2 -> (Pg_query_types.Trans_stmt_start:Pg_query_types.transaction_stmt_kind)
  | 3 -> (Pg_query_types.Trans_stmt_commit:Pg_query_types.transaction_stmt_kind)
  | 4 -> (Pg_query_types.Trans_stmt_rollback:Pg_query_types.transaction_stmt_kind)
  | 5 -> (Pg_query_types.Trans_stmt_savepoint:Pg_query_types.transaction_stmt_kind)
  | 6 -> (Pg_query_types.Trans_stmt_release:Pg_query_types.transaction_stmt_kind)
  | 7 -> (Pg_query_types.Trans_stmt_rollback_to:Pg_query_types.transaction_stmt_kind)
  | 8 -> (Pg_query_types.Trans_stmt_prepare:Pg_query_types.transaction_stmt_kind)
  | 9 -> (Pg_query_types.Trans_stmt_commit_prepared:Pg_query_types.transaction_stmt_kind)
  | 10 -> (Pg_query_types.Trans_stmt_rollback_prepared:Pg_query_types.transaction_stmt_kind)
  | _ -> Pbrt.Decoder.malformed_variant "transaction_stmt_kind"

let rec decode_view_check_option d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.View_check_option_undefined:Pg_query_types.view_check_option)
  | 1 -> (Pg_query_types.No_check_option:Pg_query_types.view_check_option)
  | 2 -> (Pg_query_types.Local_check_option:Pg_query_types.view_check_option)
  | 3 -> (Pg_query_types.Cascaded_check_option:Pg_query_types.view_check_option)
  | _ -> Pbrt.Decoder.malformed_variant "view_check_option"

let rec decode_load_stmt d =
  let v = default_load_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.filename <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(load_stmt), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.filename = v.filename;
  } : Pg_query_types.load_stmt)

let rec decode_variable_set_kind d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Variable_set_kind_undefined:Pg_query_types.variable_set_kind)
  | 1 -> (Pg_query_types.Var_set_value:Pg_query_types.variable_set_kind)
  | 2 -> (Pg_query_types.Var_set_default:Pg_query_types.variable_set_kind)
  | 3 -> (Pg_query_types.Var_set_current:Pg_query_types.variable_set_kind)
  | 4 -> (Pg_query_types.Var_set_multi:Pg_query_types.variable_set_kind)
  | 5 -> (Pg_query_types.Var_reset:Pg_query_types.variable_set_kind)
  | 6 -> (Pg_query_types.Var_reset_all:Pg_query_types.variable_set_kind)
  | _ -> Pbrt.Decoder.malformed_variant "variable_set_kind"

let rec decode_variable_show_stmt d =
  let v = default_variable_show_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.name <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(variable_show_stmt), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.name = v.name;
  } : Pg_query_types.variable_show_stmt)

let rec decode_discard_mode d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Discard_mode_undefined:Pg_query_types.discard_mode)
  | 1 -> (Pg_query_types.Discard_all:Pg_query_types.discard_mode)
  | 2 -> (Pg_query_types.Discard_plans:Pg_query_types.discard_mode)
  | 3 -> (Pg_query_types.Discard_sequences:Pg_query_types.discard_mode)
  | 4 -> (Pg_query_types.Discard_temp:Pg_query_types.discard_mode)
  | _ -> Pbrt.Decoder.malformed_variant "discard_mode"

let rec decode_discard_stmt d =
  let v = default_discard_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.target <- decode_discard_mode d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(discard_stmt), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.target = v.target;
  } : Pg_query_types.discard_stmt)

let rec decode_role_stmt_type d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Role_stmt_type_undefined:Pg_query_types.role_stmt_type)
  | 1 -> (Pg_query_types.Rolestmt_role:Pg_query_types.role_stmt_type)
  | 2 -> (Pg_query_types.Rolestmt_user:Pg_query_types.role_stmt_type)
  | 3 -> (Pg_query_types.Rolestmt_group:Pg_query_types.role_stmt_type)
  | _ -> Pbrt.Decoder.malformed_variant "role_stmt_type"

let rec decode_reindex_object_type d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Reindex_object_type_undefined:Pg_query_types.reindex_object_type)
  | 1 -> (Pg_query_types.Reindex_object_index:Pg_query_types.reindex_object_type)
  | 2 -> (Pg_query_types.Reindex_object_table:Pg_query_types.reindex_object_type)
  | 3 -> (Pg_query_types.Reindex_object_schema:Pg_query_types.reindex_object_type)
  | 4 -> (Pg_query_types.Reindex_object_system:Pg_query_types.reindex_object_type)
  | 5 -> (Pg_query_types.Reindex_object_database:Pg_query_types.reindex_object_type)
  | _ -> Pbrt.Decoder.malformed_variant "reindex_object_type"

let rec decode_alter_database_refresh_coll_stmt d =
  let v = default_alter_database_refresh_coll_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.dbname <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_database_refresh_coll_stmt), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.dbname = v.dbname;
  } : Pg_query_types.alter_database_refresh_coll_stmt)

let rec decode_coercion_context d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Coercion_context_undefined:Pg_query_types.coercion_context)
  | 1 -> (Pg_query_types.Coercion_implicit:Pg_query_types.coercion_context)
  | 2 -> (Pg_query_types.Coercion_assignment:Pg_query_types.coercion_context)
  | 3 -> (Pg_query_types.Coercion_plpgsql:Pg_query_types.coercion_context)
  | 4 -> (Pg_query_types.Coercion_explicit:Pg_query_types.coercion_context)
  | _ -> Pbrt.Decoder.malformed_variant "coercion_context"

let rec decode_deallocate_stmt d =
  let v = default_deallocate_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.name <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(deallocate_stmt), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.name = v.name;
  } : Pg_query_types.deallocate_stmt)

let rec decode_drop_table_space_stmt d =
  let v = default_drop_table_space_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.tablespacename <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(drop_table_space_stmt), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.missing_ok <- Pbrt.Decoder.bool d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(drop_table_space_stmt), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.tablespacename = v.tablespacename;
    Pg_query_types.missing_ok = v.missing_ok;
  } : Pg_query_types.drop_table_space_stmt)

let rec decode_string d =
  let v = default_string_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.sval <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(string), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.sval = v.sval;
  } : Pg_query_types.string)

let rec decode_alter_tsconfig_type d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Alter_tsconfig_type_undefined:Pg_query_types.alter_tsconfig_type)
  | 1 -> (Pg_query_types.Alter_tsconfig_add_mapping:Pg_query_types.alter_tsconfig_type)
  | 2 -> (Pg_query_types.Alter_tsconfig_alter_mapping_for_token:Pg_query_types.alter_tsconfig_type)
  | 3 -> (Pg_query_types.Alter_tsconfig_replace_dict:Pg_query_types.alter_tsconfig_type)
  | 4 -> (Pg_query_types.Alter_tsconfig_replace_dict_for_token:Pg_query_types.alter_tsconfig_type)
  | 5 -> (Pg_query_types.Alter_tsconfig_drop_mapping:Pg_query_types.alter_tsconfig_type)
  | _ -> Pbrt.Decoder.malformed_variant "alter_tsconfig_type"

let rec decode_drop_user_mapping_stmt d =
  let v = default_drop_user_mapping_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.user <- Some (decode_role_spec (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(drop_user_mapping_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.servername <- Pbrt.Decoder.string d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(drop_user_mapping_stmt), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.missing_ok <- Pbrt.Decoder.bool d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(drop_user_mapping_stmt), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.user = v.user;
    Pg_query_types.servername = v.servername;
    Pg_query_types.missing_ok = v.missing_ok;
  } : Pg_query_types.drop_user_mapping_stmt)

let rec decode_import_foreign_schema_type d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Import_foreign_schema_type_undefined:Pg_query_types.import_foreign_schema_type)
  | 1 -> (Pg_query_types.Fdw_import_schema_all:Pg_query_types.import_foreign_schema_type)
  | 2 -> (Pg_query_types.Fdw_import_schema_limit_to:Pg_query_types.import_foreign_schema_type)
  | 3 -> (Pg_query_types.Fdw_import_schema_except:Pg_query_types.import_foreign_schema_type)
  | _ -> Pbrt.Decoder.malformed_variant "import_foreign_schema_type"

let rec decode_alter_event_trig_stmt d =
  let v = default_alter_event_trig_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.trigname <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_event_trig_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.tgenabled <- Pbrt.Decoder.string d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_event_trig_stmt), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.trigname = v.trigname;
    Pg_query_types.tgenabled = v.tgenabled;
  } : Pg_query_types.alter_event_trig_stmt)

let rec decode_replica_identity_stmt d =
  let v = default_replica_identity_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.identity_type <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(replica_identity_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.name <- Pbrt.Decoder.string d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(replica_identity_stmt), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.identity_type = v.identity_type;
    Pg_query_types.name = v.name;
  } : Pg_query_types.replica_identity_stmt)

let rec decode_alter_publication_action d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Alter_publication_action_undefined:Pg_query_types.alter_publication_action)
  | 1 -> (Pg_query_types.Ap_add_objects:Pg_query_types.alter_publication_action)
  | 2 -> (Pg_query_types.Ap_drop_objects:Pg_query_types.alter_publication_action)
  | 3 -> (Pg_query_types.Ap_set_objects:Pg_query_types.alter_publication_action)
  | _ -> Pbrt.Decoder.malformed_variant "alter_publication_action"

let rec decode_alter_subscription_type d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Alter_subscription_type_undefined:Pg_query_types.alter_subscription_type)
  | 1 -> (Pg_query_types.Alter_subscription_options:Pg_query_types.alter_subscription_type)
  | 2 -> (Pg_query_types.Alter_subscription_connection:Pg_query_types.alter_subscription_type)
  | 3 -> (Pg_query_types.Alter_subscription_set_publication:Pg_query_types.alter_subscription_type)
  | 4 -> (Pg_query_types.Alter_subscription_add_publication:Pg_query_types.alter_subscription_type)
  | 5 -> (Pg_query_types.Alter_subscription_drop_publication:Pg_query_types.alter_subscription_type)
  | 6 -> (Pg_query_types.Alter_subscription_refresh:Pg_query_types.alter_subscription_type)
  | 7 -> (Pg_query_types.Alter_subscription_enabled:Pg_query_types.alter_subscription_type)
  | 8 -> (Pg_query_types.Alter_subscription_skip:Pg_query_types.alter_subscription_type)
  | _ -> Pbrt.Decoder.malformed_variant "alter_subscription_type"

let rec decode_drop_subscription_stmt d =
  let v = default_drop_subscription_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.subname <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(drop_subscription_stmt), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.missing_ok <- Pbrt.Decoder.bool d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(drop_subscription_stmt), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.behavior <- decode_drop_behavior d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(drop_subscription_stmt), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.subname = v.subname;
    Pg_query_types.missing_ok = v.missing_ok;
    Pg_query_types.behavior = v.behavior;
  } : Pg_query_types.drop_subscription_stmt)

let rec decode_a_expr_kind d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.A_expr_kind_undefined:Pg_query_types.a_expr_kind)
  | 1 -> (Pg_query_types.Aexpr_op:Pg_query_types.a_expr_kind)
  | 2 -> (Pg_query_types.Aexpr_op_any:Pg_query_types.a_expr_kind)
  | 3 -> (Pg_query_types.Aexpr_op_all:Pg_query_types.a_expr_kind)
  | 4 -> (Pg_query_types.Aexpr_distinct:Pg_query_types.a_expr_kind)
  | 5 -> (Pg_query_types.Aexpr_not_distinct:Pg_query_types.a_expr_kind)
  | 6 -> (Pg_query_types.Aexpr_nullif:Pg_query_types.a_expr_kind)
  | 7 -> (Pg_query_types.Aexpr_in:Pg_query_types.a_expr_kind)
  | 8 -> (Pg_query_types.Aexpr_like:Pg_query_types.a_expr_kind)
  | 9 -> (Pg_query_types.Aexpr_ilike:Pg_query_types.a_expr_kind)
  | 10 -> (Pg_query_types.Aexpr_similar:Pg_query_types.a_expr_kind)
  | 11 -> (Pg_query_types.Aexpr_between:Pg_query_types.a_expr_kind)
  | 12 -> (Pg_query_types.Aexpr_not_between:Pg_query_types.a_expr_kind)
  | 13 -> (Pg_query_types.Aexpr_between_sym:Pg_query_types.a_expr_kind)
  | 14 -> (Pg_query_types.Aexpr_not_between_sym:Pg_query_types.a_expr_kind)
  | _ -> Pbrt.Decoder.malformed_variant "a_expr_kind"

let rec decode_param_ref d =
  let v = default_param_ref_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.number <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(param_ref), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(param_ref), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.number = v.number;
    Pg_query_types.location = v.location;
  } : Pg_query_types.param_ref)

let rec decode_sort_by_dir d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Sort_by_dir_undefined:Pg_query_types.sort_by_dir)
  | 1 -> (Pg_query_types.Sortby_default:Pg_query_types.sort_by_dir)
  | 2 -> (Pg_query_types.Sortby_asc:Pg_query_types.sort_by_dir)
  | 3 -> (Pg_query_types.Sortby_desc:Pg_query_types.sort_by_dir)
  | 4 -> (Pg_query_types.Sortby_using:Pg_query_types.sort_by_dir)
  | _ -> Pbrt.Decoder.malformed_variant "sort_by_dir"

let rec decode_sort_by_nulls d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Sort_by_nulls_undefined:Pg_query_types.sort_by_nulls)
  | 1 -> (Pg_query_types.Sortby_nulls_default:Pg_query_types.sort_by_nulls)
  | 2 -> (Pg_query_types.Sortby_nulls_first:Pg_query_types.sort_by_nulls)
  | 3 -> (Pg_query_types.Sortby_nulls_last:Pg_query_types.sort_by_nulls)
  | _ -> Pbrt.Decoder.malformed_variant "sort_by_nulls"

let rec decode_constr_type d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Constr_type_undefined:Pg_query_types.constr_type)
  | 1 -> (Pg_query_types.Constr_null:Pg_query_types.constr_type)
  | 2 -> (Pg_query_types.Constr_notnull:Pg_query_types.constr_type)
  | 3 -> (Pg_query_types.Constr_default:Pg_query_types.constr_type)
  | 4 -> (Pg_query_types.Constr_identity:Pg_query_types.constr_type)
  | 5 -> (Pg_query_types.Constr_generated:Pg_query_types.constr_type)
  | 6 -> (Pg_query_types.Constr_check:Pg_query_types.constr_type)
  | 7 -> (Pg_query_types.Constr_primary:Pg_query_types.constr_type)
  | 8 -> (Pg_query_types.Constr_unique:Pg_query_types.constr_type)
  | 9 -> (Pg_query_types.Constr_exclusion:Pg_query_types.constr_type)
  | 10 -> (Pg_query_types.Constr_foreign:Pg_query_types.constr_type)
  | 11 -> (Pg_query_types.Constr_attr_deferrable:Pg_query_types.constr_type)
  | 12 -> (Pg_query_types.Constr_attr_not_deferrable:Pg_query_types.constr_type)
  | 13 -> (Pg_query_types.Constr_attr_deferred:Pg_query_types.constr_type)
  | 14 -> (Pg_query_types.Constr_attr_immediate:Pg_query_types.constr_type)
  | _ -> Pbrt.Decoder.malformed_variant "constr_type"

let rec decode_def_elem_action d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Def_elem_action_undefined:Pg_query_types.def_elem_action)
  | 1 -> (Pg_query_types.Defelem_unspec:Pg_query_types.def_elem_action)
  | 2 -> (Pg_query_types.Defelem_set:Pg_query_types.def_elem_action)
  | 3 -> (Pg_query_types.Defelem_add:Pg_query_types.def_elem_action)
  | 4 -> (Pg_query_types.Defelem_drop:Pg_query_types.def_elem_action)
  | _ -> Pbrt.Decoder.malformed_variant "def_elem_action"

let rec decode_rtekind d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Rtekind_undefined:Pg_query_types.rtekind)
  | 1 -> (Pg_query_types.Rte_relation:Pg_query_types.rtekind)
  | 2 -> (Pg_query_types.Rte_subquery:Pg_query_types.rtekind)
  | 3 -> (Pg_query_types.Rte_join:Pg_query_types.rtekind)
  | 4 -> (Pg_query_types.Rte_function:Pg_query_types.rtekind)
  | 5 -> (Pg_query_types.Rte_tablefunc:Pg_query_types.rtekind)
  | 6 -> (Pg_query_types.Rte_values:Pg_query_types.rtekind)
  | 7 -> (Pg_query_types.Rte_cte:Pg_query_types.rtekind)
  | 8 -> (Pg_query_types.Rte_namedtuplestore:Pg_query_types.rtekind)
  | 9 -> (Pg_query_types.Rte_result:Pg_query_types.rtekind)
  | _ -> Pbrt.Decoder.malformed_variant "rtekind"

let rec decode_wcokind d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Wcokind_undefined:Pg_query_types.wcokind)
  | 1 -> (Pg_query_types.Wco_view_check:Pg_query_types.wcokind)
  | 2 -> (Pg_query_types.Wco_rls_insert_check:Pg_query_types.wcokind)
  | 3 -> (Pg_query_types.Wco_rls_update_check:Pg_query_types.wcokind)
  | 4 -> (Pg_query_types.Wco_rls_conflict_check:Pg_query_types.wcokind)
  | 5 -> (Pg_query_types.Wco_rls_merge_update_check:Pg_query_types.wcokind)
  | 6 -> (Pg_query_types.Wco_rls_merge_delete_check:Pg_query_types.wcokind)
  | _ -> Pbrt.Decoder.malformed_variant "wcokind"

let rec decode_sort_group_clause d =
  let v = default_sort_group_clause_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.tle_sort_group_ref <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sort_group_clause), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.eqop <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sort_group_clause), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.sortop <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sort_group_clause), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.nulls_first <- Pbrt.Decoder.bool d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sort_group_clause), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.hashable <- Pbrt.Decoder.bool d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sort_group_clause), field(5)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.tle_sort_group_ref = v.tle_sort_group_ref;
    Pg_query_types.eqop = v.eqop;
    Pg_query_types.sortop = v.sortop;
    Pg_query_types.nulls_first = v.nulls_first;
    Pg_query_types.hashable = v.hashable;
  } : Pg_query_types.sort_group_clause)

let rec decode_grouping_set_kind d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Grouping_set_kind_undefined:Pg_query_types.grouping_set_kind)
  | 1 -> (Pg_query_types.Grouping_set_empty:Pg_query_types.grouping_set_kind)
  | 2 -> (Pg_query_types.Grouping_set_simple:Pg_query_types.grouping_set_kind)
  | 3 -> (Pg_query_types.Grouping_set_rollup:Pg_query_types.grouping_set_kind)
  | 4 -> (Pg_query_types.Grouping_set_cube:Pg_query_types.grouping_set_kind)
  | 5 -> (Pg_query_types.Grouping_set_sets:Pg_query_types.grouping_set_kind)
  | _ -> Pbrt.Decoder.malformed_variant "grouping_set_kind"

let rec decode_function_parameter_mode d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Function_parameter_mode_undefined:Pg_query_types.function_parameter_mode)
  | 1 -> (Pg_query_types.Func_param_in:Pg_query_types.function_parameter_mode)
  | 2 -> (Pg_query_types.Func_param_out:Pg_query_types.function_parameter_mode)
  | 3 -> (Pg_query_types.Func_param_inout:Pg_query_types.function_parameter_mode)
  | 4 -> (Pg_query_types.Func_param_variadic:Pg_query_types.function_parameter_mode)
  | 5 -> (Pg_query_types.Func_param_table:Pg_query_types.function_parameter_mode)
  | 6 -> (Pg_query_types.Func_param_default:Pg_query_types.function_parameter_mode)
  | _ -> Pbrt.Decoder.malformed_variant "function_parameter_mode"

let rec decode_lock_clause_strength d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Lock_clause_strength_undefined:Pg_query_types.lock_clause_strength)
  | 1 -> (Pg_query_types.Lcs_none:Pg_query_types.lock_clause_strength)
  | 2 -> (Pg_query_types.Lcs_forkeyshare:Pg_query_types.lock_clause_strength)
  | 3 -> (Pg_query_types.Lcs_forshare:Pg_query_types.lock_clause_strength)
  | 4 -> (Pg_query_types.Lcs_fornokeyupdate:Pg_query_types.lock_clause_strength)
  | 5 -> (Pg_query_types.Lcs_forupdate:Pg_query_types.lock_clause_strength)
  | _ -> Pbrt.Decoder.malformed_variant "lock_clause_strength"

let rec decode_lock_wait_policy d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Lock_wait_policy_undefined:Pg_query_types.lock_wait_policy)
  | 1 -> (Pg_query_types.Lock_wait_block:Pg_query_types.lock_wait_policy)
  | 2 -> (Pg_query_types.Lock_wait_skip:Pg_query_types.lock_wait_policy)
  | 3 -> (Pg_query_types.Lock_wait_error:Pg_query_types.lock_wait_policy)
  | _ -> Pbrt.Decoder.malformed_variant "lock_wait_policy"

let rec decode_row_mark_clause d =
  let v = default_row_mark_clause_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.rti <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(row_mark_clause), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.strength <- decode_lock_clause_strength d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(row_mark_clause), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.wait_policy <- decode_lock_wait_policy d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(row_mark_clause), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.pushed_down <- Pbrt.Decoder.bool d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(row_mark_clause), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.rti = v.rti;
    Pg_query_types.strength = v.strength;
    Pg_query_types.wait_policy = v.wait_policy;
    Pg_query_types.pushed_down = v.pushed_down;
  } : Pg_query_types.row_mark_clause)

let rec decode_ctematerialize d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Ctematerialize_undefined:Pg_query_types.ctematerialize)
  | 1 -> (Pg_query_types.Ctematerialize_default:Pg_query_types.ctematerialize)
  | 2 -> (Pg_query_types.Ctematerialize_always:Pg_query_types.ctematerialize)
  | 3 -> (Pg_query_types.Ctematerialize_never:Pg_query_types.ctematerialize)
  | _ -> Pbrt.Decoder.malformed_variant "ctematerialize"

let rec decode_trigger_transition d =
  let v = default_trigger_transition_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.name <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(trigger_transition), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.is_new <- Pbrt.Decoder.bool d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(trigger_transition), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.is_table <- Pbrt.Decoder.bool d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(trigger_transition), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.name = v.name;
    Pg_query_types.is_new = v.is_new;
    Pg_query_types.is_table = v.is_table;
  } : Pg_query_types.trigger_transition)

let rec decode_partition_range_datum_kind d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Partition_range_datum_kind_undefined:Pg_query_types.partition_range_datum_kind)
  | 1 -> (Pg_query_types.Partition_range_datum_minvalue:Pg_query_types.partition_range_datum_kind)
  | 2 -> (Pg_query_types.Partition_range_datum_value:Pg_query_types.partition_range_datum_kind)
  | 3 -> (Pg_query_types.Partition_range_datum_maxvalue:Pg_query_types.partition_range_datum_kind)
  | _ -> Pbrt.Decoder.malformed_variant "partition_range_datum_kind"

let rec decode_publication_obj_spec_type d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Publication_obj_spec_type_undefined:Pg_query_types.publication_obj_spec_type)
  | 1 -> (Pg_query_types.Publicationobj_table:Pg_query_types.publication_obj_spec_type)
  | 2 -> (Pg_query_types.Publicationobj_tables_in_schema:Pg_query_types.publication_obj_spec_type)
  | 3 -> (Pg_query_types.Publicationobj_tables_in_cur_schema:Pg_query_types.publication_obj_spec_type)
  | 4 -> (Pg_query_types.Publicationobj_continuation:Pg_query_types.publication_obj_spec_type)
  | _ -> Pbrt.Decoder.malformed_variant "publication_obj_spec_type"

let rec decode_inline_code_block d =
  let v = default_inline_code_block_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.source_text <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(inline_code_block), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.lang_oid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(inline_code_block), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.lang_is_trusted <- Pbrt.Decoder.bool d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(inline_code_block), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.atomic <- Pbrt.Decoder.bool d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(inline_code_block), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.source_text = v.source_text;
    Pg_query_types.lang_oid = v.lang_oid;
    Pg_query_types.lang_is_trusted = v.lang_is_trusted;
    Pg_query_types.atomic = v.atomic;
  } : Pg_query_types.inline_code_block)

let rec decode_call_context d =
  let v = default_call_context_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.atomic <- Pbrt.Decoder.bool d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(call_context), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.atomic = v.atomic;
  } : Pg_query_types.call_context)

let rec decode_integer d =
  let v = default_integer_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.ival <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(integer), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.ival = v.ival;
  } : Pg_query_types.integer)

let rec decode_float d =
  let v = default_float_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.fval <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(float), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.fval = v.fval;
  } : Pg_query_types.float)

let rec decode_boolean d =
  let v = default_boolean_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.boolval <- Pbrt.Decoder.bool d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(boolean), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.boolval = v.boolval;
  } : Pg_query_types.boolean)

let rec decode_bit_string d =
  let v = default_bit_string_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.bsval <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(bit_string), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.bsval = v.bsval;
  } : Pg_query_types.bit_string)

let rec decode_a_const_val d = 
  let rec loop () = 
    let ret:Pg_query_types.a_const_val = match Pbrt.Decoder.key d with
      | None -> Pbrt.Decoder.malformed_variant "a_const_val"
      | Some (1, _) -> (Pg_query_types.Ival (decode_integer (Pbrt.Decoder.nested d)) : Pg_query_types.a_const_val) 
      | Some (2, _) -> (Pg_query_types.Fval (decode_float (Pbrt.Decoder.nested d)) : Pg_query_types.a_const_val) 
      | Some (3, _) -> (Pg_query_types.Boolval (decode_boolean (Pbrt.Decoder.nested d)) : Pg_query_types.a_const_val) 
      | Some (4, _) -> (Pg_query_types.Sval (decode_string (Pbrt.Decoder.nested d)) : Pg_query_types.a_const_val) 
      | Some (5, _) -> (Pg_query_types.Bsval (decode_bit_string (Pbrt.Decoder.nested d)) : Pg_query_types.a_const_val) 
      | Some (n, payload_kind) -> (
        Pbrt.Decoder.skip d payload_kind; 
        loop () 
      )
    in
    ret
  in
  loop ()

and decode_a_const d =
  let v = default_a_const_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.val_ <- Pg_query_types.Ival (decode_integer (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(a_const), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.val_ <- Pg_query_types.Fval (decode_float (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(a_const), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.val_ <- Pg_query_types.Boolval (decode_boolean (Pbrt.Decoder.nested d));
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(a_const), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.val_ <- Pg_query_types.Sval (decode_string (Pbrt.Decoder.nested d));
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(a_const), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.val_ <- Pg_query_types.Bsval (decode_bit_string (Pbrt.Decoder.nested d));
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(a_const), field(5)" pk
    | Some (10, Pbrt.Varint) -> begin
      v.isnull <- Pbrt.Decoder.bool d;
    end
    | Some (10, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(a_const), field(10)" pk
    | Some (11, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (11, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(a_const), field(11)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.val_ = v.val_;
    Pg_query_types.isnull = v.isnull;
    Pg_query_types.location = v.location;
  } : Pg_query_types.a_const)

let rec decode_raw_stmt d =
  let v = default_raw_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.stmt <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(raw_stmt), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.stmt_location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(raw_stmt), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.stmt_len <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(raw_stmt), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.stmt = v.stmt;
    Pg_query_types.stmt_location = v.stmt_location;
    Pg_query_types.stmt_len = v.stmt_len;
  } : Pg_query_types.raw_stmt)

and decode_node d = 
  let rec loop () = 
    let ret:Pg_query_types.node = match Pbrt.Decoder.key d with
      | None -> Pbrt.Decoder.malformed_variant "node"
      | Some (1, _) -> (Pg_query_types.Alias (decode_alias (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (2, _) -> (Pg_query_types.Range_var (decode_range_var (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (3, _) -> (Pg_query_types.Table_func (decode_table_func (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (4, _) -> (Pg_query_types.Var (decode_var (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (5, _) -> (Pg_query_types.Param (decode_param (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (6, _) -> (Pg_query_types.Aggref (decode_aggref (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (7, _) -> (Pg_query_types.Grouping_func (decode_grouping_func (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (8, _) -> (Pg_query_types.Window_func (decode_window_func (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (9, _) -> (Pg_query_types.Subscripting_ref (decode_subscripting_ref (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (10, _) -> (Pg_query_types.Func_expr (decode_func_expr (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (11, _) -> (Pg_query_types.Named_arg_expr (decode_named_arg_expr (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (12, _) -> (Pg_query_types.Op_expr (decode_op_expr (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (13, _) -> (Pg_query_types.Distinct_expr (decode_distinct_expr (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (14, _) -> (Pg_query_types.Null_if_expr (decode_null_if_expr (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (15, _) -> (Pg_query_types.Scalar_array_op_expr (decode_scalar_array_op_expr (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (16, _) -> (Pg_query_types.Bool_expr (decode_bool_expr (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (17, _) -> (Pg_query_types.Sub_link (decode_sub_link (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (18, _) -> (Pg_query_types.Sub_plan (decode_sub_plan (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (19, _) -> (Pg_query_types.Alternative_sub_plan (decode_alternative_sub_plan (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (20, _) -> (Pg_query_types.Field_select (decode_field_select (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (21, _) -> (Pg_query_types.Field_store (decode_field_store (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (22, _) -> (Pg_query_types.Relabel_type (decode_relabel_type (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (23, _) -> (Pg_query_types.Coerce_via_io (decode_coerce_via_io (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (24, _) -> (Pg_query_types.Array_coerce_expr (decode_array_coerce_expr (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (25, _) -> (Pg_query_types.Convert_rowtype_expr (decode_convert_rowtype_expr (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (26, _) -> (Pg_query_types.Collate_expr (decode_collate_expr (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (27, _) -> (Pg_query_types.Case_expr (decode_case_expr (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (28, _) -> (Pg_query_types.Case_when (decode_case_when (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (29, _) -> (Pg_query_types.Case_test_expr (decode_case_test_expr (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (30, _) -> (Pg_query_types.Array_expr (decode_array_expr (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (31, _) -> (Pg_query_types.Row_expr (decode_row_expr (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (32, _) -> (Pg_query_types.Row_compare_expr (decode_row_compare_expr (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (33, _) -> (Pg_query_types.Coalesce_expr (decode_coalesce_expr (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (34, _) -> (Pg_query_types.Min_max_expr (decode_min_max_expr (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (35, _) -> (Pg_query_types.Sqlvalue_function (decode_sqlvalue_function (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (36, _) -> (Pg_query_types.Xml_expr (decode_xml_expr (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (37, _) -> (Pg_query_types.Null_test (decode_null_test (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (38, _) -> (Pg_query_types.Boolean_test (decode_boolean_test (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (39, _) -> (Pg_query_types.Coerce_to_domain (decode_coerce_to_domain (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (40, _) -> (Pg_query_types.Coerce_to_domain_value (decode_coerce_to_domain_value (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (41, _) -> (Pg_query_types.Set_to_default (decode_set_to_default (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (42, _) -> (Pg_query_types.Current_of_expr (decode_current_of_expr (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (43, _) -> (Pg_query_types.Next_value_expr (decode_next_value_expr (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (44, _) -> (Pg_query_types.Inference_elem (decode_inference_elem (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (45, _) -> (Pg_query_types.Target_entry (decode_target_entry (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (46, _) -> (Pg_query_types.Range_tbl_ref (decode_range_tbl_ref (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (47, _) -> (Pg_query_types.Join_expr (decode_join_expr (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (48, _) -> (Pg_query_types.From_expr (decode_from_expr (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (49, _) -> (Pg_query_types.On_conflict_expr (decode_on_conflict_expr (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (50, _) -> (Pg_query_types.Into_clause (decode_into_clause (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (51, _) -> (Pg_query_types.Merge_action (decode_merge_action (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (52, _) -> (Pg_query_types.Raw_stmt (decode_raw_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (53, _) -> (Pg_query_types.Query (decode_query (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (54, _) -> (Pg_query_types.Insert_stmt (decode_insert_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (55, _) -> (Pg_query_types.Delete_stmt (decode_delete_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (56, _) -> (Pg_query_types.Update_stmt (decode_update_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (57, _) -> (Pg_query_types.Merge_stmt (decode_merge_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (58, _) -> (Pg_query_types.Select_stmt (decode_select_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (59, _) -> (Pg_query_types.Return_stmt (decode_return_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (60, _) -> (Pg_query_types.Plassign_stmt (decode_plassign_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (61, _) -> (Pg_query_types.Alter_table_stmt (decode_alter_table_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (62, _) -> (Pg_query_types.Alter_table_cmd (decode_alter_table_cmd (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (63, _) -> (Pg_query_types.Alter_domain_stmt (decode_alter_domain_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (64, _) -> (Pg_query_types.Set_operation_stmt (decode_set_operation_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (65, _) -> (Pg_query_types.Grant_stmt (decode_grant_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (66, _) -> (Pg_query_types.Grant_role_stmt (decode_grant_role_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (67, _) -> (Pg_query_types.Alter_default_privileges_stmt (decode_alter_default_privileges_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (68, _) -> (Pg_query_types.Close_portal_stmt (decode_close_portal_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (69, _) -> (Pg_query_types.Cluster_stmt (decode_cluster_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (70, _) -> (Pg_query_types.Copy_stmt (decode_copy_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (71, _) -> (Pg_query_types.Create_stmt (decode_create_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (72, _) -> (Pg_query_types.Define_stmt (decode_define_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (73, _) -> (Pg_query_types.Drop_stmt (decode_drop_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (74, _) -> (Pg_query_types.Truncate_stmt (decode_truncate_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (75, _) -> (Pg_query_types.Comment_stmt (decode_comment_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (76, _) -> (Pg_query_types.Fetch_stmt (decode_fetch_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (77, _) -> (Pg_query_types.Index_stmt (decode_index_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (78, _) -> (Pg_query_types.Create_function_stmt (decode_create_function_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (79, _) -> (Pg_query_types.Alter_function_stmt (decode_alter_function_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (80, _) -> (Pg_query_types.Do_stmt (decode_do_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (81, _) -> (Pg_query_types.Rename_stmt (decode_rename_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (82, _) -> (Pg_query_types.Rule_stmt (decode_rule_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (83, _) -> (Pg_query_types.Notify_stmt (decode_notify_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (84, _) -> (Pg_query_types.Listen_stmt (decode_listen_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (85, _) -> (Pg_query_types.Unlisten_stmt (decode_unlisten_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (86, _) -> (Pg_query_types.Transaction_stmt (decode_transaction_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (87, _) -> (Pg_query_types.View_stmt (decode_view_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (88, _) -> (Pg_query_types.Load_stmt (decode_load_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (89, _) -> (Pg_query_types.Create_domain_stmt (decode_create_domain_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (90, _) -> (Pg_query_types.Createdb_stmt (decode_createdb_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (91, _) -> (Pg_query_types.Dropdb_stmt (decode_dropdb_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (92, _) -> (Pg_query_types.Vacuum_stmt (decode_vacuum_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (93, _) -> (Pg_query_types.Explain_stmt (decode_explain_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (94, _) -> (Pg_query_types.Create_table_as_stmt (decode_create_table_as_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (95, _) -> (Pg_query_types.Create_seq_stmt (decode_create_seq_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (96, _) -> (Pg_query_types.Alter_seq_stmt (decode_alter_seq_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (97, _) -> (Pg_query_types.Variable_set_stmt (decode_variable_set_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (98, _) -> (Pg_query_types.Variable_show_stmt (decode_variable_show_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (99, _) -> (Pg_query_types.Discard_stmt (decode_discard_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (100, _) -> (Pg_query_types.Create_trig_stmt (decode_create_trig_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (101, _) -> (Pg_query_types.Create_plang_stmt (decode_create_plang_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (102, _) -> (Pg_query_types.Create_role_stmt (decode_create_role_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (103, _) -> (Pg_query_types.Alter_role_stmt (decode_alter_role_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (104, _) -> (Pg_query_types.Drop_role_stmt (decode_drop_role_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (105, _) -> (Pg_query_types.Lock_stmt (decode_lock_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (106, _) -> (Pg_query_types.Constraints_set_stmt (decode_constraints_set_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (107, _) -> (Pg_query_types.Reindex_stmt (decode_reindex_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (108, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Pg_query_types.Check_point_stmt : Pg_query_types.node)
      end
      | Some (109, _) -> (Pg_query_types.Create_schema_stmt (decode_create_schema_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (110, _) -> (Pg_query_types.Alter_database_stmt (decode_alter_database_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (111, _) -> (Pg_query_types.Alter_database_refresh_coll_stmt (decode_alter_database_refresh_coll_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (112, _) -> (Pg_query_types.Alter_database_set_stmt (decode_alter_database_set_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (113, _) -> (Pg_query_types.Alter_role_set_stmt (decode_alter_role_set_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (114, _) -> (Pg_query_types.Create_conversion_stmt (decode_create_conversion_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (115, _) -> (Pg_query_types.Create_cast_stmt (decode_create_cast_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (116, _) -> (Pg_query_types.Create_op_class_stmt (decode_create_op_class_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (117, _) -> (Pg_query_types.Create_op_family_stmt (decode_create_op_family_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (118, _) -> (Pg_query_types.Alter_op_family_stmt (decode_alter_op_family_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (119, _) -> (Pg_query_types.Prepare_stmt (decode_prepare_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (120, _) -> (Pg_query_types.Execute_stmt (decode_execute_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (121, _) -> (Pg_query_types.Deallocate_stmt (decode_deallocate_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (122, _) -> (Pg_query_types.Declare_cursor_stmt (decode_declare_cursor_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (123, _) -> (Pg_query_types.Create_table_space_stmt (decode_create_table_space_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (124, _) -> (Pg_query_types.Drop_table_space_stmt (decode_drop_table_space_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (125, _) -> (Pg_query_types.Alter_object_depends_stmt (decode_alter_object_depends_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (126, _) -> (Pg_query_types.Alter_object_schema_stmt (decode_alter_object_schema_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (127, _) -> (Pg_query_types.Alter_owner_stmt (decode_alter_owner_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (128, _) -> (Pg_query_types.Alter_operator_stmt (decode_alter_operator_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (129, _) -> (Pg_query_types.Alter_type_stmt (decode_alter_type_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (130, _) -> (Pg_query_types.Drop_owned_stmt (decode_drop_owned_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (131, _) -> (Pg_query_types.Reassign_owned_stmt (decode_reassign_owned_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (132, _) -> (Pg_query_types.Composite_type_stmt (decode_composite_type_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (133, _) -> (Pg_query_types.Create_enum_stmt (decode_create_enum_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (134, _) -> (Pg_query_types.Create_range_stmt (decode_create_range_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (135, _) -> (Pg_query_types.Alter_enum_stmt (decode_alter_enum_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (136, _) -> (Pg_query_types.Alter_tsdictionary_stmt (decode_alter_tsdictionary_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (137, _) -> (Pg_query_types.Alter_tsconfiguration_stmt (decode_alter_tsconfiguration_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (138, _) -> (Pg_query_types.Create_fdw_stmt (decode_create_fdw_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (139, _) -> (Pg_query_types.Alter_fdw_stmt (decode_alter_fdw_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (140, _) -> (Pg_query_types.Create_foreign_server_stmt (decode_create_foreign_server_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (141, _) -> (Pg_query_types.Alter_foreign_server_stmt (decode_alter_foreign_server_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (142, _) -> (Pg_query_types.Create_user_mapping_stmt (decode_create_user_mapping_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (143, _) -> (Pg_query_types.Alter_user_mapping_stmt (decode_alter_user_mapping_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (144, _) -> (Pg_query_types.Drop_user_mapping_stmt (decode_drop_user_mapping_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (145, _) -> (Pg_query_types.Alter_table_space_options_stmt (decode_alter_table_space_options_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (146, _) -> (Pg_query_types.Alter_table_move_all_stmt (decode_alter_table_move_all_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (147, _) -> (Pg_query_types.Sec_label_stmt (decode_sec_label_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (148, _) -> (Pg_query_types.Create_foreign_table_stmt (decode_create_foreign_table_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (149, _) -> (Pg_query_types.Import_foreign_schema_stmt (decode_import_foreign_schema_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (150, _) -> (Pg_query_types.Create_extension_stmt (decode_create_extension_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (151, _) -> (Pg_query_types.Alter_extension_stmt (decode_alter_extension_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (152, _) -> (Pg_query_types.Alter_extension_contents_stmt (decode_alter_extension_contents_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (153, _) -> (Pg_query_types.Create_event_trig_stmt (decode_create_event_trig_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (154, _) -> (Pg_query_types.Alter_event_trig_stmt (decode_alter_event_trig_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (155, _) -> (Pg_query_types.Refresh_mat_view_stmt (decode_refresh_mat_view_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (156, _) -> (Pg_query_types.Replica_identity_stmt (decode_replica_identity_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (157, _) -> (Pg_query_types.Alter_system_stmt (decode_alter_system_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (158, _) -> (Pg_query_types.Create_policy_stmt (decode_create_policy_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (159, _) -> (Pg_query_types.Alter_policy_stmt (decode_alter_policy_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (160, _) -> (Pg_query_types.Create_transform_stmt (decode_create_transform_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (161, _) -> (Pg_query_types.Create_am_stmt (decode_create_am_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (162, _) -> (Pg_query_types.Create_publication_stmt (decode_create_publication_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (163, _) -> (Pg_query_types.Alter_publication_stmt (decode_alter_publication_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (164, _) -> (Pg_query_types.Create_subscription_stmt (decode_create_subscription_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (165, _) -> (Pg_query_types.Alter_subscription_stmt (decode_alter_subscription_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (166, _) -> (Pg_query_types.Drop_subscription_stmt (decode_drop_subscription_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (167, _) -> (Pg_query_types.Create_stats_stmt (decode_create_stats_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (168, _) -> (Pg_query_types.Alter_collation_stmt (decode_alter_collation_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (169, _) -> (Pg_query_types.Call_stmt (decode_call_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (170, _) -> (Pg_query_types.Alter_stats_stmt (decode_alter_stats_stmt (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (171, _) -> (Pg_query_types.A_expr (decode_a_expr (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (172, _) -> (Pg_query_types.Column_ref (decode_column_ref (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (173, _) -> (Pg_query_types.Param_ref (decode_param_ref (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (174, _) -> (Pg_query_types.Func_call (decode_func_call (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (175, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Pg_query_types.A_star : Pg_query_types.node)
      end
      | Some (176, _) -> (Pg_query_types.A_indices (decode_a_indices (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (177, _) -> (Pg_query_types.A_indirection (decode_a_indirection (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (178, _) -> (Pg_query_types.A_array_expr (decode_a_array_expr (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (179, _) -> (Pg_query_types.Res_target (decode_res_target (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (180, _) -> (Pg_query_types.Multi_assign_ref (decode_multi_assign_ref (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (181, _) -> (Pg_query_types.Type_cast (decode_type_cast (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (182, _) -> (Pg_query_types.Collate_clause (decode_collate_clause (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (183, _) -> (Pg_query_types.Sort_by (decode_sort_by (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (184, _) -> (Pg_query_types.Window_def (decode_window_def (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (185, _) -> (Pg_query_types.Range_subselect (decode_range_subselect (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (186, _) -> (Pg_query_types.Range_function (decode_range_function (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (187, _) -> (Pg_query_types.Range_table_sample (decode_range_table_sample (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (188, _) -> (Pg_query_types.Range_table_func (decode_range_table_func (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (189, _) -> (Pg_query_types.Range_table_func_col (decode_range_table_func_col (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (190, _) -> (Pg_query_types.Type_name (decode_type_name (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (191, _) -> (Pg_query_types.Column_def (decode_column_def (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (192, _) -> (Pg_query_types.Index_elem (decode_index_elem (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (193, _) -> (Pg_query_types.Stats_elem (decode_stats_elem (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (194, _) -> (Pg_query_types.Constraint (decode_constraint_ (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (195, _) -> (Pg_query_types.Def_elem (decode_def_elem (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (196, _) -> (Pg_query_types.Range_tbl_entry (decode_range_tbl_entry (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (197, _) -> (Pg_query_types.Range_tbl_function (decode_range_tbl_function (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (198, _) -> (Pg_query_types.Table_sample_clause (decode_table_sample_clause (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (199, _) -> (Pg_query_types.With_check_option (decode_with_check_option (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (200, _) -> (Pg_query_types.Sort_group_clause (decode_sort_group_clause (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (201, _) -> (Pg_query_types.Grouping_set (decode_grouping_set (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (202, _) -> (Pg_query_types.Window_clause (decode_window_clause (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (203, _) -> (Pg_query_types.Object_with_args (decode_object_with_args (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (204, _) -> (Pg_query_types.Access_priv (decode_access_priv (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (205, _) -> (Pg_query_types.Create_op_class_item (decode_create_op_class_item (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (206, _) -> (Pg_query_types.Table_like_clause (decode_table_like_clause (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (207, _) -> (Pg_query_types.Function_parameter (decode_function_parameter (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (208, _) -> (Pg_query_types.Locking_clause (decode_locking_clause (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (209, _) -> (Pg_query_types.Row_mark_clause (decode_row_mark_clause (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (210, _) -> (Pg_query_types.Xml_serialize (decode_xml_serialize (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (211, _) -> (Pg_query_types.With_clause (decode_with_clause (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (212, _) -> (Pg_query_types.Infer_clause (decode_infer_clause (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (213, _) -> (Pg_query_types.On_conflict_clause (decode_on_conflict_clause (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (214, _) -> (Pg_query_types.Ctesearch_clause (decode_ctesearch_clause (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (215, _) -> (Pg_query_types.Ctecycle_clause (decode_ctecycle_clause (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (216, _) -> (Pg_query_types.Common_table_expr (decode_common_table_expr (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (217, _) -> (Pg_query_types.Merge_when_clause (decode_merge_when_clause (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (218, _) -> (Pg_query_types.Role_spec (decode_role_spec (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (219, _) -> (Pg_query_types.Trigger_transition (decode_trigger_transition (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (220, _) -> (Pg_query_types.Partition_elem (decode_partition_elem (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (221, _) -> (Pg_query_types.Partition_spec (decode_partition_spec (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (222, _) -> (Pg_query_types.Partition_bound_spec (decode_partition_bound_spec (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (223, _) -> (Pg_query_types.Partition_range_datum (decode_partition_range_datum (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (224, _) -> (Pg_query_types.Partition_cmd (decode_partition_cmd (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (225, _) -> (Pg_query_types.Vacuum_relation (decode_vacuum_relation (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (226, _) -> (Pg_query_types.Publication_obj_spec (decode_publication_obj_spec (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (227, _) -> (Pg_query_types.Publication_table (decode_publication_table (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (228, _) -> (Pg_query_types.Inline_code_block (decode_inline_code_block (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (229, _) -> (Pg_query_types.Call_context (decode_call_context (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (230, _) -> (Pg_query_types.Integer (decode_integer (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (231, _) -> (Pg_query_types.Float (decode_float (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (232, _) -> (Pg_query_types.Boolean (decode_boolean (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (233, _) -> (Pg_query_types.String (decode_string (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (234, _) -> (Pg_query_types.Bit_string (decode_bit_string (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (235, _) -> (Pg_query_types.List (decode_list (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (236, _) -> (Pg_query_types.Int_list (decode_int_list (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (237, _) -> (Pg_query_types.Oid_list (decode_oid_list (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (238, _) -> (Pg_query_types.A_const (decode_a_const (Pbrt.Decoder.nested d)) : Pg_query_types.node) 
      | Some (n, payload_kind) -> (
        Pbrt.Decoder.skip d payload_kind; 
        loop () 
      )
    in
    ret
  in
  loop ()

and decode_alias d =
  let v = default_alias_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.colnames <- List.rev v.colnames;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.aliasname <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alias), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.colnames <- (decode_node (Pbrt.Decoder.nested d)) :: v.colnames;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alias), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.aliasname = v.aliasname;
    Pg_query_types.colnames = v.colnames;
  } : Pg_query_types.alias)

and decode_range_var d =
  let v = default_range_var_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.catalogname <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_var), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.schemaname <- Pbrt.Decoder.string d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_var), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.relname <- Pbrt.Decoder.string d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_var), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.inh <- Pbrt.Decoder.bool d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_var), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.relpersistence <- Pbrt.Decoder.string d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_var), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.alias <- Some (decode_alias (Pbrt.Decoder.nested d));
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_var), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_var), field(7)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.catalogname = v.catalogname;
    Pg_query_types.schemaname = v.schemaname;
    Pg_query_types.relname = v.relname;
    Pg_query_types.inh = v.inh;
    Pg_query_types.relpersistence = v.relpersistence;
    Pg_query_types.alias = v.alias;
    Pg_query_types.location = v.location;
  } : Pg_query_types.range_var)

and decode_table_func d =
  let v = default_table_func_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.notnulls <- List.rev v.notnulls;
      v.coldefexprs <- List.rev v.coldefexprs;
      v.colexprs <- List.rev v.colexprs;
      v.colcollations <- List.rev v.colcollations;
      v.coltypmods <- List.rev v.coltypmods;
      v.coltypes <- List.rev v.coltypes;
      v.colnames <- List.rev v.colnames;
      v.ns_names <- List.rev v.ns_names;
      v.ns_uris <- List.rev v.ns_uris;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.ns_uris <- (decode_node (Pbrt.Decoder.nested d)) :: v.ns_uris;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(table_func), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.ns_names <- (decode_node (Pbrt.Decoder.nested d)) :: v.ns_names;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(table_func), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.docexpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(table_func), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.rowexpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(table_func), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.colnames <- (decode_node (Pbrt.Decoder.nested d)) :: v.colnames;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(table_func), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.coltypes <- (decode_node (Pbrt.Decoder.nested d)) :: v.coltypes;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(table_func), field(6)" pk
    | Some (7, Pbrt.Bytes) -> begin
      v.coltypmods <- (decode_node (Pbrt.Decoder.nested d)) :: v.coltypmods;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(table_func), field(7)" pk
    | Some (8, Pbrt.Bytes) -> begin
      v.colcollations <- (decode_node (Pbrt.Decoder.nested d)) :: v.colcollations;
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(table_func), field(8)" pk
    | Some (9, Pbrt.Bytes) -> begin
      v.colexprs <- (decode_node (Pbrt.Decoder.nested d)) :: v.colexprs;
    end
    | Some (9, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(table_func), field(9)" pk
    | Some (10, Pbrt.Bytes) -> begin
      v.coldefexprs <- (decode_node (Pbrt.Decoder.nested d)) :: v.coldefexprs;
    end
    | Some (10, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(table_func), field(10)" pk
    | Some (11, Pbrt.Bytes) -> begin
      v.notnulls <- Pbrt.Decoder.packed_fold (fun l d -> (Pbrt.Decoder.int64_as_varint d)::l) [] d;
    end
    | Some (11, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(table_func), field(11)" pk
    | Some (12, Pbrt.Varint) -> begin
      v.ordinalitycol <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (12, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(table_func), field(12)" pk
    | Some (13, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (13, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(table_func), field(13)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.ns_uris = v.ns_uris;
    Pg_query_types.ns_names = v.ns_names;
    Pg_query_types.docexpr = v.docexpr;
    Pg_query_types.rowexpr = v.rowexpr;
    Pg_query_types.colnames = v.colnames;
    Pg_query_types.coltypes = v.coltypes;
    Pg_query_types.coltypmods = v.coltypmods;
    Pg_query_types.colcollations = v.colcollations;
    Pg_query_types.colexprs = v.colexprs;
    Pg_query_types.coldefexprs = v.coldefexprs;
    Pg_query_types.notnulls = v.notnulls;
    Pg_query_types.ordinalitycol = v.ordinalitycol;
    Pg_query_types.location = v.location;
  } : Pg_query_types.table_func)

and decode_var d =
  let v = default_var_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(var), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.varno <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(var), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.varattno <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(var), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.vartype <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(var), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.vartypmod <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(var), field(5)" pk
    | Some (6, Pbrt.Varint) -> begin
      v.varcollid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(var), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.varlevelsup <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(var), field(7)" pk
    | Some (8, Pbrt.Varint) -> begin
      v.varnosyn <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(var), field(8)" pk
    | Some (9, Pbrt.Varint) -> begin
      v.varattnosyn <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (9, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(var), field(9)" pk
    | Some (10, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (10, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(var), field(10)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.varno = v.varno;
    Pg_query_types.varattno = v.varattno;
    Pg_query_types.vartype = v.vartype;
    Pg_query_types.vartypmod = v.vartypmod;
    Pg_query_types.varcollid = v.varcollid;
    Pg_query_types.varlevelsup = v.varlevelsup;
    Pg_query_types.varnosyn = v.varnosyn;
    Pg_query_types.varattnosyn = v.varattnosyn;
    Pg_query_types.location = v.location;
  } : Pg_query_types.var)

and decode_param d =
  let v = default_param_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(param), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.paramkind <- decode_param_kind d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(param), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.paramid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(param), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.paramtype <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(param), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.paramtypmod <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(param), field(5)" pk
    | Some (6, Pbrt.Varint) -> begin
      v.paramcollid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(param), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(param), field(7)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.paramkind = v.paramkind;
    Pg_query_types.paramid = v.paramid;
    Pg_query_types.paramtype = v.paramtype;
    Pg_query_types.paramtypmod = v.paramtypmod;
    Pg_query_types.paramcollid = v.paramcollid;
    Pg_query_types.location = v.location;
  } : Pg_query_types.param)

and decode_aggref d =
  let v = default_aggref_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.aggdistinct <- List.rev v.aggdistinct;
      v.aggorder <- List.rev v.aggorder;
      v.args <- List.rev v.args;
      v.aggdirectargs <- List.rev v.aggdirectargs;
      v.aggargtypes <- List.rev v.aggargtypes;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(aggref), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.aggfnoid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(aggref), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.aggtype <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(aggref), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.aggcollid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(aggref), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.inputcollid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(aggref), field(5)" pk
    | Some (6, Pbrt.Varint) -> begin
      v.aggtranstype <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(aggref), field(6)" pk
    | Some (7, Pbrt.Bytes) -> begin
      v.aggargtypes <- (decode_node (Pbrt.Decoder.nested d)) :: v.aggargtypes;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(aggref), field(7)" pk
    | Some (8, Pbrt.Bytes) -> begin
      v.aggdirectargs <- (decode_node (Pbrt.Decoder.nested d)) :: v.aggdirectargs;
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(aggref), field(8)" pk
    | Some (9, Pbrt.Bytes) -> begin
      v.args <- (decode_node (Pbrt.Decoder.nested d)) :: v.args;
    end
    | Some (9, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(aggref), field(9)" pk
    | Some (10, Pbrt.Bytes) -> begin
      v.aggorder <- (decode_node (Pbrt.Decoder.nested d)) :: v.aggorder;
    end
    | Some (10, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(aggref), field(10)" pk
    | Some (11, Pbrt.Bytes) -> begin
      v.aggdistinct <- (decode_node (Pbrt.Decoder.nested d)) :: v.aggdistinct;
    end
    | Some (11, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(aggref), field(11)" pk
    | Some (12, Pbrt.Bytes) -> begin
      v.aggfilter <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (12, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(aggref), field(12)" pk
    | Some (13, Pbrt.Varint) -> begin
      v.aggstar <- Pbrt.Decoder.bool d;
    end
    | Some (13, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(aggref), field(13)" pk
    | Some (14, Pbrt.Varint) -> begin
      v.aggvariadic <- Pbrt.Decoder.bool d;
    end
    | Some (14, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(aggref), field(14)" pk
    | Some (15, Pbrt.Bytes) -> begin
      v.aggkind <- Pbrt.Decoder.string d;
    end
    | Some (15, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(aggref), field(15)" pk
    | Some (16, Pbrt.Varint) -> begin
      v.agglevelsup <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (16, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(aggref), field(16)" pk
    | Some (17, Pbrt.Varint) -> begin
      v.aggsplit <- decode_agg_split d;
    end
    | Some (17, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(aggref), field(17)" pk
    | Some (18, Pbrt.Varint) -> begin
      v.aggno <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (18, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(aggref), field(18)" pk
    | Some (19, Pbrt.Varint) -> begin
      v.aggtransno <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (19, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(aggref), field(19)" pk
    | Some (20, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (20, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(aggref), field(20)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.aggfnoid = v.aggfnoid;
    Pg_query_types.aggtype = v.aggtype;
    Pg_query_types.aggcollid = v.aggcollid;
    Pg_query_types.inputcollid = v.inputcollid;
    Pg_query_types.aggtranstype = v.aggtranstype;
    Pg_query_types.aggargtypes = v.aggargtypes;
    Pg_query_types.aggdirectargs = v.aggdirectargs;
    Pg_query_types.args = v.args;
    Pg_query_types.aggorder = v.aggorder;
    Pg_query_types.aggdistinct = v.aggdistinct;
    Pg_query_types.aggfilter = v.aggfilter;
    Pg_query_types.aggstar = v.aggstar;
    Pg_query_types.aggvariadic = v.aggvariadic;
    Pg_query_types.aggkind = v.aggkind;
    Pg_query_types.agglevelsup = v.agglevelsup;
    Pg_query_types.aggsplit = v.aggsplit;
    Pg_query_types.aggno = v.aggno;
    Pg_query_types.aggtransno = v.aggtransno;
    Pg_query_types.location = v.location;
  } : Pg_query_types.aggref)

and decode_grouping_func d =
  let v = default_grouping_func_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.cols <- List.rev v.cols;
      v.refs <- List.rev v.refs;
      v.args <- List.rev v.args;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(grouping_func), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.args <- (decode_node (Pbrt.Decoder.nested d)) :: v.args;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(grouping_func), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.refs <- (decode_node (Pbrt.Decoder.nested d)) :: v.refs;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(grouping_func), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.cols <- (decode_node (Pbrt.Decoder.nested d)) :: v.cols;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(grouping_func), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.agglevelsup <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(grouping_func), field(5)" pk
    | Some (6, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(grouping_func), field(6)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.args = v.args;
    Pg_query_types.refs = v.refs;
    Pg_query_types.cols = v.cols;
    Pg_query_types.agglevelsup = v.agglevelsup;
    Pg_query_types.location = v.location;
  } : Pg_query_types.grouping_func)

and decode_window_func d =
  let v = default_window_func_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.args <- List.rev v.args;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(window_func), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.winfnoid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(window_func), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.wintype <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(window_func), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.wincollid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(window_func), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.inputcollid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(window_func), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.args <- (decode_node (Pbrt.Decoder.nested d)) :: v.args;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(window_func), field(6)" pk
    | Some (7, Pbrt.Bytes) -> begin
      v.aggfilter <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(window_func), field(7)" pk
    | Some (8, Pbrt.Varint) -> begin
      v.winref <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(window_func), field(8)" pk
    | Some (9, Pbrt.Varint) -> begin
      v.winstar <- Pbrt.Decoder.bool d;
    end
    | Some (9, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(window_func), field(9)" pk
    | Some (10, Pbrt.Varint) -> begin
      v.winagg <- Pbrt.Decoder.bool d;
    end
    | Some (10, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(window_func), field(10)" pk
    | Some (11, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (11, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(window_func), field(11)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.winfnoid = v.winfnoid;
    Pg_query_types.wintype = v.wintype;
    Pg_query_types.wincollid = v.wincollid;
    Pg_query_types.inputcollid = v.inputcollid;
    Pg_query_types.args = v.args;
    Pg_query_types.aggfilter = v.aggfilter;
    Pg_query_types.winref = v.winref;
    Pg_query_types.winstar = v.winstar;
    Pg_query_types.winagg = v.winagg;
    Pg_query_types.location = v.location;
  } : Pg_query_types.window_func)

and decode_subscripting_ref d =
  let v = default_subscripting_ref_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.reflowerindexpr <- List.rev v.reflowerindexpr;
      v.refupperindexpr <- List.rev v.refupperindexpr;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(subscripting_ref), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.refcontainertype <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(subscripting_ref), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.refelemtype <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(subscripting_ref), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.refrestype <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(subscripting_ref), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.reftypmod <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(subscripting_ref), field(5)" pk
    | Some (6, Pbrt.Varint) -> begin
      v.refcollid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(subscripting_ref), field(6)" pk
    | Some (7, Pbrt.Bytes) -> begin
      v.refupperindexpr <- (decode_node (Pbrt.Decoder.nested d)) :: v.refupperindexpr;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(subscripting_ref), field(7)" pk
    | Some (8, Pbrt.Bytes) -> begin
      v.reflowerindexpr <- (decode_node (Pbrt.Decoder.nested d)) :: v.reflowerindexpr;
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(subscripting_ref), field(8)" pk
    | Some (9, Pbrt.Bytes) -> begin
      v.refexpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (9, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(subscripting_ref), field(9)" pk
    | Some (10, Pbrt.Bytes) -> begin
      v.refassgnexpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (10, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(subscripting_ref), field(10)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.refcontainertype = v.refcontainertype;
    Pg_query_types.refelemtype = v.refelemtype;
    Pg_query_types.refrestype = v.refrestype;
    Pg_query_types.reftypmod = v.reftypmod;
    Pg_query_types.refcollid = v.refcollid;
    Pg_query_types.refupperindexpr = v.refupperindexpr;
    Pg_query_types.reflowerindexpr = v.reflowerindexpr;
    Pg_query_types.refexpr = v.refexpr;
    Pg_query_types.refassgnexpr = v.refassgnexpr;
  } : Pg_query_types.subscripting_ref)

and decode_func_expr d =
  let v = default_func_expr_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.args <- List.rev v.args;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(func_expr), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.funcid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(func_expr), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.funcresulttype <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(func_expr), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.funcretset <- Pbrt.Decoder.bool d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(func_expr), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.funcvariadic <- Pbrt.Decoder.bool d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(func_expr), field(5)" pk
    | Some (6, Pbrt.Varint) -> begin
      v.funcformat <- decode_coercion_form d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(func_expr), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.funccollid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(func_expr), field(7)" pk
    | Some (8, Pbrt.Varint) -> begin
      v.inputcollid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(func_expr), field(8)" pk
    | Some (9, Pbrt.Bytes) -> begin
      v.args <- (decode_node (Pbrt.Decoder.nested d)) :: v.args;
    end
    | Some (9, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(func_expr), field(9)" pk
    | Some (10, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (10, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(func_expr), field(10)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.funcid = v.funcid;
    Pg_query_types.funcresulttype = v.funcresulttype;
    Pg_query_types.funcretset = v.funcretset;
    Pg_query_types.funcvariadic = v.funcvariadic;
    Pg_query_types.funcformat = v.funcformat;
    Pg_query_types.funccollid = v.funccollid;
    Pg_query_types.inputcollid = v.inputcollid;
    Pg_query_types.args = v.args;
    Pg_query_types.location = v.location;
  } : Pg_query_types.func_expr)

and decode_named_arg_expr d =
  let v = default_named_arg_expr_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(named_arg_expr), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.arg <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(named_arg_expr), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.name <- Pbrt.Decoder.string d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(named_arg_expr), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.argnumber <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(named_arg_expr), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(named_arg_expr), field(5)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.arg = v.arg;
    Pg_query_types.name = v.name;
    Pg_query_types.argnumber = v.argnumber;
    Pg_query_types.location = v.location;
  } : Pg_query_types.named_arg_expr)

and decode_op_expr d =
  let v = default_op_expr_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.args <- List.rev v.args;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(op_expr), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.opno <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(op_expr), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.opfuncid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(op_expr), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.opresulttype <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(op_expr), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.opretset <- Pbrt.Decoder.bool d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(op_expr), field(5)" pk
    | Some (6, Pbrt.Varint) -> begin
      v.opcollid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(op_expr), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.inputcollid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(op_expr), field(7)" pk
    | Some (8, Pbrt.Bytes) -> begin
      v.args <- (decode_node (Pbrt.Decoder.nested d)) :: v.args;
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(op_expr), field(8)" pk
    | Some (9, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (9, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(op_expr), field(9)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.opno = v.opno;
    Pg_query_types.opfuncid = v.opfuncid;
    Pg_query_types.opresulttype = v.opresulttype;
    Pg_query_types.opretset = v.opretset;
    Pg_query_types.opcollid = v.opcollid;
    Pg_query_types.inputcollid = v.inputcollid;
    Pg_query_types.args = v.args;
    Pg_query_types.location = v.location;
  } : Pg_query_types.op_expr)

and decode_distinct_expr d =
  let v = default_distinct_expr_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.args <- List.rev v.args;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(distinct_expr), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.opno <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(distinct_expr), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.opfuncid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(distinct_expr), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.opresulttype <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(distinct_expr), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.opretset <- Pbrt.Decoder.bool d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(distinct_expr), field(5)" pk
    | Some (6, Pbrt.Varint) -> begin
      v.opcollid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(distinct_expr), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.inputcollid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(distinct_expr), field(7)" pk
    | Some (8, Pbrt.Bytes) -> begin
      v.args <- (decode_node (Pbrt.Decoder.nested d)) :: v.args;
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(distinct_expr), field(8)" pk
    | Some (9, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (9, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(distinct_expr), field(9)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.opno = v.opno;
    Pg_query_types.opfuncid = v.opfuncid;
    Pg_query_types.opresulttype = v.opresulttype;
    Pg_query_types.opretset = v.opretset;
    Pg_query_types.opcollid = v.opcollid;
    Pg_query_types.inputcollid = v.inputcollid;
    Pg_query_types.args = v.args;
    Pg_query_types.location = v.location;
  } : Pg_query_types.distinct_expr)

and decode_null_if_expr d =
  let v = default_null_if_expr_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.args <- List.rev v.args;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(null_if_expr), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.opno <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(null_if_expr), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.opfuncid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(null_if_expr), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.opresulttype <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(null_if_expr), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.opretset <- Pbrt.Decoder.bool d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(null_if_expr), field(5)" pk
    | Some (6, Pbrt.Varint) -> begin
      v.opcollid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(null_if_expr), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.inputcollid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(null_if_expr), field(7)" pk
    | Some (8, Pbrt.Bytes) -> begin
      v.args <- (decode_node (Pbrt.Decoder.nested d)) :: v.args;
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(null_if_expr), field(8)" pk
    | Some (9, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (9, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(null_if_expr), field(9)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.opno = v.opno;
    Pg_query_types.opfuncid = v.opfuncid;
    Pg_query_types.opresulttype = v.opresulttype;
    Pg_query_types.opretset = v.opretset;
    Pg_query_types.opcollid = v.opcollid;
    Pg_query_types.inputcollid = v.inputcollid;
    Pg_query_types.args = v.args;
    Pg_query_types.location = v.location;
  } : Pg_query_types.null_if_expr)

and decode_scalar_array_op_expr d =
  let v = default_scalar_array_op_expr_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.args <- List.rev v.args;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(scalar_array_op_expr), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.opno <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(scalar_array_op_expr), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.opfuncid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(scalar_array_op_expr), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.hashfuncid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(scalar_array_op_expr), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.negfuncid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(scalar_array_op_expr), field(5)" pk
    | Some (6, Pbrt.Varint) -> begin
      v.use_or <- Pbrt.Decoder.bool d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(scalar_array_op_expr), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.inputcollid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(scalar_array_op_expr), field(7)" pk
    | Some (8, Pbrt.Bytes) -> begin
      v.args <- (decode_node (Pbrt.Decoder.nested d)) :: v.args;
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(scalar_array_op_expr), field(8)" pk
    | Some (9, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (9, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(scalar_array_op_expr), field(9)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.opno = v.opno;
    Pg_query_types.opfuncid = v.opfuncid;
    Pg_query_types.hashfuncid = v.hashfuncid;
    Pg_query_types.negfuncid = v.negfuncid;
    Pg_query_types.use_or = v.use_or;
    Pg_query_types.inputcollid = v.inputcollid;
    Pg_query_types.args = v.args;
    Pg_query_types.location = v.location;
  } : Pg_query_types.scalar_array_op_expr)

and decode_bool_expr d =
  let v = default_bool_expr_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.args <- List.rev v.args;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(bool_expr), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.boolop <- decode_bool_expr_type d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(bool_expr), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.args <- (decode_node (Pbrt.Decoder.nested d)) :: v.args;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(bool_expr), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(bool_expr), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.boolop = v.boolop;
    Pg_query_types.args = v.args;
    Pg_query_types.location = v.location;
  } : Pg_query_types.bool_expr)

and decode_sub_link d =
  let v = default_sub_link_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.oper_name <- List.rev v.oper_name;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sub_link), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.sub_link_type <- decode_sub_link_type d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sub_link), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.sub_link_id <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sub_link), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.testexpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sub_link), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.oper_name <- (decode_node (Pbrt.Decoder.nested d)) :: v.oper_name;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sub_link), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.subselect <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sub_link), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sub_link), field(7)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.sub_link_type = v.sub_link_type;
    Pg_query_types.sub_link_id = v.sub_link_id;
    Pg_query_types.testexpr = v.testexpr;
    Pg_query_types.oper_name = v.oper_name;
    Pg_query_types.subselect = v.subselect;
    Pg_query_types.location = v.location;
  } : Pg_query_types.sub_link)

and decode_sub_plan d =
  let v = default_sub_plan_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.args <- List.rev v.args;
      v.par_param <- List.rev v.par_param;
      v.set_param <- List.rev v.set_param;
      v.param_ids <- List.rev v.param_ids;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sub_plan), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.sub_link_type <- decode_sub_link_type d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sub_plan), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.testexpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sub_plan), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.param_ids <- (decode_node (Pbrt.Decoder.nested d)) :: v.param_ids;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sub_plan), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.plan_id <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sub_plan), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.plan_name <- Pbrt.Decoder.string d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sub_plan), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.first_col_type <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sub_plan), field(7)" pk
    | Some (8, Pbrt.Varint) -> begin
      v.first_col_typmod <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sub_plan), field(8)" pk
    | Some (9, Pbrt.Varint) -> begin
      v.first_col_collation <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (9, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sub_plan), field(9)" pk
    | Some (10, Pbrt.Varint) -> begin
      v.use_hash_table <- Pbrt.Decoder.bool d;
    end
    | Some (10, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sub_plan), field(10)" pk
    | Some (11, Pbrt.Varint) -> begin
      v.unknown_eq_false <- Pbrt.Decoder.bool d;
    end
    | Some (11, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sub_plan), field(11)" pk
    | Some (12, Pbrt.Varint) -> begin
      v.parallel_safe <- Pbrt.Decoder.bool d;
    end
    | Some (12, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sub_plan), field(12)" pk
    | Some (13, Pbrt.Bytes) -> begin
      v.set_param <- (decode_node (Pbrt.Decoder.nested d)) :: v.set_param;
    end
    | Some (13, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sub_plan), field(13)" pk
    | Some (14, Pbrt.Bytes) -> begin
      v.par_param <- (decode_node (Pbrt.Decoder.nested d)) :: v.par_param;
    end
    | Some (14, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sub_plan), field(14)" pk
    | Some (15, Pbrt.Bytes) -> begin
      v.args <- (decode_node (Pbrt.Decoder.nested d)) :: v.args;
    end
    | Some (15, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sub_plan), field(15)" pk
    | Some (16, Pbrt.Bits64) -> begin
      v.startup_cost <- Pbrt.Decoder.float_as_bits64 d;
    end
    | Some (16, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sub_plan), field(16)" pk
    | Some (17, Pbrt.Bits64) -> begin
      v.per_call_cost <- Pbrt.Decoder.float_as_bits64 d;
    end
    | Some (17, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sub_plan), field(17)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.sub_link_type = v.sub_link_type;
    Pg_query_types.testexpr = v.testexpr;
    Pg_query_types.param_ids = v.param_ids;
    Pg_query_types.plan_id = v.plan_id;
    Pg_query_types.plan_name = v.plan_name;
    Pg_query_types.first_col_type = v.first_col_type;
    Pg_query_types.first_col_typmod = v.first_col_typmod;
    Pg_query_types.first_col_collation = v.first_col_collation;
    Pg_query_types.use_hash_table = v.use_hash_table;
    Pg_query_types.unknown_eq_false = v.unknown_eq_false;
    Pg_query_types.parallel_safe = v.parallel_safe;
    Pg_query_types.set_param = v.set_param;
    Pg_query_types.par_param = v.par_param;
    Pg_query_types.args = v.args;
    Pg_query_types.startup_cost = v.startup_cost;
    Pg_query_types.per_call_cost = v.per_call_cost;
  } : Pg_query_types.sub_plan)

and decode_alternative_sub_plan d =
  let v = default_alternative_sub_plan_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.subplans <- List.rev v.subplans;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alternative_sub_plan), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.subplans <- (decode_node (Pbrt.Decoder.nested d)) :: v.subplans;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alternative_sub_plan), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.subplans = v.subplans;
  } : Pg_query_types.alternative_sub_plan)

and decode_field_select d =
  let v = default_field_select_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(field_select), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.arg <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(field_select), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.fieldnum <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(field_select), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.resulttype <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(field_select), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.resulttypmod <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(field_select), field(5)" pk
    | Some (6, Pbrt.Varint) -> begin
      v.resultcollid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(field_select), field(6)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.arg = v.arg;
    Pg_query_types.fieldnum = v.fieldnum;
    Pg_query_types.resulttype = v.resulttype;
    Pg_query_types.resulttypmod = v.resulttypmod;
    Pg_query_types.resultcollid = v.resultcollid;
  } : Pg_query_types.field_select)

and decode_field_store d =
  let v = default_field_store_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.fieldnums <- List.rev v.fieldnums;
      v.newvals <- List.rev v.newvals;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(field_store), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.arg <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(field_store), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.newvals <- (decode_node (Pbrt.Decoder.nested d)) :: v.newvals;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(field_store), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.fieldnums <- (decode_node (Pbrt.Decoder.nested d)) :: v.fieldnums;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(field_store), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.resulttype <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(field_store), field(5)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.arg = v.arg;
    Pg_query_types.newvals = v.newvals;
    Pg_query_types.fieldnums = v.fieldnums;
    Pg_query_types.resulttype = v.resulttype;
  } : Pg_query_types.field_store)

and decode_relabel_type d =
  let v = default_relabel_type_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(relabel_type), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.arg <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(relabel_type), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.resulttype <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(relabel_type), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.resulttypmod <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(relabel_type), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.resultcollid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(relabel_type), field(5)" pk
    | Some (6, Pbrt.Varint) -> begin
      v.relabelformat <- decode_coercion_form d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(relabel_type), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(relabel_type), field(7)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.arg = v.arg;
    Pg_query_types.resulttype = v.resulttype;
    Pg_query_types.resulttypmod = v.resulttypmod;
    Pg_query_types.resultcollid = v.resultcollid;
    Pg_query_types.relabelformat = v.relabelformat;
    Pg_query_types.location = v.location;
  } : Pg_query_types.relabel_type)

and decode_coerce_via_io d =
  let v = default_coerce_via_io_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(coerce_via_io), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.arg <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(coerce_via_io), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.resulttype <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(coerce_via_io), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.resultcollid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(coerce_via_io), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.coerceformat <- decode_coercion_form d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(coerce_via_io), field(5)" pk
    | Some (6, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(coerce_via_io), field(6)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.arg = v.arg;
    Pg_query_types.resulttype = v.resulttype;
    Pg_query_types.resultcollid = v.resultcollid;
    Pg_query_types.coerceformat = v.coerceformat;
    Pg_query_types.location = v.location;
  } : Pg_query_types.coerce_via_io)

and decode_array_coerce_expr d =
  let v = default_array_coerce_expr_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(array_coerce_expr), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.arg <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(array_coerce_expr), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.elemexpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(array_coerce_expr), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.resulttype <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(array_coerce_expr), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.resulttypmod <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(array_coerce_expr), field(5)" pk
    | Some (6, Pbrt.Varint) -> begin
      v.resultcollid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(array_coerce_expr), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.coerceformat <- decode_coercion_form d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(array_coerce_expr), field(7)" pk
    | Some (8, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(array_coerce_expr), field(8)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.arg = v.arg;
    Pg_query_types.elemexpr = v.elemexpr;
    Pg_query_types.resulttype = v.resulttype;
    Pg_query_types.resulttypmod = v.resulttypmod;
    Pg_query_types.resultcollid = v.resultcollid;
    Pg_query_types.coerceformat = v.coerceformat;
    Pg_query_types.location = v.location;
  } : Pg_query_types.array_coerce_expr)

and decode_convert_rowtype_expr d =
  let v = default_convert_rowtype_expr_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(convert_rowtype_expr), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.arg <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(convert_rowtype_expr), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.resulttype <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(convert_rowtype_expr), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.convertformat <- decode_coercion_form d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(convert_rowtype_expr), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(convert_rowtype_expr), field(5)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.arg = v.arg;
    Pg_query_types.resulttype = v.resulttype;
    Pg_query_types.convertformat = v.convertformat;
    Pg_query_types.location = v.location;
  } : Pg_query_types.convert_rowtype_expr)

and decode_collate_expr d =
  let v = default_collate_expr_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(collate_expr), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.arg <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(collate_expr), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.coll_oid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(collate_expr), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(collate_expr), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.arg = v.arg;
    Pg_query_types.coll_oid = v.coll_oid;
    Pg_query_types.location = v.location;
  } : Pg_query_types.collate_expr)

and decode_case_expr d =
  let v = default_case_expr_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.args <- List.rev v.args;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(case_expr), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.casetype <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(case_expr), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.casecollid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(case_expr), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.arg <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(case_expr), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.args <- (decode_node (Pbrt.Decoder.nested d)) :: v.args;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(case_expr), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.defresult <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(case_expr), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(case_expr), field(7)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.casetype = v.casetype;
    Pg_query_types.casecollid = v.casecollid;
    Pg_query_types.arg = v.arg;
    Pg_query_types.args = v.args;
    Pg_query_types.defresult = v.defresult;
    Pg_query_types.location = v.location;
  } : Pg_query_types.case_expr)

and decode_case_when d =
  let v = default_case_when_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(case_when), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.expr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(case_when), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.result <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(case_when), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(case_when), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.expr = v.expr;
    Pg_query_types.result = v.result;
    Pg_query_types.location = v.location;
  } : Pg_query_types.case_when)

and decode_case_test_expr d =
  let v = default_case_test_expr_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(case_test_expr), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.type_id <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(case_test_expr), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.type_mod <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(case_test_expr), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.collation <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(case_test_expr), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.type_id = v.type_id;
    Pg_query_types.type_mod = v.type_mod;
    Pg_query_types.collation = v.collation;
  } : Pg_query_types.case_test_expr)

and decode_array_expr d =
  let v = default_array_expr_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.elements <- List.rev v.elements;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(array_expr), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.array_typeid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(array_expr), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.array_collid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(array_expr), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.element_typeid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(array_expr), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.elements <- (decode_node (Pbrt.Decoder.nested d)) :: v.elements;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(array_expr), field(5)" pk
    | Some (6, Pbrt.Varint) -> begin
      v.multidims <- Pbrt.Decoder.bool d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(array_expr), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(array_expr), field(7)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.array_typeid = v.array_typeid;
    Pg_query_types.array_collid = v.array_collid;
    Pg_query_types.element_typeid = v.element_typeid;
    Pg_query_types.elements = v.elements;
    Pg_query_types.multidims = v.multidims;
    Pg_query_types.location = v.location;
  } : Pg_query_types.array_expr)

and decode_row_expr d =
  let v = default_row_expr_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.colnames <- List.rev v.colnames;
      v.args <- List.rev v.args;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(row_expr), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.args <- (decode_node (Pbrt.Decoder.nested d)) :: v.args;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(row_expr), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.row_typeid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(row_expr), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.row_format <- decode_coercion_form d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(row_expr), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.colnames <- (decode_node (Pbrt.Decoder.nested d)) :: v.colnames;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(row_expr), field(5)" pk
    | Some (6, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(row_expr), field(6)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.args = v.args;
    Pg_query_types.row_typeid = v.row_typeid;
    Pg_query_types.row_format = v.row_format;
    Pg_query_types.colnames = v.colnames;
    Pg_query_types.location = v.location;
  } : Pg_query_types.row_expr)

and decode_row_compare_expr d =
  let v = default_row_compare_expr_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.rargs <- List.rev v.rargs;
      v.largs <- List.rev v.largs;
      v.inputcollids <- List.rev v.inputcollids;
      v.opfamilies <- List.rev v.opfamilies;
      v.opnos <- List.rev v.opnos;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(row_compare_expr), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.rctype <- decode_row_compare_type d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(row_compare_expr), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.opnos <- (decode_node (Pbrt.Decoder.nested d)) :: v.opnos;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(row_compare_expr), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.opfamilies <- (decode_node (Pbrt.Decoder.nested d)) :: v.opfamilies;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(row_compare_expr), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.inputcollids <- (decode_node (Pbrt.Decoder.nested d)) :: v.inputcollids;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(row_compare_expr), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.largs <- (decode_node (Pbrt.Decoder.nested d)) :: v.largs;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(row_compare_expr), field(6)" pk
    | Some (7, Pbrt.Bytes) -> begin
      v.rargs <- (decode_node (Pbrt.Decoder.nested d)) :: v.rargs;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(row_compare_expr), field(7)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.rctype = v.rctype;
    Pg_query_types.opnos = v.opnos;
    Pg_query_types.opfamilies = v.opfamilies;
    Pg_query_types.inputcollids = v.inputcollids;
    Pg_query_types.largs = v.largs;
    Pg_query_types.rargs = v.rargs;
  } : Pg_query_types.row_compare_expr)

and decode_coalesce_expr d =
  let v = default_coalesce_expr_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.args <- List.rev v.args;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(coalesce_expr), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.coalescetype <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(coalesce_expr), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.coalescecollid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(coalesce_expr), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.args <- (decode_node (Pbrt.Decoder.nested d)) :: v.args;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(coalesce_expr), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(coalesce_expr), field(5)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.coalescetype = v.coalescetype;
    Pg_query_types.coalescecollid = v.coalescecollid;
    Pg_query_types.args = v.args;
    Pg_query_types.location = v.location;
  } : Pg_query_types.coalesce_expr)

and decode_min_max_expr d =
  let v = default_min_max_expr_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.args <- List.rev v.args;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(min_max_expr), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.minmaxtype <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(min_max_expr), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.minmaxcollid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(min_max_expr), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.inputcollid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(min_max_expr), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.op <- decode_min_max_op d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(min_max_expr), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.args <- (decode_node (Pbrt.Decoder.nested d)) :: v.args;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(min_max_expr), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(min_max_expr), field(7)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.minmaxtype = v.minmaxtype;
    Pg_query_types.minmaxcollid = v.minmaxcollid;
    Pg_query_types.inputcollid = v.inputcollid;
    Pg_query_types.op = v.op;
    Pg_query_types.args = v.args;
    Pg_query_types.location = v.location;
  } : Pg_query_types.min_max_expr)

and decode_sqlvalue_function d =
  let v = default_sqlvalue_function_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sqlvalue_function), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.op <- decode_sqlvalue_function_op d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sqlvalue_function), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.type_ <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sqlvalue_function), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.typmod <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sqlvalue_function), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sqlvalue_function), field(5)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.op = v.op;
    Pg_query_types.type_ = v.type_;
    Pg_query_types.typmod = v.typmod;
    Pg_query_types.location = v.location;
  } : Pg_query_types.sqlvalue_function)

and decode_xml_expr d =
  let v = default_xml_expr_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.args <- List.rev v.args;
      v.arg_names <- List.rev v.arg_names;
      v.named_args <- List.rev v.named_args;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(xml_expr), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.op <- decode_xml_expr_op d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(xml_expr), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.name <- Pbrt.Decoder.string d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(xml_expr), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.named_args <- (decode_node (Pbrt.Decoder.nested d)) :: v.named_args;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(xml_expr), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.arg_names <- (decode_node (Pbrt.Decoder.nested d)) :: v.arg_names;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(xml_expr), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.args <- (decode_node (Pbrt.Decoder.nested d)) :: v.args;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(xml_expr), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.xmloption <- decode_xml_option_type d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(xml_expr), field(7)" pk
    | Some (8, Pbrt.Varint) -> begin
      v.type_ <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(xml_expr), field(8)" pk
    | Some (9, Pbrt.Varint) -> begin
      v.typmod <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (9, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(xml_expr), field(9)" pk
    | Some (10, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (10, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(xml_expr), field(10)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.op = v.op;
    Pg_query_types.name = v.name;
    Pg_query_types.named_args = v.named_args;
    Pg_query_types.arg_names = v.arg_names;
    Pg_query_types.args = v.args;
    Pg_query_types.xmloption = v.xmloption;
    Pg_query_types.type_ = v.type_;
    Pg_query_types.typmod = v.typmod;
    Pg_query_types.location = v.location;
  } : Pg_query_types.xml_expr)

and decode_null_test d =
  let v = default_null_test_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(null_test), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.arg <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(null_test), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.nulltesttype <- decode_null_test_type d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(null_test), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.argisrow <- Pbrt.Decoder.bool d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(null_test), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(null_test), field(5)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.arg = v.arg;
    Pg_query_types.nulltesttype = v.nulltesttype;
    Pg_query_types.argisrow = v.argisrow;
    Pg_query_types.location = v.location;
  } : Pg_query_types.null_test)

and decode_boolean_test d =
  let v = default_boolean_test_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(boolean_test), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.arg <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(boolean_test), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.booltesttype <- decode_bool_test_type d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(boolean_test), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(boolean_test), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.arg = v.arg;
    Pg_query_types.booltesttype = v.booltesttype;
    Pg_query_types.location = v.location;
  } : Pg_query_types.boolean_test)

and decode_coerce_to_domain d =
  let v = default_coerce_to_domain_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(coerce_to_domain), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.arg <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(coerce_to_domain), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.resulttype <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(coerce_to_domain), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.resulttypmod <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(coerce_to_domain), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.resultcollid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(coerce_to_domain), field(5)" pk
    | Some (6, Pbrt.Varint) -> begin
      v.coercionformat <- decode_coercion_form d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(coerce_to_domain), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(coerce_to_domain), field(7)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.arg = v.arg;
    Pg_query_types.resulttype = v.resulttype;
    Pg_query_types.resulttypmod = v.resulttypmod;
    Pg_query_types.resultcollid = v.resultcollid;
    Pg_query_types.coercionformat = v.coercionformat;
    Pg_query_types.location = v.location;
  } : Pg_query_types.coerce_to_domain)

and decode_coerce_to_domain_value d =
  let v = default_coerce_to_domain_value_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(coerce_to_domain_value), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.type_id <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(coerce_to_domain_value), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.type_mod <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(coerce_to_domain_value), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.collation <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(coerce_to_domain_value), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(coerce_to_domain_value), field(5)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.type_id = v.type_id;
    Pg_query_types.type_mod = v.type_mod;
    Pg_query_types.collation = v.collation;
    Pg_query_types.location = v.location;
  } : Pg_query_types.coerce_to_domain_value)

and decode_set_to_default d =
  let v = default_set_to_default_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(set_to_default), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.type_id <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(set_to_default), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.type_mod <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(set_to_default), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.collation <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(set_to_default), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(set_to_default), field(5)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.type_id = v.type_id;
    Pg_query_types.type_mod = v.type_mod;
    Pg_query_types.collation = v.collation;
    Pg_query_types.location = v.location;
  } : Pg_query_types.set_to_default)

and decode_current_of_expr d =
  let v = default_current_of_expr_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(current_of_expr), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.cvarno <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(current_of_expr), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.cursor_name <- Pbrt.Decoder.string d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(current_of_expr), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.cursor_param <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(current_of_expr), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.cvarno = v.cvarno;
    Pg_query_types.cursor_name = v.cursor_name;
    Pg_query_types.cursor_param = v.cursor_param;
  } : Pg_query_types.current_of_expr)

and decode_next_value_expr d =
  let v = default_next_value_expr_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(next_value_expr), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.seqid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(next_value_expr), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.type_id <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(next_value_expr), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.seqid = v.seqid;
    Pg_query_types.type_id = v.type_id;
  } : Pg_query_types.next_value_expr)

and decode_inference_elem d =
  let v = default_inference_elem_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(inference_elem), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.expr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(inference_elem), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.infercollid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(inference_elem), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.inferopclass <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(inference_elem), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.expr = v.expr;
    Pg_query_types.infercollid = v.infercollid;
    Pg_query_types.inferopclass = v.inferopclass;
  } : Pg_query_types.inference_elem)

and decode_target_entry d =
  let v = default_target_entry_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.xpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(target_entry), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.expr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(target_entry), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.resno <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(target_entry), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.resname <- Pbrt.Decoder.string d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(target_entry), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.ressortgroupref <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(target_entry), field(5)" pk
    | Some (6, Pbrt.Varint) -> begin
      v.resorigtbl <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(target_entry), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.resorigcol <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(target_entry), field(7)" pk
    | Some (8, Pbrt.Varint) -> begin
      v.resjunk <- Pbrt.Decoder.bool d;
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(target_entry), field(8)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xpr = v.xpr;
    Pg_query_types.expr = v.expr;
    Pg_query_types.resno = v.resno;
    Pg_query_types.resname = v.resname;
    Pg_query_types.ressortgroupref = v.ressortgroupref;
    Pg_query_types.resorigtbl = v.resorigtbl;
    Pg_query_types.resorigcol = v.resorigcol;
    Pg_query_types.resjunk = v.resjunk;
  } : Pg_query_types.target_entry)

and decode_join_expr d =
  let v = default_join_expr_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.using_clause <- List.rev v.using_clause;
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.jointype <- decode_join_type d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(join_expr), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.is_natural <- Pbrt.Decoder.bool d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(join_expr), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.larg <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(join_expr), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.rarg <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(join_expr), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.using_clause <- (decode_node (Pbrt.Decoder.nested d)) :: v.using_clause;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(join_expr), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.join_using_alias <- Some (decode_alias (Pbrt.Decoder.nested d));
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(join_expr), field(6)" pk
    | Some (7, Pbrt.Bytes) -> begin
      v.quals <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(join_expr), field(7)" pk
    | Some (8, Pbrt.Bytes) -> begin
      v.alias <- Some (decode_alias (Pbrt.Decoder.nested d));
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(join_expr), field(8)" pk
    | Some (9, Pbrt.Varint) -> begin
      v.rtindex <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (9, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(join_expr), field(9)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.jointype = v.jointype;
    Pg_query_types.is_natural = v.is_natural;
    Pg_query_types.larg = v.larg;
    Pg_query_types.rarg = v.rarg;
    Pg_query_types.using_clause = v.using_clause;
    Pg_query_types.join_using_alias = v.join_using_alias;
    Pg_query_types.quals = v.quals;
    Pg_query_types.alias = v.alias;
    Pg_query_types.rtindex = v.rtindex;
  } : Pg_query_types.join_expr)

and decode_from_expr d =
  let v = default_from_expr_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.fromlist <- List.rev v.fromlist;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.fromlist <- (decode_node (Pbrt.Decoder.nested d)) :: v.fromlist;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(from_expr), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.quals <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(from_expr), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.fromlist = v.fromlist;
    Pg_query_types.quals = v.quals;
  } : Pg_query_types.from_expr)

and decode_on_conflict_expr d =
  let v = default_on_conflict_expr_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.excl_rel_tlist <- List.rev v.excl_rel_tlist;
      v.on_conflict_set <- List.rev v.on_conflict_set;
      v.arbiter_elems <- List.rev v.arbiter_elems;
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.action <- decode_on_conflict_action d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(on_conflict_expr), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.arbiter_elems <- (decode_node (Pbrt.Decoder.nested d)) :: v.arbiter_elems;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(on_conflict_expr), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.arbiter_where <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(on_conflict_expr), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.constraint_ <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(on_conflict_expr), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.on_conflict_set <- (decode_node (Pbrt.Decoder.nested d)) :: v.on_conflict_set;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(on_conflict_expr), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.on_conflict_where <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(on_conflict_expr), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.excl_rel_index <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(on_conflict_expr), field(7)" pk
    | Some (8, Pbrt.Bytes) -> begin
      v.excl_rel_tlist <- (decode_node (Pbrt.Decoder.nested d)) :: v.excl_rel_tlist;
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(on_conflict_expr), field(8)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.action = v.action;
    Pg_query_types.arbiter_elems = v.arbiter_elems;
    Pg_query_types.arbiter_where = v.arbiter_where;
    Pg_query_types.constraint_ = v.constraint_;
    Pg_query_types.on_conflict_set = v.on_conflict_set;
    Pg_query_types.on_conflict_where = v.on_conflict_where;
    Pg_query_types.excl_rel_index = v.excl_rel_index;
    Pg_query_types.excl_rel_tlist = v.excl_rel_tlist;
  } : Pg_query_types.on_conflict_expr)

and decode_into_clause d =
  let v = default_into_clause_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.options <- List.rev v.options;
      v.col_names <- List.rev v.col_names;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.rel <- Some (decode_range_var (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(into_clause), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.col_names <- (decode_node (Pbrt.Decoder.nested d)) :: v.col_names;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(into_clause), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.access_method <- Pbrt.Decoder.string d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(into_clause), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.options <- (decode_node (Pbrt.Decoder.nested d)) :: v.options;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(into_clause), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.on_commit <- decode_on_commit_action d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(into_clause), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.table_space_name <- Pbrt.Decoder.string d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(into_clause), field(6)" pk
    | Some (7, Pbrt.Bytes) -> begin
      v.view_query <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(into_clause), field(7)" pk
    | Some (8, Pbrt.Varint) -> begin
      v.skip_data <- Pbrt.Decoder.bool d;
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(into_clause), field(8)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.rel = v.rel;
    Pg_query_types.col_names = v.col_names;
    Pg_query_types.access_method = v.access_method;
    Pg_query_types.options = v.options;
    Pg_query_types.on_commit = v.on_commit;
    Pg_query_types.table_space_name = v.table_space_name;
    Pg_query_types.view_query = v.view_query;
    Pg_query_types.skip_data = v.skip_data;
  } : Pg_query_types.into_clause)

and decode_merge_action d =
  let v = default_merge_action_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.update_colnos <- List.rev v.update_colnos;
      v.target_list <- List.rev v.target_list;
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.matched <- Pbrt.Decoder.bool d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(merge_action), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.command_type <- decode_cmd_type d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(merge_action), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.override <- decode_overriding_kind d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(merge_action), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.qual <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(merge_action), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.target_list <- (decode_node (Pbrt.Decoder.nested d)) :: v.target_list;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(merge_action), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.update_colnos <- (decode_node (Pbrt.Decoder.nested d)) :: v.update_colnos;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(merge_action), field(6)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.matched = v.matched;
    Pg_query_types.command_type = v.command_type;
    Pg_query_types.override = v.override;
    Pg_query_types.qual = v.qual;
    Pg_query_types.target_list = v.target_list;
    Pg_query_types.update_colnos = v.update_colnos;
  } : Pg_query_types.merge_action)

and decode_query d =
  let v = default_query_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.with_check_options <- List.rev v.with_check_options;
      v.constraint_deps <- List.rev v.constraint_deps;
      v.row_marks <- List.rev v.row_marks;
      v.sort_clause <- List.rev v.sort_clause;
      v.distinct_clause <- List.rev v.distinct_clause;
      v.window_clause <- List.rev v.window_clause;
      v.grouping_sets <- List.rev v.grouping_sets;
      v.group_clause <- List.rev v.group_clause;
      v.returning_list <- List.rev v.returning_list;
      v.target_list <- List.rev v.target_list;
      v.merge_action_list <- List.rev v.merge_action_list;
      v.rtable <- List.rev v.rtable;
      v.cte_list <- List.rev v.cte_list;
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.command_type <- decode_cmd_type d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.query_source <- decode_query_source d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.can_set_tag <- Pbrt.Decoder.bool d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.utility_stmt <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.result_relation <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(5)" pk
    | Some (6, Pbrt.Varint) -> begin
      v.has_aggs <- Pbrt.Decoder.bool d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.has_window_funcs <- Pbrt.Decoder.bool d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(7)" pk
    | Some (8, Pbrt.Varint) -> begin
      v.has_target_srfs <- Pbrt.Decoder.bool d;
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(8)" pk
    | Some (9, Pbrt.Varint) -> begin
      v.has_sub_links <- Pbrt.Decoder.bool d;
    end
    | Some (9, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(9)" pk
    | Some (10, Pbrt.Varint) -> begin
      v.has_distinct_on <- Pbrt.Decoder.bool d;
    end
    | Some (10, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(10)" pk
    | Some (11, Pbrt.Varint) -> begin
      v.has_recursive <- Pbrt.Decoder.bool d;
    end
    | Some (11, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(11)" pk
    | Some (12, Pbrt.Varint) -> begin
      v.has_modifying_cte <- Pbrt.Decoder.bool d;
    end
    | Some (12, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(12)" pk
    | Some (13, Pbrt.Varint) -> begin
      v.has_for_update <- Pbrt.Decoder.bool d;
    end
    | Some (13, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(13)" pk
    | Some (14, Pbrt.Varint) -> begin
      v.has_row_security <- Pbrt.Decoder.bool d;
    end
    | Some (14, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(14)" pk
    | Some (15, Pbrt.Varint) -> begin
      v.is_return <- Pbrt.Decoder.bool d;
    end
    | Some (15, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(15)" pk
    | Some (16, Pbrt.Bytes) -> begin
      v.cte_list <- (decode_node (Pbrt.Decoder.nested d)) :: v.cte_list;
    end
    | Some (16, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(16)" pk
    | Some (17, Pbrt.Bytes) -> begin
      v.rtable <- (decode_node (Pbrt.Decoder.nested d)) :: v.rtable;
    end
    | Some (17, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(17)" pk
    | Some (18, Pbrt.Bytes) -> begin
      v.jointree <- Some (decode_from_expr (Pbrt.Decoder.nested d));
    end
    | Some (18, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(18)" pk
    | Some (19, Pbrt.Bytes) -> begin
      v.merge_action_list <- (decode_node (Pbrt.Decoder.nested d)) :: v.merge_action_list;
    end
    | Some (19, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(19)" pk
    | Some (20, Pbrt.Varint) -> begin
      v.merge_use_outer_join <- Pbrt.Decoder.bool d;
    end
    | Some (20, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(20)" pk
    | Some (21, Pbrt.Bytes) -> begin
      v.target_list <- (decode_node (Pbrt.Decoder.nested d)) :: v.target_list;
    end
    | Some (21, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(21)" pk
    | Some (22, Pbrt.Varint) -> begin
      v.override <- decode_overriding_kind d;
    end
    | Some (22, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(22)" pk
    | Some (23, Pbrt.Bytes) -> begin
      v.on_conflict <- Some (decode_on_conflict_expr (Pbrt.Decoder.nested d));
    end
    | Some (23, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(23)" pk
    | Some (24, Pbrt.Bytes) -> begin
      v.returning_list <- (decode_node (Pbrt.Decoder.nested d)) :: v.returning_list;
    end
    | Some (24, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(24)" pk
    | Some (25, Pbrt.Bytes) -> begin
      v.group_clause <- (decode_node (Pbrt.Decoder.nested d)) :: v.group_clause;
    end
    | Some (25, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(25)" pk
    | Some (26, Pbrt.Varint) -> begin
      v.group_distinct <- Pbrt.Decoder.bool d;
    end
    | Some (26, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(26)" pk
    | Some (27, Pbrt.Bytes) -> begin
      v.grouping_sets <- (decode_node (Pbrt.Decoder.nested d)) :: v.grouping_sets;
    end
    | Some (27, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(27)" pk
    | Some (28, Pbrt.Bytes) -> begin
      v.having_qual <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (28, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(28)" pk
    | Some (29, Pbrt.Bytes) -> begin
      v.window_clause <- (decode_node (Pbrt.Decoder.nested d)) :: v.window_clause;
    end
    | Some (29, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(29)" pk
    | Some (30, Pbrt.Bytes) -> begin
      v.distinct_clause <- (decode_node (Pbrt.Decoder.nested d)) :: v.distinct_clause;
    end
    | Some (30, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(30)" pk
    | Some (31, Pbrt.Bytes) -> begin
      v.sort_clause <- (decode_node (Pbrt.Decoder.nested d)) :: v.sort_clause;
    end
    | Some (31, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(31)" pk
    | Some (32, Pbrt.Bytes) -> begin
      v.limit_offset <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (32, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(32)" pk
    | Some (33, Pbrt.Bytes) -> begin
      v.limit_count <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (33, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(33)" pk
    | Some (34, Pbrt.Varint) -> begin
      v.limit_option <- decode_limit_option d;
    end
    | Some (34, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(34)" pk
    | Some (35, Pbrt.Bytes) -> begin
      v.row_marks <- (decode_node (Pbrt.Decoder.nested d)) :: v.row_marks;
    end
    | Some (35, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(35)" pk
    | Some (36, Pbrt.Bytes) -> begin
      v.set_operations <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (36, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(36)" pk
    | Some (37, Pbrt.Bytes) -> begin
      v.constraint_deps <- (decode_node (Pbrt.Decoder.nested d)) :: v.constraint_deps;
    end
    | Some (37, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(37)" pk
    | Some (38, Pbrt.Bytes) -> begin
      v.with_check_options <- (decode_node (Pbrt.Decoder.nested d)) :: v.with_check_options;
    end
    | Some (38, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(38)" pk
    | Some (39, Pbrt.Varint) -> begin
      v.stmt_location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (39, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(39)" pk
    | Some (40, Pbrt.Varint) -> begin
      v.stmt_len <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (40, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(query), field(40)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.command_type = v.command_type;
    Pg_query_types.query_source = v.query_source;
    Pg_query_types.can_set_tag = v.can_set_tag;
    Pg_query_types.utility_stmt = v.utility_stmt;
    Pg_query_types.result_relation = v.result_relation;
    Pg_query_types.has_aggs = v.has_aggs;
    Pg_query_types.has_window_funcs = v.has_window_funcs;
    Pg_query_types.has_target_srfs = v.has_target_srfs;
    Pg_query_types.has_sub_links = v.has_sub_links;
    Pg_query_types.has_distinct_on = v.has_distinct_on;
    Pg_query_types.has_recursive = v.has_recursive;
    Pg_query_types.has_modifying_cte = v.has_modifying_cte;
    Pg_query_types.has_for_update = v.has_for_update;
    Pg_query_types.has_row_security = v.has_row_security;
    Pg_query_types.is_return = v.is_return;
    Pg_query_types.cte_list = v.cte_list;
    Pg_query_types.rtable = v.rtable;
    Pg_query_types.jointree = v.jointree;
    Pg_query_types.merge_action_list = v.merge_action_list;
    Pg_query_types.merge_use_outer_join = v.merge_use_outer_join;
    Pg_query_types.target_list = v.target_list;
    Pg_query_types.override = v.override;
    Pg_query_types.on_conflict = v.on_conflict;
    Pg_query_types.returning_list = v.returning_list;
    Pg_query_types.group_clause = v.group_clause;
    Pg_query_types.group_distinct = v.group_distinct;
    Pg_query_types.grouping_sets = v.grouping_sets;
    Pg_query_types.having_qual = v.having_qual;
    Pg_query_types.window_clause = v.window_clause;
    Pg_query_types.distinct_clause = v.distinct_clause;
    Pg_query_types.sort_clause = v.sort_clause;
    Pg_query_types.limit_offset = v.limit_offset;
    Pg_query_types.limit_count = v.limit_count;
    Pg_query_types.limit_option = v.limit_option;
    Pg_query_types.row_marks = v.row_marks;
    Pg_query_types.set_operations = v.set_operations;
    Pg_query_types.constraint_deps = v.constraint_deps;
    Pg_query_types.with_check_options = v.with_check_options;
    Pg_query_types.stmt_location = v.stmt_location;
    Pg_query_types.stmt_len = v.stmt_len;
  } : Pg_query_types.query)

and decode_insert_stmt d =
  let v = default_insert_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.returning_list <- List.rev v.returning_list;
      v.cols <- List.rev v.cols;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.relation <- Some (decode_range_var (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(insert_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.cols <- (decode_node (Pbrt.Decoder.nested d)) :: v.cols;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(insert_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.select_stmt <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(insert_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.on_conflict_clause <- Some (decode_on_conflict_clause (Pbrt.Decoder.nested d));
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(insert_stmt), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.returning_list <- (decode_node (Pbrt.Decoder.nested d)) :: v.returning_list;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(insert_stmt), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.with_clause <- Some (decode_with_clause (Pbrt.Decoder.nested d));
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(insert_stmt), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.override <- decode_overriding_kind d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(insert_stmt), field(7)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.relation = v.relation;
    Pg_query_types.cols = v.cols;
    Pg_query_types.select_stmt = v.select_stmt;
    Pg_query_types.on_conflict_clause = v.on_conflict_clause;
    Pg_query_types.returning_list = v.returning_list;
    Pg_query_types.with_clause = v.with_clause;
    Pg_query_types.override = v.override;
  } : Pg_query_types.insert_stmt)

and decode_on_conflict_clause d =
  let v = default_on_conflict_clause_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.target_list <- List.rev v.target_list;
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.action <- decode_on_conflict_action d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(on_conflict_clause), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.infer <- Some (decode_infer_clause (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(on_conflict_clause), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.target_list <- (decode_node (Pbrt.Decoder.nested d)) :: v.target_list;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(on_conflict_clause), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.where_clause <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(on_conflict_clause), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(on_conflict_clause), field(5)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.action = v.action;
    Pg_query_types.infer = v.infer;
    Pg_query_types.target_list = v.target_list;
    Pg_query_types.where_clause = v.where_clause;
    Pg_query_types.location = v.location;
  } : Pg_query_types.on_conflict_clause)

and decode_infer_clause d =
  let v = default_infer_clause_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.index_elems <- List.rev v.index_elems;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.index_elems <- (decode_node (Pbrt.Decoder.nested d)) :: v.index_elems;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(infer_clause), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.where_clause <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(infer_clause), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.conname <- Pbrt.Decoder.string d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(infer_clause), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(infer_clause), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.index_elems = v.index_elems;
    Pg_query_types.where_clause = v.where_clause;
    Pg_query_types.conname = v.conname;
    Pg_query_types.location = v.location;
  } : Pg_query_types.infer_clause)

and decode_with_clause d =
  let v = default_with_clause_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.ctes <- List.rev v.ctes;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.ctes <- (decode_node (Pbrt.Decoder.nested d)) :: v.ctes;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(with_clause), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.recursive <- Pbrt.Decoder.bool d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(with_clause), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(with_clause), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.ctes = v.ctes;
    Pg_query_types.recursive = v.recursive;
    Pg_query_types.location = v.location;
  } : Pg_query_types.with_clause)

and decode_delete_stmt d =
  let v = default_delete_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.returning_list <- List.rev v.returning_list;
      v.using_clause <- List.rev v.using_clause;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.relation <- Some (decode_range_var (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(delete_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.using_clause <- (decode_node (Pbrt.Decoder.nested d)) :: v.using_clause;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(delete_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.where_clause <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(delete_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.returning_list <- (decode_node (Pbrt.Decoder.nested d)) :: v.returning_list;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(delete_stmt), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.with_clause <- Some (decode_with_clause (Pbrt.Decoder.nested d));
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(delete_stmt), field(5)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.relation = v.relation;
    Pg_query_types.using_clause = v.using_clause;
    Pg_query_types.where_clause = v.where_clause;
    Pg_query_types.returning_list = v.returning_list;
    Pg_query_types.with_clause = v.with_clause;
  } : Pg_query_types.delete_stmt)

and decode_update_stmt d =
  let v = default_update_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.returning_list <- List.rev v.returning_list;
      v.from_clause <- List.rev v.from_clause;
      v.target_list <- List.rev v.target_list;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.relation <- Some (decode_range_var (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(update_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.target_list <- (decode_node (Pbrt.Decoder.nested d)) :: v.target_list;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(update_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.where_clause <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(update_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.from_clause <- (decode_node (Pbrt.Decoder.nested d)) :: v.from_clause;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(update_stmt), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.returning_list <- (decode_node (Pbrt.Decoder.nested d)) :: v.returning_list;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(update_stmt), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.with_clause <- Some (decode_with_clause (Pbrt.Decoder.nested d));
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(update_stmt), field(6)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.relation = v.relation;
    Pg_query_types.target_list = v.target_list;
    Pg_query_types.where_clause = v.where_clause;
    Pg_query_types.from_clause = v.from_clause;
    Pg_query_types.returning_list = v.returning_list;
    Pg_query_types.with_clause = v.with_clause;
  } : Pg_query_types.update_stmt)

and decode_merge_stmt d =
  let v = default_merge_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.merge_when_clauses <- List.rev v.merge_when_clauses;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.relation <- Some (decode_range_var (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(merge_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.source_relation <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(merge_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.join_condition <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(merge_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.merge_when_clauses <- (decode_node (Pbrt.Decoder.nested d)) :: v.merge_when_clauses;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(merge_stmt), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.with_clause <- Some (decode_with_clause (Pbrt.Decoder.nested d));
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(merge_stmt), field(5)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.relation = v.relation;
    Pg_query_types.source_relation = v.source_relation;
    Pg_query_types.join_condition = v.join_condition;
    Pg_query_types.merge_when_clauses = v.merge_when_clauses;
    Pg_query_types.with_clause = v.with_clause;
  } : Pg_query_types.merge_stmt)

and decode_select_stmt d =
  let v = default_select_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.locking_clause <- List.rev v.locking_clause;
      v.sort_clause <- List.rev v.sort_clause;
      v.values_lists <- List.rev v.values_lists;
      v.window_clause <- List.rev v.window_clause;
      v.group_clause <- List.rev v.group_clause;
      v.from_clause <- List.rev v.from_clause;
      v.target_list <- List.rev v.target_list;
      v.distinct_clause <- List.rev v.distinct_clause;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.distinct_clause <- (decode_node (Pbrt.Decoder.nested d)) :: v.distinct_clause;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(select_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.into_clause <- Some (decode_into_clause (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(select_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.target_list <- (decode_node (Pbrt.Decoder.nested d)) :: v.target_list;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(select_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.from_clause <- (decode_node (Pbrt.Decoder.nested d)) :: v.from_clause;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(select_stmt), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.where_clause <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(select_stmt), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.group_clause <- (decode_node (Pbrt.Decoder.nested d)) :: v.group_clause;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(select_stmt), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.group_distinct <- Pbrt.Decoder.bool d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(select_stmt), field(7)" pk
    | Some (8, Pbrt.Bytes) -> begin
      v.having_clause <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(select_stmt), field(8)" pk
    | Some (9, Pbrt.Bytes) -> begin
      v.window_clause <- (decode_node (Pbrt.Decoder.nested d)) :: v.window_clause;
    end
    | Some (9, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(select_stmt), field(9)" pk
    | Some (10, Pbrt.Bytes) -> begin
      v.values_lists <- (decode_node (Pbrt.Decoder.nested d)) :: v.values_lists;
    end
    | Some (10, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(select_stmt), field(10)" pk
    | Some (11, Pbrt.Bytes) -> begin
      v.sort_clause <- (decode_node (Pbrt.Decoder.nested d)) :: v.sort_clause;
    end
    | Some (11, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(select_stmt), field(11)" pk
    | Some (12, Pbrt.Bytes) -> begin
      v.limit_offset <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (12, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(select_stmt), field(12)" pk
    | Some (13, Pbrt.Bytes) -> begin
      v.limit_count <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (13, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(select_stmt), field(13)" pk
    | Some (14, Pbrt.Varint) -> begin
      v.limit_option <- decode_limit_option d;
    end
    | Some (14, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(select_stmt), field(14)" pk
    | Some (15, Pbrt.Bytes) -> begin
      v.locking_clause <- (decode_node (Pbrt.Decoder.nested d)) :: v.locking_clause;
    end
    | Some (15, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(select_stmt), field(15)" pk
    | Some (16, Pbrt.Bytes) -> begin
      v.with_clause <- Some (decode_with_clause (Pbrt.Decoder.nested d));
    end
    | Some (16, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(select_stmt), field(16)" pk
    | Some (17, Pbrt.Varint) -> begin
      v.op <- decode_set_operation d;
    end
    | Some (17, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(select_stmt), field(17)" pk
    | Some (18, Pbrt.Varint) -> begin
      v.all <- Pbrt.Decoder.bool d;
    end
    | Some (18, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(select_stmt), field(18)" pk
    | Some (19, Pbrt.Bytes) -> begin
      v.larg <- Some (decode_select_stmt (Pbrt.Decoder.nested d));
    end
    | Some (19, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(select_stmt), field(19)" pk
    | Some (20, Pbrt.Bytes) -> begin
      v.rarg <- Some (decode_select_stmt (Pbrt.Decoder.nested d));
    end
    | Some (20, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(select_stmt), field(20)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.distinct_clause = v.distinct_clause;
    Pg_query_types.into_clause = v.into_clause;
    Pg_query_types.target_list = v.target_list;
    Pg_query_types.from_clause = v.from_clause;
    Pg_query_types.where_clause = v.where_clause;
    Pg_query_types.group_clause = v.group_clause;
    Pg_query_types.group_distinct = v.group_distinct;
    Pg_query_types.having_clause = v.having_clause;
    Pg_query_types.window_clause = v.window_clause;
    Pg_query_types.values_lists = v.values_lists;
    Pg_query_types.sort_clause = v.sort_clause;
    Pg_query_types.limit_offset = v.limit_offset;
    Pg_query_types.limit_count = v.limit_count;
    Pg_query_types.limit_option = v.limit_option;
    Pg_query_types.locking_clause = v.locking_clause;
    Pg_query_types.with_clause = v.with_clause;
    Pg_query_types.op = v.op;
    Pg_query_types.all = v.all;
    Pg_query_types.larg = v.larg;
    Pg_query_types.rarg = v.rarg;
  } : Pg_query_types.select_stmt)

and decode_return_stmt d =
  let v = default_return_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.returnval <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(return_stmt), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.returnval = v.returnval;
  } : Pg_query_types.return_stmt)

and decode_plassign_stmt d =
  let v = default_plassign_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.indirection <- List.rev v.indirection;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.name <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(plassign_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.indirection <- (decode_node (Pbrt.Decoder.nested d)) :: v.indirection;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(plassign_stmt), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.nnames <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(plassign_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.val_ <- Some (decode_select_stmt (Pbrt.Decoder.nested d));
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(plassign_stmt), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(plassign_stmt), field(5)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.name = v.name;
    Pg_query_types.indirection = v.indirection;
    Pg_query_types.nnames = v.nnames;
    Pg_query_types.val_ = v.val_;
    Pg_query_types.location = v.location;
  } : Pg_query_types.plassign_stmt)

and decode_alter_table_stmt d =
  let v = default_alter_table_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.cmds <- List.rev v.cmds;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.relation <- Some (decode_range_var (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_table_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.cmds <- (decode_node (Pbrt.Decoder.nested d)) :: v.cmds;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_table_stmt), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.objtype <- decode_object_type d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_table_stmt), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.missing_ok <- Pbrt.Decoder.bool d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_table_stmt), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.relation = v.relation;
    Pg_query_types.cmds = v.cmds;
    Pg_query_types.objtype = v.objtype;
    Pg_query_types.missing_ok = v.missing_ok;
  } : Pg_query_types.alter_table_stmt)

and decode_alter_table_cmd d =
  let v = default_alter_table_cmd_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.subtype <- decode_alter_table_type d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_table_cmd), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.name <- Pbrt.Decoder.string d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_table_cmd), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.num <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_table_cmd), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.newowner <- Some (decode_role_spec (Pbrt.Decoder.nested d));
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_table_cmd), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.def <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_table_cmd), field(5)" pk
    | Some (6, Pbrt.Varint) -> begin
      v.behavior <- decode_drop_behavior d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_table_cmd), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.missing_ok <- Pbrt.Decoder.bool d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_table_cmd), field(7)" pk
    | Some (8, Pbrt.Varint) -> begin
      v.recurse <- Pbrt.Decoder.bool d;
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_table_cmd), field(8)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.subtype = v.subtype;
    Pg_query_types.name = v.name;
    Pg_query_types.num = v.num;
    Pg_query_types.newowner = v.newowner;
    Pg_query_types.def = v.def;
    Pg_query_types.behavior = v.behavior;
    Pg_query_types.missing_ok = v.missing_ok;
    Pg_query_types.recurse = v.recurse;
  } : Pg_query_types.alter_table_cmd)

and decode_alter_domain_stmt d =
  let v = default_alter_domain_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.type_name <- List.rev v.type_name;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.subtype <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_domain_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.type_name <- (decode_node (Pbrt.Decoder.nested d)) :: v.type_name;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_domain_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.name <- Pbrt.Decoder.string d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_domain_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.def <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_domain_stmt), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.behavior <- decode_drop_behavior d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_domain_stmt), field(5)" pk
    | Some (6, Pbrt.Varint) -> begin
      v.missing_ok <- Pbrt.Decoder.bool d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_domain_stmt), field(6)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.subtype = v.subtype;
    Pg_query_types.type_name = v.type_name;
    Pg_query_types.name = v.name;
    Pg_query_types.def = v.def;
    Pg_query_types.behavior = v.behavior;
    Pg_query_types.missing_ok = v.missing_ok;
  } : Pg_query_types.alter_domain_stmt)

and decode_set_operation_stmt d =
  let v = default_set_operation_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.group_clauses <- List.rev v.group_clauses;
      v.col_collations <- List.rev v.col_collations;
      v.col_typmods <- List.rev v.col_typmods;
      v.col_types <- List.rev v.col_types;
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.op <- decode_set_operation d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(set_operation_stmt), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.all <- Pbrt.Decoder.bool d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(set_operation_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.larg <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(set_operation_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.rarg <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(set_operation_stmt), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.col_types <- (decode_node (Pbrt.Decoder.nested d)) :: v.col_types;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(set_operation_stmt), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.col_typmods <- (decode_node (Pbrt.Decoder.nested d)) :: v.col_typmods;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(set_operation_stmt), field(6)" pk
    | Some (7, Pbrt.Bytes) -> begin
      v.col_collations <- (decode_node (Pbrt.Decoder.nested d)) :: v.col_collations;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(set_operation_stmt), field(7)" pk
    | Some (8, Pbrt.Bytes) -> begin
      v.group_clauses <- (decode_node (Pbrt.Decoder.nested d)) :: v.group_clauses;
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(set_operation_stmt), field(8)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.op = v.op;
    Pg_query_types.all = v.all;
    Pg_query_types.larg = v.larg;
    Pg_query_types.rarg = v.rarg;
    Pg_query_types.col_types = v.col_types;
    Pg_query_types.col_typmods = v.col_typmods;
    Pg_query_types.col_collations = v.col_collations;
    Pg_query_types.group_clauses = v.group_clauses;
  } : Pg_query_types.set_operation_stmt)

and decode_grant_stmt d =
  let v = default_grant_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.grantees <- List.rev v.grantees;
      v.privileges <- List.rev v.privileges;
      v.objects <- List.rev v.objects;
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.is_grant <- Pbrt.Decoder.bool d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(grant_stmt), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.targtype <- decode_grant_target_type d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(grant_stmt), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.objtype <- decode_object_type d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(grant_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.objects <- (decode_node (Pbrt.Decoder.nested d)) :: v.objects;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(grant_stmt), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.privileges <- (decode_node (Pbrt.Decoder.nested d)) :: v.privileges;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(grant_stmt), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.grantees <- (decode_node (Pbrt.Decoder.nested d)) :: v.grantees;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(grant_stmt), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.grant_option <- Pbrt.Decoder.bool d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(grant_stmt), field(7)" pk
    | Some (8, Pbrt.Bytes) -> begin
      v.grantor <- Some (decode_role_spec (Pbrt.Decoder.nested d));
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(grant_stmt), field(8)" pk
    | Some (9, Pbrt.Varint) -> begin
      v.behavior <- decode_drop_behavior d;
    end
    | Some (9, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(grant_stmt), field(9)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.is_grant = v.is_grant;
    Pg_query_types.targtype = v.targtype;
    Pg_query_types.objtype = v.objtype;
    Pg_query_types.objects = v.objects;
    Pg_query_types.privileges = v.privileges;
    Pg_query_types.grantees = v.grantees;
    Pg_query_types.grant_option = v.grant_option;
    Pg_query_types.grantor = v.grantor;
    Pg_query_types.behavior = v.behavior;
  } : Pg_query_types.grant_stmt)

and decode_grant_role_stmt d =
  let v = default_grant_role_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.grantee_roles <- List.rev v.grantee_roles;
      v.granted_roles <- List.rev v.granted_roles;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.granted_roles <- (decode_node (Pbrt.Decoder.nested d)) :: v.granted_roles;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(grant_role_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.grantee_roles <- (decode_node (Pbrt.Decoder.nested d)) :: v.grantee_roles;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(grant_role_stmt), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.is_grant <- Pbrt.Decoder.bool d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(grant_role_stmt), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.admin_opt <- Pbrt.Decoder.bool d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(grant_role_stmt), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.grantor <- Some (decode_role_spec (Pbrt.Decoder.nested d));
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(grant_role_stmt), field(5)" pk
    | Some (6, Pbrt.Varint) -> begin
      v.behavior <- decode_drop_behavior d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(grant_role_stmt), field(6)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.granted_roles = v.granted_roles;
    Pg_query_types.grantee_roles = v.grantee_roles;
    Pg_query_types.is_grant = v.is_grant;
    Pg_query_types.admin_opt = v.admin_opt;
    Pg_query_types.grantor = v.grantor;
    Pg_query_types.behavior = v.behavior;
  } : Pg_query_types.grant_role_stmt)

and decode_alter_default_privileges_stmt d =
  let v = default_alter_default_privileges_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.options <- List.rev v.options;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.options <- (decode_node (Pbrt.Decoder.nested d)) :: v.options;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_default_privileges_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.action <- Some (decode_grant_stmt (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_default_privileges_stmt), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.options = v.options;
    Pg_query_types.action = v.action;
  } : Pg_query_types.alter_default_privileges_stmt)

and decode_cluster_stmt d =
  let v = default_cluster_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.params <- List.rev v.params;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.relation <- Some (decode_range_var (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(cluster_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.indexname <- Pbrt.Decoder.string d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(cluster_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.params <- (decode_node (Pbrt.Decoder.nested d)) :: v.params;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(cluster_stmt), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.relation = v.relation;
    Pg_query_types.indexname = v.indexname;
    Pg_query_types.params = v.params;
  } : Pg_query_types.cluster_stmt)

and decode_copy_stmt d =
  let v = default_copy_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.options <- List.rev v.options;
      v.attlist <- List.rev v.attlist;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.relation <- Some (decode_range_var (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(copy_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.query <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(copy_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.attlist <- (decode_node (Pbrt.Decoder.nested d)) :: v.attlist;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(copy_stmt), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.is_from <- Pbrt.Decoder.bool d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(copy_stmt), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.is_program <- Pbrt.Decoder.bool d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(copy_stmt), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.filename <- Pbrt.Decoder.string d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(copy_stmt), field(6)" pk
    | Some (7, Pbrt.Bytes) -> begin
      v.options <- (decode_node (Pbrt.Decoder.nested d)) :: v.options;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(copy_stmt), field(7)" pk
    | Some (8, Pbrt.Bytes) -> begin
      v.where_clause <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(copy_stmt), field(8)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.relation = v.relation;
    Pg_query_types.query = v.query;
    Pg_query_types.attlist = v.attlist;
    Pg_query_types.is_from = v.is_from;
    Pg_query_types.is_program = v.is_program;
    Pg_query_types.filename = v.filename;
    Pg_query_types.options = v.options;
    Pg_query_types.where_clause = v.where_clause;
  } : Pg_query_types.copy_stmt)

and decode_create_stmt d =
  let v = default_create_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.options <- List.rev v.options;
      v.constraints <- List.rev v.constraints;
      v.inh_relations <- List.rev v.inh_relations;
      v.table_elts <- List.rev v.table_elts;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.relation <- Some (decode_range_var (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.table_elts <- (decode_node (Pbrt.Decoder.nested d)) :: v.table_elts;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.inh_relations <- (decode_node (Pbrt.Decoder.nested d)) :: v.inh_relations;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.partbound <- Some (decode_partition_bound_spec (Pbrt.Decoder.nested d));
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_stmt), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.partspec <- Some (decode_partition_spec (Pbrt.Decoder.nested d));
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_stmt), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.of_typename <- Some (decode_type_name (Pbrt.Decoder.nested d));
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_stmt), field(6)" pk
    | Some (7, Pbrt.Bytes) -> begin
      v.constraints <- (decode_node (Pbrt.Decoder.nested d)) :: v.constraints;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_stmt), field(7)" pk
    | Some (8, Pbrt.Bytes) -> begin
      v.options <- (decode_node (Pbrt.Decoder.nested d)) :: v.options;
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_stmt), field(8)" pk
    | Some (9, Pbrt.Varint) -> begin
      v.oncommit <- decode_on_commit_action d;
    end
    | Some (9, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_stmt), field(9)" pk
    | Some (10, Pbrt.Bytes) -> begin
      v.tablespacename <- Pbrt.Decoder.string d;
    end
    | Some (10, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_stmt), field(10)" pk
    | Some (11, Pbrt.Bytes) -> begin
      v.access_method <- Pbrt.Decoder.string d;
    end
    | Some (11, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_stmt), field(11)" pk
    | Some (12, Pbrt.Varint) -> begin
      v.if_not_exists <- Pbrt.Decoder.bool d;
    end
    | Some (12, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_stmt), field(12)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.relation = v.relation;
    Pg_query_types.table_elts = v.table_elts;
    Pg_query_types.inh_relations = v.inh_relations;
    Pg_query_types.partbound = v.partbound;
    Pg_query_types.partspec = v.partspec;
    Pg_query_types.of_typename = v.of_typename;
    Pg_query_types.constraints = v.constraints;
    Pg_query_types.options = v.options;
    Pg_query_types.oncommit = v.oncommit;
    Pg_query_types.tablespacename = v.tablespacename;
    Pg_query_types.access_method = v.access_method;
    Pg_query_types.if_not_exists = v.if_not_exists;
  } : Pg_query_types.create_stmt)

and decode_partition_bound_spec d =
  let v = default_partition_bound_spec_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.upperdatums <- List.rev v.upperdatums;
      v.lowerdatums <- List.rev v.lowerdatums;
      v.listdatums <- List.rev v.listdatums;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.strategy <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(partition_bound_spec), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.is_default <- Pbrt.Decoder.bool d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(partition_bound_spec), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.modulus <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(partition_bound_spec), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.remainder <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(partition_bound_spec), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.listdatums <- (decode_node (Pbrt.Decoder.nested d)) :: v.listdatums;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(partition_bound_spec), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.lowerdatums <- (decode_node (Pbrt.Decoder.nested d)) :: v.lowerdatums;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(partition_bound_spec), field(6)" pk
    | Some (7, Pbrt.Bytes) -> begin
      v.upperdatums <- (decode_node (Pbrt.Decoder.nested d)) :: v.upperdatums;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(partition_bound_spec), field(7)" pk
    | Some (8, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(partition_bound_spec), field(8)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.strategy = v.strategy;
    Pg_query_types.is_default = v.is_default;
    Pg_query_types.modulus = v.modulus;
    Pg_query_types.remainder = v.remainder;
    Pg_query_types.listdatums = v.listdatums;
    Pg_query_types.lowerdatums = v.lowerdatums;
    Pg_query_types.upperdatums = v.upperdatums;
    Pg_query_types.location = v.location;
  } : Pg_query_types.partition_bound_spec)

and decode_partition_spec d =
  let v = default_partition_spec_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.part_params <- List.rev v.part_params;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.strategy <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(partition_spec), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.part_params <- (decode_node (Pbrt.Decoder.nested d)) :: v.part_params;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(partition_spec), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(partition_spec), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.strategy = v.strategy;
    Pg_query_types.part_params = v.part_params;
    Pg_query_types.location = v.location;
  } : Pg_query_types.partition_spec)

and decode_type_name d =
  let v = default_type_name_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.array_bounds <- List.rev v.array_bounds;
      v.typmods <- List.rev v.typmods;
      v.names <- List.rev v.names;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.names <- (decode_node (Pbrt.Decoder.nested d)) :: v.names;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(type_name), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.type_oid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(type_name), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.setof <- Pbrt.Decoder.bool d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(type_name), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.pct_type <- Pbrt.Decoder.bool d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(type_name), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.typmods <- (decode_node (Pbrt.Decoder.nested d)) :: v.typmods;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(type_name), field(5)" pk
    | Some (6, Pbrt.Varint) -> begin
      v.typemod <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(type_name), field(6)" pk
    | Some (7, Pbrt.Bytes) -> begin
      v.array_bounds <- (decode_node (Pbrt.Decoder.nested d)) :: v.array_bounds;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(type_name), field(7)" pk
    | Some (8, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(type_name), field(8)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.names = v.names;
    Pg_query_types.type_oid = v.type_oid;
    Pg_query_types.setof = v.setof;
    Pg_query_types.pct_type = v.pct_type;
    Pg_query_types.typmods = v.typmods;
    Pg_query_types.typemod = v.typemod;
    Pg_query_types.array_bounds = v.array_bounds;
    Pg_query_types.location = v.location;
  } : Pg_query_types.type_name)

and decode_define_stmt d =
  let v = default_define_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.definition <- List.rev v.definition;
      v.args <- List.rev v.args;
      v.defnames <- List.rev v.defnames;
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.kind <- decode_object_type d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(define_stmt), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.oldstyle <- Pbrt.Decoder.bool d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(define_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.defnames <- (decode_node (Pbrt.Decoder.nested d)) :: v.defnames;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(define_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.args <- (decode_node (Pbrt.Decoder.nested d)) :: v.args;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(define_stmt), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.definition <- (decode_node (Pbrt.Decoder.nested d)) :: v.definition;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(define_stmt), field(5)" pk
    | Some (6, Pbrt.Varint) -> begin
      v.if_not_exists <- Pbrt.Decoder.bool d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(define_stmt), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.replace <- Pbrt.Decoder.bool d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(define_stmt), field(7)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.kind = v.kind;
    Pg_query_types.oldstyle = v.oldstyle;
    Pg_query_types.defnames = v.defnames;
    Pg_query_types.args = v.args;
    Pg_query_types.definition = v.definition;
    Pg_query_types.if_not_exists = v.if_not_exists;
    Pg_query_types.replace = v.replace;
  } : Pg_query_types.define_stmt)

and decode_drop_stmt d =
  let v = default_drop_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.objects <- List.rev v.objects;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.objects <- (decode_node (Pbrt.Decoder.nested d)) :: v.objects;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(drop_stmt), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.remove_type <- decode_object_type d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(drop_stmt), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.behavior <- decode_drop_behavior d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(drop_stmt), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.missing_ok <- Pbrt.Decoder.bool d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(drop_stmt), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.concurrent <- Pbrt.Decoder.bool d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(drop_stmt), field(5)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.objects = v.objects;
    Pg_query_types.remove_type = v.remove_type;
    Pg_query_types.behavior = v.behavior;
    Pg_query_types.missing_ok = v.missing_ok;
    Pg_query_types.concurrent = v.concurrent;
  } : Pg_query_types.drop_stmt)

and decode_truncate_stmt d =
  let v = default_truncate_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.relations <- List.rev v.relations;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.relations <- (decode_node (Pbrt.Decoder.nested d)) :: v.relations;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(truncate_stmt), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.restart_seqs <- Pbrt.Decoder.bool d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(truncate_stmt), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.behavior <- decode_drop_behavior d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(truncate_stmt), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.relations = v.relations;
    Pg_query_types.restart_seqs = v.restart_seqs;
    Pg_query_types.behavior = v.behavior;
  } : Pg_query_types.truncate_stmt)

and decode_comment_stmt d =
  let v = default_comment_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.objtype <- decode_object_type d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(comment_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.object_ <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(comment_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.comment <- Pbrt.Decoder.string d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(comment_stmt), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.objtype = v.objtype;
    Pg_query_types.object_ = v.object_;
    Pg_query_types.comment = v.comment;
  } : Pg_query_types.comment_stmt)

and decode_index_stmt d =
  let v = default_index_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.exclude_op_names <- List.rev v.exclude_op_names;
      v.options <- List.rev v.options;
      v.index_including_params <- List.rev v.index_including_params;
      v.index_params <- List.rev v.index_params;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.idxname <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(index_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.relation <- Some (decode_range_var (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(index_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.access_method <- Pbrt.Decoder.string d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(index_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.table_space <- Pbrt.Decoder.string d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(index_stmt), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.index_params <- (decode_node (Pbrt.Decoder.nested d)) :: v.index_params;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(index_stmt), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.index_including_params <- (decode_node (Pbrt.Decoder.nested d)) :: v.index_including_params;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(index_stmt), field(6)" pk
    | Some (7, Pbrt.Bytes) -> begin
      v.options <- (decode_node (Pbrt.Decoder.nested d)) :: v.options;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(index_stmt), field(7)" pk
    | Some (8, Pbrt.Bytes) -> begin
      v.where_clause <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(index_stmt), field(8)" pk
    | Some (9, Pbrt.Bytes) -> begin
      v.exclude_op_names <- (decode_node (Pbrt.Decoder.nested d)) :: v.exclude_op_names;
    end
    | Some (9, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(index_stmt), field(9)" pk
    | Some (10, Pbrt.Bytes) -> begin
      v.idxcomment <- Pbrt.Decoder.string d;
    end
    | Some (10, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(index_stmt), field(10)" pk
    | Some (11, Pbrt.Varint) -> begin
      v.index_oid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (11, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(index_stmt), field(11)" pk
    | Some (12, Pbrt.Varint) -> begin
      v.old_node <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (12, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(index_stmt), field(12)" pk
    | Some (13, Pbrt.Varint) -> begin
      v.old_create_subid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (13, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(index_stmt), field(13)" pk
    | Some (14, Pbrt.Varint) -> begin
      v.old_first_relfilenode_subid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (14, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(index_stmt), field(14)" pk
    | Some (15, Pbrt.Varint) -> begin
      v.unique <- Pbrt.Decoder.bool d;
    end
    | Some (15, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(index_stmt), field(15)" pk
    | Some (16, Pbrt.Varint) -> begin
      v.nulls_not_distinct <- Pbrt.Decoder.bool d;
    end
    | Some (16, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(index_stmt), field(16)" pk
    | Some (17, Pbrt.Varint) -> begin
      v.primary <- Pbrt.Decoder.bool d;
    end
    | Some (17, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(index_stmt), field(17)" pk
    | Some (18, Pbrt.Varint) -> begin
      v.isconstraint <- Pbrt.Decoder.bool d;
    end
    | Some (18, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(index_stmt), field(18)" pk
    | Some (19, Pbrt.Varint) -> begin
      v.deferrable <- Pbrt.Decoder.bool d;
    end
    | Some (19, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(index_stmt), field(19)" pk
    | Some (20, Pbrt.Varint) -> begin
      v.initdeferred <- Pbrt.Decoder.bool d;
    end
    | Some (20, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(index_stmt), field(20)" pk
    | Some (21, Pbrt.Varint) -> begin
      v.transformed <- Pbrt.Decoder.bool d;
    end
    | Some (21, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(index_stmt), field(21)" pk
    | Some (22, Pbrt.Varint) -> begin
      v.concurrent <- Pbrt.Decoder.bool d;
    end
    | Some (22, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(index_stmt), field(22)" pk
    | Some (23, Pbrt.Varint) -> begin
      v.if_not_exists <- Pbrt.Decoder.bool d;
    end
    | Some (23, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(index_stmt), field(23)" pk
    | Some (24, Pbrt.Varint) -> begin
      v.reset_default_tblspc <- Pbrt.Decoder.bool d;
    end
    | Some (24, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(index_stmt), field(24)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.idxname = v.idxname;
    Pg_query_types.relation = v.relation;
    Pg_query_types.access_method = v.access_method;
    Pg_query_types.table_space = v.table_space;
    Pg_query_types.index_params = v.index_params;
    Pg_query_types.index_including_params = v.index_including_params;
    Pg_query_types.options = v.options;
    Pg_query_types.where_clause = v.where_clause;
    Pg_query_types.exclude_op_names = v.exclude_op_names;
    Pg_query_types.idxcomment = v.idxcomment;
    Pg_query_types.index_oid = v.index_oid;
    Pg_query_types.old_node = v.old_node;
    Pg_query_types.old_create_subid = v.old_create_subid;
    Pg_query_types.old_first_relfilenode_subid = v.old_first_relfilenode_subid;
    Pg_query_types.unique = v.unique;
    Pg_query_types.nulls_not_distinct = v.nulls_not_distinct;
    Pg_query_types.primary = v.primary;
    Pg_query_types.isconstraint = v.isconstraint;
    Pg_query_types.deferrable = v.deferrable;
    Pg_query_types.initdeferred = v.initdeferred;
    Pg_query_types.transformed = v.transformed;
    Pg_query_types.concurrent = v.concurrent;
    Pg_query_types.if_not_exists = v.if_not_exists;
    Pg_query_types.reset_default_tblspc = v.reset_default_tblspc;
  } : Pg_query_types.index_stmt)

and decode_create_function_stmt d =
  let v = default_create_function_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.options <- List.rev v.options;
      v.parameters <- List.rev v.parameters;
      v.funcname <- List.rev v.funcname;
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.is_procedure <- Pbrt.Decoder.bool d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_function_stmt), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.replace <- Pbrt.Decoder.bool d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_function_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.funcname <- (decode_node (Pbrt.Decoder.nested d)) :: v.funcname;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_function_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.parameters <- (decode_node (Pbrt.Decoder.nested d)) :: v.parameters;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_function_stmt), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.return_type <- Some (decode_type_name (Pbrt.Decoder.nested d));
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_function_stmt), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.options <- (decode_node (Pbrt.Decoder.nested d)) :: v.options;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_function_stmt), field(6)" pk
    | Some (7, Pbrt.Bytes) -> begin
      v.sql_body <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_function_stmt), field(7)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.is_procedure = v.is_procedure;
    Pg_query_types.replace = v.replace;
    Pg_query_types.funcname = v.funcname;
    Pg_query_types.parameters = v.parameters;
    Pg_query_types.return_type = v.return_type;
    Pg_query_types.options = v.options;
    Pg_query_types.sql_body = v.sql_body;
  } : Pg_query_types.create_function_stmt)

and decode_alter_function_stmt d =
  let v = default_alter_function_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.actions <- List.rev v.actions;
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.objtype <- decode_object_type d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_function_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.func <- Some (decode_object_with_args (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_function_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.actions <- (decode_node (Pbrt.Decoder.nested d)) :: v.actions;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_function_stmt), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.objtype = v.objtype;
    Pg_query_types.func = v.func;
    Pg_query_types.actions = v.actions;
  } : Pg_query_types.alter_function_stmt)

and decode_object_with_args d =
  let v = default_object_with_args_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.objfuncargs <- List.rev v.objfuncargs;
      v.objargs <- List.rev v.objargs;
      v.objname <- List.rev v.objname;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.objname <- (decode_node (Pbrt.Decoder.nested d)) :: v.objname;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(object_with_args), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.objargs <- (decode_node (Pbrt.Decoder.nested d)) :: v.objargs;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(object_with_args), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.objfuncargs <- (decode_node (Pbrt.Decoder.nested d)) :: v.objfuncargs;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(object_with_args), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.args_unspecified <- Pbrt.Decoder.bool d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(object_with_args), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.objname = v.objname;
    Pg_query_types.objargs = v.objargs;
    Pg_query_types.objfuncargs = v.objfuncargs;
    Pg_query_types.args_unspecified = v.args_unspecified;
  } : Pg_query_types.object_with_args)

and decode_do_stmt d =
  let v = default_do_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.args <- List.rev v.args;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.args <- (decode_node (Pbrt.Decoder.nested d)) :: v.args;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(do_stmt), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.args = v.args;
  } : Pg_query_types.do_stmt)

and decode_rename_stmt d =
  let v = default_rename_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.rename_type <- decode_object_type d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(rename_stmt), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.relation_type <- decode_object_type d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(rename_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.relation <- Some (decode_range_var (Pbrt.Decoder.nested d));
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(rename_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.object_ <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(rename_stmt), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.subname <- Pbrt.Decoder.string d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(rename_stmt), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.newname <- Pbrt.Decoder.string d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(rename_stmt), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.behavior <- decode_drop_behavior d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(rename_stmt), field(7)" pk
    | Some (8, Pbrt.Varint) -> begin
      v.missing_ok <- Pbrt.Decoder.bool d;
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(rename_stmt), field(8)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.rename_type = v.rename_type;
    Pg_query_types.relation_type = v.relation_type;
    Pg_query_types.relation = v.relation;
    Pg_query_types.object_ = v.object_;
    Pg_query_types.subname = v.subname;
    Pg_query_types.newname = v.newname;
    Pg_query_types.behavior = v.behavior;
    Pg_query_types.missing_ok = v.missing_ok;
  } : Pg_query_types.rename_stmt)

and decode_rule_stmt d =
  let v = default_rule_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.actions <- List.rev v.actions;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.relation <- Some (decode_range_var (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(rule_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.rulename <- Pbrt.Decoder.string d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(rule_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.where_clause <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(rule_stmt), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.event <- decode_cmd_type d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(rule_stmt), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.instead <- Pbrt.Decoder.bool d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(rule_stmt), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.actions <- (decode_node (Pbrt.Decoder.nested d)) :: v.actions;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(rule_stmt), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.replace <- Pbrt.Decoder.bool d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(rule_stmt), field(7)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.relation = v.relation;
    Pg_query_types.rulename = v.rulename;
    Pg_query_types.where_clause = v.where_clause;
    Pg_query_types.event = v.event;
    Pg_query_types.instead = v.instead;
    Pg_query_types.actions = v.actions;
    Pg_query_types.replace = v.replace;
  } : Pg_query_types.rule_stmt)

and decode_transaction_stmt d =
  let v = default_transaction_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.options <- List.rev v.options;
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.kind <- decode_transaction_stmt_kind d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(transaction_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.options <- (decode_node (Pbrt.Decoder.nested d)) :: v.options;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(transaction_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.savepoint_name <- Pbrt.Decoder.string d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(transaction_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.gid <- Pbrt.Decoder.string d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(transaction_stmt), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.chain <- Pbrt.Decoder.bool d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(transaction_stmt), field(5)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.kind = v.kind;
    Pg_query_types.options = v.options;
    Pg_query_types.savepoint_name = v.savepoint_name;
    Pg_query_types.gid = v.gid;
    Pg_query_types.chain = v.chain;
  } : Pg_query_types.transaction_stmt)

and decode_view_stmt d =
  let v = default_view_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.options <- List.rev v.options;
      v.aliases <- List.rev v.aliases;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.view <- Some (decode_range_var (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(view_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.aliases <- (decode_node (Pbrt.Decoder.nested d)) :: v.aliases;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(view_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.query <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(view_stmt), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.replace <- Pbrt.Decoder.bool d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(view_stmt), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.options <- (decode_node (Pbrt.Decoder.nested d)) :: v.options;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(view_stmt), field(5)" pk
    | Some (6, Pbrt.Varint) -> begin
      v.with_check_option <- decode_view_check_option d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(view_stmt), field(6)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.view = v.view;
    Pg_query_types.aliases = v.aliases;
    Pg_query_types.query = v.query;
    Pg_query_types.replace = v.replace;
    Pg_query_types.options = v.options;
    Pg_query_types.with_check_option = v.with_check_option;
  } : Pg_query_types.view_stmt)

and decode_create_domain_stmt d =
  let v = default_create_domain_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.constraints <- List.rev v.constraints;
      v.domainname <- List.rev v.domainname;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.domainname <- (decode_node (Pbrt.Decoder.nested d)) :: v.domainname;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_domain_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.type_name <- Some (decode_type_name (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_domain_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.coll_clause <- Some (decode_collate_clause (Pbrt.Decoder.nested d));
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_domain_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.constraints <- (decode_node (Pbrt.Decoder.nested d)) :: v.constraints;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_domain_stmt), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.domainname = v.domainname;
    Pg_query_types.type_name = v.type_name;
    Pg_query_types.coll_clause = v.coll_clause;
    Pg_query_types.constraints = v.constraints;
  } : Pg_query_types.create_domain_stmt)

and decode_collate_clause d =
  let v = default_collate_clause_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.collname <- List.rev v.collname;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.arg <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(collate_clause), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.collname <- (decode_node (Pbrt.Decoder.nested d)) :: v.collname;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(collate_clause), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(collate_clause), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.arg = v.arg;
    Pg_query_types.collname = v.collname;
    Pg_query_types.location = v.location;
  } : Pg_query_types.collate_clause)

and decode_createdb_stmt d =
  let v = default_createdb_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.options <- List.rev v.options;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.dbname <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(createdb_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.options <- (decode_node (Pbrt.Decoder.nested d)) :: v.options;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(createdb_stmt), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.dbname = v.dbname;
    Pg_query_types.options = v.options;
  } : Pg_query_types.createdb_stmt)

and decode_dropdb_stmt d =
  let v = default_dropdb_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.options <- List.rev v.options;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.dbname <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(dropdb_stmt), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.missing_ok <- Pbrt.Decoder.bool d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(dropdb_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.options <- (decode_node (Pbrt.Decoder.nested d)) :: v.options;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(dropdb_stmt), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.dbname = v.dbname;
    Pg_query_types.missing_ok = v.missing_ok;
    Pg_query_types.options = v.options;
  } : Pg_query_types.dropdb_stmt)

and decode_vacuum_stmt d =
  let v = default_vacuum_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.rels <- List.rev v.rels;
      v.options <- List.rev v.options;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.options <- (decode_node (Pbrt.Decoder.nested d)) :: v.options;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(vacuum_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.rels <- (decode_node (Pbrt.Decoder.nested d)) :: v.rels;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(vacuum_stmt), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.is_vacuumcmd <- Pbrt.Decoder.bool d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(vacuum_stmt), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.options = v.options;
    Pg_query_types.rels = v.rels;
    Pg_query_types.is_vacuumcmd = v.is_vacuumcmd;
  } : Pg_query_types.vacuum_stmt)

and decode_explain_stmt d =
  let v = default_explain_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.options <- List.rev v.options;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.query <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(explain_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.options <- (decode_node (Pbrt.Decoder.nested d)) :: v.options;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(explain_stmt), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.query = v.query;
    Pg_query_types.options = v.options;
  } : Pg_query_types.explain_stmt)

and decode_create_table_as_stmt d =
  let v = default_create_table_as_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.query <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_table_as_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.into <- Some (decode_into_clause (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_table_as_stmt), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.objtype <- decode_object_type d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_table_as_stmt), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.is_select_into <- Pbrt.Decoder.bool d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_table_as_stmt), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.if_not_exists <- Pbrt.Decoder.bool d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_table_as_stmt), field(5)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.query = v.query;
    Pg_query_types.into = v.into;
    Pg_query_types.objtype = v.objtype;
    Pg_query_types.is_select_into = v.is_select_into;
    Pg_query_types.if_not_exists = v.if_not_exists;
  } : Pg_query_types.create_table_as_stmt)

and decode_create_seq_stmt d =
  let v = default_create_seq_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.options <- List.rev v.options;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.sequence <- Some (decode_range_var (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_seq_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.options <- (decode_node (Pbrt.Decoder.nested d)) :: v.options;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_seq_stmt), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.owner_id <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_seq_stmt), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.for_identity <- Pbrt.Decoder.bool d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_seq_stmt), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.if_not_exists <- Pbrt.Decoder.bool d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_seq_stmt), field(5)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.sequence = v.sequence;
    Pg_query_types.options = v.options;
    Pg_query_types.owner_id = v.owner_id;
    Pg_query_types.for_identity = v.for_identity;
    Pg_query_types.if_not_exists = v.if_not_exists;
  } : Pg_query_types.create_seq_stmt)

and decode_alter_seq_stmt d =
  let v = default_alter_seq_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.options <- List.rev v.options;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.sequence <- Some (decode_range_var (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_seq_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.options <- (decode_node (Pbrt.Decoder.nested d)) :: v.options;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_seq_stmt), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.for_identity <- Pbrt.Decoder.bool d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_seq_stmt), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.missing_ok <- Pbrt.Decoder.bool d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_seq_stmt), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.sequence = v.sequence;
    Pg_query_types.options = v.options;
    Pg_query_types.for_identity = v.for_identity;
    Pg_query_types.missing_ok = v.missing_ok;
  } : Pg_query_types.alter_seq_stmt)

and decode_variable_set_stmt d =
  let v = default_variable_set_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.args <- List.rev v.args;
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.kind <- decode_variable_set_kind d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(variable_set_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.name <- Pbrt.Decoder.string d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(variable_set_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.args <- (decode_node (Pbrt.Decoder.nested d)) :: v.args;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(variable_set_stmt), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.is_local <- Pbrt.Decoder.bool d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(variable_set_stmt), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.kind = v.kind;
    Pg_query_types.name = v.name;
    Pg_query_types.args = v.args;
    Pg_query_types.is_local = v.is_local;
  } : Pg_query_types.variable_set_stmt)

and decode_create_trig_stmt d =
  let v = default_create_trig_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.transition_rels <- List.rev v.transition_rels;
      v.columns <- List.rev v.columns;
      v.args <- List.rev v.args;
      v.funcname <- List.rev v.funcname;
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.replace <- Pbrt.Decoder.bool d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_trig_stmt), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.isconstraint <- Pbrt.Decoder.bool d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_trig_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.trigname <- Pbrt.Decoder.string d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_trig_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.relation <- Some (decode_range_var (Pbrt.Decoder.nested d));
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_trig_stmt), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.funcname <- (decode_node (Pbrt.Decoder.nested d)) :: v.funcname;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_trig_stmt), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.args <- (decode_node (Pbrt.Decoder.nested d)) :: v.args;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_trig_stmt), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.row <- Pbrt.Decoder.bool d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_trig_stmt), field(7)" pk
    | Some (8, Pbrt.Varint) -> begin
      v.timing <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_trig_stmt), field(8)" pk
    | Some (9, Pbrt.Varint) -> begin
      v.events <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (9, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_trig_stmt), field(9)" pk
    | Some (10, Pbrt.Bytes) -> begin
      v.columns <- (decode_node (Pbrt.Decoder.nested d)) :: v.columns;
    end
    | Some (10, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_trig_stmt), field(10)" pk
    | Some (11, Pbrt.Bytes) -> begin
      v.when_clause <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (11, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_trig_stmt), field(11)" pk
    | Some (12, Pbrt.Bytes) -> begin
      v.transition_rels <- (decode_node (Pbrt.Decoder.nested d)) :: v.transition_rels;
    end
    | Some (12, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_trig_stmt), field(12)" pk
    | Some (13, Pbrt.Varint) -> begin
      v.deferrable <- Pbrt.Decoder.bool d;
    end
    | Some (13, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_trig_stmt), field(13)" pk
    | Some (14, Pbrt.Varint) -> begin
      v.initdeferred <- Pbrt.Decoder.bool d;
    end
    | Some (14, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_trig_stmt), field(14)" pk
    | Some (15, Pbrt.Bytes) -> begin
      v.constrrel <- Some (decode_range_var (Pbrt.Decoder.nested d));
    end
    | Some (15, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_trig_stmt), field(15)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.replace = v.replace;
    Pg_query_types.isconstraint = v.isconstraint;
    Pg_query_types.trigname = v.trigname;
    Pg_query_types.relation = v.relation;
    Pg_query_types.funcname = v.funcname;
    Pg_query_types.args = v.args;
    Pg_query_types.row = v.row;
    Pg_query_types.timing = v.timing;
    Pg_query_types.events = v.events;
    Pg_query_types.columns = v.columns;
    Pg_query_types.when_clause = v.when_clause;
    Pg_query_types.transition_rels = v.transition_rels;
    Pg_query_types.deferrable = v.deferrable;
    Pg_query_types.initdeferred = v.initdeferred;
    Pg_query_types.constrrel = v.constrrel;
  } : Pg_query_types.create_trig_stmt)

and decode_create_plang_stmt d =
  let v = default_create_plang_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.plvalidator <- List.rev v.plvalidator;
      v.plinline <- List.rev v.plinline;
      v.plhandler <- List.rev v.plhandler;
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.replace <- Pbrt.Decoder.bool d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_plang_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.plname <- Pbrt.Decoder.string d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_plang_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.plhandler <- (decode_node (Pbrt.Decoder.nested d)) :: v.plhandler;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_plang_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.plinline <- (decode_node (Pbrt.Decoder.nested d)) :: v.plinline;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_plang_stmt), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.plvalidator <- (decode_node (Pbrt.Decoder.nested d)) :: v.plvalidator;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_plang_stmt), field(5)" pk
    | Some (6, Pbrt.Varint) -> begin
      v.pltrusted <- Pbrt.Decoder.bool d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_plang_stmt), field(6)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.replace = v.replace;
    Pg_query_types.plname = v.plname;
    Pg_query_types.plhandler = v.plhandler;
    Pg_query_types.plinline = v.plinline;
    Pg_query_types.plvalidator = v.plvalidator;
    Pg_query_types.pltrusted = v.pltrusted;
  } : Pg_query_types.create_plang_stmt)

and decode_create_role_stmt d =
  let v = default_create_role_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.options <- List.rev v.options;
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.stmt_type <- decode_role_stmt_type d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_role_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.role <- Pbrt.Decoder.string d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_role_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.options <- (decode_node (Pbrt.Decoder.nested d)) :: v.options;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_role_stmt), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.stmt_type = v.stmt_type;
    Pg_query_types.role = v.role;
    Pg_query_types.options = v.options;
  } : Pg_query_types.create_role_stmt)

and decode_alter_role_stmt d =
  let v = default_alter_role_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.options <- List.rev v.options;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.role <- Some (decode_role_spec (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_role_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.options <- (decode_node (Pbrt.Decoder.nested d)) :: v.options;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_role_stmt), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.action <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_role_stmt), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.role = v.role;
    Pg_query_types.options = v.options;
    Pg_query_types.action = v.action;
  } : Pg_query_types.alter_role_stmt)

and decode_drop_role_stmt d =
  let v = default_drop_role_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.roles <- List.rev v.roles;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.roles <- (decode_node (Pbrt.Decoder.nested d)) :: v.roles;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(drop_role_stmt), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.missing_ok <- Pbrt.Decoder.bool d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(drop_role_stmt), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.roles = v.roles;
    Pg_query_types.missing_ok = v.missing_ok;
  } : Pg_query_types.drop_role_stmt)

and decode_lock_stmt d =
  let v = default_lock_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.relations <- List.rev v.relations;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.relations <- (decode_node (Pbrt.Decoder.nested d)) :: v.relations;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(lock_stmt), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.mode <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(lock_stmt), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.nowait <- Pbrt.Decoder.bool d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(lock_stmt), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.relations = v.relations;
    Pg_query_types.mode = v.mode;
    Pg_query_types.nowait = v.nowait;
  } : Pg_query_types.lock_stmt)

and decode_constraints_set_stmt d =
  let v = default_constraints_set_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.constraints <- List.rev v.constraints;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.constraints <- (decode_node (Pbrt.Decoder.nested d)) :: v.constraints;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(constraints_set_stmt), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.deferred <- Pbrt.Decoder.bool d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(constraints_set_stmt), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.constraints = v.constraints;
    Pg_query_types.deferred = v.deferred;
  } : Pg_query_types.constraints_set_stmt)

and decode_reindex_stmt d =
  let v = default_reindex_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.params <- List.rev v.params;
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.kind <- decode_reindex_object_type d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(reindex_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.relation <- Some (decode_range_var (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(reindex_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.name <- Pbrt.Decoder.string d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(reindex_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.params <- (decode_node (Pbrt.Decoder.nested d)) :: v.params;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(reindex_stmt), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.kind = v.kind;
    Pg_query_types.relation = v.relation;
    Pg_query_types.name = v.name;
    Pg_query_types.params = v.params;
  } : Pg_query_types.reindex_stmt)

and decode_create_schema_stmt d =
  let v = default_create_schema_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.schema_elts <- List.rev v.schema_elts;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.schemaname <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_schema_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.authrole <- Some (decode_role_spec (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_schema_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.schema_elts <- (decode_node (Pbrt.Decoder.nested d)) :: v.schema_elts;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_schema_stmt), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.if_not_exists <- Pbrt.Decoder.bool d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_schema_stmt), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.schemaname = v.schemaname;
    Pg_query_types.authrole = v.authrole;
    Pg_query_types.schema_elts = v.schema_elts;
    Pg_query_types.if_not_exists = v.if_not_exists;
  } : Pg_query_types.create_schema_stmt)

and decode_alter_database_stmt d =
  let v = default_alter_database_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.options <- List.rev v.options;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.dbname <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_database_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.options <- (decode_node (Pbrt.Decoder.nested d)) :: v.options;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_database_stmt), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.dbname = v.dbname;
    Pg_query_types.options = v.options;
  } : Pg_query_types.alter_database_stmt)

and decode_alter_database_set_stmt d =
  let v = default_alter_database_set_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.dbname <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_database_set_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.setstmt <- Some (decode_variable_set_stmt (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_database_set_stmt), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.dbname = v.dbname;
    Pg_query_types.setstmt = v.setstmt;
  } : Pg_query_types.alter_database_set_stmt)

and decode_alter_role_set_stmt d =
  let v = default_alter_role_set_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.role <- Some (decode_role_spec (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_role_set_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.database <- Pbrt.Decoder.string d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_role_set_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.setstmt <- Some (decode_variable_set_stmt (Pbrt.Decoder.nested d));
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_role_set_stmt), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.role = v.role;
    Pg_query_types.database = v.database;
    Pg_query_types.setstmt = v.setstmt;
  } : Pg_query_types.alter_role_set_stmt)

and decode_create_conversion_stmt d =
  let v = default_create_conversion_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.func_name <- List.rev v.func_name;
      v.conversion_name <- List.rev v.conversion_name;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.conversion_name <- (decode_node (Pbrt.Decoder.nested d)) :: v.conversion_name;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_conversion_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.for_encoding_name <- Pbrt.Decoder.string d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_conversion_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.to_encoding_name <- Pbrt.Decoder.string d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_conversion_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.func_name <- (decode_node (Pbrt.Decoder.nested d)) :: v.func_name;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_conversion_stmt), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.def <- Pbrt.Decoder.bool d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_conversion_stmt), field(5)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.conversion_name = v.conversion_name;
    Pg_query_types.for_encoding_name = v.for_encoding_name;
    Pg_query_types.to_encoding_name = v.to_encoding_name;
    Pg_query_types.func_name = v.func_name;
    Pg_query_types.def = v.def;
  } : Pg_query_types.create_conversion_stmt)

and decode_create_cast_stmt d =
  let v = default_create_cast_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.sourcetype <- Some (decode_type_name (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_cast_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.targettype <- Some (decode_type_name (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_cast_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.func <- Some (decode_object_with_args (Pbrt.Decoder.nested d));
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_cast_stmt), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.context <- decode_coercion_context d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_cast_stmt), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.inout <- Pbrt.Decoder.bool d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_cast_stmt), field(5)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.sourcetype = v.sourcetype;
    Pg_query_types.targettype = v.targettype;
    Pg_query_types.func = v.func;
    Pg_query_types.context = v.context;
    Pg_query_types.inout = v.inout;
  } : Pg_query_types.create_cast_stmt)

and decode_create_op_class_stmt d =
  let v = default_create_op_class_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.items <- List.rev v.items;
      v.opfamilyname <- List.rev v.opfamilyname;
      v.opclassname <- List.rev v.opclassname;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.opclassname <- (decode_node (Pbrt.Decoder.nested d)) :: v.opclassname;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_op_class_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.opfamilyname <- (decode_node (Pbrt.Decoder.nested d)) :: v.opfamilyname;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_op_class_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.amname <- Pbrt.Decoder.string d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_op_class_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.datatype <- Some (decode_type_name (Pbrt.Decoder.nested d));
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_op_class_stmt), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.items <- (decode_node (Pbrt.Decoder.nested d)) :: v.items;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_op_class_stmt), field(5)" pk
    | Some (6, Pbrt.Varint) -> begin
      v.is_default <- Pbrt.Decoder.bool d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_op_class_stmt), field(6)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.opclassname = v.opclassname;
    Pg_query_types.opfamilyname = v.opfamilyname;
    Pg_query_types.amname = v.amname;
    Pg_query_types.datatype = v.datatype;
    Pg_query_types.items = v.items;
    Pg_query_types.is_default = v.is_default;
  } : Pg_query_types.create_op_class_stmt)

and decode_create_op_family_stmt d =
  let v = default_create_op_family_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.opfamilyname <- List.rev v.opfamilyname;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.opfamilyname <- (decode_node (Pbrt.Decoder.nested d)) :: v.opfamilyname;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_op_family_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.amname <- Pbrt.Decoder.string d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_op_family_stmt), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.opfamilyname = v.opfamilyname;
    Pg_query_types.amname = v.amname;
  } : Pg_query_types.create_op_family_stmt)

and decode_alter_op_family_stmt d =
  let v = default_alter_op_family_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.items <- List.rev v.items;
      v.opfamilyname <- List.rev v.opfamilyname;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.opfamilyname <- (decode_node (Pbrt.Decoder.nested d)) :: v.opfamilyname;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_op_family_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.amname <- Pbrt.Decoder.string d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_op_family_stmt), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.is_drop <- Pbrt.Decoder.bool d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_op_family_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.items <- (decode_node (Pbrt.Decoder.nested d)) :: v.items;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_op_family_stmt), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.opfamilyname = v.opfamilyname;
    Pg_query_types.amname = v.amname;
    Pg_query_types.is_drop = v.is_drop;
    Pg_query_types.items = v.items;
  } : Pg_query_types.alter_op_family_stmt)

and decode_prepare_stmt d =
  let v = default_prepare_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.argtypes <- List.rev v.argtypes;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.name <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(prepare_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.argtypes <- (decode_node (Pbrt.Decoder.nested d)) :: v.argtypes;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(prepare_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.query <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(prepare_stmt), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.name = v.name;
    Pg_query_types.argtypes = v.argtypes;
    Pg_query_types.query = v.query;
  } : Pg_query_types.prepare_stmt)

and decode_execute_stmt d =
  let v = default_execute_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.params <- List.rev v.params;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.name <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(execute_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.params <- (decode_node (Pbrt.Decoder.nested d)) :: v.params;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(execute_stmt), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.name = v.name;
    Pg_query_types.params = v.params;
  } : Pg_query_types.execute_stmt)

and decode_declare_cursor_stmt d =
  let v = default_declare_cursor_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.portalname <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(declare_cursor_stmt), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.options <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(declare_cursor_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.query <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(declare_cursor_stmt), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.portalname = v.portalname;
    Pg_query_types.options = v.options;
    Pg_query_types.query = v.query;
  } : Pg_query_types.declare_cursor_stmt)

and decode_create_table_space_stmt d =
  let v = default_create_table_space_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.options <- List.rev v.options;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.tablespacename <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_table_space_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.owner <- Some (decode_role_spec (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_table_space_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.location <- Pbrt.Decoder.string d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_table_space_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.options <- (decode_node (Pbrt.Decoder.nested d)) :: v.options;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_table_space_stmt), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.tablespacename = v.tablespacename;
    Pg_query_types.owner = v.owner;
    Pg_query_types.location = v.location;
    Pg_query_types.options = v.options;
  } : Pg_query_types.create_table_space_stmt)

and decode_alter_object_depends_stmt d =
  let v = default_alter_object_depends_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.object_type <- decode_object_type d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_object_depends_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.relation <- Some (decode_range_var (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_object_depends_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.object_ <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_object_depends_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.extname <- Some (decode_string (Pbrt.Decoder.nested d));
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_object_depends_stmt), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.remove <- Pbrt.Decoder.bool d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_object_depends_stmt), field(5)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.object_type = v.object_type;
    Pg_query_types.relation = v.relation;
    Pg_query_types.object_ = v.object_;
    Pg_query_types.extname = v.extname;
    Pg_query_types.remove = v.remove;
  } : Pg_query_types.alter_object_depends_stmt)

and decode_alter_object_schema_stmt d =
  let v = default_alter_object_schema_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.object_type <- decode_object_type d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_object_schema_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.relation <- Some (decode_range_var (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_object_schema_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.object_ <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_object_schema_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.newschema <- Pbrt.Decoder.string d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_object_schema_stmt), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.missing_ok <- Pbrt.Decoder.bool d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_object_schema_stmt), field(5)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.object_type = v.object_type;
    Pg_query_types.relation = v.relation;
    Pg_query_types.object_ = v.object_;
    Pg_query_types.newschema = v.newschema;
    Pg_query_types.missing_ok = v.missing_ok;
  } : Pg_query_types.alter_object_schema_stmt)

and decode_alter_owner_stmt d =
  let v = default_alter_owner_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.object_type <- decode_object_type d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_owner_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.relation <- Some (decode_range_var (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_owner_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.object_ <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_owner_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.newowner <- Some (decode_role_spec (Pbrt.Decoder.nested d));
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_owner_stmt), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.object_type = v.object_type;
    Pg_query_types.relation = v.relation;
    Pg_query_types.object_ = v.object_;
    Pg_query_types.newowner = v.newowner;
  } : Pg_query_types.alter_owner_stmt)

and decode_alter_operator_stmt d =
  let v = default_alter_operator_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.options <- List.rev v.options;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.opername <- Some (decode_object_with_args (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_operator_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.options <- (decode_node (Pbrt.Decoder.nested d)) :: v.options;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_operator_stmt), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.opername = v.opername;
    Pg_query_types.options = v.options;
  } : Pg_query_types.alter_operator_stmt)

and decode_alter_type_stmt d =
  let v = default_alter_type_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.options <- List.rev v.options;
      v.type_name <- List.rev v.type_name;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.type_name <- (decode_node (Pbrt.Decoder.nested d)) :: v.type_name;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_type_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.options <- (decode_node (Pbrt.Decoder.nested d)) :: v.options;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_type_stmt), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.type_name = v.type_name;
    Pg_query_types.options = v.options;
  } : Pg_query_types.alter_type_stmt)

and decode_drop_owned_stmt d =
  let v = default_drop_owned_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.roles <- List.rev v.roles;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.roles <- (decode_node (Pbrt.Decoder.nested d)) :: v.roles;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(drop_owned_stmt), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.behavior <- decode_drop_behavior d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(drop_owned_stmt), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.roles = v.roles;
    Pg_query_types.behavior = v.behavior;
  } : Pg_query_types.drop_owned_stmt)

and decode_reassign_owned_stmt d =
  let v = default_reassign_owned_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.roles <- List.rev v.roles;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.roles <- (decode_node (Pbrt.Decoder.nested d)) :: v.roles;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(reassign_owned_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.newrole <- Some (decode_role_spec (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(reassign_owned_stmt), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.roles = v.roles;
    Pg_query_types.newrole = v.newrole;
  } : Pg_query_types.reassign_owned_stmt)

and decode_composite_type_stmt d =
  let v = default_composite_type_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.coldeflist <- List.rev v.coldeflist;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.typevar <- Some (decode_range_var (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(composite_type_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.coldeflist <- (decode_node (Pbrt.Decoder.nested d)) :: v.coldeflist;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(composite_type_stmt), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.typevar = v.typevar;
    Pg_query_types.coldeflist = v.coldeflist;
  } : Pg_query_types.composite_type_stmt)

and decode_create_enum_stmt d =
  let v = default_create_enum_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.vals <- List.rev v.vals;
      v.type_name <- List.rev v.type_name;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.type_name <- (decode_node (Pbrt.Decoder.nested d)) :: v.type_name;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_enum_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.vals <- (decode_node (Pbrt.Decoder.nested d)) :: v.vals;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_enum_stmt), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.type_name = v.type_name;
    Pg_query_types.vals = v.vals;
  } : Pg_query_types.create_enum_stmt)

and decode_create_range_stmt d =
  let v = default_create_range_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.params <- List.rev v.params;
      v.type_name <- List.rev v.type_name;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.type_name <- (decode_node (Pbrt.Decoder.nested d)) :: v.type_name;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_range_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.params <- (decode_node (Pbrt.Decoder.nested d)) :: v.params;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_range_stmt), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.type_name = v.type_name;
    Pg_query_types.params = v.params;
  } : Pg_query_types.create_range_stmt)

and decode_alter_enum_stmt d =
  let v = default_alter_enum_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.type_name <- List.rev v.type_name;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.type_name <- (decode_node (Pbrt.Decoder.nested d)) :: v.type_name;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_enum_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.old_val <- Pbrt.Decoder.string d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_enum_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.new_val <- Pbrt.Decoder.string d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_enum_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.new_val_neighbor <- Pbrt.Decoder.string d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_enum_stmt), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.new_val_is_after <- Pbrt.Decoder.bool d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_enum_stmt), field(5)" pk
    | Some (6, Pbrt.Varint) -> begin
      v.skip_if_new_val_exists <- Pbrt.Decoder.bool d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_enum_stmt), field(6)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.type_name = v.type_name;
    Pg_query_types.old_val = v.old_val;
    Pg_query_types.new_val = v.new_val;
    Pg_query_types.new_val_neighbor = v.new_val_neighbor;
    Pg_query_types.new_val_is_after = v.new_val_is_after;
    Pg_query_types.skip_if_new_val_exists = v.skip_if_new_val_exists;
  } : Pg_query_types.alter_enum_stmt)

and decode_alter_tsdictionary_stmt d =
  let v = default_alter_tsdictionary_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.options <- List.rev v.options;
      v.dictname <- List.rev v.dictname;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.dictname <- (decode_node (Pbrt.Decoder.nested d)) :: v.dictname;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_tsdictionary_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.options <- (decode_node (Pbrt.Decoder.nested d)) :: v.options;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_tsdictionary_stmt), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.dictname = v.dictname;
    Pg_query_types.options = v.options;
  } : Pg_query_types.alter_tsdictionary_stmt)

and decode_alter_tsconfiguration_stmt d =
  let v = default_alter_tsconfiguration_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.dicts <- List.rev v.dicts;
      v.tokentype <- List.rev v.tokentype;
      v.cfgname <- List.rev v.cfgname;
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.kind <- decode_alter_tsconfig_type d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_tsconfiguration_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.cfgname <- (decode_node (Pbrt.Decoder.nested d)) :: v.cfgname;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_tsconfiguration_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.tokentype <- (decode_node (Pbrt.Decoder.nested d)) :: v.tokentype;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_tsconfiguration_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.dicts <- (decode_node (Pbrt.Decoder.nested d)) :: v.dicts;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_tsconfiguration_stmt), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.override <- Pbrt.Decoder.bool d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_tsconfiguration_stmt), field(5)" pk
    | Some (6, Pbrt.Varint) -> begin
      v.replace <- Pbrt.Decoder.bool d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_tsconfiguration_stmt), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.missing_ok <- Pbrt.Decoder.bool d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_tsconfiguration_stmt), field(7)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.kind = v.kind;
    Pg_query_types.cfgname = v.cfgname;
    Pg_query_types.tokentype = v.tokentype;
    Pg_query_types.dicts = v.dicts;
    Pg_query_types.override = v.override;
    Pg_query_types.replace = v.replace;
    Pg_query_types.missing_ok = v.missing_ok;
  } : Pg_query_types.alter_tsconfiguration_stmt)

and decode_create_fdw_stmt d =
  let v = default_create_fdw_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.options <- List.rev v.options;
      v.func_options <- List.rev v.func_options;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.fdwname <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_fdw_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.func_options <- (decode_node (Pbrt.Decoder.nested d)) :: v.func_options;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_fdw_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.options <- (decode_node (Pbrt.Decoder.nested d)) :: v.options;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_fdw_stmt), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.fdwname = v.fdwname;
    Pg_query_types.func_options = v.func_options;
    Pg_query_types.options = v.options;
  } : Pg_query_types.create_fdw_stmt)

and decode_alter_fdw_stmt d =
  let v = default_alter_fdw_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.options <- List.rev v.options;
      v.func_options <- List.rev v.func_options;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.fdwname <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_fdw_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.func_options <- (decode_node (Pbrt.Decoder.nested d)) :: v.func_options;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_fdw_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.options <- (decode_node (Pbrt.Decoder.nested d)) :: v.options;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_fdw_stmt), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.fdwname = v.fdwname;
    Pg_query_types.func_options = v.func_options;
    Pg_query_types.options = v.options;
  } : Pg_query_types.alter_fdw_stmt)

and decode_create_foreign_server_stmt d =
  let v = default_create_foreign_server_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.options <- List.rev v.options;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.servername <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_foreign_server_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.servertype <- Pbrt.Decoder.string d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_foreign_server_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.version <- Pbrt.Decoder.string d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_foreign_server_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.fdwname <- Pbrt.Decoder.string d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_foreign_server_stmt), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.if_not_exists <- Pbrt.Decoder.bool d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_foreign_server_stmt), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.options <- (decode_node (Pbrt.Decoder.nested d)) :: v.options;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_foreign_server_stmt), field(6)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.servername = v.servername;
    Pg_query_types.servertype = v.servertype;
    Pg_query_types.version = v.version;
    Pg_query_types.fdwname = v.fdwname;
    Pg_query_types.if_not_exists = v.if_not_exists;
    Pg_query_types.options = v.options;
  } : Pg_query_types.create_foreign_server_stmt)

and decode_alter_foreign_server_stmt d =
  let v = default_alter_foreign_server_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.options <- List.rev v.options;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.servername <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_foreign_server_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.version <- Pbrt.Decoder.string d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_foreign_server_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.options <- (decode_node (Pbrt.Decoder.nested d)) :: v.options;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_foreign_server_stmt), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.has_version <- Pbrt.Decoder.bool d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_foreign_server_stmt), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.servername = v.servername;
    Pg_query_types.version = v.version;
    Pg_query_types.options = v.options;
    Pg_query_types.has_version = v.has_version;
  } : Pg_query_types.alter_foreign_server_stmt)

and decode_create_user_mapping_stmt d =
  let v = default_create_user_mapping_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.options <- List.rev v.options;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.user <- Some (decode_role_spec (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_user_mapping_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.servername <- Pbrt.Decoder.string d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_user_mapping_stmt), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.if_not_exists <- Pbrt.Decoder.bool d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_user_mapping_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.options <- (decode_node (Pbrt.Decoder.nested d)) :: v.options;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_user_mapping_stmt), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.user = v.user;
    Pg_query_types.servername = v.servername;
    Pg_query_types.if_not_exists = v.if_not_exists;
    Pg_query_types.options = v.options;
  } : Pg_query_types.create_user_mapping_stmt)

and decode_alter_user_mapping_stmt d =
  let v = default_alter_user_mapping_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.options <- List.rev v.options;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.user <- Some (decode_role_spec (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_user_mapping_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.servername <- Pbrt.Decoder.string d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_user_mapping_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.options <- (decode_node (Pbrt.Decoder.nested d)) :: v.options;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_user_mapping_stmt), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.user = v.user;
    Pg_query_types.servername = v.servername;
    Pg_query_types.options = v.options;
  } : Pg_query_types.alter_user_mapping_stmt)

and decode_alter_table_space_options_stmt d =
  let v = default_alter_table_space_options_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.options <- List.rev v.options;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.tablespacename <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_table_space_options_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.options <- (decode_node (Pbrt.Decoder.nested d)) :: v.options;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_table_space_options_stmt), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.is_reset <- Pbrt.Decoder.bool d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_table_space_options_stmt), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.tablespacename = v.tablespacename;
    Pg_query_types.options = v.options;
    Pg_query_types.is_reset = v.is_reset;
  } : Pg_query_types.alter_table_space_options_stmt)

and decode_alter_table_move_all_stmt d =
  let v = default_alter_table_move_all_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.roles <- List.rev v.roles;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.orig_tablespacename <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_table_move_all_stmt), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.objtype <- decode_object_type d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_table_move_all_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.roles <- (decode_node (Pbrt.Decoder.nested d)) :: v.roles;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_table_move_all_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.new_tablespacename <- Pbrt.Decoder.string d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_table_move_all_stmt), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.nowait <- Pbrt.Decoder.bool d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_table_move_all_stmt), field(5)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.orig_tablespacename = v.orig_tablespacename;
    Pg_query_types.objtype = v.objtype;
    Pg_query_types.roles = v.roles;
    Pg_query_types.new_tablespacename = v.new_tablespacename;
    Pg_query_types.nowait = v.nowait;
  } : Pg_query_types.alter_table_move_all_stmt)

and decode_sec_label_stmt d =
  let v = default_sec_label_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.objtype <- decode_object_type d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sec_label_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.object_ <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sec_label_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.provider <- Pbrt.Decoder.string d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sec_label_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.label <- Pbrt.Decoder.string d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sec_label_stmt), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.objtype = v.objtype;
    Pg_query_types.object_ = v.object_;
    Pg_query_types.provider = v.provider;
    Pg_query_types.label = v.label;
  } : Pg_query_types.sec_label_stmt)

and decode_create_foreign_table_stmt d =
  let v = default_create_foreign_table_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.options <- List.rev v.options;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.base_stmt <- Some (decode_create_stmt (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_foreign_table_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.servername <- Pbrt.Decoder.string d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_foreign_table_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.options <- (decode_node (Pbrt.Decoder.nested d)) :: v.options;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_foreign_table_stmt), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.base_stmt = v.base_stmt;
    Pg_query_types.servername = v.servername;
    Pg_query_types.options = v.options;
  } : Pg_query_types.create_foreign_table_stmt)

and decode_import_foreign_schema_stmt d =
  let v = default_import_foreign_schema_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.options <- List.rev v.options;
      v.table_list <- List.rev v.table_list;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.server_name <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(import_foreign_schema_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.remote_schema <- Pbrt.Decoder.string d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(import_foreign_schema_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.local_schema <- Pbrt.Decoder.string d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(import_foreign_schema_stmt), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.list_type <- decode_import_foreign_schema_type d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(import_foreign_schema_stmt), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.table_list <- (decode_node (Pbrt.Decoder.nested d)) :: v.table_list;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(import_foreign_schema_stmt), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.options <- (decode_node (Pbrt.Decoder.nested d)) :: v.options;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(import_foreign_schema_stmt), field(6)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.server_name = v.server_name;
    Pg_query_types.remote_schema = v.remote_schema;
    Pg_query_types.local_schema = v.local_schema;
    Pg_query_types.list_type = v.list_type;
    Pg_query_types.table_list = v.table_list;
    Pg_query_types.options = v.options;
  } : Pg_query_types.import_foreign_schema_stmt)

and decode_create_extension_stmt d =
  let v = default_create_extension_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.options <- List.rev v.options;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.extname <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_extension_stmt), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.if_not_exists <- Pbrt.Decoder.bool d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_extension_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.options <- (decode_node (Pbrt.Decoder.nested d)) :: v.options;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_extension_stmt), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.extname = v.extname;
    Pg_query_types.if_not_exists = v.if_not_exists;
    Pg_query_types.options = v.options;
  } : Pg_query_types.create_extension_stmt)

and decode_alter_extension_stmt d =
  let v = default_alter_extension_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.options <- List.rev v.options;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.extname <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_extension_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.options <- (decode_node (Pbrt.Decoder.nested d)) :: v.options;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_extension_stmt), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.extname = v.extname;
    Pg_query_types.options = v.options;
  } : Pg_query_types.alter_extension_stmt)

and decode_alter_extension_contents_stmt d =
  let v = default_alter_extension_contents_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.extname <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_extension_contents_stmt), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.action <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_extension_contents_stmt), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.objtype <- decode_object_type d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_extension_contents_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.object_ <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_extension_contents_stmt), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.extname = v.extname;
    Pg_query_types.action = v.action;
    Pg_query_types.objtype = v.objtype;
    Pg_query_types.object_ = v.object_;
  } : Pg_query_types.alter_extension_contents_stmt)

and decode_create_event_trig_stmt d =
  let v = default_create_event_trig_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.funcname <- List.rev v.funcname;
      v.whenclause <- List.rev v.whenclause;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.trigname <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_event_trig_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.eventname <- Pbrt.Decoder.string d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_event_trig_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.whenclause <- (decode_node (Pbrt.Decoder.nested d)) :: v.whenclause;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_event_trig_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.funcname <- (decode_node (Pbrt.Decoder.nested d)) :: v.funcname;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_event_trig_stmt), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.trigname = v.trigname;
    Pg_query_types.eventname = v.eventname;
    Pg_query_types.whenclause = v.whenclause;
    Pg_query_types.funcname = v.funcname;
  } : Pg_query_types.create_event_trig_stmt)

and decode_refresh_mat_view_stmt d =
  let v = default_refresh_mat_view_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.concurrent <- Pbrt.Decoder.bool d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(refresh_mat_view_stmt), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.skip_data <- Pbrt.Decoder.bool d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(refresh_mat_view_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.relation <- Some (decode_range_var (Pbrt.Decoder.nested d));
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(refresh_mat_view_stmt), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.concurrent = v.concurrent;
    Pg_query_types.skip_data = v.skip_data;
    Pg_query_types.relation = v.relation;
  } : Pg_query_types.refresh_mat_view_stmt)

and decode_alter_system_stmt d =
  let v = default_alter_system_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.setstmt <- Some (decode_variable_set_stmt (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_system_stmt), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.setstmt = v.setstmt;
  } : Pg_query_types.alter_system_stmt)

and decode_create_policy_stmt d =
  let v = default_create_policy_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.roles <- List.rev v.roles;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.policy_name <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_policy_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.table <- Some (decode_range_var (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_policy_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.cmd_name <- Pbrt.Decoder.string d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_policy_stmt), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.permissive <- Pbrt.Decoder.bool d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_policy_stmt), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.roles <- (decode_node (Pbrt.Decoder.nested d)) :: v.roles;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_policy_stmt), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.qual <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_policy_stmt), field(6)" pk
    | Some (7, Pbrt.Bytes) -> begin
      v.with_check <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_policy_stmt), field(7)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.policy_name = v.policy_name;
    Pg_query_types.table = v.table;
    Pg_query_types.cmd_name = v.cmd_name;
    Pg_query_types.permissive = v.permissive;
    Pg_query_types.roles = v.roles;
    Pg_query_types.qual = v.qual;
    Pg_query_types.with_check = v.with_check;
  } : Pg_query_types.create_policy_stmt)

and decode_alter_policy_stmt d =
  let v = default_alter_policy_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.roles <- List.rev v.roles;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.policy_name <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_policy_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.table <- Some (decode_range_var (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_policy_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.roles <- (decode_node (Pbrt.Decoder.nested d)) :: v.roles;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_policy_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.qual <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_policy_stmt), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.with_check <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_policy_stmt), field(5)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.policy_name = v.policy_name;
    Pg_query_types.table = v.table;
    Pg_query_types.roles = v.roles;
    Pg_query_types.qual = v.qual;
    Pg_query_types.with_check = v.with_check;
  } : Pg_query_types.alter_policy_stmt)

and decode_create_transform_stmt d =
  let v = default_create_transform_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.replace <- Pbrt.Decoder.bool d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_transform_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.type_name <- Some (decode_type_name (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_transform_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.lang <- Pbrt.Decoder.string d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_transform_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.fromsql <- Some (decode_object_with_args (Pbrt.Decoder.nested d));
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_transform_stmt), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.tosql <- Some (decode_object_with_args (Pbrt.Decoder.nested d));
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_transform_stmt), field(5)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.replace = v.replace;
    Pg_query_types.type_name = v.type_name;
    Pg_query_types.lang = v.lang;
    Pg_query_types.fromsql = v.fromsql;
    Pg_query_types.tosql = v.tosql;
  } : Pg_query_types.create_transform_stmt)

and decode_create_am_stmt d =
  let v = default_create_am_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.handler_name <- List.rev v.handler_name;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.amname <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_am_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.handler_name <- (decode_node (Pbrt.Decoder.nested d)) :: v.handler_name;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_am_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.amtype <- Pbrt.Decoder.string d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_am_stmt), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.amname = v.amname;
    Pg_query_types.handler_name = v.handler_name;
    Pg_query_types.amtype = v.amtype;
  } : Pg_query_types.create_am_stmt)

and decode_create_publication_stmt d =
  let v = default_create_publication_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.pubobjects <- List.rev v.pubobjects;
      v.options <- List.rev v.options;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.pubname <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_publication_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.options <- (decode_node (Pbrt.Decoder.nested d)) :: v.options;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_publication_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.pubobjects <- (decode_node (Pbrt.Decoder.nested d)) :: v.pubobjects;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_publication_stmt), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.for_all_tables <- Pbrt.Decoder.bool d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_publication_stmt), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.pubname = v.pubname;
    Pg_query_types.options = v.options;
    Pg_query_types.pubobjects = v.pubobjects;
    Pg_query_types.for_all_tables = v.for_all_tables;
  } : Pg_query_types.create_publication_stmt)

and decode_alter_publication_stmt d =
  let v = default_alter_publication_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.pubobjects <- List.rev v.pubobjects;
      v.options <- List.rev v.options;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.pubname <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_publication_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.options <- (decode_node (Pbrt.Decoder.nested d)) :: v.options;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_publication_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.pubobjects <- (decode_node (Pbrt.Decoder.nested d)) :: v.pubobjects;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_publication_stmt), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.for_all_tables <- Pbrt.Decoder.bool d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_publication_stmt), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.action <- decode_alter_publication_action d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_publication_stmt), field(5)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.pubname = v.pubname;
    Pg_query_types.options = v.options;
    Pg_query_types.pubobjects = v.pubobjects;
    Pg_query_types.for_all_tables = v.for_all_tables;
    Pg_query_types.action = v.action;
  } : Pg_query_types.alter_publication_stmt)

and decode_create_subscription_stmt d =
  let v = default_create_subscription_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.options <- List.rev v.options;
      v.publication <- List.rev v.publication;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.subname <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_subscription_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.conninfo <- Pbrt.Decoder.string d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_subscription_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.publication <- (decode_node (Pbrt.Decoder.nested d)) :: v.publication;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_subscription_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.options <- (decode_node (Pbrt.Decoder.nested d)) :: v.options;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_subscription_stmt), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.subname = v.subname;
    Pg_query_types.conninfo = v.conninfo;
    Pg_query_types.publication = v.publication;
    Pg_query_types.options = v.options;
  } : Pg_query_types.create_subscription_stmt)

and decode_alter_subscription_stmt d =
  let v = default_alter_subscription_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.options <- List.rev v.options;
      v.publication <- List.rev v.publication;
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.kind <- decode_alter_subscription_type d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_subscription_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.subname <- Pbrt.Decoder.string d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_subscription_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.conninfo <- Pbrt.Decoder.string d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_subscription_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.publication <- (decode_node (Pbrt.Decoder.nested d)) :: v.publication;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_subscription_stmt), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.options <- (decode_node (Pbrt.Decoder.nested d)) :: v.options;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_subscription_stmt), field(5)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.kind = v.kind;
    Pg_query_types.subname = v.subname;
    Pg_query_types.conninfo = v.conninfo;
    Pg_query_types.publication = v.publication;
    Pg_query_types.options = v.options;
  } : Pg_query_types.alter_subscription_stmt)

and decode_create_stats_stmt d =
  let v = default_create_stats_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.relations <- List.rev v.relations;
      v.exprs <- List.rev v.exprs;
      v.stat_types <- List.rev v.stat_types;
      v.defnames <- List.rev v.defnames;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.defnames <- (decode_node (Pbrt.Decoder.nested d)) :: v.defnames;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_stats_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.stat_types <- (decode_node (Pbrt.Decoder.nested d)) :: v.stat_types;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_stats_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.exprs <- (decode_node (Pbrt.Decoder.nested d)) :: v.exprs;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_stats_stmt), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.relations <- (decode_node (Pbrt.Decoder.nested d)) :: v.relations;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_stats_stmt), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.stxcomment <- Pbrt.Decoder.string d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_stats_stmt), field(5)" pk
    | Some (6, Pbrt.Varint) -> begin
      v.transformed <- Pbrt.Decoder.bool d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_stats_stmt), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.if_not_exists <- Pbrt.Decoder.bool d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_stats_stmt), field(7)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.defnames = v.defnames;
    Pg_query_types.stat_types = v.stat_types;
    Pg_query_types.exprs = v.exprs;
    Pg_query_types.relations = v.relations;
    Pg_query_types.stxcomment = v.stxcomment;
    Pg_query_types.transformed = v.transformed;
    Pg_query_types.if_not_exists = v.if_not_exists;
  } : Pg_query_types.create_stats_stmt)

and decode_alter_collation_stmt d =
  let v = default_alter_collation_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.collname <- List.rev v.collname;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.collname <- (decode_node (Pbrt.Decoder.nested d)) :: v.collname;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_collation_stmt), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.collname = v.collname;
  } : Pg_query_types.alter_collation_stmt)

and decode_call_stmt d =
  let v = default_call_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.outargs <- List.rev v.outargs;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.funccall <- Some (decode_func_call (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(call_stmt), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.funcexpr <- Some (decode_func_expr (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(call_stmt), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.outargs <- (decode_node (Pbrt.Decoder.nested d)) :: v.outargs;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(call_stmt), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.funccall = v.funccall;
    Pg_query_types.funcexpr = v.funcexpr;
    Pg_query_types.outargs = v.outargs;
  } : Pg_query_types.call_stmt)

and decode_func_call d =
  let v = default_func_call_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.agg_order <- List.rev v.agg_order;
      v.args <- List.rev v.args;
      v.funcname <- List.rev v.funcname;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.funcname <- (decode_node (Pbrt.Decoder.nested d)) :: v.funcname;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(func_call), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.args <- (decode_node (Pbrt.Decoder.nested d)) :: v.args;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(func_call), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.agg_order <- (decode_node (Pbrt.Decoder.nested d)) :: v.agg_order;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(func_call), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.agg_filter <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(func_call), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.over <- Some (decode_window_def (Pbrt.Decoder.nested d));
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(func_call), field(5)" pk
    | Some (6, Pbrt.Varint) -> begin
      v.agg_within_group <- Pbrt.Decoder.bool d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(func_call), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.agg_star <- Pbrt.Decoder.bool d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(func_call), field(7)" pk
    | Some (8, Pbrt.Varint) -> begin
      v.agg_distinct <- Pbrt.Decoder.bool d;
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(func_call), field(8)" pk
    | Some (9, Pbrt.Varint) -> begin
      v.func_variadic <- Pbrt.Decoder.bool d;
    end
    | Some (9, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(func_call), field(9)" pk
    | Some (10, Pbrt.Varint) -> begin
      v.funcformat <- decode_coercion_form d;
    end
    | Some (10, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(func_call), field(10)" pk
    | Some (11, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (11, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(func_call), field(11)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.funcname = v.funcname;
    Pg_query_types.args = v.args;
    Pg_query_types.agg_order = v.agg_order;
    Pg_query_types.agg_filter = v.agg_filter;
    Pg_query_types.over = v.over;
    Pg_query_types.agg_within_group = v.agg_within_group;
    Pg_query_types.agg_star = v.agg_star;
    Pg_query_types.agg_distinct = v.agg_distinct;
    Pg_query_types.func_variadic = v.func_variadic;
    Pg_query_types.funcformat = v.funcformat;
    Pg_query_types.location = v.location;
  } : Pg_query_types.func_call)

and decode_window_def d =
  let v = default_window_def_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.order_clause <- List.rev v.order_clause;
      v.partition_clause <- List.rev v.partition_clause;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.name <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(window_def), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.refname <- Pbrt.Decoder.string d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(window_def), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.partition_clause <- (decode_node (Pbrt.Decoder.nested d)) :: v.partition_clause;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(window_def), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.order_clause <- (decode_node (Pbrt.Decoder.nested d)) :: v.order_clause;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(window_def), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.frame_options <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(window_def), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.start_offset <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(window_def), field(6)" pk
    | Some (7, Pbrt.Bytes) -> begin
      v.end_offset <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(window_def), field(7)" pk
    | Some (8, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(window_def), field(8)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.name = v.name;
    Pg_query_types.refname = v.refname;
    Pg_query_types.partition_clause = v.partition_clause;
    Pg_query_types.order_clause = v.order_clause;
    Pg_query_types.frame_options = v.frame_options;
    Pg_query_types.start_offset = v.start_offset;
    Pg_query_types.end_offset = v.end_offset;
    Pg_query_types.location = v.location;
  } : Pg_query_types.window_def)

and decode_alter_stats_stmt d =
  let v = default_alter_stats_stmt_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.defnames <- List.rev v.defnames;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.defnames <- (decode_node (Pbrt.Decoder.nested d)) :: v.defnames;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_stats_stmt), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.stxstattarget <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_stats_stmt), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.missing_ok <- Pbrt.Decoder.bool d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(alter_stats_stmt), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.defnames = v.defnames;
    Pg_query_types.stxstattarget = v.stxstattarget;
    Pg_query_types.missing_ok = v.missing_ok;
  } : Pg_query_types.alter_stats_stmt)

and decode_a_expr d =
  let v = default_a_expr_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.name <- List.rev v.name;
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.kind <- decode_a_expr_kind d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(a_expr), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.name <- (decode_node (Pbrt.Decoder.nested d)) :: v.name;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(a_expr), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.lexpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(a_expr), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.rexpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(a_expr), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(a_expr), field(5)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.kind = v.kind;
    Pg_query_types.name = v.name;
    Pg_query_types.lexpr = v.lexpr;
    Pg_query_types.rexpr = v.rexpr;
    Pg_query_types.location = v.location;
  } : Pg_query_types.a_expr)

and decode_column_ref d =
  let v = default_column_ref_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.fields <- List.rev v.fields;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.fields <- (decode_node (Pbrt.Decoder.nested d)) :: v.fields;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(column_ref), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(column_ref), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.fields = v.fields;
    Pg_query_types.location = v.location;
  } : Pg_query_types.column_ref)

and decode_a_indices d =
  let v = default_a_indices_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.is_slice <- Pbrt.Decoder.bool d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(a_indices), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.lidx <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(a_indices), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.uidx <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(a_indices), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.is_slice = v.is_slice;
    Pg_query_types.lidx = v.lidx;
    Pg_query_types.uidx = v.uidx;
  } : Pg_query_types.a_indices)

and decode_a_indirection d =
  let v = default_a_indirection_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.indirection <- List.rev v.indirection;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.arg <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(a_indirection), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.indirection <- (decode_node (Pbrt.Decoder.nested d)) :: v.indirection;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(a_indirection), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.arg = v.arg;
    Pg_query_types.indirection = v.indirection;
  } : Pg_query_types.a_indirection)

and decode_a_array_expr d =
  let v = default_a_array_expr_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.elements <- List.rev v.elements;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.elements <- (decode_node (Pbrt.Decoder.nested d)) :: v.elements;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(a_array_expr), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(a_array_expr), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.elements = v.elements;
    Pg_query_types.location = v.location;
  } : Pg_query_types.a_array_expr)

and decode_res_target d =
  let v = default_res_target_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.indirection <- List.rev v.indirection;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.name <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(res_target), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.indirection <- (decode_node (Pbrt.Decoder.nested d)) :: v.indirection;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(res_target), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.val_ <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(res_target), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(res_target), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.name = v.name;
    Pg_query_types.indirection = v.indirection;
    Pg_query_types.val_ = v.val_;
    Pg_query_types.location = v.location;
  } : Pg_query_types.res_target)

and decode_multi_assign_ref d =
  let v = default_multi_assign_ref_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.source <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(multi_assign_ref), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.colno <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(multi_assign_ref), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.ncolumns <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(multi_assign_ref), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.source = v.source;
    Pg_query_types.colno = v.colno;
    Pg_query_types.ncolumns = v.ncolumns;
  } : Pg_query_types.multi_assign_ref)

and decode_type_cast d =
  let v = default_type_cast_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.arg <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(type_cast), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.type_name <- Some (decode_type_name (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(type_cast), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(type_cast), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.arg = v.arg;
    Pg_query_types.type_name = v.type_name;
    Pg_query_types.location = v.location;
  } : Pg_query_types.type_cast)

and decode_sort_by d =
  let v = default_sort_by_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.use_op <- List.rev v.use_op;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.node <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sort_by), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.sortby_dir <- decode_sort_by_dir d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sort_by), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.sortby_nulls <- decode_sort_by_nulls d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sort_by), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.use_op <- (decode_node (Pbrt.Decoder.nested d)) :: v.use_op;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sort_by), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(sort_by), field(5)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.node = v.node;
    Pg_query_types.sortby_dir = v.sortby_dir;
    Pg_query_types.sortby_nulls = v.sortby_nulls;
    Pg_query_types.use_op = v.use_op;
    Pg_query_types.location = v.location;
  } : Pg_query_types.sort_by)

and decode_range_subselect d =
  let v = default_range_subselect_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.lateral <- Pbrt.Decoder.bool d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_subselect), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.subquery <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_subselect), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.alias <- Some (decode_alias (Pbrt.Decoder.nested d));
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_subselect), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.lateral = v.lateral;
    Pg_query_types.subquery = v.subquery;
    Pg_query_types.alias = v.alias;
  } : Pg_query_types.range_subselect)

and decode_range_function d =
  let v = default_range_function_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.coldeflist <- List.rev v.coldeflist;
      v.functions <- List.rev v.functions;
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.lateral <- Pbrt.Decoder.bool d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_function), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.ordinality <- Pbrt.Decoder.bool d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_function), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.is_rowsfrom <- Pbrt.Decoder.bool d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_function), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.functions <- (decode_node (Pbrt.Decoder.nested d)) :: v.functions;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_function), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.alias <- Some (decode_alias (Pbrt.Decoder.nested d));
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_function), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.coldeflist <- (decode_node (Pbrt.Decoder.nested d)) :: v.coldeflist;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_function), field(6)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.lateral = v.lateral;
    Pg_query_types.ordinality = v.ordinality;
    Pg_query_types.is_rowsfrom = v.is_rowsfrom;
    Pg_query_types.functions = v.functions;
    Pg_query_types.alias = v.alias;
    Pg_query_types.coldeflist = v.coldeflist;
  } : Pg_query_types.range_function)

and decode_range_table_sample d =
  let v = default_range_table_sample_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.args <- List.rev v.args;
      v.method_ <- List.rev v.method_;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.relation <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_table_sample), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.method_ <- (decode_node (Pbrt.Decoder.nested d)) :: v.method_;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_table_sample), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.args <- (decode_node (Pbrt.Decoder.nested d)) :: v.args;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_table_sample), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.repeatable <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_table_sample), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_table_sample), field(5)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.relation = v.relation;
    Pg_query_types.method_ = v.method_;
    Pg_query_types.args = v.args;
    Pg_query_types.repeatable = v.repeatable;
    Pg_query_types.location = v.location;
  } : Pg_query_types.range_table_sample)

and decode_range_table_func d =
  let v = default_range_table_func_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.columns <- List.rev v.columns;
      v.namespaces <- List.rev v.namespaces;
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.lateral <- Pbrt.Decoder.bool d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_table_func), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.docexpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_table_func), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.rowexpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_table_func), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.namespaces <- (decode_node (Pbrt.Decoder.nested d)) :: v.namespaces;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_table_func), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.columns <- (decode_node (Pbrt.Decoder.nested d)) :: v.columns;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_table_func), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.alias <- Some (decode_alias (Pbrt.Decoder.nested d));
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_table_func), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_table_func), field(7)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.lateral = v.lateral;
    Pg_query_types.docexpr = v.docexpr;
    Pg_query_types.rowexpr = v.rowexpr;
    Pg_query_types.namespaces = v.namespaces;
    Pg_query_types.columns = v.columns;
    Pg_query_types.alias = v.alias;
    Pg_query_types.location = v.location;
  } : Pg_query_types.range_table_func)

and decode_range_table_func_col d =
  let v = default_range_table_func_col_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.colname <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_table_func_col), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.type_name <- Some (decode_type_name (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_table_func_col), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.for_ordinality <- Pbrt.Decoder.bool d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_table_func_col), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.is_not_null <- Pbrt.Decoder.bool d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_table_func_col), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.colexpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_table_func_col), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.coldefexpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_table_func_col), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_table_func_col), field(7)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.colname = v.colname;
    Pg_query_types.type_name = v.type_name;
    Pg_query_types.for_ordinality = v.for_ordinality;
    Pg_query_types.is_not_null = v.is_not_null;
    Pg_query_types.colexpr = v.colexpr;
    Pg_query_types.coldefexpr = v.coldefexpr;
    Pg_query_types.location = v.location;
  } : Pg_query_types.range_table_func_col)

and decode_column_def d =
  let v = default_column_def_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.fdwoptions <- List.rev v.fdwoptions;
      v.constraints <- List.rev v.constraints;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.colname <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(column_def), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.type_name <- Some (decode_type_name (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(column_def), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.compression <- Pbrt.Decoder.string d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(column_def), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.inhcount <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(column_def), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.is_local <- Pbrt.Decoder.bool d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(column_def), field(5)" pk
    | Some (6, Pbrt.Varint) -> begin
      v.is_not_null <- Pbrt.Decoder.bool d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(column_def), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.is_from_type <- Pbrt.Decoder.bool d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(column_def), field(7)" pk
    | Some (8, Pbrt.Bytes) -> begin
      v.storage <- Pbrt.Decoder.string d;
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(column_def), field(8)" pk
    | Some (9, Pbrt.Bytes) -> begin
      v.raw_default <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (9, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(column_def), field(9)" pk
    | Some (10, Pbrt.Bytes) -> begin
      v.cooked_default <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (10, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(column_def), field(10)" pk
    | Some (11, Pbrt.Bytes) -> begin
      v.identity <- Pbrt.Decoder.string d;
    end
    | Some (11, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(column_def), field(11)" pk
    | Some (12, Pbrt.Bytes) -> begin
      v.identity_sequence <- Some (decode_range_var (Pbrt.Decoder.nested d));
    end
    | Some (12, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(column_def), field(12)" pk
    | Some (13, Pbrt.Bytes) -> begin
      v.generated <- Pbrt.Decoder.string d;
    end
    | Some (13, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(column_def), field(13)" pk
    | Some (14, Pbrt.Bytes) -> begin
      v.coll_clause <- Some (decode_collate_clause (Pbrt.Decoder.nested d));
    end
    | Some (14, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(column_def), field(14)" pk
    | Some (15, Pbrt.Varint) -> begin
      v.coll_oid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (15, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(column_def), field(15)" pk
    | Some (16, Pbrt.Bytes) -> begin
      v.constraints <- (decode_node (Pbrt.Decoder.nested d)) :: v.constraints;
    end
    | Some (16, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(column_def), field(16)" pk
    | Some (17, Pbrt.Bytes) -> begin
      v.fdwoptions <- (decode_node (Pbrt.Decoder.nested d)) :: v.fdwoptions;
    end
    | Some (17, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(column_def), field(17)" pk
    | Some (18, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (18, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(column_def), field(18)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.colname = v.colname;
    Pg_query_types.type_name = v.type_name;
    Pg_query_types.compression = v.compression;
    Pg_query_types.inhcount = v.inhcount;
    Pg_query_types.is_local = v.is_local;
    Pg_query_types.is_not_null = v.is_not_null;
    Pg_query_types.is_from_type = v.is_from_type;
    Pg_query_types.storage = v.storage;
    Pg_query_types.raw_default = v.raw_default;
    Pg_query_types.cooked_default = v.cooked_default;
    Pg_query_types.identity = v.identity;
    Pg_query_types.identity_sequence = v.identity_sequence;
    Pg_query_types.generated = v.generated;
    Pg_query_types.coll_clause = v.coll_clause;
    Pg_query_types.coll_oid = v.coll_oid;
    Pg_query_types.constraints = v.constraints;
    Pg_query_types.fdwoptions = v.fdwoptions;
    Pg_query_types.location = v.location;
  } : Pg_query_types.column_def)

and decode_index_elem d =
  let v = default_index_elem_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.opclassopts <- List.rev v.opclassopts;
      v.opclass <- List.rev v.opclass;
      v.collation <- List.rev v.collation;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.name <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(index_elem), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.expr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(index_elem), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.indexcolname <- Pbrt.Decoder.string d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(index_elem), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.collation <- (decode_node (Pbrt.Decoder.nested d)) :: v.collation;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(index_elem), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.opclass <- (decode_node (Pbrt.Decoder.nested d)) :: v.opclass;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(index_elem), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.opclassopts <- (decode_node (Pbrt.Decoder.nested d)) :: v.opclassopts;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(index_elem), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.ordering <- decode_sort_by_dir d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(index_elem), field(7)" pk
    | Some (8, Pbrt.Varint) -> begin
      v.nulls_ordering <- decode_sort_by_nulls d;
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(index_elem), field(8)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.name = v.name;
    Pg_query_types.expr = v.expr;
    Pg_query_types.indexcolname = v.indexcolname;
    Pg_query_types.collation = v.collation;
    Pg_query_types.opclass = v.opclass;
    Pg_query_types.opclassopts = v.opclassopts;
    Pg_query_types.ordering = v.ordering;
    Pg_query_types.nulls_ordering = v.nulls_ordering;
  } : Pg_query_types.index_elem)

and decode_stats_elem d =
  let v = default_stats_elem_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.name <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(stats_elem), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.expr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(stats_elem), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.name = v.name;
    Pg_query_types.expr = v.expr;
  } : Pg_query_types.stats_elem)

and decode_constraint_ d =
  let v = default_constraint__mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.old_conpfeqop <- List.rev v.old_conpfeqop;
      v.fk_del_set_cols <- List.rev v.fk_del_set_cols;
      v.pk_attrs <- List.rev v.pk_attrs;
      v.fk_attrs <- List.rev v.fk_attrs;
      v.options <- List.rev v.options;
      v.exclusions <- List.rev v.exclusions;
      v.including <- List.rev v.including;
      v.keys <- List.rev v.keys;
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.contype <- decode_constr_type d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(constraint_), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.conname <- Pbrt.Decoder.string d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(constraint_), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.deferrable <- Pbrt.Decoder.bool d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(constraint_), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.initdeferred <- Pbrt.Decoder.bool d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(constraint_), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(constraint_), field(5)" pk
    | Some (6, Pbrt.Varint) -> begin
      v.is_no_inherit <- Pbrt.Decoder.bool d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(constraint_), field(6)" pk
    | Some (7, Pbrt.Bytes) -> begin
      v.raw_expr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(constraint_), field(7)" pk
    | Some (8, Pbrt.Bytes) -> begin
      v.cooked_expr <- Pbrt.Decoder.string d;
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(constraint_), field(8)" pk
    | Some (9, Pbrt.Bytes) -> begin
      v.generated_when <- Pbrt.Decoder.string d;
    end
    | Some (9, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(constraint_), field(9)" pk
    | Some (10, Pbrt.Varint) -> begin
      v.nulls_not_distinct <- Pbrt.Decoder.bool d;
    end
    | Some (10, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(constraint_), field(10)" pk
    | Some (11, Pbrt.Bytes) -> begin
      v.keys <- (decode_node (Pbrt.Decoder.nested d)) :: v.keys;
    end
    | Some (11, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(constraint_), field(11)" pk
    | Some (12, Pbrt.Bytes) -> begin
      v.including <- (decode_node (Pbrt.Decoder.nested d)) :: v.including;
    end
    | Some (12, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(constraint_), field(12)" pk
    | Some (13, Pbrt.Bytes) -> begin
      v.exclusions <- (decode_node (Pbrt.Decoder.nested d)) :: v.exclusions;
    end
    | Some (13, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(constraint_), field(13)" pk
    | Some (14, Pbrt.Bytes) -> begin
      v.options <- (decode_node (Pbrt.Decoder.nested d)) :: v.options;
    end
    | Some (14, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(constraint_), field(14)" pk
    | Some (15, Pbrt.Bytes) -> begin
      v.indexname <- Pbrt.Decoder.string d;
    end
    | Some (15, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(constraint_), field(15)" pk
    | Some (16, Pbrt.Bytes) -> begin
      v.indexspace <- Pbrt.Decoder.string d;
    end
    | Some (16, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(constraint_), field(16)" pk
    | Some (17, Pbrt.Varint) -> begin
      v.reset_default_tblspc <- Pbrt.Decoder.bool d;
    end
    | Some (17, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(constraint_), field(17)" pk
    | Some (18, Pbrt.Bytes) -> begin
      v.access_method <- Pbrt.Decoder.string d;
    end
    | Some (18, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(constraint_), field(18)" pk
    | Some (19, Pbrt.Bytes) -> begin
      v.where_clause <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (19, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(constraint_), field(19)" pk
    | Some (20, Pbrt.Bytes) -> begin
      v.pktable <- Some (decode_range_var (Pbrt.Decoder.nested d));
    end
    | Some (20, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(constraint_), field(20)" pk
    | Some (21, Pbrt.Bytes) -> begin
      v.fk_attrs <- (decode_node (Pbrt.Decoder.nested d)) :: v.fk_attrs;
    end
    | Some (21, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(constraint_), field(21)" pk
    | Some (22, Pbrt.Bytes) -> begin
      v.pk_attrs <- (decode_node (Pbrt.Decoder.nested d)) :: v.pk_attrs;
    end
    | Some (22, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(constraint_), field(22)" pk
    | Some (23, Pbrt.Bytes) -> begin
      v.fk_matchtype <- Pbrt.Decoder.string d;
    end
    | Some (23, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(constraint_), field(23)" pk
    | Some (24, Pbrt.Bytes) -> begin
      v.fk_upd_action <- Pbrt.Decoder.string d;
    end
    | Some (24, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(constraint_), field(24)" pk
    | Some (25, Pbrt.Bytes) -> begin
      v.fk_del_action <- Pbrt.Decoder.string d;
    end
    | Some (25, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(constraint_), field(25)" pk
    | Some (26, Pbrt.Bytes) -> begin
      v.fk_del_set_cols <- (decode_node (Pbrt.Decoder.nested d)) :: v.fk_del_set_cols;
    end
    | Some (26, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(constraint_), field(26)" pk
    | Some (27, Pbrt.Bytes) -> begin
      v.old_conpfeqop <- (decode_node (Pbrt.Decoder.nested d)) :: v.old_conpfeqop;
    end
    | Some (27, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(constraint_), field(27)" pk
    | Some (28, Pbrt.Varint) -> begin
      v.old_pktable_oid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (28, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(constraint_), field(28)" pk
    | Some (29, Pbrt.Varint) -> begin
      v.skip_validation <- Pbrt.Decoder.bool d;
    end
    | Some (29, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(constraint_), field(29)" pk
    | Some (30, Pbrt.Varint) -> begin
      v.initially_valid <- Pbrt.Decoder.bool d;
    end
    | Some (30, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(constraint_), field(30)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.contype = v.contype;
    Pg_query_types.conname = v.conname;
    Pg_query_types.deferrable = v.deferrable;
    Pg_query_types.initdeferred = v.initdeferred;
    Pg_query_types.location = v.location;
    Pg_query_types.is_no_inherit = v.is_no_inherit;
    Pg_query_types.raw_expr = v.raw_expr;
    Pg_query_types.cooked_expr = v.cooked_expr;
    Pg_query_types.generated_when = v.generated_when;
    Pg_query_types.nulls_not_distinct = v.nulls_not_distinct;
    Pg_query_types.keys = v.keys;
    Pg_query_types.including = v.including;
    Pg_query_types.exclusions = v.exclusions;
    Pg_query_types.options = v.options;
    Pg_query_types.indexname = v.indexname;
    Pg_query_types.indexspace = v.indexspace;
    Pg_query_types.reset_default_tblspc = v.reset_default_tblspc;
    Pg_query_types.access_method = v.access_method;
    Pg_query_types.where_clause = v.where_clause;
    Pg_query_types.pktable = v.pktable;
    Pg_query_types.fk_attrs = v.fk_attrs;
    Pg_query_types.pk_attrs = v.pk_attrs;
    Pg_query_types.fk_matchtype = v.fk_matchtype;
    Pg_query_types.fk_upd_action = v.fk_upd_action;
    Pg_query_types.fk_del_action = v.fk_del_action;
    Pg_query_types.fk_del_set_cols = v.fk_del_set_cols;
    Pg_query_types.old_conpfeqop = v.old_conpfeqop;
    Pg_query_types.old_pktable_oid = v.old_pktable_oid;
    Pg_query_types.skip_validation = v.skip_validation;
    Pg_query_types.initially_valid = v.initially_valid;
  } : Pg_query_types.constraint_)

and decode_def_elem d =
  let v = default_def_elem_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.defnamespace <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(def_elem), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.defname <- Pbrt.Decoder.string d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(def_elem), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.arg <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(def_elem), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.defaction <- decode_def_elem_action d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(def_elem), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(def_elem), field(5)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.defnamespace = v.defnamespace;
    Pg_query_types.defname = v.defname;
    Pg_query_types.arg = v.arg;
    Pg_query_types.defaction = v.defaction;
    Pg_query_types.location = v.location;
  } : Pg_query_types.def_elem)

and decode_range_tbl_entry d =
  let v = default_range_tbl_entry_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.security_quals <- List.rev v.security_quals;
      v.extra_updated_cols <- List.rev v.extra_updated_cols;
      v.updated_cols <- List.rev v.updated_cols;
      v.inserted_cols <- List.rev v.inserted_cols;
      v.selected_cols <- List.rev v.selected_cols;
      v.colcollations <- List.rev v.colcollations;
      v.coltypmods <- List.rev v.coltypmods;
      v.coltypes <- List.rev v.coltypes;
      v.values_lists <- List.rev v.values_lists;
      v.functions <- List.rev v.functions;
      v.joinrightcols <- List.rev v.joinrightcols;
      v.joinleftcols <- List.rev v.joinleftcols;
      v.joinaliasvars <- List.rev v.joinaliasvars;
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.rtekind <- decode_rtekind d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_entry), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.relid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_entry), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.relkind <- Pbrt.Decoder.string d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_entry), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.rellockmode <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_entry), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.tablesample <- Some (decode_table_sample_clause (Pbrt.Decoder.nested d));
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_entry), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.subquery <- Some (decode_query (Pbrt.Decoder.nested d));
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_entry), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.security_barrier <- Pbrt.Decoder.bool d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_entry), field(7)" pk
    | Some (8, Pbrt.Varint) -> begin
      v.jointype <- decode_join_type d;
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_entry), field(8)" pk
    | Some (9, Pbrt.Varint) -> begin
      v.joinmergedcols <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (9, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_entry), field(9)" pk
    | Some (10, Pbrt.Bytes) -> begin
      v.joinaliasvars <- (decode_node (Pbrt.Decoder.nested d)) :: v.joinaliasvars;
    end
    | Some (10, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_entry), field(10)" pk
    | Some (11, Pbrt.Bytes) -> begin
      v.joinleftcols <- (decode_node (Pbrt.Decoder.nested d)) :: v.joinleftcols;
    end
    | Some (11, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_entry), field(11)" pk
    | Some (12, Pbrt.Bytes) -> begin
      v.joinrightcols <- (decode_node (Pbrt.Decoder.nested d)) :: v.joinrightcols;
    end
    | Some (12, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_entry), field(12)" pk
    | Some (13, Pbrt.Bytes) -> begin
      v.join_using_alias <- Some (decode_alias (Pbrt.Decoder.nested d));
    end
    | Some (13, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_entry), field(13)" pk
    | Some (14, Pbrt.Bytes) -> begin
      v.functions <- (decode_node (Pbrt.Decoder.nested d)) :: v.functions;
    end
    | Some (14, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_entry), field(14)" pk
    | Some (15, Pbrt.Varint) -> begin
      v.funcordinality <- Pbrt.Decoder.bool d;
    end
    | Some (15, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_entry), field(15)" pk
    | Some (16, Pbrt.Bytes) -> begin
      v.tablefunc <- Some (decode_table_func (Pbrt.Decoder.nested d));
    end
    | Some (16, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_entry), field(16)" pk
    | Some (17, Pbrt.Bytes) -> begin
      v.values_lists <- (decode_node (Pbrt.Decoder.nested d)) :: v.values_lists;
    end
    | Some (17, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_entry), field(17)" pk
    | Some (18, Pbrt.Bytes) -> begin
      v.ctename <- Pbrt.Decoder.string d;
    end
    | Some (18, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_entry), field(18)" pk
    | Some (19, Pbrt.Varint) -> begin
      v.ctelevelsup <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (19, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_entry), field(19)" pk
    | Some (20, Pbrt.Varint) -> begin
      v.self_reference <- Pbrt.Decoder.bool d;
    end
    | Some (20, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_entry), field(20)" pk
    | Some (21, Pbrt.Bytes) -> begin
      v.coltypes <- (decode_node (Pbrt.Decoder.nested d)) :: v.coltypes;
    end
    | Some (21, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_entry), field(21)" pk
    | Some (22, Pbrt.Bytes) -> begin
      v.coltypmods <- (decode_node (Pbrt.Decoder.nested d)) :: v.coltypmods;
    end
    | Some (22, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_entry), field(22)" pk
    | Some (23, Pbrt.Bytes) -> begin
      v.colcollations <- (decode_node (Pbrt.Decoder.nested d)) :: v.colcollations;
    end
    | Some (23, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_entry), field(23)" pk
    | Some (24, Pbrt.Bytes) -> begin
      v.enrname <- Pbrt.Decoder.string d;
    end
    | Some (24, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_entry), field(24)" pk
    | Some (25, Pbrt.Bits64) -> begin
      v.enrtuples <- Pbrt.Decoder.float_as_bits64 d;
    end
    | Some (25, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_entry), field(25)" pk
    | Some (26, Pbrt.Bytes) -> begin
      v.alias <- Some (decode_alias (Pbrt.Decoder.nested d));
    end
    | Some (26, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_entry), field(26)" pk
    | Some (27, Pbrt.Bytes) -> begin
      v.eref <- Some (decode_alias (Pbrt.Decoder.nested d));
    end
    | Some (27, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_entry), field(27)" pk
    | Some (28, Pbrt.Varint) -> begin
      v.lateral <- Pbrt.Decoder.bool d;
    end
    | Some (28, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_entry), field(28)" pk
    | Some (29, Pbrt.Varint) -> begin
      v.inh <- Pbrt.Decoder.bool d;
    end
    | Some (29, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_entry), field(29)" pk
    | Some (30, Pbrt.Varint) -> begin
      v.in_from_cl <- Pbrt.Decoder.bool d;
    end
    | Some (30, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_entry), field(30)" pk
    | Some (31, Pbrt.Varint) -> begin
      v.required_perms <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (31, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_entry), field(31)" pk
    | Some (32, Pbrt.Varint) -> begin
      v.check_as_user <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (32, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_entry), field(32)" pk
    | Some (33, Pbrt.Bytes) -> begin
      v.selected_cols <- Pbrt.Decoder.packed_fold (fun l d -> (Pbrt.Decoder.int64_as_varint d)::l) [] d;
    end
    | Some (33, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_entry), field(33)" pk
    | Some (34, Pbrt.Bytes) -> begin
      v.inserted_cols <- Pbrt.Decoder.packed_fold (fun l d -> (Pbrt.Decoder.int64_as_varint d)::l) [] d;
    end
    | Some (34, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_entry), field(34)" pk
    | Some (35, Pbrt.Bytes) -> begin
      v.updated_cols <- Pbrt.Decoder.packed_fold (fun l d -> (Pbrt.Decoder.int64_as_varint d)::l) [] d;
    end
    | Some (35, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_entry), field(35)" pk
    | Some (36, Pbrt.Bytes) -> begin
      v.extra_updated_cols <- Pbrt.Decoder.packed_fold (fun l d -> (Pbrt.Decoder.int64_as_varint d)::l) [] d;
    end
    | Some (36, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_entry), field(36)" pk
    | Some (37, Pbrt.Bytes) -> begin
      v.security_quals <- (decode_node (Pbrt.Decoder.nested d)) :: v.security_quals;
    end
    | Some (37, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_entry), field(37)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.rtekind = v.rtekind;
    Pg_query_types.relid = v.relid;
    Pg_query_types.relkind = v.relkind;
    Pg_query_types.rellockmode = v.rellockmode;
    Pg_query_types.tablesample = v.tablesample;
    Pg_query_types.subquery = v.subquery;
    Pg_query_types.security_barrier = v.security_barrier;
    Pg_query_types.jointype = v.jointype;
    Pg_query_types.joinmergedcols = v.joinmergedcols;
    Pg_query_types.joinaliasvars = v.joinaliasvars;
    Pg_query_types.joinleftcols = v.joinleftcols;
    Pg_query_types.joinrightcols = v.joinrightcols;
    Pg_query_types.join_using_alias = v.join_using_alias;
    Pg_query_types.functions = v.functions;
    Pg_query_types.funcordinality = v.funcordinality;
    Pg_query_types.tablefunc = v.tablefunc;
    Pg_query_types.values_lists = v.values_lists;
    Pg_query_types.ctename = v.ctename;
    Pg_query_types.ctelevelsup = v.ctelevelsup;
    Pg_query_types.self_reference = v.self_reference;
    Pg_query_types.coltypes = v.coltypes;
    Pg_query_types.coltypmods = v.coltypmods;
    Pg_query_types.colcollations = v.colcollations;
    Pg_query_types.enrname = v.enrname;
    Pg_query_types.enrtuples = v.enrtuples;
    Pg_query_types.alias = v.alias;
    Pg_query_types.eref = v.eref;
    Pg_query_types.lateral = v.lateral;
    Pg_query_types.inh = v.inh;
    Pg_query_types.in_from_cl = v.in_from_cl;
    Pg_query_types.required_perms = v.required_perms;
    Pg_query_types.check_as_user = v.check_as_user;
    Pg_query_types.selected_cols = v.selected_cols;
    Pg_query_types.inserted_cols = v.inserted_cols;
    Pg_query_types.updated_cols = v.updated_cols;
    Pg_query_types.extra_updated_cols = v.extra_updated_cols;
    Pg_query_types.security_quals = v.security_quals;
  } : Pg_query_types.range_tbl_entry)

and decode_table_sample_clause d =
  let v = default_table_sample_clause_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.args <- List.rev v.args;
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.tsmhandler <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(table_sample_clause), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.args <- (decode_node (Pbrt.Decoder.nested d)) :: v.args;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(table_sample_clause), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.repeatable <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(table_sample_clause), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.tsmhandler = v.tsmhandler;
    Pg_query_types.args = v.args;
    Pg_query_types.repeatable = v.repeatable;
  } : Pg_query_types.table_sample_clause)

and decode_range_tbl_function d =
  let v = default_range_tbl_function_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.funcparams <- List.rev v.funcparams;
      v.funccolcollations <- List.rev v.funccolcollations;
      v.funccoltypmods <- List.rev v.funccoltypmods;
      v.funccoltypes <- List.rev v.funccoltypes;
      v.funccolnames <- List.rev v.funccolnames;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.funcexpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_function), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.funccolcount <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_function), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.funccolnames <- (decode_node (Pbrt.Decoder.nested d)) :: v.funccolnames;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_function), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.funccoltypes <- (decode_node (Pbrt.Decoder.nested d)) :: v.funccoltypes;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_function), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.funccoltypmods <- (decode_node (Pbrt.Decoder.nested d)) :: v.funccoltypmods;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_function), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.funccolcollations <- (decode_node (Pbrt.Decoder.nested d)) :: v.funccolcollations;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_function), field(6)" pk
    | Some (7, Pbrt.Bytes) -> begin
      v.funcparams <- Pbrt.Decoder.packed_fold (fun l d -> (Pbrt.Decoder.int64_as_varint d)::l) [] d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(range_tbl_function), field(7)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.funcexpr = v.funcexpr;
    Pg_query_types.funccolcount = v.funccolcount;
    Pg_query_types.funccolnames = v.funccolnames;
    Pg_query_types.funccoltypes = v.funccoltypes;
    Pg_query_types.funccoltypmods = v.funccoltypmods;
    Pg_query_types.funccolcollations = v.funccolcollations;
    Pg_query_types.funcparams = v.funcparams;
  } : Pg_query_types.range_tbl_function)

and decode_with_check_option d =
  let v = default_with_check_option_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.kind <- decode_wcokind d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(with_check_option), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.relname <- Pbrt.Decoder.string d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(with_check_option), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.polname <- Pbrt.Decoder.string d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(with_check_option), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.qual <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(with_check_option), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.cascaded <- Pbrt.Decoder.bool d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(with_check_option), field(5)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.kind = v.kind;
    Pg_query_types.relname = v.relname;
    Pg_query_types.polname = v.polname;
    Pg_query_types.qual = v.qual;
    Pg_query_types.cascaded = v.cascaded;
  } : Pg_query_types.with_check_option)

and decode_grouping_set d =
  let v = default_grouping_set_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.content <- List.rev v.content;
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.kind <- decode_grouping_set_kind d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(grouping_set), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.content <- (decode_node (Pbrt.Decoder.nested d)) :: v.content;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(grouping_set), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(grouping_set), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.kind = v.kind;
    Pg_query_types.content = v.content;
    Pg_query_types.location = v.location;
  } : Pg_query_types.grouping_set)

and decode_window_clause d =
  let v = default_window_clause_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.run_condition <- List.rev v.run_condition;
      v.order_clause <- List.rev v.order_clause;
      v.partition_clause <- List.rev v.partition_clause;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.name <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(window_clause), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.refname <- Pbrt.Decoder.string d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(window_clause), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.partition_clause <- (decode_node (Pbrt.Decoder.nested d)) :: v.partition_clause;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(window_clause), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.order_clause <- (decode_node (Pbrt.Decoder.nested d)) :: v.order_clause;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(window_clause), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.frame_options <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(window_clause), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.start_offset <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(window_clause), field(6)" pk
    | Some (7, Pbrt.Bytes) -> begin
      v.end_offset <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(window_clause), field(7)" pk
    | Some (8, Pbrt.Bytes) -> begin
      v.run_condition <- (decode_node (Pbrt.Decoder.nested d)) :: v.run_condition;
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(window_clause), field(8)" pk
    | Some (9, Pbrt.Varint) -> begin
      v.start_in_range_func <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (9, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(window_clause), field(9)" pk
    | Some (10, Pbrt.Varint) -> begin
      v.end_in_range_func <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (10, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(window_clause), field(10)" pk
    | Some (11, Pbrt.Varint) -> begin
      v.in_range_coll <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (11, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(window_clause), field(11)" pk
    | Some (12, Pbrt.Varint) -> begin
      v.in_range_asc <- Pbrt.Decoder.bool d;
    end
    | Some (12, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(window_clause), field(12)" pk
    | Some (13, Pbrt.Varint) -> begin
      v.in_range_nulls_first <- Pbrt.Decoder.bool d;
    end
    | Some (13, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(window_clause), field(13)" pk
    | Some (14, Pbrt.Varint) -> begin
      v.winref <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (14, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(window_clause), field(14)" pk
    | Some (15, Pbrt.Varint) -> begin
      v.copied_order <- Pbrt.Decoder.bool d;
    end
    | Some (15, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(window_clause), field(15)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.name = v.name;
    Pg_query_types.refname = v.refname;
    Pg_query_types.partition_clause = v.partition_clause;
    Pg_query_types.order_clause = v.order_clause;
    Pg_query_types.frame_options = v.frame_options;
    Pg_query_types.start_offset = v.start_offset;
    Pg_query_types.end_offset = v.end_offset;
    Pg_query_types.run_condition = v.run_condition;
    Pg_query_types.start_in_range_func = v.start_in_range_func;
    Pg_query_types.end_in_range_func = v.end_in_range_func;
    Pg_query_types.in_range_coll = v.in_range_coll;
    Pg_query_types.in_range_asc = v.in_range_asc;
    Pg_query_types.in_range_nulls_first = v.in_range_nulls_first;
    Pg_query_types.winref = v.winref;
    Pg_query_types.copied_order = v.copied_order;
  } : Pg_query_types.window_clause)

and decode_access_priv d =
  let v = default_access_priv_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.cols <- List.rev v.cols;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.priv_name <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(access_priv), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.cols <- (decode_node (Pbrt.Decoder.nested d)) :: v.cols;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(access_priv), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.priv_name = v.priv_name;
    Pg_query_types.cols = v.cols;
  } : Pg_query_types.access_priv)

and decode_create_op_class_item d =
  let v = default_create_op_class_item_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.class_args <- List.rev v.class_args;
      v.order_family <- List.rev v.order_family;
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.itemtype <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_op_class_item), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.name <- Some (decode_object_with_args (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_op_class_item), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.number <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_op_class_item), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.order_family <- (decode_node (Pbrt.Decoder.nested d)) :: v.order_family;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_op_class_item), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.class_args <- (decode_node (Pbrt.Decoder.nested d)) :: v.class_args;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_op_class_item), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.storedtype <- Some (decode_type_name (Pbrt.Decoder.nested d));
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_op_class_item), field(6)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.itemtype = v.itemtype;
    Pg_query_types.name = v.name;
    Pg_query_types.number = v.number;
    Pg_query_types.order_family = v.order_family;
    Pg_query_types.class_args = v.class_args;
    Pg_query_types.storedtype = v.storedtype;
  } : Pg_query_types.create_op_class_item)

and decode_table_like_clause d =
  let v = default_table_like_clause_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.relation <- Some (decode_range_var (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(table_like_clause), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.options <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(table_like_clause), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.relation_oid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(table_like_clause), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.relation = v.relation;
    Pg_query_types.options = v.options;
    Pg_query_types.relation_oid = v.relation_oid;
  } : Pg_query_types.table_like_clause)

and decode_function_parameter d =
  let v = default_function_parameter_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.name <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(function_parameter), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.arg_type <- Some (decode_type_name (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(function_parameter), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.mode <- decode_function_parameter_mode d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(function_parameter), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.defexpr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(function_parameter), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.name = v.name;
    Pg_query_types.arg_type = v.arg_type;
    Pg_query_types.mode = v.mode;
    Pg_query_types.defexpr = v.defexpr;
  } : Pg_query_types.function_parameter)

and decode_locking_clause d =
  let v = default_locking_clause_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.locked_rels <- List.rev v.locked_rels;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.locked_rels <- (decode_node (Pbrt.Decoder.nested d)) :: v.locked_rels;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(locking_clause), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.strength <- decode_lock_clause_strength d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(locking_clause), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.wait_policy <- decode_lock_wait_policy d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(locking_clause), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.locked_rels = v.locked_rels;
    Pg_query_types.strength = v.strength;
    Pg_query_types.wait_policy = v.wait_policy;
  } : Pg_query_types.locking_clause)

and decode_xml_serialize d =
  let v = default_xml_serialize_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.xmloption <- decode_xml_option_type d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(xml_serialize), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.expr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(xml_serialize), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.type_name <- Some (decode_type_name (Pbrt.Decoder.nested d));
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(xml_serialize), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(xml_serialize), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.xmloption = v.xmloption;
    Pg_query_types.expr = v.expr;
    Pg_query_types.type_name = v.type_name;
    Pg_query_types.location = v.location;
  } : Pg_query_types.xml_serialize)

and decode_ctesearch_clause d =
  let v = default_ctesearch_clause_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.search_col_list <- List.rev v.search_col_list;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.search_col_list <- (decode_node (Pbrt.Decoder.nested d)) :: v.search_col_list;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(ctesearch_clause), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.search_breadth_first <- Pbrt.Decoder.bool d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(ctesearch_clause), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.search_seq_column <- Pbrt.Decoder.string d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(ctesearch_clause), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(ctesearch_clause), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.search_col_list = v.search_col_list;
    Pg_query_types.search_breadth_first = v.search_breadth_first;
    Pg_query_types.search_seq_column = v.search_seq_column;
    Pg_query_types.location = v.location;
  } : Pg_query_types.ctesearch_clause)

and decode_ctecycle_clause d =
  let v = default_ctecycle_clause_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.cycle_col_list <- List.rev v.cycle_col_list;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.cycle_col_list <- (decode_node (Pbrt.Decoder.nested d)) :: v.cycle_col_list;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(ctecycle_clause), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.cycle_mark_column <- Pbrt.Decoder.string d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(ctecycle_clause), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.cycle_mark_value <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(ctecycle_clause), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.cycle_mark_default <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(ctecycle_clause), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.cycle_path_column <- Pbrt.Decoder.string d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(ctecycle_clause), field(5)" pk
    | Some (6, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(ctecycle_clause), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.cycle_mark_type <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(ctecycle_clause), field(7)" pk
    | Some (8, Pbrt.Varint) -> begin
      v.cycle_mark_typmod <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(ctecycle_clause), field(8)" pk
    | Some (9, Pbrt.Varint) -> begin
      v.cycle_mark_collation <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (9, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(ctecycle_clause), field(9)" pk
    | Some (10, Pbrt.Varint) -> begin
      v.cycle_mark_neop <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (10, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(ctecycle_clause), field(10)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.cycle_col_list = v.cycle_col_list;
    Pg_query_types.cycle_mark_column = v.cycle_mark_column;
    Pg_query_types.cycle_mark_value = v.cycle_mark_value;
    Pg_query_types.cycle_mark_default = v.cycle_mark_default;
    Pg_query_types.cycle_path_column = v.cycle_path_column;
    Pg_query_types.location = v.location;
    Pg_query_types.cycle_mark_type = v.cycle_mark_type;
    Pg_query_types.cycle_mark_typmod = v.cycle_mark_typmod;
    Pg_query_types.cycle_mark_collation = v.cycle_mark_collation;
    Pg_query_types.cycle_mark_neop = v.cycle_mark_neop;
  } : Pg_query_types.ctecycle_clause)

and decode_common_table_expr d =
  let v = default_common_table_expr_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.ctecolcollations <- List.rev v.ctecolcollations;
      v.ctecoltypmods <- List.rev v.ctecoltypmods;
      v.ctecoltypes <- List.rev v.ctecoltypes;
      v.ctecolnames <- List.rev v.ctecolnames;
      v.aliascolnames <- List.rev v.aliascolnames;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.ctename <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(common_table_expr), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.aliascolnames <- (decode_node (Pbrt.Decoder.nested d)) :: v.aliascolnames;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(common_table_expr), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.ctematerialized <- decode_ctematerialize d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(common_table_expr), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.ctequery <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(common_table_expr), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.search_clause <- Some (decode_ctesearch_clause (Pbrt.Decoder.nested d));
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(common_table_expr), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.cycle_clause <- Some (decode_ctecycle_clause (Pbrt.Decoder.nested d));
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(common_table_expr), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(common_table_expr), field(7)" pk
    | Some (8, Pbrt.Varint) -> begin
      v.cterecursive <- Pbrt.Decoder.bool d;
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(common_table_expr), field(8)" pk
    | Some (9, Pbrt.Varint) -> begin
      v.cterefcount <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (9, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(common_table_expr), field(9)" pk
    | Some (10, Pbrt.Bytes) -> begin
      v.ctecolnames <- (decode_node (Pbrt.Decoder.nested d)) :: v.ctecolnames;
    end
    | Some (10, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(common_table_expr), field(10)" pk
    | Some (11, Pbrt.Bytes) -> begin
      v.ctecoltypes <- (decode_node (Pbrt.Decoder.nested d)) :: v.ctecoltypes;
    end
    | Some (11, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(common_table_expr), field(11)" pk
    | Some (12, Pbrt.Bytes) -> begin
      v.ctecoltypmods <- (decode_node (Pbrt.Decoder.nested d)) :: v.ctecoltypmods;
    end
    | Some (12, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(common_table_expr), field(12)" pk
    | Some (13, Pbrt.Bytes) -> begin
      v.ctecolcollations <- (decode_node (Pbrt.Decoder.nested d)) :: v.ctecolcollations;
    end
    | Some (13, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(common_table_expr), field(13)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.ctename = v.ctename;
    Pg_query_types.aliascolnames = v.aliascolnames;
    Pg_query_types.ctematerialized = v.ctematerialized;
    Pg_query_types.ctequery = v.ctequery;
    Pg_query_types.search_clause = v.search_clause;
    Pg_query_types.cycle_clause = v.cycle_clause;
    Pg_query_types.location = v.location;
    Pg_query_types.cterecursive = v.cterecursive;
    Pg_query_types.cterefcount = v.cterefcount;
    Pg_query_types.ctecolnames = v.ctecolnames;
    Pg_query_types.ctecoltypes = v.ctecoltypes;
    Pg_query_types.ctecoltypmods = v.ctecoltypmods;
    Pg_query_types.ctecolcollations = v.ctecolcollations;
  } : Pg_query_types.common_table_expr)

and decode_merge_when_clause d =
  let v = default_merge_when_clause_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.values <- List.rev v.values;
      v.target_list <- List.rev v.target_list;
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.matched <- Pbrt.Decoder.bool d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(merge_when_clause), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.command_type <- decode_cmd_type d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(merge_when_clause), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.override <- decode_overriding_kind d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(merge_when_clause), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.condition <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(merge_when_clause), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.target_list <- (decode_node (Pbrt.Decoder.nested d)) :: v.target_list;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(merge_when_clause), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.values <- (decode_node (Pbrt.Decoder.nested d)) :: v.values;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(merge_when_clause), field(6)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.matched = v.matched;
    Pg_query_types.command_type = v.command_type;
    Pg_query_types.override = v.override;
    Pg_query_types.condition = v.condition;
    Pg_query_types.target_list = v.target_list;
    Pg_query_types.values = v.values;
  } : Pg_query_types.merge_when_clause)

and decode_partition_elem d =
  let v = default_partition_elem_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.opclass <- List.rev v.opclass;
      v.collation <- List.rev v.collation;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.name <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(partition_elem), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.expr <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(partition_elem), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.collation <- (decode_node (Pbrt.Decoder.nested d)) :: v.collation;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(partition_elem), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.opclass <- (decode_node (Pbrt.Decoder.nested d)) :: v.opclass;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(partition_elem), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(partition_elem), field(5)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.name = v.name;
    Pg_query_types.expr = v.expr;
    Pg_query_types.collation = v.collation;
    Pg_query_types.opclass = v.opclass;
    Pg_query_types.location = v.location;
  } : Pg_query_types.partition_elem)

and decode_partition_range_datum d =
  let v = default_partition_range_datum_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.kind <- decode_partition_range_datum_kind d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(partition_range_datum), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.value <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(partition_range_datum), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(partition_range_datum), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.kind = v.kind;
    Pg_query_types.value = v.value;
    Pg_query_types.location = v.location;
  } : Pg_query_types.partition_range_datum)

and decode_partition_cmd d =
  let v = default_partition_cmd_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.name <- Some (decode_range_var (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(partition_cmd), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.bound <- Some (decode_partition_bound_spec (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(partition_cmd), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.concurrent <- Pbrt.Decoder.bool d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(partition_cmd), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.name = v.name;
    Pg_query_types.bound = v.bound;
    Pg_query_types.concurrent = v.concurrent;
  } : Pg_query_types.partition_cmd)

and decode_vacuum_relation d =
  let v = default_vacuum_relation_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.va_cols <- List.rev v.va_cols;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.relation <- Some (decode_range_var (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(vacuum_relation), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.oid <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(vacuum_relation), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.va_cols <- (decode_node (Pbrt.Decoder.nested d)) :: v.va_cols;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(vacuum_relation), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.relation = v.relation;
    Pg_query_types.oid = v.oid;
    Pg_query_types.va_cols = v.va_cols;
  } : Pg_query_types.vacuum_relation)

and decode_publication_obj_spec d =
  let v = default_publication_obj_spec_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.pubobjtype <- decode_publication_obj_spec_type d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(publication_obj_spec), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.name <- Pbrt.Decoder.string d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(publication_obj_spec), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.pubtable <- Some (decode_publication_table (Pbrt.Decoder.nested d));
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(publication_obj_spec), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.location <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(publication_obj_spec), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.pubobjtype = v.pubobjtype;
    Pg_query_types.name = v.name;
    Pg_query_types.pubtable = v.pubtable;
    Pg_query_types.location = v.location;
  } : Pg_query_types.publication_obj_spec)

and decode_publication_table d =
  let v = default_publication_table_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.columns <- List.rev v.columns;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.relation <- Some (decode_range_var (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(publication_table), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.where_clause <- Some (decode_node (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(publication_table), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.columns <- (decode_node (Pbrt.Decoder.nested d)) :: v.columns;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(publication_table), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.relation = v.relation;
    Pg_query_types.where_clause = v.where_clause;
    Pg_query_types.columns = v.columns;
  } : Pg_query_types.publication_table)

and decode_list d =
  let v = default_list_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.items <- List.rev v.items;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.items <- (decode_node (Pbrt.Decoder.nested d)) :: v.items;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(list), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.items = v.items;
  } : Pg_query_types.list)

and decode_int_list d =
  let v = default_int_list_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.items <- List.rev v.items;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.items <- (decode_node (Pbrt.Decoder.nested d)) :: v.items;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(int_list), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.items = v.items;
  } : Pg_query_types.int_list)

and decode_oid_list d =
  let v = default_oid_list_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.items <- List.rev v.items;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.items <- (decode_node (Pbrt.Decoder.nested d)) :: v.items;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(oid_list), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.items = v.items;
  } : Pg_query_types.oid_list)

let rec decode_parse_result d =
  let v = default_parse_result_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.stmts <- List.rev v.stmts;
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.version <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(parse_result), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.stmts <- (decode_raw_stmt (Pbrt.Decoder.nested d)) :: v.stmts;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(parse_result), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.version = v.version;
    Pg_query_types.stmts = v.stmts;
  } : Pg_query_types.parse_result)

let rec decode_token d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Nul:Pg_query_types.token)
  | 37 -> (Pg_query_types.Ascii_37:Pg_query_types.token)
  | 40 -> (Pg_query_types.Ascii_40:Pg_query_types.token)
  | 41 -> (Pg_query_types.Ascii_41:Pg_query_types.token)
  | 42 -> (Pg_query_types.Ascii_42:Pg_query_types.token)
  | 43 -> (Pg_query_types.Ascii_43:Pg_query_types.token)
  | 44 -> (Pg_query_types.Ascii_44:Pg_query_types.token)
  | 45 -> (Pg_query_types.Ascii_45:Pg_query_types.token)
  | 46 -> (Pg_query_types.Ascii_46:Pg_query_types.token)
  | 47 -> (Pg_query_types.Ascii_47:Pg_query_types.token)
  | 58 -> (Pg_query_types.Ascii_58:Pg_query_types.token)
  | 59 -> (Pg_query_types.Ascii_59:Pg_query_types.token)
  | 60 -> (Pg_query_types.Ascii_60:Pg_query_types.token)
  | 61 -> (Pg_query_types.Ascii_61:Pg_query_types.token)
  | 62 -> (Pg_query_types.Ascii_62:Pg_query_types.token)
  | 63 -> (Pg_query_types.Ascii_63:Pg_query_types.token)
  | 91 -> (Pg_query_types.Ascii_91:Pg_query_types.token)
  | 92 -> (Pg_query_types.Ascii_92:Pg_query_types.token)
  | 93 -> (Pg_query_types.Ascii_93:Pg_query_types.token)
  | 94 -> (Pg_query_types.Ascii_94:Pg_query_types.token)
  | 258 -> (Pg_query_types.Ident:Pg_query_types.token)
  | 259 -> (Pg_query_types.Uident:Pg_query_types.token)
  | 260 -> (Pg_query_types.Fconst:Pg_query_types.token)
  | 261 -> (Pg_query_types.Sconst:Pg_query_types.token)
  | 262 -> (Pg_query_types.Usconst:Pg_query_types.token)
  | 263 -> (Pg_query_types.Bconst:Pg_query_types.token)
  | 264 -> (Pg_query_types.Xconst:Pg_query_types.token)
  | 265 -> (Pg_query_types.Op:Pg_query_types.token)
  | 266 -> (Pg_query_types.Iconst:Pg_query_types.token)
  | 267 -> (Pg_query_types.Param:Pg_query_types.token)
  | 268 -> (Pg_query_types.Typecast:Pg_query_types.token)
  | 269 -> (Pg_query_types.Dot_dot:Pg_query_types.token)
  | 270 -> (Pg_query_types.Colon_equals:Pg_query_types.token)
  | 271 -> (Pg_query_types.Equals_greater:Pg_query_types.token)
  | 272 -> (Pg_query_types.Less_equals:Pg_query_types.token)
  | 273 -> (Pg_query_types.Greater_equals:Pg_query_types.token)
  | 274 -> (Pg_query_types.Not_equals:Pg_query_types.token)
  | 275 -> (Pg_query_types.Sql_comment:Pg_query_types.token)
  | 276 -> (Pg_query_types.C_comment:Pg_query_types.token)
  | 277 -> (Pg_query_types.Abort_p:Pg_query_types.token)
  | 278 -> (Pg_query_types.Absolute_p:Pg_query_types.token)
  | 279 -> (Pg_query_types.Access:Pg_query_types.token)
  | 280 -> (Pg_query_types.Action:Pg_query_types.token)
  | 281 -> (Pg_query_types.Add_p:Pg_query_types.token)
  | 282 -> (Pg_query_types.Admin:Pg_query_types.token)
  | 283 -> (Pg_query_types.After:Pg_query_types.token)
  | 284 -> (Pg_query_types.Aggregate:Pg_query_types.token)
  | 285 -> (Pg_query_types.All:Pg_query_types.token)
  | 286 -> (Pg_query_types.Also:Pg_query_types.token)
  | 287 -> (Pg_query_types.Alter:Pg_query_types.token)
  | 288 -> (Pg_query_types.Always:Pg_query_types.token)
  | 289 -> (Pg_query_types.Analyse:Pg_query_types.token)
  | 290 -> (Pg_query_types.Analyze:Pg_query_types.token)
  | 291 -> (Pg_query_types.And:Pg_query_types.token)
  | 292 -> (Pg_query_types.Any:Pg_query_types.token)
  | 293 -> (Pg_query_types.Array:Pg_query_types.token)
  | 294 -> (Pg_query_types.As:Pg_query_types.token)
  | 295 -> (Pg_query_types.Asc:Pg_query_types.token)
  | 296 -> (Pg_query_types.Asensitive:Pg_query_types.token)
  | 297 -> (Pg_query_types.Assertion:Pg_query_types.token)
  | 298 -> (Pg_query_types.Assignment:Pg_query_types.token)
  | 299 -> (Pg_query_types.Asymmetric:Pg_query_types.token)
  | 300 -> (Pg_query_types.Atomic:Pg_query_types.token)
  | 301 -> (Pg_query_types.At:Pg_query_types.token)
  | 302 -> (Pg_query_types.Attach:Pg_query_types.token)
  | 303 -> (Pg_query_types.Attribute:Pg_query_types.token)
  | 304 -> (Pg_query_types.Authorization:Pg_query_types.token)
  | 305 -> (Pg_query_types.Backward:Pg_query_types.token)
  | 306 -> (Pg_query_types.Before:Pg_query_types.token)
  | 307 -> (Pg_query_types.Begin_p:Pg_query_types.token)
  | 308 -> (Pg_query_types.Between:Pg_query_types.token)
  | 309 -> (Pg_query_types.Bigint:Pg_query_types.token)
  | 310 -> (Pg_query_types.Binary:Pg_query_types.token)
  | 311 -> (Pg_query_types.Bit:Pg_query_types.token)
  | 312 -> (Pg_query_types.Boolean_p:Pg_query_types.token)
  | 313 -> (Pg_query_types.Both:Pg_query_types.token)
  | 314 -> (Pg_query_types.Breadth:Pg_query_types.token)
  | 315 -> (Pg_query_types.By:Pg_query_types.token)
  | 316 -> (Pg_query_types.Cache:Pg_query_types.token)
  | 317 -> (Pg_query_types.Call:Pg_query_types.token)
  | 318 -> (Pg_query_types.Called:Pg_query_types.token)
  | 319 -> (Pg_query_types.Cascade:Pg_query_types.token)
  | 320 -> (Pg_query_types.Cascaded:Pg_query_types.token)
  | 321 -> (Pg_query_types.Case:Pg_query_types.token)
  | 322 -> (Pg_query_types.Cast:Pg_query_types.token)
  | 323 -> (Pg_query_types.Catalog_p:Pg_query_types.token)
  | 324 -> (Pg_query_types.Chain:Pg_query_types.token)
  | 325 -> (Pg_query_types.Char_p:Pg_query_types.token)
  | 326 -> (Pg_query_types.Character:Pg_query_types.token)
  | 327 -> (Pg_query_types.Characteristics:Pg_query_types.token)
  | 328 -> (Pg_query_types.Check:Pg_query_types.token)
  | 329 -> (Pg_query_types.Checkpoint:Pg_query_types.token)
  | 330 -> (Pg_query_types.Class:Pg_query_types.token)
  | 331 -> (Pg_query_types.Close:Pg_query_types.token)
  | 332 -> (Pg_query_types.Cluster:Pg_query_types.token)
  | 333 -> (Pg_query_types.Coalesce:Pg_query_types.token)
  | 334 -> (Pg_query_types.Collate:Pg_query_types.token)
  | 335 -> (Pg_query_types.Collation:Pg_query_types.token)
  | 336 -> (Pg_query_types.Column:Pg_query_types.token)
  | 337 -> (Pg_query_types.Columns:Pg_query_types.token)
  | 338 -> (Pg_query_types.Comment:Pg_query_types.token)
  | 339 -> (Pg_query_types.Comments:Pg_query_types.token)
  | 340 -> (Pg_query_types.Commit:Pg_query_types.token)
  | 341 -> (Pg_query_types.Committed:Pg_query_types.token)
  | 342 -> (Pg_query_types.Compression:Pg_query_types.token)
  | 343 -> (Pg_query_types.Concurrently:Pg_query_types.token)
  | 344 -> (Pg_query_types.Configuration:Pg_query_types.token)
  | 345 -> (Pg_query_types.Conflict:Pg_query_types.token)
  | 346 -> (Pg_query_types.Connection:Pg_query_types.token)
  | 347 -> (Pg_query_types.Constraint:Pg_query_types.token)
  | 348 -> (Pg_query_types.Constraints:Pg_query_types.token)
  | 349 -> (Pg_query_types.Content_p:Pg_query_types.token)
  | 350 -> (Pg_query_types.Continue_p:Pg_query_types.token)
  | 351 -> (Pg_query_types.Conversion_p:Pg_query_types.token)
  | 352 -> (Pg_query_types.Copy:Pg_query_types.token)
  | 353 -> (Pg_query_types.Cost:Pg_query_types.token)
  | 354 -> (Pg_query_types.Create:Pg_query_types.token)
  | 355 -> (Pg_query_types.Cross:Pg_query_types.token)
  | 356 -> (Pg_query_types.Csv:Pg_query_types.token)
  | 357 -> (Pg_query_types.Cube:Pg_query_types.token)
  | 358 -> (Pg_query_types.Current_p:Pg_query_types.token)
  | 359 -> (Pg_query_types.Current_catalog:Pg_query_types.token)
  | 360 -> (Pg_query_types.Current_date:Pg_query_types.token)
  | 361 -> (Pg_query_types.Current_role:Pg_query_types.token)
  | 362 -> (Pg_query_types.Current_schema:Pg_query_types.token)
  | 363 -> (Pg_query_types.Current_time:Pg_query_types.token)
  | 364 -> (Pg_query_types.Current_timestamp:Pg_query_types.token)
  | 365 -> (Pg_query_types.Current_user:Pg_query_types.token)
  | 366 -> (Pg_query_types.Cursor:Pg_query_types.token)
  | 367 -> (Pg_query_types.Cycle:Pg_query_types.token)
  | 368 -> (Pg_query_types.Data_p:Pg_query_types.token)
  | 369 -> (Pg_query_types.Database:Pg_query_types.token)
  | 370 -> (Pg_query_types.Day_p:Pg_query_types.token)
  | 371 -> (Pg_query_types.Deallocate:Pg_query_types.token)
  | 372 -> (Pg_query_types.Dec:Pg_query_types.token)
  | 373 -> (Pg_query_types.Decimal_p:Pg_query_types.token)
  | 374 -> (Pg_query_types.Declare:Pg_query_types.token)
  | 375 -> (Pg_query_types.Default:Pg_query_types.token)
  | 376 -> (Pg_query_types.Defaults:Pg_query_types.token)
  | 377 -> (Pg_query_types.Deferrable:Pg_query_types.token)
  | 378 -> (Pg_query_types.Deferred:Pg_query_types.token)
  | 379 -> (Pg_query_types.Definer:Pg_query_types.token)
  | 380 -> (Pg_query_types.Delete_p:Pg_query_types.token)
  | 381 -> (Pg_query_types.Delimiter:Pg_query_types.token)
  | 382 -> (Pg_query_types.Delimiters:Pg_query_types.token)
  | 383 -> (Pg_query_types.Depends:Pg_query_types.token)
  | 384 -> (Pg_query_types.Depth:Pg_query_types.token)
  | 385 -> (Pg_query_types.Desc:Pg_query_types.token)
  | 386 -> (Pg_query_types.Detach:Pg_query_types.token)
  | 387 -> (Pg_query_types.Dictionary:Pg_query_types.token)
  | 388 -> (Pg_query_types.Disable_p:Pg_query_types.token)
  | 389 -> (Pg_query_types.Discard:Pg_query_types.token)
  | 390 -> (Pg_query_types.Distinct:Pg_query_types.token)
  | 391 -> (Pg_query_types.Do:Pg_query_types.token)
  | 392 -> (Pg_query_types.Document_p:Pg_query_types.token)
  | 393 -> (Pg_query_types.Domain_p:Pg_query_types.token)
  | 394 -> (Pg_query_types.Double_p:Pg_query_types.token)
  | 395 -> (Pg_query_types.Drop:Pg_query_types.token)
  | 396 -> (Pg_query_types.Each:Pg_query_types.token)
  | 397 -> (Pg_query_types.Else:Pg_query_types.token)
  | 398 -> (Pg_query_types.Enable_p:Pg_query_types.token)
  | 399 -> (Pg_query_types.Encoding:Pg_query_types.token)
  | 400 -> (Pg_query_types.Encrypted:Pg_query_types.token)
  | 401 -> (Pg_query_types.End_p:Pg_query_types.token)
  | 402 -> (Pg_query_types.Enum_p:Pg_query_types.token)
  | 403 -> (Pg_query_types.Escape:Pg_query_types.token)
  | 404 -> (Pg_query_types.Event:Pg_query_types.token)
  | 405 -> (Pg_query_types.Except:Pg_query_types.token)
  | 406 -> (Pg_query_types.Exclude:Pg_query_types.token)
  | 407 -> (Pg_query_types.Excluding:Pg_query_types.token)
  | 408 -> (Pg_query_types.Exclusive:Pg_query_types.token)
  | 409 -> (Pg_query_types.Execute:Pg_query_types.token)
  | 410 -> (Pg_query_types.Exists:Pg_query_types.token)
  | 411 -> (Pg_query_types.Explain:Pg_query_types.token)
  | 412 -> (Pg_query_types.Expression:Pg_query_types.token)
  | 413 -> (Pg_query_types.Extension:Pg_query_types.token)
  | 414 -> (Pg_query_types.External:Pg_query_types.token)
  | 415 -> (Pg_query_types.Extract:Pg_query_types.token)
  | 416 -> (Pg_query_types.False_p:Pg_query_types.token)
  | 417 -> (Pg_query_types.Family:Pg_query_types.token)
  | 418 -> (Pg_query_types.Fetch:Pg_query_types.token)
  | 419 -> (Pg_query_types.Filter:Pg_query_types.token)
  | 420 -> (Pg_query_types.Finalize:Pg_query_types.token)
  | 421 -> (Pg_query_types.First_p:Pg_query_types.token)
  | 422 -> (Pg_query_types.Float_p:Pg_query_types.token)
  | 423 -> (Pg_query_types.Following:Pg_query_types.token)
  | 424 -> (Pg_query_types.For:Pg_query_types.token)
  | 425 -> (Pg_query_types.Force:Pg_query_types.token)
  | 426 -> (Pg_query_types.Foreign:Pg_query_types.token)
  | 427 -> (Pg_query_types.Forward:Pg_query_types.token)
  | 428 -> (Pg_query_types.Freeze:Pg_query_types.token)
  | 429 -> (Pg_query_types.From:Pg_query_types.token)
  | 430 -> (Pg_query_types.Full:Pg_query_types.token)
  | 431 -> (Pg_query_types.Function:Pg_query_types.token)
  | 432 -> (Pg_query_types.Functions:Pg_query_types.token)
  | 433 -> (Pg_query_types.Generated:Pg_query_types.token)
  | 434 -> (Pg_query_types.Global:Pg_query_types.token)
  | 435 -> (Pg_query_types.Grant:Pg_query_types.token)
  | 436 -> (Pg_query_types.Granted:Pg_query_types.token)
  | 437 -> (Pg_query_types.Greatest:Pg_query_types.token)
  | 438 -> (Pg_query_types.Group_p:Pg_query_types.token)
  | 439 -> (Pg_query_types.Grouping:Pg_query_types.token)
  | 440 -> (Pg_query_types.Groups:Pg_query_types.token)
  | 441 -> (Pg_query_types.Handler:Pg_query_types.token)
  | 442 -> (Pg_query_types.Having:Pg_query_types.token)
  | 443 -> (Pg_query_types.Header_p:Pg_query_types.token)
  | 444 -> (Pg_query_types.Hold:Pg_query_types.token)
  | 445 -> (Pg_query_types.Hour_p:Pg_query_types.token)
  | 446 -> (Pg_query_types.Identity_p:Pg_query_types.token)
  | 447 -> (Pg_query_types.If_p:Pg_query_types.token)
  | 448 -> (Pg_query_types.Ilike:Pg_query_types.token)
  | 449 -> (Pg_query_types.Immediate:Pg_query_types.token)
  | 450 -> (Pg_query_types.Immutable:Pg_query_types.token)
  | 451 -> (Pg_query_types.Implicit_p:Pg_query_types.token)
  | 452 -> (Pg_query_types.Import_p:Pg_query_types.token)
  | 453 -> (Pg_query_types.In_p:Pg_query_types.token)
  | 454 -> (Pg_query_types.Include:Pg_query_types.token)
  | 455 -> (Pg_query_types.Including:Pg_query_types.token)
  | 456 -> (Pg_query_types.Increment:Pg_query_types.token)
  | 457 -> (Pg_query_types.Index:Pg_query_types.token)
  | 458 -> (Pg_query_types.Indexes:Pg_query_types.token)
  | 459 -> (Pg_query_types.Inherit:Pg_query_types.token)
  | 460 -> (Pg_query_types.Inherits:Pg_query_types.token)
  | 461 -> (Pg_query_types.Initially:Pg_query_types.token)
  | 462 -> (Pg_query_types.Inline_p:Pg_query_types.token)
  | 463 -> (Pg_query_types.Inner_p:Pg_query_types.token)
  | 464 -> (Pg_query_types.Inout:Pg_query_types.token)
  | 465 -> (Pg_query_types.Input_p:Pg_query_types.token)
  | 466 -> (Pg_query_types.Insensitive:Pg_query_types.token)
  | 467 -> (Pg_query_types.Insert:Pg_query_types.token)
  | 468 -> (Pg_query_types.Instead:Pg_query_types.token)
  | 469 -> (Pg_query_types.Int_p:Pg_query_types.token)
  | 470 -> (Pg_query_types.Integer:Pg_query_types.token)
  | 471 -> (Pg_query_types.Intersect:Pg_query_types.token)
  | 472 -> (Pg_query_types.Interval:Pg_query_types.token)
  | 473 -> (Pg_query_types.Into:Pg_query_types.token)
  | 474 -> (Pg_query_types.Invoker:Pg_query_types.token)
  | 475 -> (Pg_query_types.Is:Pg_query_types.token)
  | 476 -> (Pg_query_types.Isnull:Pg_query_types.token)
  | 477 -> (Pg_query_types.Isolation:Pg_query_types.token)
  | 478 -> (Pg_query_types.Join:Pg_query_types.token)
  | 479 -> (Pg_query_types.Key:Pg_query_types.token)
  | 480 -> (Pg_query_types.Label:Pg_query_types.token)
  | 481 -> (Pg_query_types.Language:Pg_query_types.token)
  | 482 -> (Pg_query_types.Large_p:Pg_query_types.token)
  | 483 -> (Pg_query_types.Last_p:Pg_query_types.token)
  | 484 -> (Pg_query_types.Lateral_p:Pg_query_types.token)
  | 485 -> (Pg_query_types.Leading:Pg_query_types.token)
  | 486 -> (Pg_query_types.Leakproof:Pg_query_types.token)
  | 487 -> (Pg_query_types.Least:Pg_query_types.token)
  | 488 -> (Pg_query_types.Left:Pg_query_types.token)
  | 489 -> (Pg_query_types.Level:Pg_query_types.token)
  | 490 -> (Pg_query_types.Like:Pg_query_types.token)
  | 491 -> (Pg_query_types.Limit:Pg_query_types.token)
  | 492 -> (Pg_query_types.Listen:Pg_query_types.token)
  | 493 -> (Pg_query_types.Load:Pg_query_types.token)
  | 494 -> (Pg_query_types.Local:Pg_query_types.token)
  | 495 -> (Pg_query_types.Localtime:Pg_query_types.token)
  | 496 -> (Pg_query_types.Localtimestamp:Pg_query_types.token)
  | 497 -> (Pg_query_types.Location:Pg_query_types.token)
  | 498 -> (Pg_query_types.Lock_p:Pg_query_types.token)
  | 499 -> (Pg_query_types.Locked:Pg_query_types.token)
  | 500 -> (Pg_query_types.Logged:Pg_query_types.token)
  | 501 -> (Pg_query_types.Mapping:Pg_query_types.token)
  | 502 -> (Pg_query_types.Match:Pg_query_types.token)
  | 503 -> (Pg_query_types.Matched:Pg_query_types.token)
  | 504 -> (Pg_query_types.Materialized:Pg_query_types.token)
  | 505 -> (Pg_query_types.Maxvalue:Pg_query_types.token)
  | 506 -> (Pg_query_types.Merge:Pg_query_types.token)
  | 507 -> (Pg_query_types.Method:Pg_query_types.token)
  | 508 -> (Pg_query_types.Minute_p:Pg_query_types.token)
  | 509 -> (Pg_query_types.Minvalue:Pg_query_types.token)
  | 510 -> (Pg_query_types.Mode:Pg_query_types.token)
  | 511 -> (Pg_query_types.Month_p:Pg_query_types.token)
  | 512 -> (Pg_query_types.Move:Pg_query_types.token)
  | 513 -> (Pg_query_types.Name_p:Pg_query_types.token)
  | 514 -> (Pg_query_types.Names:Pg_query_types.token)
  | 515 -> (Pg_query_types.National:Pg_query_types.token)
  | 516 -> (Pg_query_types.Natural:Pg_query_types.token)
  | 517 -> (Pg_query_types.Nchar:Pg_query_types.token)
  | 518 -> (Pg_query_types.New:Pg_query_types.token)
  | 519 -> (Pg_query_types.Next:Pg_query_types.token)
  | 520 -> (Pg_query_types.Nfc:Pg_query_types.token)
  | 521 -> (Pg_query_types.Nfd:Pg_query_types.token)
  | 522 -> (Pg_query_types.Nfkc:Pg_query_types.token)
  | 523 -> (Pg_query_types.Nfkd:Pg_query_types.token)
  | 524 -> (Pg_query_types.No:Pg_query_types.token)
  | 525 -> (Pg_query_types.None:Pg_query_types.token)
  | 526 -> (Pg_query_types.Normalize:Pg_query_types.token)
  | 527 -> (Pg_query_types.Normalized:Pg_query_types.token)
  | 528 -> (Pg_query_types.Not:Pg_query_types.token)
  | 529 -> (Pg_query_types.Nothing:Pg_query_types.token)
  | 530 -> (Pg_query_types.Notify:Pg_query_types.token)
  | 531 -> (Pg_query_types.Notnull:Pg_query_types.token)
  | 532 -> (Pg_query_types.Nowait:Pg_query_types.token)
  | 533 -> (Pg_query_types.Null_p:Pg_query_types.token)
  | 534 -> (Pg_query_types.Nullif:Pg_query_types.token)
  | 535 -> (Pg_query_types.Nulls_p:Pg_query_types.token)
  | 536 -> (Pg_query_types.Numeric:Pg_query_types.token)
  | 537 -> (Pg_query_types.Object_p:Pg_query_types.token)
  | 538 -> (Pg_query_types.Of:Pg_query_types.token)
  | 539 -> (Pg_query_types.Off:Pg_query_types.token)
  | 540 -> (Pg_query_types.Offset:Pg_query_types.token)
  | 541 -> (Pg_query_types.Oids:Pg_query_types.token)
  | 542 -> (Pg_query_types.Old:Pg_query_types.token)
  | 543 -> (Pg_query_types.On:Pg_query_types.token)
  | 544 -> (Pg_query_types.Only:Pg_query_types.token)
  | 545 -> (Pg_query_types.Operator:Pg_query_types.token)
  | 546 -> (Pg_query_types.Option:Pg_query_types.token)
  | 547 -> (Pg_query_types.Options:Pg_query_types.token)
  | 548 -> (Pg_query_types.Or:Pg_query_types.token)
  | 549 -> (Pg_query_types.Order:Pg_query_types.token)
  | 550 -> (Pg_query_types.Ordinality:Pg_query_types.token)
  | 551 -> (Pg_query_types.Others:Pg_query_types.token)
  | 552 -> (Pg_query_types.Out_p:Pg_query_types.token)
  | 553 -> (Pg_query_types.Outer_p:Pg_query_types.token)
  | 554 -> (Pg_query_types.Over:Pg_query_types.token)
  | 555 -> (Pg_query_types.Overlaps:Pg_query_types.token)
  | 556 -> (Pg_query_types.Overlay:Pg_query_types.token)
  | 557 -> (Pg_query_types.Overriding:Pg_query_types.token)
  | 558 -> (Pg_query_types.Owned:Pg_query_types.token)
  | 559 -> (Pg_query_types.Owner:Pg_query_types.token)
  | 560 -> (Pg_query_types.Parallel:Pg_query_types.token)
  | 561 -> (Pg_query_types.Parameter:Pg_query_types.token)
  | 562 -> (Pg_query_types.Parser:Pg_query_types.token)
  | 563 -> (Pg_query_types.Partial:Pg_query_types.token)
  | 564 -> (Pg_query_types.Partition:Pg_query_types.token)
  | 565 -> (Pg_query_types.Passing:Pg_query_types.token)
  | 566 -> (Pg_query_types.Password:Pg_query_types.token)
  | 567 -> (Pg_query_types.Placing:Pg_query_types.token)
  | 568 -> (Pg_query_types.Plans:Pg_query_types.token)
  | 569 -> (Pg_query_types.Policy:Pg_query_types.token)
  | 570 -> (Pg_query_types.Position:Pg_query_types.token)
  | 571 -> (Pg_query_types.Preceding:Pg_query_types.token)
  | 572 -> (Pg_query_types.Precision:Pg_query_types.token)
  | 573 -> (Pg_query_types.Preserve:Pg_query_types.token)
  | 574 -> (Pg_query_types.Prepare:Pg_query_types.token)
  | 575 -> (Pg_query_types.Prepared:Pg_query_types.token)
  | 576 -> (Pg_query_types.Primary:Pg_query_types.token)
  | 577 -> (Pg_query_types.Prior:Pg_query_types.token)
  | 578 -> (Pg_query_types.Privileges:Pg_query_types.token)
  | 579 -> (Pg_query_types.Procedural:Pg_query_types.token)
  | 580 -> (Pg_query_types.Procedure:Pg_query_types.token)
  | 581 -> (Pg_query_types.Procedures:Pg_query_types.token)
  | 582 -> (Pg_query_types.Program:Pg_query_types.token)
  | 583 -> (Pg_query_types.Publication:Pg_query_types.token)
  | 584 -> (Pg_query_types.Quote:Pg_query_types.token)
  | 585 -> (Pg_query_types.Range:Pg_query_types.token)
  | 586 -> (Pg_query_types.Read:Pg_query_types.token)
  | 587 -> (Pg_query_types.Real:Pg_query_types.token)
  | 588 -> (Pg_query_types.Reassign:Pg_query_types.token)
  | 589 -> (Pg_query_types.Recheck:Pg_query_types.token)
  | 590 -> (Pg_query_types.Recursive:Pg_query_types.token)
  | 591 -> (Pg_query_types.Ref_p:Pg_query_types.token)
  | 592 -> (Pg_query_types.References:Pg_query_types.token)
  | 593 -> (Pg_query_types.Referencing:Pg_query_types.token)
  | 594 -> (Pg_query_types.Refresh:Pg_query_types.token)
  | 595 -> (Pg_query_types.Reindex:Pg_query_types.token)
  | 596 -> (Pg_query_types.Relative_p:Pg_query_types.token)
  | 597 -> (Pg_query_types.Release:Pg_query_types.token)
  | 598 -> (Pg_query_types.Rename:Pg_query_types.token)
  | 599 -> (Pg_query_types.Repeatable:Pg_query_types.token)
  | 600 -> (Pg_query_types.Replace:Pg_query_types.token)
  | 601 -> (Pg_query_types.Replica:Pg_query_types.token)
  | 602 -> (Pg_query_types.Reset:Pg_query_types.token)
  | 603 -> (Pg_query_types.Restart:Pg_query_types.token)
  | 604 -> (Pg_query_types.Restrict:Pg_query_types.token)
  | 605 -> (Pg_query_types.Return:Pg_query_types.token)
  | 606 -> (Pg_query_types.Returning:Pg_query_types.token)
  | 607 -> (Pg_query_types.Returns:Pg_query_types.token)
  | 608 -> (Pg_query_types.Revoke:Pg_query_types.token)
  | 609 -> (Pg_query_types.Right:Pg_query_types.token)
  | 610 -> (Pg_query_types.Role:Pg_query_types.token)
  | 611 -> (Pg_query_types.Rollback:Pg_query_types.token)
  | 612 -> (Pg_query_types.Rollup:Pg_query_types.token)
  | 613 -> (Pg_query_types.Routine:Pg_query_types.token)
  | 614 -> (Pg_query_types.Routines:Pg_query_types.token)
  | 615 -> (Pg_query_types.Row:Pg_query_types.token)
  | 616 -> (Pg_query_types.Rows:Pg_query_types.token)
  | 617 -> (Pg_query_types.Rule:Pg_query_types.token)
  | 618 -> (Pg_query_types.Savepoint:Pg_query_types.token)
  | 619 -> (Pg_query_types.Schema:Pg_query_types.token)
  | 620 -> (Pg_query_types.Schemas:Pg_query_types.token)
  | 621 -> (Pg_query_types.Scroll:Pg_query_types.token)
  | 622 -> (Pg_query_types.Search:Pg_query_types.token)
  | 623 -> (Pg_query_types.Second_p:Pg_query_types.token)
  | 624 -> (Pg_query_types.Security:Pg_query_types.token)
  | 625 -> (Pg_query_types.Select:Pg_query_types.token)
  | 626 -> (Pg_query_types.Sequence:Pg_query_types.token)
  | 627 -> (Pg_query_types.Sequences:Pg_query_types.token)
  | 628 -> (Pg_query_types.Serializable:Pg_query_types.token)
  | 629 -> (Pg_query_types.Server:Pg_query_types.token)
  | 630 -> (Pg_query_types.Session:Pg_query_types.token)
  | 631 -> (Pg_query_types.Session_user:Pg_query_types.token)
  | 632 -> (Pg_query_types.Set:Pg_query_types.token)
  | 633 -> (Pg_query_types.Sets:Pg_query_types.token)
  | 634 -> (Pg_query_types.Setof:Pg_query_types.token)
  | 635 -> (Pg_query_types.Share:Pg_query_types.token)
  | 636 -> (Pg_query_types.Show:Pg_query_types.token)
  | 637 -> (Pg_query_types.Similar:Pg_query_types.token)
  | 638 -> (Pg_query_types.Simple:Pg_query_types.token)
  | 639 -> (Pg_query_types.Skip:Pg_query_types.token)
  | 640 -> (Pg_query_types.Smallint:Pg_query_types.token)
  | 641 -> (Pg_query_types.Snapshot:Pg_query_types.token)
  | 642 -> (Pg_query_types.Some:Pg_query_types.token)
  | 643 -> (Pg_query_types.Sql_p:Pg_query_types.token)
  | 644 -> (Pg_query_types.Stable:Pg_query_types.token)
  | 645 -> (Pg_query_types.Standalone_p:Pg_query_types.token)
  | 646 -> (Pg_query_types.Start:Pg_query_types.token)
  | 647 -> (Pg_query_types.Statement:Pg_query_types.token)
  | 648 -> (Pg_query_types.Statistics:Pg_query_types.token)
  | 649 -> (Pg_query_types.Stdin:Pg_query_types.token)
  | 650 -> (Pg_query_types.Stdout:Pg_query_types.token)
  | 651 -> (Pg_query_types.Storage:Pg_query_types.token)
  | 652 -> (Pg_query_types.Stored:Pg_query_types.token)
  | 653 -> (Pg_query_types.Strict_p:Pg_query_types.token)
  | 654 -> (Pg_query_types.Strip_p:Pg_query_types.token)
  | 655 -> (Pg_query_types.Subscription:Pg_query_types.token)
  | 656 -> (Pg_query_types.Substring:Pg_query_types.token)
  | 657 -> (Pg_query_types.Support:Pg_query_types.token)
  | 658 -> (Pg_query_types.Symmetric:Pg_query_types.token)
  | 659 -> (Pg_query_types.Sysid:Pg_query_types.token)
  | 660 -> (Pg_query_types.System_p:Pg_query_types.token)
  | 661 -> (Pg_query_types.Table:Pg_query_types.token)
  | 662 -> (Pg_query_types.Tables:Pg_query_types.token)
  | 663 -> (Pg_query_types.Tablesample:Pg_query_types.token)
  | 664 -> (Pg_query_types.Tablespace:Pg_query_types.token)
  | 665 -> (Pg_query_types.Temp:Pg_query_types.token)
  | 666 -> (Pg_query_types.Template:Pg_query_types.token)
  | 667 -> (Pg_query_types.Temporary:Pg_query_types.token)
  | 668 -> (Pg_query_types.Text_p:Pg_query_types.token)
  | 669 -> (Pg_query_types.Then:Pg_query_types.token)
  | 670 -> (Pg_query_types.Ties:Pg_query_types.token)
  | 671 -> (Pg_query_types.Time:Pg_query_types.token)
  | 672 -> (Pg_query_types.Timestamp:Pg_query_types.token)
  | 673 -> (Pg_query_types.To:Pg_query_types.token)
  | 674 -> (Pg_query_types.Trailing:Pg_query_types.token)
  | 675 -> (Pg_query_types.Transaction:Pg_query_types.token)
  | 676 -> (Pg_query_types.Transform:Pg_query_types.token)
  | 677 -> (Pg_query_types.Treat:Pg_query_types.token)
  | 678 -> (Pg_query_types.Trigger:Pg_query_types.token)
  | 679 -> (Pg_query_types.Trim:Pg_query_types.token)
  | 680 -> (Pg_query_types.True_p:Pg_query_types.token)
  | 681 -> (Pg_query_types.Truncate:Pg_query_types.token)
  | 682 -> (Pg_query_types.Trusted:Pg_query_types.token)
  | 683 -> (Pg_query_types.Type_p:Pg_query_types.token)
  | 684 -> (Pg_query_types.Types_p:Pg_query_types.token)
  | 685 -> (Pg_query_types.Uescape:Pg_query_types.token)
  | 686 -> (Pg_query_types.Unbounded:Pg_query_types.token)
  | 687 -> (Pg_query_types.Uncommitted:Pg_query_types.token)
  | 688 -> (Pg_query_types.Unencrypted:Pg_query_types.token)
  | 689 -> (Pg_query_types.Union:Pg_query_types.token)
  | 690 -> (Pg_query_types.Unique:Pg_query_types.token)
  | 691 -> (Pg_query_types.Unknown:Pg_query_types.token)
  | 692 -> (Pg_query_types.Unlisten:Pg_query_types.token)
  | 693 -> (Pg_query_types.Unlogged:Pg_query_types.token)
  | 694 -> (Pg_query_types.Until:Pg_query_types.token)
  | 695 -> (Pg_query_types.Update:Pg_query_types.token)
  | 696 -> (Pg_query_types.User:Pg_query_types.token)
  | 697 -> (Pg_query_types.Using:Pg_query_types.token)
  | 698 -> (Pg_query_types.Vacuum:Pg_query_types.token)
  | 699 -> (Pg_query_types.Valid:Pg_query_types.token)
  | 700 -> (Pg_query_types.Validate:Pg_query_types.token)
  | 701 -> (Pg_query_types.Validator:Pg_query_types.token)
  | 702 -> (Pg_query_types.Value_p:Pg_query_types.token)
  | 703 -> (Pg_query_types.Values:Pg_query_types.token)
  | 704 -> (Pg_query_types.Varchar:Pg_query_types.token)
  | 705 -> (Pg_query_types.Variadic:Pg_query_types.token)
  | 706 -> (Pg_query_types.Varying:Pg_query_types.token)
  | 707 -> (Pg_query_types.Verbose:Pg_query_types.token)
  | 708 -> (Pg_query_types.Version_p:Pg_query_types.token)
  | 709 -> (Pg_query_types.View:Pg_query_types.token)
  | 710 -> (Pg_query_types.Views:Pg_query_types.token)
  | 711 -> (Pg_query_types.Volatile:Pg_query_types.token)
  | 712 -> (Pg_query_types.When:Pg_query_types.token)
  | 713 -> (Pg_query_types.Where:Pg_query_types.token)
  | 714 -> (Pg_query_types.Whitespace_p:Pg_query_types.token)
  | 715 -> (Pg_query_types.Window:Pg_query_types.token)
  | 716 -> (Pg_query_types.With:Pg_query_types.token)
  | 717 -> (Pg_query_types.Within:Pg_query_types.token)
  | 718 -> (Pg_query_types.Without:Pg_query_types.token)
  | 719 -> (Pg_query_types.Work:Pg_query_types.token)
  | 720 -> (Pg_query_types.Wrapper:Pg_query_types.token)
  | 721 -> (Pg_query_types.Write:Pg_query_types.token)
  | 722 -> (Pg_query_types.Xml_p:Pg_query_types.token)
  | 723 -> (Pg_query_types.Xmlattributes:Pg_query_types.token)
  | 724 -> (Pg_query_types.Xmlconcat:Pg_query_types.token)
  | 725 -> (Pg_query_types.Xmlelement:Pg_query_types.token)
  | 726 -> (Pg_query_types.Xmlexists:Pg_query_types.token)
  | 727 -> (Pg_query_types.Xmlforest:Pg_query_types.token)
  | 728 -> (Pg_query_types.Xmlnamespaces:Pg_query_types.token)
  | 729 -> (Pg_query_types.Xmlparse:Pg_query_types.token)
  | 730 -> (Pg_query_types.Xmlpi:Pg_query_types.token)
  | 731 -> (Pg_query_types.Xmlroot:Pg_query_types.token)
  | 732 -> (Pg_query_types.Xmlserialize:Pg_query_types.token)
  | 733 -> (Pg_query_types.Xmltable:Pg_query_types.token)
  | 734 -> (Pg_query_types.Year_p:Pg_query_types.token)
  | 735 -> (Pg_query_types.Yes_p:Pg_query_types.token)
  | 736 -> (Pg_query_types.Zone:Pg_query_types.token)
  | 737 -> (Pg_query_types.Not_la:Pg_query_types.token)
  | 738 -> (Pg_query_types.Nulls_la:Pg_query_types.token)
  | 739 -> (Pg_query_types.With_la:Pg_query_types.token)
  | 740 -> (Pg_query_types.Mode_type_name:Pg_query_types.token)
  | 741 -> (Pg_query_types.Mode_plpgsql_expr:Pg_query_types.token)
  | 742 -> (Pg_query_types.Mode_plpgsql_assign1:Pg_query_types.token)
  | 743 -> (Pg_query_types.Mode_plpgsql_assign2:Pg_query_types.token)
  | 744 -> (Pg_query_types.Mode_plpgsql_assign3:Pg_query_types.token)
  | 745 -> (Pg_query_types.Uminus:Pg_query_types.token)
  | _ -> Pbrt.Decoder.malformed_variant "token"

let rec decode_keyword_kind d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.No_keyword:Pg_query_types.keyword_kind)
  | 1 -> (Pg_query_types.Unreserved_keyword:Pg_query_types.keyword_kind)
  | 2 -> (Pg_query_types.Col_name_keyword:Pg_query_types.keyword_kind)
  | 3 -> (Pg_query_types.Type_func_name_keyword:Pg_query_types.keyword_kind)
  | 4 -> (Pg_query_types.Reserved_keyword:Pg_query_types.keyword_kind)
  | _ -> Pbrt.Decoder.malformed_variant "keyword_kind"

let rec decode_scan_token d =
  let v = default_scan_token_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.start <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(scan_token), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.end_ <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(scan_token), field(2)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.token <- decode_token d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(scan_token), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.keyword_kind <- decode_keyword_kind d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(scan_token), field(5)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.start = v.start;
    Pg_query_types.end_ = v.end_;
    Pg_query_types.token = v.token;
    Pg_query_types.keyword_kind = v.keyword_kind;
  } : Pg_query_types.scan_token)

let rec decode_scan_result d =
  let v = default_scan_result_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.tokens <- List.rev v.tokens;
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.version <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(scan_result), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.tokens <- (decode_scan_token (Pbrt.Decoder.nested d)) :: v.tokens;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(scan_result), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Pg_query_types.version = v.version;
    Pg_query_types.tokens = v.tokens;
  } : Pg_query_types.scan_result)

let rec decode_set_quantifier d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Set_quantifier_undefined:Pg_query_types.set_quantifier)
  | 1 -> (Pg_query_types.Set_quantifier_default:Pg_query_types.set_quantifier)
  | 2 -> (Pg_query_types.Set_quantifier_all:Pg_query_types.set_quantifier)
  | 3 -> (Pg_query_types.Set_quantifier_distinct:Pg_query_types.set_quantifier)
  | _ -> Pbrt.Decoder.malformed_variant "set_quantifier"

let rec decode_table_like_option d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Table_like_option_undefined:Pg_query_types.table_like_option)
  | 1 -> (Pg_query_types.Create_table_like_comments:Pg_query_types.table_like_option)
  | 2 -> (Pg_query_types.Create_table_like_compression:Pg_query_types.table_like_option)
  | 3 -> (Pg_query_types.Create_table_like_constraints:Pg_query_types.table_like_option)
  | 4 -> (Pg_query_types.Create_table_like_defaults:Pg_query_types.table_like_option)
  | 5 -> (Pg_query_types.Create_table_like_generated:Pg_query_types.table_like_option)
  | 6 -> (Pg_query_types.Create_table_like_identity:Pg_query_types.table_like_option)
  | 7 -> (Pg_query_types.Create_table_like_indexes:Pg_query_types.table_like_option)
  | 8 -> (Pg_query_types.Create_table_like_statistics:Pg_query_types.table_like_option)
  | 9 -> (Pg_query_types.Create_table_like_storage:Pg_query_types.table_like_option)
  | 10 -> (Pg_query_types.Create_table_like_all:Pg_query_types.table_like_option)
  | _ -> Pbrt.Decoder.malformed_variant "table_like_option"

let rec decode_agg_strategy d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Agg_strategy_undefined:Pg_query_types.agg_strategy)
  | 1 -> (Pg_query_types.Agg_plain:Pg_query_types.agg_strategy)
  | 2 -> (Pg_query_types.Agg_sorted:Pg_query_types.agg_strategy)
  | 3 -> (Pg_query_types.Agg_hashed:Pg_query_types.agg_strategy)
  | 4 -> (Pg_query_types.Agg_mixed:Pg_query_types.agg_strategy)
  | _ -> Pbrt.Decoder.malformed_variant "agg_strategy"

let rec decode_set_op_cmd d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Set_op_cmd_undefined:Pg_query_types.set_op_cmd)
  | 1 -> (Pg_query_types.Setopcmd_intersect:Pg_query_types.set_op_cmd)
  | 2 -> (Pg_query_types.Setopcmd_intersect_all:Pg_query_types.set_op_cmd)
  | 3 -> (Pg_query_types.Setopcmd_except:Pg_query_types.set_op_cmd)
  | 4 -> (Pg_query_types.Setopcmd_except_all:Pg_query_types.set_op_cmd)
  | _ -> Pbrt.Decoder.malformed_variant "set_op_cmd"

let rec decode_set_op_strategy d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Set_op_strategy_undefined:Pg_query_types.set_op_strategy)
  | 1 -> (Pg_query_types.Setop_sorted:Pg_query_types.set_op_strategy)
  | 2 -> (Pg_query_types.Setop_hashed:Pg_query_types.set_op_strategy)
  | _ -> Pbrt.Decoder.malformed_variant "set_op_strategy"

let rec decode_lock_tuple_mode d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Pg_query_types.Lock_tuple_mode_undefined:Pg_query_types.lock_tuple_mode)
  | 1 -> (Pg_query_types.Lock_tuple_key_share:Pg_query_types.lock_tuple_mode)
  | 2 -> (Pg_query_types.Lock_tuple_share:Pg_query_types.lock_tuple_mode)
  | 3 -> (Pg_query_types.Lock_tuple_no_key_exclusive:Pg_query_types.lock_tuple_mode)
  | 4 -> (Pg_query_types.Lock_tuple_exclusive:Pg_query_types.lock_tuple_mode)
  | _ -> Pbrt.Decoder.malformed_variant "lock_tuple_mode"

let rec encode_param_kind (v:Pg_query_types.param_kind) encoder =
  match v with
  | Pg_query_types.Param_kind_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Param_extern -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Param_exec -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Param_sublink -> Pbrt.Encoder.int_as_varint 3 encoder
  | Pg_query_types.Param_multiexpr -> Pbrt.Encoder.int_as_varint 4 encoder

let rec encode_agg_split (v:Pg_query_types.agg_split) encoder =
  match v with
  | Pg_query_types.Agg_split_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Aggsplit_simple -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Aggsplit_initial_serial -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Aggsplit_final_deserial -> Pbrt.Encoder.int_as_varint 3 encoder

let rec encode_coercion_form (v:Pg_query_types.coercion_form) encoder =
  match v with
  | Pg_query_types.Coercion_form_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Coerce_explicit_call -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Coerce_explicit_cast -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Coerce_implicit_cast -> Pbrt.Encoder.int_as_varint 3 encoder
  | Pg_query_types.Coerce_sql_syntax -> Pbrt.Encoder.int_as_varint 4 encoder

let rec encode_bool_expr_type (v:Pg_query_types.bool_expr_type) encoder =
  match v with
  | Pg_query_types.Bool_expr_type_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.And_expr -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Or_expr -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Not_expr -> Pbrt.Encoder.int_as_varint 3 encoder

let rec encode_sub_link_type (v:Pg_query_types.sub_link_type) encoder =
  match v with
  | Pg_query_types.Sub_link_type_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Exists_sublink -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.All_sublink -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Any_sublink -> Pbrt.Encoder.int_as_varint 3 encoder
  | Pg_query_types.Rowcompare_sublink -> Pbrt.Encoder.int_as_varint 4 encoder
  | Pg_query_types.Expr_sublink -> Pbrt.Encoder.int_as_varint 5 encoder
  | Pg_query_types.Multiexpr_sublink -> Pbrt.Encoder.int_as_varint 6 encoder
  | Pg_query_types.Array_sublink -> Pbrt.Encoder.int_as_varint 7 encoder
  | Pg_query_types.Cte_sublink -> Pbrt.Encoder.int_as_varint 8 encoder

let rec encode_row_compare_type (v:Pg_query_types.row_compare_type) encoder =
  match v with
  | Pg_query_types.Row_compare_type_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Rowcompare_lt -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Rowcompare_le -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Rowcompare_eq -> Pbrt.Encoder.int_as_varint 3 encoder
  | Pg_query_types.Rowcompare_ge -> Pbrt.Encoder.int_as_varint 4 encoder
  | Pg_query_types.Rowcompare_gt -> Pbrt.Encoder.int_as_varint 5 encoder
  | Pg_query_types.Rowcompare_ne -> Pbrt.Encoder.int_as_varint 6 encoder

let rec encode_min_max_op (v:Pg_query_types.min_max_op) encoder =
  match v with
  | Pg_query_types.Min_max_op_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Is_greatest -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Is_least -> Pbrt.Encoder.int_as_varint 2 encoder

let rec encode_sqlvalue_function_op (v:Pg_query_types.sqlvalue_function_op) encoder =
  match v with
  | Pg_query_types.Sqlvalue_function_op_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Svfop_current_date -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Svfop_current_time -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Svfop_current_time_n -> Pbrt.Encoder.int_as_varint 3 encoder
  | Pg_query_types.Svfop_current_timestamp -> Pbrt.Encoder.int_as_varint 4 encoder
  | Pg_query_types.Svfop_current_timestamp_n -> Pbrt.Encoder.int_as_varint 5 encoder
  | Pg_query_types.Svfop_localtime -> Pbrt.Encoder.int_as_varint 6 encoder
  | Pg_query_types.Svfop_localtime_n -> Pbrt.Encoder.int_as_varint 7 encoder
  | Pg_query_types.Svfop_localtimestamp -> Pbrt.Encoder.int_as_varint 8 encoder
  | Pg_query_types.Svfop_localtimestamp_n -> Pbrt.Encoder.int_as_varint 9 encoder
  | Pg_query_types.Svfop_current_role -> Pbrt.Encoder.int_as_varint 10 encoder
  | Pg_query_types.Svfop_current_user -> Pbrt.Encoder.int_as_varint 11 encoder
  | Pg_query_types.Svfop_user -> Pbrt.Encoder.int_as_varint 12 encoder
  | Pg_query_types.Svfop_session_user -> Pbrt.Encoder.int_as_varint 13 encoder
  | Pg_query_types.Svfop_current_catalog -> Pbrt.Encoder.int_as_varint 14 encoder
  | Pg_query_types.Svfop_current_schema -> Pbrt.Encoder.int_as_varint 15 encoder

let rec encode_xml_expr_op (v:Pg_query_types.xml_expr_op) encoder =
  match v with
  | Pg_query_types.Xml_expr_op_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Is_xmlconcat -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Is_xmlelement -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Is_xmlforest -> Pbrt.Encoder.int_as_varint 3 encoder
  | Pg_query_types.Is_xmlparse -> Pbrt.Encoder.int_as_varint 4 encoder
  | Pg_query_types.Is_xmlpi -> Pbrt.Encoder.int_as_varint 5 encoder
  | Pg_query_types.Is_xmlroot -> Pbrt.Encoder.int_as_varint 6 encoder
  | Pg_query_types.Is_xmlserialize -> Pbrt.Encoder.int_as_varint 7 encoder
  | Pg_query_types.Is_document -> Pbrt.Encoder.int_as_varint 8 encoder

let rec encode_xml_option_type (v:Pg_query_types.xml_option_type) encoder =
  match v with
  | Pg_query_types.Xml_option_type_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Xmloption_document -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Xmloption_content -> Pbrt.Encoder.int_as_varint 2 encoder

let rec encode_null_test_type (v:Pg_query_types.null_test_type) encoder =
  match v with
  | Pg_query_types.Null_test_type_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Is_null -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Is_not_null -> Pbrt.Encoder.int_as_varint 2 encoder

let rec encode_bool_test_type (v:Pg_query_types.bool_test_type) encoder =
  match v with
  | Pg_query_types.Bool_test_type_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Is_true -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Is_not_true -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Is_false -> Pbrt.Encoder.int_as_varint 3 encoder
  | Pg_query_types.Is_not_false -> Pbrt.Encoder.int_as_varint 4 encoder
  | Pg_query_types.Is_unknown -> Pbrt.Encoder.int_as_varint 5 encoder
  | Pg_query_types.Is_not_unknown -> Pbrt.Encoder.int_as_varint 6 encoder

let rec encode_range_tbl_ref (v:Pg_query_types.range_tbl_ref) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.rtindex encoder;
  ()

let rec encode_join_type (v:Pg_query_types.join_type) encoder =
  match v with
  | Pg_query_types.Join_type_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Join_inner -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Join_left -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Join_full -> Pbrt.Encoder.int_as_varint 3 encoder
  | Pg_query_types.Join_right -> Pbrt.Encoder.int_as_varint 4 encoder
  | Pg_query_types.Join_semi -> Pbrt.Encoder.int_as_varint 5 encoder
  | Pg_query_types.Join_anti -> Pbrt.Encoder.int_as_varint 6 encoder
  | Pg_query_types.Join_unique_outer -> Pbrt.Encoder.int_as_varint 7 encoder
  | Pg_query_types.Join_unique_inner -> Pbrt.Encoder.int_as_varint 8 encoder

let rec encode_on_conflict_action (v:Pg_query_types.on_conflict_action) encoder =
  match v with
  | Pg_query_types.On_conflict_action_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Onconflict_none -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Onconflict_nothing -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Onconflict_update -> Pbrt.Encoder.int_as_varint 3 encoder

let rec encode_on_commit_action (v:Pg_query_types.on_commit_action) encoder =
  match v with
  | Pg_query_types.On_commit_action_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Oncommit_noop -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Oncommit_preserve_rows -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Oncommit_delete_rows -> Pbrt.Encoder.int_as_varint 3 encoder
  | Pg_query_types.Oncommit_drop -> Pbrt.Encoder.int_as_varint 4 encoder

let rec encode_cmd_type (v:Pg_query_types.cmd_type) encoder =
  match v with
  | Pg_query_types.Cmd_type_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Cmd_unknown -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Cmd_select -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Cmd_update -> Pbrt.Encoder.int_as_varint 3 encoder
  | Pg_query_types.Cmd_insert -> Pbrt.Encoder.int_as_varint 4 encoder
  | Pg_query_types.Cmd_delete -> Pbrt.Encoder.int_as_varint 5 encoder
  | Pg_query_types.Cmd_merge -> Pbrt.Encoder.int_as_varint 6 encoder
  | Pg_query_types.Cmd_utility -> Pbrt.Encoder.int_as_varint 7 encoder
  | Pg_query_types.Cmd_nothing -> Pbrt.Encoder.int_as_varint 8 encoder

let rec encode_overriding_kind (v:Pg_query_types.overriding_kind) encoder =
  match v with
  | Pg_query_types.Overriding_kind_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Overriding_not_set -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Overriding_user_value -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Overriding_system_value -> Pbrt.Encoder.int_as_varint 3 encoder

let rec encode_query_source (v:Pg_query_types.query_source) encoder =
  match v with
  | Pg_query_types.Query_source_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Qsrc_original -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Qsrc_parser -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Qsrc_instead_rule -> Pbrt.Encoder.int_as_varint 3 encoder
  | Pg_query_types.Qsrc_qual_instead_rule -> Pbrt.Encoder.int_as_varint 4 encoder
  | Pg_query_types.Qsrc_non_instead_rule -> Pbrt.Encoder.int_as_varint 5 encoder

let rec encode_limit_option (v:Pg_query_types.limit_option) encoder =
  match v with
  | Pg_query_types.Limit_option_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Limit_option_default -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Limit_option_count -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Limit_option_with_ties -> Pbrt.Encoder.int_as_varint 3 encoder

let rec encode_set_operation (v:Pg_query_types.set_operation) encoder =
  match v with
  | Pg_query_types.Set_operation_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Setop_none -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Setop_union -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Setop_intersect -> Pbrt.Encoder.int_as_varint 3 encoder
  | Pg_query_types.Setop_except -> Pbrt.Encoder.int_as_varint 4 encoder

let rec encode_object_type (v:Pg_query_types.object_type) encoder =
  match v with
  | Pg_query_types.Object_type_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Object_access_method -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Object_aggregate -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Object_amop -> Pbrt.Encoder.int_as_varint 3 encoder
  | Pg_query_types.Object_amproc -> Pbrt.Encoder.int_as_varint 4 encoder
  | Pg_query_types.Object_attribute -> Pbrt.Encoder.int_as_varint 5 encoder
  | Pg_query_types.Object_cast -> Pbrt.Encoder.int_as_varint 6 encoder
  | Pg_query_types.Object_column -> Pbrt.Encoder.int_as_varint 7 encoder
  | Pg_query_types.Object_collation -> Pbrt.Encoder.int_as_varint 8 encoder
  | Pg_query_types.Object_conversion -> Pbrt.Encoder.int_as_varint 9 encoder
  | Pg_query_types.Object_database -> Pbrt.Encoder.int_as_varint 10 encoder
  | Pg_query_types.Object_default -> Pbrt.Encoder.int_as_varint 11 encoder
  | Pg_query_types.Object_defacl -> Pbrt.Encoder.int_as_varint 12 encoder
  | Pg_query_types.Object_domain -> Pbrt.Encoder.int_as_varint 13 encoder
  | Pg_query_types.Object_domconstraint -> Pbrt.Encoder.int_as_varint 14 encoder
  | Pg_query_types.Object_event_trigger -> Pbrt.Encoder.int_as_varint 15 encoder
  | Pg_query_types.Object_extension -> Pbrt.Encoder.int_as_varint 16 encoder
  | Pg_query_types.Object_fdw -> Pbrt.Encoder.int_as_varint 17 encoder
  | Pg_query_types.Object_foreign_server -> Pbrt.Encoder.int_as_varint 18 encoder
  | Pg_query_types.Object_foreign_table -> Pbrt.Encoder.int_as_varint 19 encoder
  | Pg_query_types.Object_function -> Pbrt.Encoder.int_as_varint 20 encoder
  | Pg_query_types.Object_index -> Pbrt.Encoder.int_as_varint 21 encoder
  | Pg_query_types.Object_language -> Pbrt.Encoder.int_as_varint 22 encoder
  | Pg_query_types.Object_largeobject -> Pbrt.Encoder.int_as_varint 23 encoder
  | Pg_query_types.Object_matview -> Pbrt.Encoder.int_as_varint 24 encoder
  | Pg_query_types.Object_opclass -> Pbrt.Encoder.int_as_varint 25 encoder
  | Pg_query_types.Object_operator -> Pbrt.Encoder.int_as_varint 26 encoder
  | Pg_query_types.Object_opfamily -> Pbrt.Encoder.int_as_varint 27 encoder
  | Pg_query_types.Object_parameter_acl -> Pbrt.Encoder.int_as_varint 28 encoder
  | Pg_query_types.Object_policy -> Pbrt.Encoder.int_as_varint 29 encoder
  | Pg_query_types.Object_procedure -> Pbrt.Encoder.int_as_varint 30 encoder
  | Pg_query_types.Object_publication -> Pbrt.Encoder.int_as_varint 31 encoder
  | Pg_query_types.Object_publication_namespace -> Pbrt.Encoder.int_as_varint 32 encoder
  | Pg_query_types.Object_publication_rel -> Pbrt.Encoder.int_as_varint 33 encoder
  | Pg_query_types.Object_role -> Pbrt.Encoder.int_as_varint 34 encoder
  | Pg_query_types.Object_routine -> Pbrt.Encoder.int_as_varint 35 encoder
  | Pg_query_types.Object_rule -> Pbrt.Encoder.int_as_varint 36 encoder
  | Pg_query_types.Object_schema -> Pbrt.Encoder.int_as_varint 37 encoder
  | Pg_query_types.Object_sequence -> Pbrt.Encoder.int_as_varint 38 encoder
  | Pg_query_types.Object_subscription -> Pbrt.Encoder.int_as_varint 39 encoder
  | Pg_query_types.Object_statistic_ext -> Pbrt.Encoder.int_as_varint 40 encoder
  | Pg_query_types.Object_tabconstraint -> Pbrt.Encoder.int_as_varint 41 encoder
  | Pg_query_types.Object_table -> Pbrt.Encoder.int_as_varint 42 encoder
  | Pg_query_types.Object_tablespace -> Pbrt.Encoder.int_as_varint 43 encoder
  | Pg_query_types.Object_transform -> Pbrt.Encoder.int_as_varint 44 encoder
  | Pg_query_types.Object_trigger -> Pbrt.Encoder.int_as_varint 45 encoder
  | Pg_query_types.Object_tsconfiguration -> Pbrt.Encoder.int_as_varint 46 encoder
  | Pg_query_types.Object_tsdictionary -> Pbrt.Encoder.int_as_varint 47 encoder
  | Pg_query_types.Object_tsparser -> Pbrt.Encoder.int_as_varint 48 encoder
  | Pg_query_types.Object_tstemplate -> Pbrt.Encoder.int_as_varint 49 encoder
  | Pg_query_types.Object_type -> Pbrt.Encoder.int_as_varint 50 encoder
  | Pg_query_types.Object_user_mapping -> Pbrt.Encoder.int_as_varint 51 encoder
  | Pg_query_types.Object_view -> Pbrt.Encoder.int_as_varint 52 encoder

let rec encode_alter_table_type (v:Pg_query_types.alter_table_type) encoder =
  match v with
  | Pg_query_types.Alter_table_type_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.At_add_column -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.At_add_column_recurse -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.At_add_column_to_view -> Pbrt.Encoder.int_as_varint 3 encoder
  | Pg_query_types.At_column_default -> Pbrt.Encoder.int_as_varint 4 encoder
  | Pg_query_types.At_cooked_column_default -> Pbrt.Encoder.int_as_varint 5 encoder
  | Pg_query_types.At_drop_not_null -> Pbrt.Encoder.int_as_varint 6 encoder
  | Pg_query_types.At_set_not_null -> Pbrt.Encoder.int_as_varint 7 encoder
  | Pg_query_types.At_drop_expression -> Pbrt.Encoder.int_as_varint 8 encoder
  | Pg_query_types.At_check_not_null -> Pbrt.Encoder.int_as_varint 9 encoder
  | Pg_query_types.At_set_statistics -> Pbrt.Encoder.int_as_varint 10 encoder
  | Pg_query_types.At_set_options -> Pbrt.Encoder.int_as_varint 11 encoder
  | Pg_query_types.At_reset_options -> Pbrt.Encoder.int_as_varint 12 encoder
  | Pg_query_types.At_set_storage -> Pbrt.Encoder.int_as_varint 13 encoder
  | Pg_query_types.At_set_compression -> Pbrt.Encoder.int_as_varint 14 encoder
  | Pg_query_types.At_drop_column -> Pbrt.Encoder.int_as_varint 15 encoder
  | Pg_query_types.At_drop_column_recurse -> Pbrt.Encoder.int_as_varint 16 encoder
  | Pg_query_types.At_add_index -> Pbrt.Encoder.int_as_varint 17 encoder
  | Pg_query_types.At_re_add_index -> Pbrt.Encoder.int_as_varint 18 encoder
  | Pg_query_types.At_add_constraint -> Pbrt.Encoder.int_as_varint 19 encoder
  | Pg_query_types.At_add_constraint_recurse -> Pbrt.Encoder.int_as_varint 20 encoder
  | Pg_query_types.At_re_add_constraint -> Pbrt.Encoder.int_as_varint 21 encoder
  | Pg_query_types.At_re_add_domain_constraint -> Pbrt.Encoder.int_as_varint 22 encoder
  | Pg_query_types.At_alter_constraint -> Pbrt.Encoder.int_as_varint 23 encoder
  | Pg_query_types.At_validate_constraint -> Pbrt.Encoder.int_as_varint 24 encoder
  | Pg_query_types.At_validate_constraint_recurse -> Pbrt.Encoder.int_as_varint 25 encoder
  | Pg_query_types.At_add_index_constraint -> Pbrt.Encoder.int_as_varint 26 encoder
  | Pg_query_types.At_drop_constraint -> Pbrt.Encoder.int_as_varint 27 encoder
  | Pg_query_types.At_drop_constraint_recurse -> Pbrt.Encoder.int_as_varint 28 encoder
  | Pg_query_types.At_re_add_comment -> Pbrt.Encoder.int_as_varint 29 encoder
  | Pg_query_types.At_alter_column_type -> Pbrt.Encoder.int_as_varint 30 encoder
  | Pg_query_types.At_alter_column_generic_options -> Pbrt.Encoder.int_as_varint 31 encoder
  | Pg_query_types.At_change_owner -> Pbrt.Encoder.int_as_varint 32 encoder
  | Pg_query_types.At_cluster_on -> Pbrt.Encoder.int_as_varint 33 encoder
  | Pg_query_types.At_drop_cluster -> Pbrt.Encoder.int_as_varint 34 encoder
  | Pg_query_types.At_set_logged -> Pbrt.Encoder.int_as_varint 35 encoder
  | Pg_query_types.At_set_un_logged -> Pbrt.Encoder.int_as_varint 36 encoder
  | Pg_query_types.At_drop_oids -> Pbrt.Encoder.int_as_varint 37 encoder
  | Pg_query_types.At_set_access_method -> Pbrt.Encoder.int_as_varint 38 encoder
  | Pg_query_types.At_set_table_space -> Pbrt.Encoder.int_as_varint 39 encoder
  | Pg_query_types.At_set_rel_options -> Pbrt.Encoder.int_as_varint 40 encoder
  | Pg_query_types.At_reset_rel_options -> Pbrt.Encoder.int_as_varint 41 encoder
  | Pg_query_types.At_replace_rel_options -> Pbrt.Encoder.int_as_varint 42 encoder
  | Pg_query_types.At_enable_trig -> Pbrt.Encoder.int_as_varint 43 encoder
  | Pg_query_types.At_enable_always_trig -> Pbrt.Encoder.int_as_varint 44 encoder
  | Pg_query_types.At_enable_replica_trig -> Pbrt.Encoder.int_as_varint 45 encoder
  | Pg_query_types.At_disable_trig -> Pbrt.Encoder.int_as_varint 46 encoder
  | Pg_query_types.At_enable_trig_all -> Pbrt.Encoder.int_as_varint 47 encoder
  | Pg_query_types.At_disable_trig_all -> Pbrt.Encoder.int_as_varint 48 encoder
  | Pg_query_types.At_enable_trig_user -> Pbrt.Encoder.int_as_varint 49 encoder
  | Pg_query_types.At_disable_trig_user -> Pbrt.Encoder.int_as_varint 50 encoder
  | Pg_query_types.At_enable_rule -> Pbrt.Encoder.int_as_varint 51 encoder
  | Pg_query_types.At_enable_always_rule -> Pbrt.Encoder.int_as_varint 52 encoder
  | Pg_query_types.At_enable_replica_rule -> Pbrt.Encoder.int_as_varint 53 encoder
  | Pg_query_types.At_disable_rule -> Pbrt.Encoder.int_as_varint 54 encoder
  | Pg_query_types.At_add_inherit -> Pbrt.Encoder.int_as_varint 55 encoder
  | Pg_query_types.At_drop_inherit -> Pbrt.Encoder.int_as_varint 56 encoder
  | Pg_query_types.At_add_of -> Pbrt.Encoder.int_as_varint 57 encoder
  | Pg_query_types.At_drop_of -> Pbrt.Encoder.int_as_varint 58 encoder
  | Pg_query_types.At_replica_identity -> Pbrt.Encoder.int_as_varint 59 encoder
  | Pg_query_types.At_enable_row_security -> Pbrt.Encoder.int_as_varint 60 encoder
  | Pg_query_types.At_disable_row_security -> Pbrt.Encoder.int_as_varint 61 encoder
  | Pg_query_types.At_force_row_security -> Pbrt.Encoder.int_as_varint 62 encoder
  | Pg_query_types.At_no_force_row_security -> Pbrt.Encoder.int_as_varint 63 encoder
  | Pg_query_types.At_generic_options -> Pbrt.Encoder.int_as_varint 64 encoder
  | Pg_query_types.At_attach_partition -> Pbrt.Encoder.int_as_varint 65 encoder
  | Pg_query_types.At_detach_partition -> Pbrt.Encoder.int_as_varint 66 encoder
  | Pg_query_types.At_detach_partition_finalize -> Pbrt.Encoder.int_as_varint 67 encoder
  | Pg_query_types.At_add_identity -> Pbrt.Encoder.int_as_varint 68 encoder
  | Pg_query_types.At_set_identity -> Pbrt.Encoder.int_as_varint 69 encoder
  | Pg_query_types.At_drop_identity -> Pbrt.Encoder.int_as_varint 70 encoder
  | Pg_query_types.At_re_add_statistics -> Pbrt.Encoder.int_as_varint 71 encoder

let rec encode_role_spec_type (v:Pg_query_types.role_spec_type) encoder =
  match v with
  | Pg_query_types.Role_spec_type_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Rolespec_cstring -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Rolespec_current_role -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Rolespec_current_user -> Pbrt.Encoder.int_as_varint 3 encoder
  | Pg_query_types.Rolespec_session_user -> Pbrt.Encoder.int_as_varint 4 encoder
  | Pg_query_types.Rolespec_public -> Pbrt.Encoder.int_as_varint 5 encoder

let rec encode_role_spec (v:Pg_query_types.role_spec) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_role_spec_type v.Pg_query_types.roletype encoder;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.rolename encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

let rec encode_drop_behavior (v:Pg_query_types.drop_behavior) encoder =
  match v with
  | Pg_query_types.Drop_behavior_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Drop_restrict -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Drop_cascade -> Pbrt.Encoder.int_as_varint 2 encoder

let rec encode_grant_target_type (v:Pg_query_types.grant_target_type) encoder =
  match v with
  | Pg_query_types.Grant_target_type_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Acl_target_object -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Acl_target_all_in_schema -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Acl_target_defaults -> Pbrt.Encoder.int_as_varint 3 encoder

let rec encode_close_portal_stmt (v:Pg_query_types.close_portal_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.portalname encoder;
  ()

let rec encode_fetch_direction (v:Pg_query_types.fetch_direction) encoder =
  match v with
  | Pg_query_types.Fetch_direction_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Fetch_forward -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Fetch_backward -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Fetch_absolute -> Pbrt.Encoder.int_as_varint 3 encoder
  | Pg_query_types.Fetch_relative -> Pbrt.Encoder.int_as_varint 4 encoder

let rec encode_fetch_stmt (v:Pg_query_types.fetch_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_fetch_direction v.Pg_query_types.direction encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int64_as_varint v.Pg_query_types.how_many encoder;
  Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.portalname encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.ismove encoder;
  ()

let rec encode_notify_stmt (v:Pg_query_types.notify_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.conditionname encoder;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.payload encoder;
  ()

let rec encode_listen_stmt (v:Pg_query_types.listen_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.conditionname encoder;
  ()

let rec encode_unlisten_stmt (v:Pg_query_types.unlisten_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.conditionname encoder;
  ()

let rec encode_transaction_stmt_kind (v:Pg_query_types.transaction_stmt_kind) encoder =
  match v with
  | Pg_query_types.Transaction_stmt_kind_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Trans_stmt_begin -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Trans_stmt_start -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Trans_stmt_commit -> Pbrt.Encoder.int_as_varint 3 encoder
  | Pg_query_types.Trans_stmt_rollback -> Pbrt.Encoder.int_as_varint 4 encoder
  | Pg_query_types.Trans_stmt_savepoint -> Pbrt.Encoder.int_as_varint 5 encoder
  | Pg_query_types.Trans_stmt_release -> Pbrt.Encoder.int_as_varint 6 encoder
  | Pg_query_types.Trans_stmt_rollback_to -> Pbrt.Encoder.int_as_varint 7 encoder
  | Pg_query_types.Trans_stmt_prepare -> Pbrt.Encoder.int_as_varint 8 encoder
  | Pg_query_types.Trans_stmt_commit_prepared -> Pbrt.Encoder.int_as_varint 9 encoder
  | Pg_query_types.Trans_stmt_rollback_prepared -> Pbrt.Encoder.int_as_varint 10 encoder

let rec encode_view_check_option (v:Pg_query_types.view_check_option) encoder =
  match v with
  | Pg_query_types.View_check_option_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.No_check_option -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Local_check_option -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Cascaded_check_option -> Pbrt.Encoder.int_as_varint 3 encoder

let rec encode_load_stmt (v:Pg_query_types.load_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.filename encoder;
  ()

let rec encode_variable_set_kind (v:Pg_query_types.variable_set_kind) encoder =
  match v with
  | Pg_query_types.Variable_set_kind_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Var_set_value -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Var_set_default -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Var_set_current -> Pbrt.Encoder.int_as_varint 3 encoder
  | Pg_query_types.Var_set_multi -> Pbrt.Encoder.int_as_varint 4 encoder
  | Pg_query_types.Var_reset -> Pbrt.Encoder.int_as_varint 5 encoder
  | Pg_query_types.Var_reset_all -> Pbrt.Encoder.int_as_varint 6 encoder

let rec encode_variable_show_stmt (v:Pg_query_types.variable_show_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.name encoder;
  ()

let rec encode_discard_mode (v:Pg_query_types.discard_mode) encoder =
  match v with
  | Pg_query_types.Discard_mode_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Discard_all -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Discard_plans -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Discard_sequences -> Pbrt.Encoder.int_as_varint 3 encoder
  | Pg_query_types.Discard_temp -> Pbrt.Encoder.int_as_varint 4 encoder

let rec encode_discard_stmt (v:Pg_query_types.discard_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_discard_mode v.Pg_query_types.target encoder;
  ()

let rec encode_role_stmt_type (v:Pg_query_types.role_stmt_type) encoder =
  match v with
  | Pg_query_types.Role_stmt_type_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Rolestmt_role -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Rolestmt_user -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Rolestmt_group -> Pbrt.Encoder.int_as_varint 3 encoder

let rec encode_reindex_object_type (v:Pg_query_types.reindex_object_type) encoder =
  match v with
  | Pg_query_types.Reindex_object_type_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Reindex_object_index -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Reindex_object_table -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Reindex_object_schema -> Pbrt.Encoder.int_as_varint 3 encoder
  | Pg_query_types.Reindex_object_system -> Pbrt.Encoder.int_as_varint 4 encoder
  | Pg_query_types.Reindex_object_database -> Pbrt.Encoder.int_as_varint 5 encoder

let rec encode_alter_database_refresh_coll_stmt (v:Pg_query_types.alter_database_refresh_coll_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.dbname encoder;
  ()

let rec encode_coercion_context (v:Pg_query_types.coercion_context) encoder =
  match v with
  | Pg_query_types.Coercion_context_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Coercion_implicit -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Coercion_assignment -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Coercion_plpgsql -> Pbrt.Encoder.int_as_varint 3 encoder
  | Pg_query_types.Coercion_explicit -> Pbrt.Encoder.int_as_varint 4 encoder

let rec encode_deallocate_stmt (v:Pg_query_types.deallocate_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.name encoder;
  ()

let rec encode_drop_table_space_stmt (v:Pg_query_types.drop_table_space_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.tablespacename encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.missing_ok encoder;
  ()

let rec encode_string (v:Pg_query_types.string) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.sval encoder;
  ()

let rec encode_alter_tsconfig_type (v:Pg_query_types.alter_tsconfig_type) encoder =
  match v with
  | Pg_query_types.Alter_tsconfig_type_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Alter_tsconfig_add_mapping -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Alter_tsconfig_alter_mapping_for_token -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Alter_tsconfig_replace_dict -> Pbrt.Encoder.int_as_varint 3 encoder
  | Pg_query_types.Alter_tsconfig_replace_dict_for_token -> Pbrt.Encoder.int_as_varint 4 encoder
  | Pg_query_types.Alter_tsconfig_drop_mapping -> Pbrt.Encoder.int_as_varint 5 encoder

let rec encode_drop_user_mapping_stmt (v:Pg_query_types.drop_user_mapping_stmt) encoder = 
  begin match v.Pg_query_types.user with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_role_spec x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.servername encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.missing_ok encoder;
  ()

let rec encode_import_foreign_schema_type (v:Pg_query_types.import_foreign_schema_type) encoder =
  match v with
  | Pg_query_types.Import_foreign_schema_type_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Fdw_import_schema_all -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Fdw_import_schema_limit_to -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Fdw_import_schema_except -> Pbrt.Encoder.int_as_varint 3 encoder

let rec encode_alter_event_trig_stmt (v:Pg_query_types.alter_event_trig_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.trigname encoder;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.tgenabled encoder;
  ()

let rec encode_replica_identity_stmt (v:Pg_query_types.replica_identity_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.identity_type encoder;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.name encoder;
  ()

let rec encode_alter_publication_action (v:Pg_query_types.alter_publication_action) encoder =
  match v with
  | Pg_query_types.Alter_publication_action_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Ap_add_objects -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Ap_drop_objects -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Ap_set_objects -> Pbrt.Encoder.int_as_varint 3 encoder

let rec encode_alter_subscription_type (v:Pg_query_types.alter_subscription_type) encoder =
  match v with
  | Pg_query_types.Alter_subscription_type_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Alter_subscription_options -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Alter_subscription_connection -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Alter_subscription_set_publication -> Pbrt.Encoder.int_as_varint 3 encoder
  | Pg_query_types.Alter_subscription_add_publication -> Pbrt.Encoder.int_as_varint 4 encoder
  | Pg_query_types.Alter_subscription_drop_publication -> Pbrt.Encoder.int_as_varint 5 encoder
  | Pg_query_types.Alter_subscription_refresh -> Pbrt.Encoder.int_as_varint 6 encoder
  | Pg_query_types.Alter_subscription_enabled -> Pbrt.Encoder.int_as_varint 7 encoder
  | Pg_query_types.Alter_subscription_skip -> Pbrt.Encoder.int_as_varint 8 encoder

let rec encode_drop_subscription_stmt (v:Pg_query_types.drop_subscription_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.subname encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.missing_ok encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  encode_drop_behavior v.Pg_query_types.behavior encoder;
  ()

let rec encode_a_expr_kind (v:Pg_query_types.a_expr_kind) encoder =
  match v with
  | Pg_query_types.A_expr_kind_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Aexpr_op -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Aexpr_op_any -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Aexpr_op_all -> Pbrt.Encoder.int_as_varint 3 encoder
  | Pg_query_types.Aexpr_distinct -> Pbrt.Encoder.int_as_varint 4 encoder
  | Pg_query_types.Aexpr_not_distinct -> Pbrt.Encoder.int_as_varint 5 encoder
  | Pg_query_types.Aexpr_nullif -> Pbrt.Encoder.int_as_varint 6 encoder
  | Pg_query_types.Aexpr_in -> Pbrt.Encoder.int_as_varint 7 encoder
  | Pg_query_types.Aexpr_like -> Pbrt.Encoder.int_as_varint 8 encoder
  | Pg_query_types.Aexpr_ilike -> Pbrt.Encoder.int_as_varint 9 encoder
  | Pg_query_types.Aexpr_similar -> Pbrt.Encoder.int_as_varint 10 encoder
  | Pg_query_types.Aexpr_between -> Pbrt.Encoder.int_as_varint 11 encoder
  | Pg_query_types.Aexpr_not_between -> Pbrt.Encoder.int_as_varint 12 encoder
  | Pg_query_types.Aexpr_between_sym -> Pbrt.Encoder.int_as_varint 13 encoder
  | Pg_query_types.Aexpr_not_between_sym -> Pbrt.Encoder.int_as_varint 14 encoder

let rec encode_param_ref (v:Pg_query_types.param_ref) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.number encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

let rec encode_sort_by_dir (v:Pg_query_types.sort_by_dir) encoder =
  match v with
  | Pg_query_types.Sort_by_dir_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Sortby_default -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Sortby_asc -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Sortby_desc -> Pbrt.Encoder.int_as_varint 3 encoder
  | Pg_query_types.Sortby_using -> Pbrt.Encoder.int_as_varint 4 encoder

let rec encode_sort_by_nulls (v:Pg_query_types.sort_by_nulls) encoder =
  match v with
  | Pg_query_types.Sort_by_nulls_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Sortby_nulls_default -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Sortby_nulls_first -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Sortby_nulls_last -> Pbrt.Encoder.int_as_varint 3 encoder

let rec encode_constr_type (v:Pg_query_types.constr_type) encoder =
  match v with
  | Pg_query_types.Constr_type_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Constr_null -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Constr_notnull -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Constr_default -> Pbrt.Encoder.int_as_varint 3 encoder
  | Pg_query_types.Constr_identity -> Pbrt.Encoder.int_as_varint 4 encoder
  | Pg_query_types.Constr_generated -> Pbrt.Encoder.int_as_varint 5 encoder
  | Pg_query_types.Constr_check -> Pbrt.Encoder.int_as_varint 6 encoder
  | Pg_query_types.Constr_primary -> Pbrt.Encoder.int_as_varint 7 encoder
  | Pg_query_types.Constr_unique -> Pbrt.Encoder.int_as_varint 8 encoder
  | Pg_query_types.Constr_exclusion -> Pbrt.Encoder.int_as_varint 9 encoder
  | Pg_query_types.Constr_foreign -> Pbrt.Encoder.int_as_varint 10 encoder
  | Pg_query_types.Constr_attr_deferrable -> Pbrt.Encoder.int_as_varint 11 encoder
  | Pg_query_types.Constr_attr_not_deferrable -> Pbrt.Encoder.int_as_varint 12 encoder
  | Pg_query_types.Constr_attr_deferred -> Pbrt.Encoder.int_as_varint 13 encoder
  | Pg_query_types.Constr_attr_immediate -> Pbrt.Encoder.int_as_varint 14 encoder

let rec encode_def_elem_action (v:Pg_query_types.def_elem_action) encoder =
  match v with
  | Pg_query_types.Def_elem_action_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Defelem_unspec -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Defelem_set -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Defelem_add -> Pbrt.Encoder.int_as_varint 3 encoder
  | Pg_query_types.Defelem_drop -> Pbrt.Encoder.int_as_varint 4 encoder

let rec encode_rtekind (v:Pg_query_types.rtekind) encoder =
  match v with
  | Pg_query_types.Rtekind_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Rte_relation -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Rte_subquery -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Rte_join -> Pbrt.Encoder.int_as_varint 3 encoder
  | Pg_query_types.Rte_function -> Pbrt.Encoder.int_as_varint 4 encoder
  | Pg_query_types.Rte_tablefunc -> Pbrt.Encoder.int_as_varint 5 encoder
  | Pg_query_types.Rte_values -> Pbrt.Encoder.int_as_varint 6 encoder
  | Pg_query_types.Rte_cte -> Pbrt.Encoder.int_as_varint 7 encoder
  | Pg_query_types.Rte_namedtuplestore -> Pbrt.Encoder.int_as_varint 8 encoder
  | Pg_query_types.Rte_result -> Pbrt.Encoder.int_as_varint 9 encoder

let rec encode_wcokind (v:Pg_query_types.wcokind) encoder =
  match v with
  | Pg_query_types.Wcokind_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Wco_view_check -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Wco_rls_insert_check -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Wco_rls_update_check -> Pbrt.Encoder.int_as_varint 3 encoder
  | Pg_query_types.Wco_rls_conflict_check -> Pbrt.Encoder.int_as_varint 4 encoder
  | Pg_query_types.Wco_rls_merge_update_check -> Pbrt.Encoder.int_as_varint 5 encoder
  | Pg_query_types.Wco_rls_merge_delete_check -> Pbrt.Encoder.int_as_varint 6 encoder

let rec encode_sort_group_clause (v:Pg_query_types.sort_group_clause) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.tle_sort_group_ref encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.eqop encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.sortop encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.nulls_first encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.hashable encoder;
  ()

let rec encode_grouping_set_kind (v:Pg_query_types.grouping_set_kind) encoder =
  match v with
  | Pg_query_types.Grouping_set_kind_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Grouping_set_empty -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Grouping_set_simple -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Grouping_set_rollup -> Pbrt.Encoder.int_as_varint 3 encoder
  | Pg_query_types.Grouping_set_cube -> Pbrt.Encoder.int_as_varint 4 encoder
  | Pg_query_types.Grouping_set_sets -> Pbrt.Encoder.int_as_varint 5 encoder

let rec encode_function_parameter_mode (v:Pg_query_types.function_parameter_mode) encoder =
  match v with
  | Pg_query_types.Function_parameter_mode_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Func_param_in -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Func_param_out -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Func_param_inout -> Pbrt.Encoder.int_as_varint 3 encoder
  | Pg_query_types.Func_param_variadic -> Pbrt.Encoder.int_as_varint 4 encoder
  | Pg_query_types.Func_param_table -> Pbrt.Encoder.int_as_varint 5 encoder
  | Pg_query_types.Func_param_default -> Pbrt.Encoder.int_as_varint 6 encoder

let rec encode_lock_clause_strength (v:Pg_query_types.lock_clause_strength) encoder =
  match v with
  | Pg_query_types.Lock_clause_strength_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Lcs_none -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Lcs_forkeyshare -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Lcs_forshare -> Pbrt.Encoder.int_as_varint 3 encoder
  | Pg_query_types.Lcs_fornokeyupdate -> Pbrt.Encoder.int_as_varint 4 encoder
  | Pg_query_types.Lcs_forupdate -> Pbrt.Encoder.int_as_varint 5 encoder

let rec encode_lock_wait_policy (v:Pg_query_types.lock_wait_policy) encoder =
  match v with
  | Pg_query_types.Lock_wait_policy_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Lock_wait_block -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Lock_wait_skip -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Lock_wait_error -> Pbrt.Encoder.int_as_varint 3 encoder

let rec encode_row_mark_clause (v:Pg_query_types.row_mark_clause) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.rti encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  encode_lock_clause_strength v.Pg_query_types.strength encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  encode_lock_wait_policy v.Pg_query_types.wait_policy encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.pushed_down encoder;
  ()

let rec encode_ctematerialize (v:Pg_query_types.ctematerialize) encoder =
  match v with
  | Pg_query_types.Ctematerialize_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Ctematerialize_default -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Ctematerialize_always -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Ctematerialize_never -> Pbrt.Encoder.int_as_varint 3 encoder

let rec encode_trigger_transition (v:Pg_query_types.trigger_transition) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.name encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.is_new encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.is_table encoder;
  ()

let rec encode_partition_range_datum_kind (v:Pg_query_types.partition_range_datum_kind) encoder =
  match v with
  | Pg_query_types.Partition_range_datum_kind_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Partition_range_datum_minvalue -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Partition_range_datum_value -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Partition_range_datum_maxvalue -> Pbrt.Encoder.int_as_varint 3 encoder

let rec encode_publication_obj_spec_type (v:Pg_query_types.publication_obj_spec_type) encoder =
  match v with
  | Pg_query_types.Publication_obj_spec_type_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Publicationobj_table -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Publicationobj_tables_in_schema -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Publicationobj_tables_in_cur_schema -> Pbrt.Encoder.int_as_varint 3 encoder
  | Pg_query_types.Publicationobj_continuation -> Pbrt.Encoder.int_as_varint 4 encoder

let rec encode_inline_code_block (v:Pg_query_types.inline_code_block) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.source_text encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.lang_oid encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.lang_is_trusted encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.atomic encoder;
  ()

let rec encode_call_context (v:Pg_query_types.call_context) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.atomic encoder;
  ()

let rec encode_integer (v:Pg_query_types.integer) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.ival encoder;
  ()

let rec encode_float (v:Pg_query_types.float) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.fval encoder;
  ()

let rec encode_boolean (v:Pg_query_types.boolean) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.boolval encoder;
  ()

let rec encode_bit_string (v:Pg_query_types.bit_string) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.bsval encoder;
  ()

let rec encode_a_const_val (v:Pg_query_types.a_const_val) encoder = 
  begin match v with
  | Pg_query_types.Ival x ->
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_integer x) encoder;
  | Pg_query_types.Fval x ->
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_float x) encoder;
  | Pg_query_types.Boolval x ->
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_boolean x) encoder;
  | Pg_query_types.Sval x ->
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_string x) encoder;
  | Pg_query_types.Bsval x ->
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_bit_string x) encoder;
  end

and encode_a_const (v:Pg_query_types.a_const) encoder = 
  begin match v.Pg_query_types.val_ with
  | Pg_query_types.Ival x ->
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_integer x) encoder;
  | Pg_query_types.Fval x ->
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_float x) encoder;
  | Pg_query_types.Boolval x ->
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_boolean x) encoder;
  | Pg_query_types.Sval x ->
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_string x) encoder;
  | Pg_query_types.Bsval x ->
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_bit_string x) encoder;
  end;
  Pbrt.Encoder.key (10, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.isnull encoder;
  Pbrt.Encoder.key (11, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

let rec encode_raw_stmt (v:Pg_query_types.raw_stmt) encoder = 
  begin match v.Pg_query_types.stmt with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.stmt_location encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.stmt_len encoder;
  ()

and encode_node (v:Pg_query_types.node) encoder = 
  begin match v with
  | Pg_query_types.Alias x ->
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alias x) encoder;
  | Pg_query_types.Range_var x ->
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_var x) encoder;
  | Pg_query_types.Table_func x ->
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_table_func x) encoder;
  | Pg_query_types.Var x ->
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_var x) encoder;
  | Pg_query_types.Param x ->
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_param x) encoder;
  | Pg_query_types.Aggref x ->
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_aggref x) encoder;
  | Pg_query_types.Grouping_func x ->
    Pbrt.Encoder.key (7, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_grouping_func x) encoder;
  | Pg_query_types.Window_func x ->
    Pbrt.Encoder.key (8, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_window_func x) encoder;
  | Pg_query_types.Subscripting_ref x ->
    Pbrt.Encoder.key (9, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_subscripting_ref x) encoder;
  | Pg_query_types.Func_expr x ->
    Pbrt.Encoder.key (10, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_func_expr x) encoder;
  | Pg_query_types.Named_arg_expr x ->
    Pbrt.Encoder.key (11, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_named_arg_expr x) encoder;
  | Pg_query_types.Op_expr x ->
    Pbrt.Encoder.key (12, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_op_expr x) encoder;
  | Pg_query_types.Distinct_expr x ->
    Pbrt.Encoder.key (13, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_distinct_expr x) encoder;
  | Pg_query_types.Null_if_expr x ->
    Pbrt.Encoder.key (14, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_null_if_expr x) encoder;
  | Pg_query_types.Scalar_array_op_expr x ->
    Pbrt.Encoder.key (15, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_scalar_array_op_expr x) encoder;
  | Pg_query_types.Bool_expr x ->
    Pbrt.Encoder.key (16, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_bool_expr x) encoder;
  | Pg_query_types.Sub_link x ->
    Pbrt.Encoder.key (17, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_sub_link x) encoder;
  | Pg_query_types.Sub_plan x ->
    Pbrt.Encoder.key (18, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_sub_plan x) encoder;
  | Pg_query_types.Alternative_sub_plan x ->
    Pbrt.Encoder.key (19, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alternative_sub_plan x) encoder;
  | Pg_query_types.Field_select x ->
    Pbrt.Encoder.key (20, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_field_select x) encoder;
  | Pg_query_types.Field_store x ->
    Pbrt.Encoder.key (21, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_field_store x) encoder;
  | Pg_query_types.Relabel_type x ->
    Pbrt.Encoder.key (22, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_relabel_type x) encoder;
  | Pg_query_types.Coerce_via_io x ->
    Pbrt.Encoder.key (23, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_coerce_via_io x) encoder;
  | Pg_query_types.Array_coerce_expr x ->
    Pbrt.Encoder.key (24, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_array_coerce_expr x) encoder;
  | Pg_query_types.Convert_rowtype_expr x ->
    Pbrt.Encoder.key (25, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_convert_rowtype_expr x) encoder;
  | Pg_query_types.Collate_expr x ->
    Pbrt.Encoder.key (26, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_collate_expr x) encoder;
  | Pg_query_types.Case_expr x ->
    Pbrt.Encoder.key (27, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_case_expr x) encoder;
  | Pg_query_types.Case_when x ->
    Pbrt.Encoder.key (28, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_case_when x) encoder;
  | Pg_query_types.Case_test_expr x ->
    Pbrt.Encoder.key (29, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_case_test_expr x) encoder;
  | Pg_query_types.Array_expr x ->
    Pbrt.Encoder.key (30, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_array_expr x) encoder;
  | Pg_query_types.Row_expr x ->
    Pbrt.Encoder.key (31, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_row_expr x) encoder;
  | Pg_query_types.Row_compare_expr x ->
    Pbrt.Encoder.key (32, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_row_compare_expr x) encoder;
  | Pg_query_types.Coalesce_expr x ->
    Pbrt.Encoder.key (33, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_coalesce_expr x) encoder;
  | Pg_query_types.Min_max_expr x ->
    Pbrt.Encoder.key (34, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_min_max_expr x) encoder;
  | Pg_query_types.Sqlvalue_function x ->
    Pbrt.Encoder.key (35, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_sqlvalue_function x) encoder;
  | Pg_query_types.Xml_expr x ->
    Pbrt.Encoder.key (36, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_xml_expr x) encoder;
  | Pg_query_types.Null_test x ->
    Pbrt.Encoder.key (37, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_null_test x) encoder;
  | Pg_query_types.Boolean_test x ->
    Pbrt.Encoder.key (38, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_boolean_test x) encoder;
  | Pg_query_types.Coerce_to_domain x ->
    Pbrt.Encoder.key (39, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_coerce_to_domain x) encoder;
  | Pg_query_types.Coerce_to_domain_value x ->
    Pbrt.Encoder.key (40, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_coerce_to_domain_value x) encoder;
  | Pg_query_types.Set_to_default x ->
    Pbrt.Encoder.key (41, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_set_to_default x) encoder;
  | Pg_query_types.Current_of_expr x ->
    Pbrt.Encoder.key (42, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_current_of_expr x) encoder;
  | Pg_query_types.Next_value_expr x ->
    Pbrt.Encoder.key (43, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_next_value_expr x) encoder;
  | Pg_query_types.Inference_elem x ->
    Pbrt.Encoder.key (44, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_inference_elem x) encoder;
  | Pg_query_types.Target_entry x ->
    Pbrt.Encoder.key (45, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_target_entry x) encoder;
  | Pg_query_types.Range_tbl_ref x ->
    Pbrt.Encoder.key (46, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_tbl_ref x) encoder;
  | Pg_query_types.Join_expr x ->
    Pbrt.Encoder.key (47, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_join_expr x) encoder;
  | Pg_query_types.From_expr x ->
    Pbrt.Encoder.key (48, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_from_expr x) encoder;
  | Pg_query_types.On_conflict_expr x ->
    Pbrt.Encoder.key (49, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_on_conflict_expr x) encoder;
  | Pg_query_types.Into_clause x ->
    Pbrt.Encoder.key (50, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_into_clause x) encoder;
  | Pg_query_types.Merge_action x ->
    Pbrt.Encoder.key (51, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_merge_action x) encoder;
  | Pg_query_types.Raw_stmt x ->
    Pbrt.Encoder.key (52, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_raw_stmt x) encoder;
  | Pg_query_types.Query x ->
    Pbrt.Encoder.key (53, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_query x) encoder;
  | Pg_query_types.Insert_stmt x ->
    Pbrt.Encoder.key (54, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_insert_stmt x) encoder;
  | Pg_query_types.Delete_stmt x ->
    Pbrt.Encoder.key (55, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_delete_stmt x) encoder;
  | Pg_query_types.Update_stmt x ->
    Pbrt.Encoder.key (56, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_update_stmt x) encoder;
  | Pg_query_types.Merge_stmt x ->
    Pbrt.Encoder.key (57, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_merge_stmt x) encoder;
  | Pg_query_types.Select_stmt x ->
    Pbrt.Encoder.key (58, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_select_stmt x) encoder;
  | Pg_query_types.Return_stmt x ->
    Pbrt.Encoder.key (59, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_return_stmt x) encoder;
  | Pg_query_types.Plassign_stmt x ->
    Pbrt.Encoder.key (60, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_plassign_stmt x) encoder;
  | Pg_query_types.Alter_table_stmt x ->
    Pbrt.Encoder.key (61, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alter_table_stmt x) encoder;
  | Pg_query_types.Alter_table_cmd x ->
    Pbrt.Encoder.key (62, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alter_table_cmd x) encoder;
  | Pg_query_types.Alter_domain_stmt x ->
    Pbrt.Encoder.key (63, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alter_domain_stmt x) encoder;
  | Pg_query_types.Set_operation_stmt x ->
    Pbrt.Encoder.key (64, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_set_operation_stmt x) encoder;
  | Pg_query_types.Grant_stmt x ->
    Pbrt.Encoder.key (65, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_grant_stmt x) encoder;
  | Pg_query_types.Grant_role_stmt x ->
    Pbrt.Encoder.key (66, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_grant_role_stmt x) encoder;
  | Pg_query_types.Alter_default_privileges_stmt x ->
    Pbrt.Encoder.key (67, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alter_default_privileges_stmt x) encoder;
  | Pg_query_types.Close_portal_stmt x ->
    Pbrt.Encoder.key (68, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_close_portal_stmt x) encoder;
  | Pg_query_types.Cluster_stmt x ->
    Pbrt.Encoder.key (69, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_cluster_stmt x) encoder;
  | Pg_query_types.Copy_stmt x ->
    Pbrt.Encoder.key (70, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_copy_stmt x) encoder;
  | Pg_query_types.Create_stmt x ->
    Pbrt.Encoder.key (71, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_create_stmt x) encoder;
  | Pg_query_types.Define_stmt x ->
    Pbrt.Encoder.key (72, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_define_stmt x) encoder;
  | Pg_query_types.Drop_stmt x ->
    Pbrt.Encoder.key (73, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_drop_stmt x) encoder;
  | Pg_query_types.Truncate_stmt x ->
    Pbrt.Encoder.key (74, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_truncate_stmt x) encoder;
  | Pg_query_types.Comment_stmt x ->
    Pbrt.Encoder.key (75, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_comment_stmt x) encoder;
  | Pg_query_types.Fetch_stmt x ->
    Pbrt.Encoder.key (76, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_fetch_stmt x) encoder;
  | Pg_query_types.Index_stmt x ->
    Pbrt.Encoder.key (77, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_index_stmt x) encoder;
  | Pg_query_types.Create_function_stmt x ->
    Pbrt.Encoder.key (78, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_create_function_stmt x) encoder;
  | Pg_query_types.Alter_function_stmt x ->
    Pbrt.Encoder.key (79, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alter_function_stmt x) encoder;
  | Pg_query_types.Do_stmt x ->
    Pbrt.Encoder.key (80, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_do_stmt x) encoder;
  | Pg_query_types.Rename_stmt x ->
    Pbrt.Encoder.key (81, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_rename_stmt x) encoder;
  | Pg_query_types.Rule_stmt x ->
    Pbrt.Encoder.key (82, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_rule_stmt x) encoder;
  | Pg_query_types.Notify_stmt x ->
    Pbrt.Encoder.key (83, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_notify_stmt x) encoder;
  | Pg_query_types.Listen_stmt x ->
    Pbrt.Encoder.key (84, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_listen_stmt x) encoder;
  | Pg_query_types.Unlisten_stmt x ->
    Pbrt.Encoder.key (85, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_unlisten_stmt x) encoder;
  | Pg_query_types.Transaction_stmt x ->
    Pbrt.Encoder.key (86, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_transaction_stmt x) encoder;
  | Pg_query_types.View_stmt x ->
    Pbrt.Encoder.key (87, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_view_stmt x) encoder;
  | Pg_query_types.Load_stmt x ->
    Pbrt.Encoder.key (88, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_load_stmt x) encoder;
  | Pg_query_types.Create_domain_stmt x ->
    Pbrt.Encoder.key (89, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_create_domain_stmt x) encoder;
  | Pg_query_types.Createdb_stmt x ->
    Pbrt.Encoder.key (90, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_createdb_stmt x) encoder;
  | Pg_query_types.Dropdb_stmt x ->
    Pbrt.Encoder.key (91, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_dropdb_stmt x) encoder;
  | Pg_query_types.Vacuum_stmt x ->
    Pbrt.Encoder.key (92, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_vacuum_stmt x) encoder;
  | Pg_query_types.Explain_stmt x ->
    Pbrt.Encoder.key (93, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_explain_stmt x) encoder;
  | Pg_query_types.Create_table_as_stmt x ->
    Pbrt.Encoder.key (94, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_create_table_as_stmt x) encoder;
  | Pg_query_types.Create_seq_stmt x ->
    Pbrt.Encoder.key (95, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_create_seq_stmt x) encoder;
  | Pg_query_types.Alter_seq_stmt x ->
    Pbrt.Encoder.key (96, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alter_seq_stmt x) encoder;
  | Pg_query_types.Variable_set_stmt x ->
    Pbrt.Encoder.key (97, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_variable_set_stmt x) encoder;
  | Pg_query_types.Variable_show_stmt x ->
    Pbrt.Encoder.key (98, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_variable_show_stmt x) encoder;
  | Pg_query_types.Discard_stmt x ->
    Pbrt.Encoder.key (99, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_discard_stmt x) encoder;
  | Pg_query_types.Create_trig_stmt x ->
    Pbrt.Encoder.key (100, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_create_trig_stmt x) encoder;
  | Pg_query_types.Create_plang_stmt x ->
    Pbrt.Encoder.key (101, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_create_plang_stmt x) encoder;
  | Pg_query_types.Create_role_stmt x ->
    Pbrt.Encoder.key (102, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_create_role_stmt x) encoder;
  | Pg_query_types.Alter_role_stmt x ->
    Pbrt.Encoder.key (103, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alter_role_stmt x) encoder;
  | Pg_query_types.Drop_role_stmt x ->
    Pbrt.Encoder.key (104, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_drop_role_stmt x) encoder;
  | Pg_query_types.Lock_stmt x ->
    Pbrt.Encoder.key (105, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_lock_stmt x) encoder;
  | Pg_query_types.Constraints_set_stmt x ->
    Pbrt.Encoder.key (106, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_constraints_set_stmt x) encoder;
  | Pg_query_types.Reindex_stmt x ->
    Pbrt.Encoder.key (107, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_reindex_stmt x) encoder;
  | Pg_query_types.Check_point_stmt ->
    Pbrt.Encoder.key (108, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Pg_query_types.Create_schema_stmt x ->
    Pbrt.Encoder.key (109, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_create_schema_stmt x) encoder;
  | Pg_query_types.Alter_database_stmt x ->
    Pbrt.Encoder.key (110, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alter_database_stmt x) encoder;
  | Pg_query_types.Alter_database_refresh_coll_stmt x ->
    Pbrt.Encoder.key (111, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alter_database_refresh_coll_stmt x) encoder;
  | Pg_query_types.Alter_database_set_stmt x ->
    Pbrt.Encoder.key (112, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alter_database_set_stmt x) encoder;
  | Pg_query_types.Alter_role_set_stmt x ->
    Pbrt.Encoder.key (113, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alter_role_set_stmt x) encoder;
  | Pg_query_types.Create_conversion_stmt x ->
    Pbrt.Encoder.key (114, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_create_conversion_stmt x) encoder;
  | Pg_query_types.Create_cast_stmt x ->
    Pbrt.Encoder.key (115, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_create_cast_stmt x) encoder;
  | Pg_query_types.Create_op_class_stmt x ->
    Pbrt.Encoder.key (116, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_create_op_class_stmt x) encoder;
  | Pg_query_types.Create_op_family_stmt x ->
    Pbrt.Encoder.key (117, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_create_op_family_stmt x) encoder;
  | Pg_query_types.Alter_op_family_stmt x ->
    Pbrt.Encoder.key (118, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alter_op_family_stmt x) encoder;
  | Pg_query_types.Prepare_stmt x ->
    Pbrt.Encoder.key (119, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_prepare_stmt x) encoder;
  | Pg_query_types.Execute_stmt x ->
    Pbrt.Encoder.key (120, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_execute_stmt x) encoder;
  | Pg_query_types.Deallocate_stmt x ->
    Pbrt.Encoder.key (121, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_deallocate_stmt x) encoder;
  | Pg_query_types.Declare_cursor_stmt x ->
    Pbrt.Encoder.key (122, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_declare_cursor_stmt x) encoder;
  | Pg_query_types.Create_table_space_stmt x ->
    Pbrt.Encoder.key (123, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_create_table_space_stmt x) encoder;
  | Pg_query_types.Drop_table_space_stmt x ->
    Pbrt.Encoder.key (124, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_drop_table_space_stmt x) encoder;
  | Pg_query_types.Alter_object_depends_stmt x ->
    Pbrt.Encoder.key (125, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alter_object_depends_stmt x) encoder;
  | Pg_query_types.Alter_object_schema_stmt x ->
    Pbrt.Encoder.key (126, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alter_object_schema_stmt x) encoder;
  | Pg_query_types.Alter_owner_stmt x ->
    Pbrt.Encoder.key (127, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alter_owner_stmt x) encoder;
  | Pg_query_types.Alter_operator_stmt x ->
    Pbrt.Encoder.key (128, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alter_operator_stmt x) encoder;
  | Pg_query_types.Alter_type_stmt x ->
    Pbrt.Encoder.key (129, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alter_type_stmt x) encoder;
  | Pg_query_types.Drop_owned_stmt x ->
    Pbrt.Encoder.key (130, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_drop_owned_stmt x) encoder;
  | Pg_query_types.Reassign_owned_stmt x ->
    Pbrt.Encoder.key (131, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_reassign_owned_stmt x) encoder;
  | Pg_query_types.Composite_type_stmt x ->
    Pbrt.Encoder.key (132, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_composite_type_stmt x) encoder;
  | Pg_query_types.Create_enum_stmt x ->
    Pbrt.Encoder.key (133, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_create_enum_stmt x) encoder;
  | Pg_query_types.Create_range_stmt x ->
    Pbrt.Encoder.key (134, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_create_range_stmt x) encoder;
  | Pg_query_types.Alter_enum_stmt x ->
    Pbrt.Encoder.key (135, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alter_enum_stmt x) encoder;
  | Pg_query_types.Alter_tsdictionary_stmt x ->
    Pbrt.Encoder.key (136, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alter_tsdictionary_stmt x) encoder;
  | Pg_query_types.Alter_tsconfiguration_stmt x ->
    Pbrt.Encoder.key (137, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alter_tsconfiguration_stmt x) encoder;
  | Pg_query_types.Create_fdw_stmt x ->
    Pbrt.Encoder.key (138, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_create_fdw_stmt x) encoder;
  | Pg_query_types.Alter_fdw_stmt x ->
    Pbrt.Encoder.key (139, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alter_fdw_stmt x) encoder;
  | Pg_query_types.Create_foreign_server_stmt x ->
    Pbrt.Encoder.key (140, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_create_foreign_server_stmt x) encoder;
  | Pg_query_types.Alter_foreign_server_stmt x ->
    Pbrt.Encoder.key (141, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alter_foreign_server_stmt x) encoder;
  | Pg_query_types.Create_user_mapping_stmt x ->
    Pbrt.Encoder.key (142, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_create_user_mapping_stmt x) encoder;
  | Pg_query_types.Alter_user_mapping_stmt x ->
    Pbrt.Encoder.key (143, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alter_user_mapping_stmt x) encoder;
  | Pg_query_types.Drop_user_mapping_stmt x ->
    Pbrt.Encoder.key (144, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_drop_user_mapping_stmt x) encoder;
  | Pg_query_types.Alter_table_space_options_stmt x ->
    Pbrt.Encoder.key (145, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alter_table_space_options_stmt x) encoder;
  | Pg_query_types.Alter_table_move_all_stmt x ->
    Pbrt.Encoder.key (146, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alter_table_move_all_stmt x) encoder;
  | Pg_query_types.Sec_label_stmt x ->
    Pbrt.Encoder.key (147, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_sec_label_stmt x) encoder;
  | Pg_query_types.Create_foreign_table_stmt x ->
    Pbrt.Encoder.key (148, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_create_foreign_table_stmt x) encoder;
  | Pg_query_types.Import_foreign_schema_stmt x ->
    Pbrt.Encoder.key (149, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_import_foreign_schema_stmt x) encoder;
  | Pg_query_types.Create_extension_stmt x ->
    Pbrt.Encoder.key (150, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_create_extension_stmt x) encoder;
  | Pg_query_types.Alter_extension_stmt x ->
    Pbrt.Encoder.key (151, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alter_extension_stmt x) encoder;
  | Pg_query_types.Alter_extension_contents_stmt x ->
    Pbrt.Encoder.key (152, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alter_extension_contents_stmt x) encoder;
  | Pg_query_types.Create_event_trig_stmt x ->
    Pbrt.Encoder.key (153, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_create_event_trig_stmt x) encoder;
  | Pg_query_types.Alter_event_trig_stmt x ->
    Pbrt.Encoder.key (154, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alter_event_trig_stmt x) encoder;
  | Pg_query_types.Refresh_mat_view_stmt x ->
    Pbrt.Encoder.key (155, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_refresh_mat_view_stmt x) encoder;
  | Pg_query_types.Replica_identity_stmt x ->
    Pbrt.Encoder.key (156, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_replica_identity_stmt x) encoder;
  | Pg_query_types.Alter_system_stmt x ->
    Pbrt.Encoder.key (157, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alter_system_stmt x) encoder;
  | Pg_query_types.Create_policy_stmt x ->
    Pbrt.Encoder.key (158, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_create_policy_stmt x) encoder;
  | Pg_query_types.Alter_policy_stmt x ->
    Pbrt.Encoder.key (159, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alter_policy_stmt x) encoder;
  | Pg_query_types.Create_transform_stmt x ->
    Pbrt.Encoder.key (160, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_create_transform_stmt x) encoder;
  | Pg_query_types.Create_am_stmt x ->
    Pbrt.Encoder.key (161, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_create_am_stmt x) encoder;
  | Pg_query_types.Create_publication_stmt x ->
    Pbrt.Encoder.key (162, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_create_publication_stmt x) encoder;
  | Pg_query_types.Alter_publication_stmt x ->
    Pbrt.Encoder.key (163, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alter_publication_stmt x) encoder;
  | Pg_query_types.Create_subscription_stmt x ->
    Pbrt.Encoder.key (164, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_create_subscription_stmt x) encoder;
  | Pg_query_types.Alter_subscription_stmt x ->
    Pbrt.Encoder.key (165, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alter_subscription_stmt x) encoder;
  | Pg_query_types.Drop_subscription_stmt x ->
    Pbrt.Encoder.key (166, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_drop_subscription_stmt x) encoder;
  | Pg_query_types.Create_stats_stmt x ->
    Pbrt.Encoder.key (167, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_create_stats_stmt x) encoder;
  | Pg_query_types.Alter_collation_stmt x ->
    Pbrt.Encoder.key (168, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alter_collation_stmt x) encoder;
  | Pg_query_types.Call_stmt x ->
    Pbrt.Encoder.key (169, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_call_stmt x) encoder;
  | Pg_query_types.Alter_stats_stmt x ->
    Pbrt.Encoder.key (170, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alter_stats_stmt x) encoder;
  | Pg_query_types.A_expr x ->
    Pbrt.Encoder.key (171, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_a_expr x) encoder;
  | Pg_query_types.Column_ref x ->
    Pbrt.Encoder.key (172, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_column_ref x) encoder;
  | Pg_query_types.Param_ref x ->
    Pbrt.Encoder.key (173, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_param_ref x) encoder;
  | Pg_query_types.Func_call x ->
    Pbrt.Encoder.key (174, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_func_call x) encoder;
  | Pg_query_types.A_star ->
    Pbrt.Encoder.key (175, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Pg_query_types.A_indices x ->
    Pbrt.Encoder.key (176, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_a_indices x) encoder;
  | Pg_query_types.A_indirection x ->
    Pbrt.Encoder.key (177, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_a_indirection x) encoder;
  | Pg_query_types.A_array_expr x ->
    Pbrt.Encoder.key (178, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_a_array_expr x) encoder;
  | Pg_query_types.Res_target x ->
    Pbrt.Encoder.key (179, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_res_target x) encoder;
  | Pg_query_types.Multi_assign_ref x ->
    Pbrt.Encoder.key (180, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_multi_assign_ref x) encoder;
  | Pg_query_types.Type_cast x ->
    Pbrt.Encoder.key (181, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_type_cast x) encoder;
  | Pg_query_types.Collate_clause x ->
    Pbrt.Encoder.key (182, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_collate_clause x) encoder;
  | Pg_query_types.Sort_by x ->
    Pbrt.Encoder.key (183, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_sort_by x) encoder;
  | Pg_query_types.Window_def x ->
    Pbrt.Encoder.key (184, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_window_def x) encoder;
  | Pg_query_types.Range_subselect x ->
    Pbrt.Encoder.key (185, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_subselect x) encoder;
  | Pg_query_types.Range_function x ->
    Pbrt.Encoder.key (186, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_function x) encoder;
  | Pg_query_types.Range_table_sample x ->
    Pbrt.Encoder.key (187, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_table_sample x) encoder;
  | Pg_query_types.Range_table_func x ->
    Pbrt.Encoder.key (188, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_table_func x) encoder;
  | Pg_query_types.Range_table_func_col x ->
    Pbrt.Encoder.key (189, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_table_func_col x) encoder;
  | Pg_query_types.Type_name x ->
    Pbrt.Encoder.key (190, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_type_name x) encoder;
  | Pg_query_types.Column_def x ->
    Pbrt.Encoder.key (191, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_column_def x) encoder;
  | Pg_query_types.Index_elem x ->
    Pbrt.Encoder.key (192, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_index_elem x) encoder;
  | Pg_query_types.Stats_elem x ->
    Pbrt.Encoder.key (193, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_stats_elem x) encoder;
  | Pg_query_types.Constraint x ->
    Pbrt.Encoder.key (194, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_constraint_ x) encoder;
  | Pg_query_types.Def_elem x ->
    Pbrt.Encoder.key (195, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_def_elem x) encoder;
  | Pg_query_types.Range_tbl_entry x ->
    Pbrt.Encoder.key (196, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_tbl_entry x) encoder;
  | Pg_query_types.Range_tbl_function x ->
    Pbrt.Encoder.key (197, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_tbl_function x) encoder;
  | Pg_query_types.Table_sample_clause x ->
    Pbrt.Encoder.key (198, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_table_sample_clause x) encoder;
  | Pg_query_types.With_check_option x ->
    Pbrt.Encoder.key (199, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_with_check_option x) encoder;
  | Pg_query_types.Sort_group_clause x ->
    Pbrt.Encoder.key (200, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_sort_group_clause x) encoder;
  | Pg_query_types.Grouping_set x ->
    Pbrt.Encoder.key (201, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_grouping_set x) encoder;
  | Pg_query_types.Window_clause x ->
    Pbrt.Encoder.key (202, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_window_clause x) encoder;
  | Pg_query_types.Object_with_args x ->
    Pbrt.Encoder.key (203, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_object_with_args x) encoder;
  | Pg_query_types.Access_priv x ->
    Pbrt.Encoder.key (204, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_access_priv x) encoder;
  | Pg_query_types.Create_op_class_item x ->
    Pbrt.Encoder.key (205, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_create_op_class_item x) encoder;
  | Pg_query_types.Table_like_clause x ->
    Pbrt.Encoder.key (206, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_table_like_clause x) encoder;
  | Pg_query_types.Function_parameter x ->
    Pbrt.Encoder.key (207, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_function_parameter x) encoder;
  | Pg_query_types.Locking_clause x ->
    Pbrt.Encoder.key (208, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_locking_clause x) encoder;
  | Pg_query_types.Row_mark_clause x ->
    Pbrt.Encoder.key (209, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_row_mark_clause x) encoder;
  | Pg_query_types.Xml_serialize x ->
    Pbrt.Encoder.key (210, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_xml_serialize x) encoder;
  | Pg_query_types.With_clause x ->
    Pbrt.Encoder.key (211, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_with_clause x) encoder;
  | Pg_query_types.Infer_clause x ->
    Pbrt.Encoder.key (212, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_infer_clause x) encoder;
  | Pg_query_types.On_conflict_clause x ->
    Pbrt.Encoder.key (213, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_on_conflict_clause x) encoder;
  | Pg_query_types.Ctesearch_clause x ->
    Pbrt.Encoder.key (214, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_ctesearch_clause x) encoder;
  | Pg_query_types.Ctecycle_clause x ->
    Pbrt.Encoder.key (215, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_ctecycle_clause x) encoder;
  | Pg_query_types.Common_table_expr x ->
    Pbrt.Encoder.key (216, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_common_table_expr x) encoder;
  | Pg_query_types.Merge_when_clause x ->
    Pbrt.Encoder.key (217, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_merge_when_clause x) encoder;
  | Pg_query_types.Role_spec x ->
    Pbrt.Encoder.key (218, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_role_spec x) encoder;
  | Pg_query_types.Trigger_transition x ->
    Pbrt.Encoder.key (219, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_trigger_transition x) encoder;
  | Pg_query_types.Partition_elem x ->
    Pbrt.Encoder.key (220, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_partition_elem x) encoder;
  | Pg_query_types.Partition_spec x ->
    Pbrt.Encoder.key (221, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_partition_spec x) encoder;
  | Pg_query_types.Partition_bound_spec x ->
    Pbrt.Encoder.key (222, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_partition_bound_spec x) encoder;
  | Pg_query_types.Partition_range_datum x ->
    Pbrt.Encoder.key (223, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_partition_range_datum x) encoder;
  | Pg_query_types.Partition_cmd x ->
    Pbrt.Encoder.key (224, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_partition_cmd x) encoder;
  | Pg_query_types.Vacuum_relation x ->
    Pbrt.Encoder.key (225, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_vacuum_relation x) encoder;
  | Pg_query_types.Publication_obj_spec x ->
    Pbrt.Encoder.key (226, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_publication_obj_spec x) encoder;
  | Pg_query_types.Publication_table x ->
    Pbrt.Encoder.key (227, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_publication_table x) encoder;
  | Pg_query_types.Inline_code_block x ->
    Pbrt.Encoder.key (228, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_inline_code_block x) encoder;
  | Pg_query_types.Call_context x ->
    Pbrt.Encoder.key (229, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_call_context x) encoder;
  | Pg_query_types.Integer x ->
    Pbrt.Encoder.key (230, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_integer x) encoder;
  | Pg_query_types.Float x ->
    Pbrt.Encoder.key (231, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_float x) encoder;
  | Pg_query_types.Boolean x ->
    Pbrt.Encoder.key (232, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_boolean x) encoder;
  | Pg_query_types.String x ->
    Pbrt.Encoder.key (233, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_string x) encoder;
  | Pg_query_types.Bit_string x ->
    Pbrt.Encoder.key (234, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_bit_string x) encoder;
  | Pg_query_types.List x ->
    Pbrt.Encoder.key (235, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_list x) encoder;
  | Pg_query_types.Int_list x ->
    Pbrt.Encoder.key (236, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_int_list x) encoder;
  | Pg_query_types.Oid_list x ->
    Pbrt.Encoder.key (237, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_oid_list x) encoder;
  | Pg_query_types.A_const x ->
    Pbrt.Encoder.key (238, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_a_const x) encoder;
  end

and encode_alias (v:Pg_query_types.alias) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.aliasname encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.colnames;
  ()

and encode_range_var (v:Pg_query_types.range_var) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.catalogname encoder;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.schemaname encoder;
  Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.relname encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.inh encoder;
  Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.relpersistence encoder;
  begin match v.Pg_query_types.alias with
  | Some x -> 
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alias x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_table_func (v:Pg_query_types.table_func) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.ns_uris;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.ns_names;
  begin match v.Pg_query_types.docexpr with
  | Some x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.rowexpr with
  | Some x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.colnames;
  List.iter (fun x -> 
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.coltypes;
  List.iter (fun x -> 
    Pbrt.Encoder.key (7, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.coltypmods;
  List.iter (fun x -> 
    Pbrt.Encoder.key (8, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.colcollations;
  List.iter (fun x -> 
    Pbrt.Encoder.key (9, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.colexprs;
  List.iter (fun x -> 
    Pbrt.Encoder.key (10, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.coldefexprs;
  Pbrt.Encoder.key (11, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.nested (fun encoder ->
    List.iter (fun x -> 
      Pbrt.Encoder.int64_as_varint x encoder;
    ) v.Pg_query_types.notnulls;
  ) encoder;
  Pbrt.Encoder.key (12, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.ordinalitycol encoder;
  Pbrt.Encoder.key (13, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_var (v:Pg_query_types.var) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.varno encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.varattno encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.vartype encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.vartypmod encoder;
  Pbrt.Encoder.key (6, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.varcollid encoder;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.varlevelsup encoder;
  Pbrt.Encoder.key (8, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.varnosyn encoder;
  Pbrt.Encoder.key (9, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.varattnosyn encoder;
  Pbrt.Encoder.key (10, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_param (v:Pg_query_types.param) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  encode_param_kind v.Pg_query_types.paramkind encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.paramid encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.paramtype encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.paramtypmod encoder;
  Pbrt.Encoder.key (6, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.paramcollid encoder;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_aggref (v:Pg_query_types.aggref) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.aggfnoid encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.aggtype encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.aggcollid encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.inputcollid encoder;
  Pbrt.Encoder.key (6, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.aggtranstype encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (7, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.aggargtypes;
  List.iter (fun x -> 
    Pbrt.Encoder.key (8, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.aggdirectargs;
  List.iter (fun x -> 
    Pbrt.Encoder.key (9, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.args;
  List.iter (fun x -> 
    Pbrt.Encoder.key (10, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.aggorder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (11, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.aggdistinct;
  begin match v.Pg_query_types.aggfilter with
  | Some x -> 
    Pbrt.Encoder.key (12, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (13, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.aggstar encoder;
  Pbrt.Encoder.key (14, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.aggvariadic encoder;
  Pbrt.Encoder.key (15, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.aggkind encoder;
  Pbrt.Encoder.key (16, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.agglevelsup encoder;
  Pbrt.Encoder.key (17, Pbrt.Varint) encoder; 
  encode_agg_split v.Pg_query_types.aggsplit encoder;
  Pbrt.Encoder.key (18, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.aggno encoder;
  Pbrt.Encoder.key (19, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.aggtransno encoder;
  Pbrt.Encoder.key (20, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_grouping_func (v:Pg_query_types.grouping_func) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.args;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.refs;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.cols;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.agglevelsup encoder;
  Pbrt.Encoder.key (6, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_window_func (v:Pg_query_types.window_func) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.winfnoid encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.wintype encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.wincollid encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.inputcollid encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.args;
  begin match v.Pg_query_types.aggfilter with
  | Some x -> 
    Pbrt.Encoder.key (7, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (8, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.winref encoder;
  Pbrt.Encoder.key (9, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.winstar encoder;
  Pbrt.Encoder.key (10, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.winagg encoder;
  Pbrt.Encoder.key (11, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_subscripting_ref (v:Pg_query_types.subscripting_ref) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.refcontainertype encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.refelemtype encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.refrestype encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.reftypmod encoder;
  Pbrt.Encoder.key (6, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.refcollid encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (7, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.refupperindexpr;
  List.iter (fun x -> 
    Pbrt.Encoder.key (8, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.reflowerindexpr;
  begin match v.Pg_query_types.refexpr with
  | Some x -> 
    Pbrt.Encoder.key (9, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.refassgnexpr with
  | Some x -> 
    Pbrt.Encoder.key (10, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  ()

and encode_func_expr (v:Pg_query_types.func_expr) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.funcid encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.funcresulttype encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.funcretset encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.funcvariadic encoder;
  Pbrt.Encoder.key (6, Pbrt.Varint) encoder; 
  encode_coercion_form v.Pg_query_types.funcformat encoder;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.funccollid encoder;
  Pbrt.Encoder.key (8, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.inputcollid encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (9, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.args;
  Pbrt.Encoder.key (10, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_named_arg_expr (v:Pg_query_types.named_arg_expr) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.arg with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.name encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.argnumber encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_op_expr (v:Pg_query_types.op_expr) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.opno encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.opfuncid encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.opresulttype encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.opretset encoder;
  Pbrt.Encoder.key (6, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.opcollid encoder;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.inputcollid encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (8, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.args;
  Pbrt.Encoder.key (9, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_distinct_expr (v:Pg_query_types.distinct_expr) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.opno encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.opfuncid encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.opresulttype encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.opretset encoder;
  Pbrt.Encoder.key (6, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.opcollid encoder;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.inputcollid encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (8, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.args;
  Pbrt.Encoder.key (9, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_null_if_expr (v:Pg_query_types.null_if_expr) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.opno encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.opfuncid encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.opresulttype encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.opretset encoder;
  Pbrt.Encoder.key (6, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.opcollid encoder;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.inputcollid encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (8, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.args;
  Pbrt.Encoder.key (9, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_scalar_array_op_expr (v:Pg_query_types.scalar_array_op_expr) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.opno encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.opfuncid encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.hashfuncid encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.negfuncid encoder;
  Pbrt.Encoder.key (6, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.use_or encoder;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.inputcollid encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (8, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.args;
  Pbrt.Encoder.key (9, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_bool_expr (v:Pg_query_types.bool_expr) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  encode_bool_expr_type v.Pg_query_types.boolop encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.args;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_sub_link (v:Pg_query_types.sub_link) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  encode_sub_link_type v.Pg_query_types.sub_link_type encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.sub_link_id encoder;
  begin match v.Pg_query_types.testexpr with
  | Some x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.oper_name;
  begin match v.Pg_query_types.subselect with
  | Some x -> 
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_sub_plan (v:Pg_query_types.sub_plan) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  encode_sub_link_type v.Pg_query_types.sub_link_type encoder;
  begin match v.Pg_query_types.testexpr with
  | Some x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.param_ids;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.plan_id encoder;
  Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.plan_name encoder;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.first_col_type encoder;
  Pbrt.Encoder.key (8, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.first_col_typmod encoder;
  Pbrt.Encoder.key (9, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.first_col_collation encoder;
  Pbrt.Encoder.key (10, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.use_hash_table encoder;
  Pbrt.Encoder.key (11, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.unknown_eq_false encoder;
  Pbrt.Encoder.key (12, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.parallel_safe encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (13, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.set_param;
  List.iter (fun x -> 
    Pbrt.Encoder.key (14, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.par_param;
  List.iter (fun x -> 
    Pbrt.Encoder.key (15, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.args;
  Pbrt.Encoder.key (16, Pbrt.Bits64) encoder; 
  Pbrt.Encoder.float_as_bits64 v.Pg_query_types.startup_cost encoder;
  Pbrt.Encoder.key (17, Pbrt.Bits64) encoder; 
  Pbrt.Encoder.float_as_bits64 v.Pg_query_types.per_call_cost encoder;
  ()

and encode_alternative_sub_plan (v:Pg_query_types.alternative_sub_plan) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.subplans;
  ()

and encode_field_select (v:Pg_query_types.field_select) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.arg with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.fieldnum encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.resulttype encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.resulttypmod encoder;
  Pbrt.Encoder.key (6, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.resultcollid encoder;
  ()

and encode_field_store (v:Pg_query_types.field_store) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.arg with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.newvals;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.fieldnums;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.resulttype encoder;
  ()

and encode_relabel_type (v:Pg_query_types.relabel_type) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.arg with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.resulttype encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.resulttypmod encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.resultcollid encoder;
  Pbrt.Encoder.key (6, Pbrt.Varint) encoder; 
  encode_coercion_form v.Pg_query_types.relabelformat encoder;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_coerce_via_io (v:Pg_query_types.coerce_via_io) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.arg with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.resulttype encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.resultcollid encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  encode_coercion_form v.Pg_query_types.coerceformat encoder;
  Pbrt.Encoder.key (6, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_array_coerce_expr (v:Pg_query_types.array_coerce_expr) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.arg with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.elemexpr with
  | Some x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.resulttype encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.resulttypmod encoder;
  Pbrt.Encoder.key (6, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.resultcollid encoder;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  encode_coercion_form v.Pg_query_types.coerceformat encoder;
  Pbrt.Encoder.key (8, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_convert_rowtype_expr (v:Pg_query_types.convert_rowtype_expr) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.arg with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.resulttype encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  encode_coercion_form v.Pg_query_types.convertformat encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_collate_expr (v:Pg_query_types.collate_expr) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.arg with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.coll_oid encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_case_expr (v:Pg_query_types.case_expr) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.casetype encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.casecollid encoder;
  begin match v.Pg_query_types.arg with
  | Some x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.args;
  begin match v.Pg_query_types.defresult with
  | Some x -> 
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_case_when (v:Pg_query_types.case_when) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.expr with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.result with
  | Some x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_case_test_expr (v:Pg_query_types.case_test_expr) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.type_id encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.type_mod encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.collation encoder;
  ()

and encode_array_expr (v:Pg_query_types.array_expr) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.array_typeid encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.array_collid encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.element_typeid encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.elements;
  Pbrt.Encoder.key (6, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.multidims encoder;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_row_expr (v:Pg_query_types.row_expr) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.args;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.row_typeid encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  encode_coercion_form v.Pg_query_types.row_format encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.colnames;
  Pbrt.Encoder.key (6, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_row_compare_expr (v:Pg_query_types.row_compare_expr) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  encode_row_compare_type v.Pg_query_types.rctype encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.opnos;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.opfamilies;
  List.iter (fun x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.inputcollids;
  List.iter (fun x -> 
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.largs;
  List.iter (fun x -> 
    Pbrt.Encoder.key (7, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.rargs;
  ()

and encode_coalesce_expr (v:Pg_query_types.coalesce_expr) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.coalescetype encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.coalescecollid encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.args;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_min_max_expr (v:Pg_query_types.min_max_expr) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.minmaxtype encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.minmaxcollid encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.inputcollid encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  encode_min_max_op v.Pg_query_types.op encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.args;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_sqlvalue_function (v:Pg_query_types.sqlvalue_function) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  encode_sqlvalue_function_op v.Pg_query_types.op encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.type_ encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.typmod encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_xml_expr (v:Pg_query_types.xml_expr) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  encode_xml_expr_op v.Pg_query_types.op encoder;
  Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.name encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.named_args;
  List.iter (fun x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.arg_names;
  List.iter (fun x -> 
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.args;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  encode_xml_option_type v.Pg_query_types.xmloption encoder;
  Pbrt.Encoder.key (8, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.type_ encoder;
  Pbrt.Encoder.key (9, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.typmod encoder;
  Pbrt.Encoder.key (10, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_null_test (v:Pg_query_types.null_test) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.arg with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  encode_null_test_type v.Pg_query_types.nulltesttype encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.argisrow encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_boolean_test (v:Pg_query_types.boolean_test) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.arg with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  encode_bool_test_type v.Pg_query_types.booltesttype encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_coerce_to_domain (v:Pg_query_types.coerce_to_domain) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.arg with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.resulttype encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.resulttypmod encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.resultcollid encoder;
  Pbrt.Encoder.key (6, Pbrt.Varint) encoder; 
  encode_coercion_form v.Pg_query_types.coercionformat encoder;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_coerce_to_domain_value (v:Pg_query_types.coerce_to_domain_value) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.type_id encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.type_mod encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.collation encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_set_to_default (v:Pg_query_types.set_to_default) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.type_id encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.type_mod encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.collation encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_current_of_expr (v:Pg_query_types.current_of_expr) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.cvarno encoder;
  Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.cursor_name encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.cursor_param encoder;
  ()

and encode_next_value_expr (v:Pg_query_types.next_value_expr) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.seqid encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.type_id encoder;
  ()

and encode_inference_elem (v:Pg_query_types.inference_elem) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.expr with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.infercollid encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.inferopclass encoder;
  ()

and encode_target_entry (v:Pg_query_types.target_entry) encoder = 
  begin match v.Pg_query_types.xpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.expr with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.resno encoder;
  Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.resname encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.ressortgroupref encoder;
  Pbrt.Encoder.key (6, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.resorigtbl encoder;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.resorigcol encoder;
  Pbrt.Encoder.key (8, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.resjunk encoder;
  ()

and encode_join_expr (v:Pg_query_types.join_expr) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_join_type v.Pg_query_types.jointype encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.is_natural encoder;
  begin match v.Pg_query_types.larg with
  | Some x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.rarg with
  | Some x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.using_clause;
  begin match v.Pg_query_types.join_using_alias with
  | Some x -> 
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alias x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.quals with
  | Some x -> 
    Pbrt.Encoder.key (7, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.alias with
  | Some x -> 
    Pbrt.Encoder.key (8, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alias x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (9, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.rtindex encoder;
  ()

and encode_from_expr (v:Pg_query_types.from_expr) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.fromlist;
  begin match v.Pg_query_types.quals with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  ()

and encode_on_conflict_expr (v:Pg_query_types.on_conflict_expr) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_on_conflict_action v.Pg_query_types.action encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.arbiter_elems;
  begin match v.Pg_query_types.arbiter_where with
  | Some x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.constraint_ encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.on_conflict_set;
  begin match v.Pg_query_types.on_conflict_where with
  | Some x -> 
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.excl_rel_index encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (8, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.excl_rel_tlist;
  ()

and encode_into_clause (v:Pg_query_types.into_clause) encoder = 
  begin match v.Pg_query_types.rel with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_var x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.col_names;
  Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.access_method encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.options;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  encode_on_commit_action v.Pg_query_types.on_commit encoder;
  Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.table_space_name encoder;
  begin match v.Pg_query_types.view_query with
  | Some x -> 
    Pbrt.Encoder.key (7, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (8, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.skip_data encoder;
  ()

and encode_merge_action (v:Pg_query_types.merge_action) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.matched encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  encode_cmd_type v.Pg_query_types.command_type encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  encode_overriding_kind v.Pg_query_types.override encoder;
  begin match v.Pg_query_types.qual with
  | Some x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.target_list;
  List.iter (fun x -> 
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.update_colnos;
  ()

and encode_query (v:Pg_query_types.query) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_cmd_type v.Pg_query_types.command_type encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  encode_query_source v.Pg_query_types.query_source encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.can_set_tag encoder;
  begin match v.Pg_query_types.utility_stmt with
  | Some x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.result_relation encoder;
  Pbrt.Encoder.key (6, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.has_aggs encoder;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.has_window_funcs encoder;
  Pbrt.Encoder.key (8, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.has_target_srfs encoder;
  Pbrt.Encoder.key (9, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.has_sub_links encoder;
  Pbrt.Encoder.key (10, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.has_distinct_on encoder;
  Pbrt.Encoder.key (11, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.has_recursive encoder;
  Pbrt.Encoder.key (12, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.has_modifying_cte encoder;
  Pbrt.Encoder.key (13, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.has_for_update encoder;
  Pbrt.Encoder.key (14, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.has_row_security encoder;
  Pbrt.Encoder.key (15, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.is_return encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (16, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.cte_list;
  List.iter (fun x -> 
    Pbrt.Encoder.key (17, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.rtable;
  begin match v.Pg_query_types.jointree with
  | Some x -> 
    Pbrt.Encoder.key (18, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_from_expr x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (19, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.merge_action_list;
  Pbrt.Encoder.key (20, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.merge_use_outer_join encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (21, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.target_list;
  Pbrt.Encoder.key (22, Pbrt.Varint) encoder; 
  encode_overriding_kind v.Pg_query_types.override encoder;
  begin match v.Pg_query_types.on_conflict with
  | Some x -> 
    Pbrt.Encoder.key (23, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_on_conflict_expr x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (24, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.returning_list;
  List.iter (fun x -> 
    Pbrt.Encoder.key (25, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.group_clause;
  Pbrt.Encoder.key (26, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.group_distinct encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (27, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.grouping_sets;
  begin match v.Pg_query_types.having_qual with
  | Some x -> 
    Pbrt.Encoder.key (28, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (29, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.window_clause;
  List.iter (fun x -> 
    Pbrt.Encoder.key (30, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.distinct_clause;
  List.iter (fun x -> 
    Pbrt.Encoder.key (31, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.sort_clause;
  begin match v.Pg_query_types.limit_offset with
  | Some x -> 
    Pbrt.Encoder.key (32, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.limit_count with
  | Some x -> 
    Pbrt.Encoder.key (33, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (34, Pbrt.Varint) encoder; 
  encode_limit_option v.Pg_query_types.limit_option encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (35, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.row_marks;
  begin match v.Pg_query_types.set_operations with
  | Some x -> 
    Pbrt.Encoder.key (36, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (37, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.constraint_deps;
  List.iter (fun x -> 
    Pbrt.Encoder.key (38, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.with_check_options;
  Pbrt.Encoder.key (39, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.stmt_location encoder;
  Pbrt.Encoder.key (40, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.stmt_len encoder;
  ()

and encode_insert_stmt (v:Pg_query_types.insert_stmt) encoder = 
  begin match v.Pg_query_types.relation with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_var x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.cols;
  begin match v.Pg_query_types.select_stmt with
  | Some x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.on_conflict_clause with
  | Some x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_on_conflict_clause x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.returning_list;
  begin match v.Pg_query_types.with_clause with
  | Some x -> 
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_with_clause x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  encode_overriding_kind v.Pg_query_types.override encoder;
  ()

and encode_on_conflict_clause (v:Pg_query_types.on_conflict_clause) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_on_conflict_action v.Pg_query_types.action encoder;
  begin match v.Pg_query_types.infer with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_infer_clause x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.target_list;
  begin match v.Pg_query_types.where_clause with
  | Some x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_infer_clause (v:Pg_query_types.infer_clause) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.index_elems;
  begin match v.Pg_query_types.where_clause with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.conname encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_with_clause (v:Pg_query_types.with_clause) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.ctes;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.recursive encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_delete_stmt (v:Pg_query_types.delete_stmt) encoder = 
  begin match v.Pg_query_types.relation with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_var x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.using_clause;
  begin match v.Pg_query_types.where_clause with
  | Some x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.returning_list;
  begin match v.Pg_query_types.with_clause with
  | Some x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_with_clause x) encoder;
  | None -> ();
  end;
  ()

and encode_update_stmt (v:Pg_query_types.update_stmt) encoder = 
  begin match v.Pg_query_types.relation with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_var x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.target_list;
  begin match v.Pg_query_types.where_clause with
  | Some x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.from_clause;
  List.iter (fun x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.returning_list;
  begin match v.Pg_query_types.with_clause with
  | Some x -> 
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_with_clause x) encoder;
  | None -> ();
  end;
  ()

and encode_merge_stmt (v:Pg_query_types.merge_stmt) encoder = 
  begin match v.Pg_query_types.relation with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_var x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.source_relation with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.join_condition with
  | Some x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.merge_when_clauses;
  begin match v.Pg_query_types.with_clause with
  | Some x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_with_clause x) encoder;
  | None -> ();
  end;
  ()

and encode_select_stmt (v:Pg_query_types.select_stmt) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.distinct_clause;
  begin match v.Pg_query_types.into_clause with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_into_clause x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.target_list;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.from_clause;
  begin match v.Pg_query_types.where_clause with
  | Some x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.group_clause;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.group_distinct encoder;
  begin match v.Pg_query_types.having_clause with
  | Some x -> 
    Pbrt.Encoder.key (8, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (9, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.window_clause;
  List.iter (fun x -> 
    Pbrt.Encoder.key (10, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.values_lists;
  List.iter (fun x -> 
    Pbrt.Encoder.key (11, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.sort_clause;
  begin match v.Pg_query_types.limit_offset with
  | Some x -> 
    Pbrt.Encoder.key (12, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.limit_count with
  | Some x -> 
    Pbrt.Encoder.key (13, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (14, Pbrt.Varint) encoder; 
  encode_limit_option v.Pg_query_types.limit_option encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (15, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.locking_clause;
  begin match v.Pg_query_types.with_clause with
  | Some x -> 
    Pbrt.Encoder.key (16, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_with_clause x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (17, Pbrt.Varint) encoder; 
  encode_set_operation v.Pg_query_types.op encoder;
  Pbrt.Encoder.key (18, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.all encoder;
  begin match v.Pg_query_types.larg with
  | Some x -> 
    Pbrt.Encoder.key (19, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_select_stmt x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.rarg with
  | Some x -> 
    Pbrt.Encoder.key (20, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_select_stmt x) encoder;
  | None -> ();
  end;
  ()

and encode_return_stmt (v:Pg_query_types.return_stmt) encoder = 
  begin match v.Pg_query_types.returnval with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  ()

and encode_plassign_stmt (v:Pg_query_types.plassign_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.name encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.indirection;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.nnames encoder;
  begin match v.Pg_query_types.val_ with
  | Some x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_select_stmt x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_alter_table_stmt (v:Pg_query_types.alter_table_stmt) encoder = 
  begin match v.Pg_query_types.relation with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_var x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.cmds;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  encode_object_type v.Pg_query_types.objtype encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.missing_ok encoder;
  ()

and encode_alter_table_cmd (v:Pg_query_types.alter_table_cmd) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_alter_table_type v.Pg_query_types.subtype encoder;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.name encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.num encoder;
  begin match v.Pg_query_types.newowner with
  | Some x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_role_spec x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.def with
  | Some x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (6, Pbrt.Varint) encoder; 
  encode_drop_behavior v.Pg_query_types.behavior encoder;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.missing_ok encoder;
  Pbrt.Encoder.key (8, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.recurse encoder;
  ()

and encode_alter_domain_stmt (v:Pg_query_types.alter_domain_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.subtype encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.type_name;
  Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.name encoder;
  begin match v.Pg_query_types.def with
  | Some x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  encode_drop_behavior v.Pg_query_types.behavior encoder;
  Pbrt.Encoder.key (6, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.missing_ok encoder;
  ()

and encode_set_operation_stmt (v:Pg_query_types.set_operation_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_set_operation v.Pg_query_types.op encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.all encoder;
  begin match v.Pg_query_types.larg with
  | Some x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.rarg with
  | Some x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.col_types;
  List.iter (fun x -> 
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.col_typmods;
  List.iter (fun x -> 
    Pbrt.Encoder.key (7, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.col_collations;
  List.iter (fun x -> 
    Pbrt.Encoder.key (8, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.group_clauses;
  ()

and encode_grant_stmt (v:Pg_query_types.grant_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.is_grant encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  encode_grant_target_type v.Pg_query_types.targtype encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  encode_object_type v.Pg_query_types.objtype encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.objects;
  List.iter (fun x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.privileges;
  List.iter (fun x -> 
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.grantees;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.grant_option encoder;
  begin match v.Pg_query_types.grantor with
  | Some x -> 
    Pbrt.Encoder.key (8, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_role_spec x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (9, Pbrt.Varint) encoder; 
  encode_drop_behavior v.Pg_query_types.behavior encoder;
  ()

and encode_grant_role_stmt (v:Pg_query_types.grant_role_stmt) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.granted_roles;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.grantee_roles;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.is_grant encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.admin_opt encoder;
  begin match v.Pg_query_types.grantor with
  | Some x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_role_spec x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (6, Pbrt.Varint) encoder; 
  encode_drop_behavior v.Pg_query_types.behavior encoder;
  ()

and encode_alter_default_privileges_stmt (v:Pg_query_types.alter_default_privileges_stmt) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.options;
  begin match v.Pg_query_types.action with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_grant_stmt x) encoder;
  | None -> ();
  end;
  ()

and encode_cluster_stmt (v:Pg_query_types.cluster_stmt) encoder = 
  begin match v.Pg_query_types.relation with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_var x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.indexname encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.params;
  ()

and encode_copy_stmt (v:Pg_query_types.copy_stmt) encoder = 
  begin match v.Pg_query_types.relation with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_var x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.query with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.attlist;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.is_from encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.is_program encoder;
  Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.filename encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (7, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.options;
  begin match v.Pg_query_types.where_clause with
  | Some x -> 
    Pbrt.Encoder.key (8, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  ()

and encode_create_stmt (v:Pg_query_types.create_stmt) encoder = 
  begin match v.Pg_query_types.relation with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_var x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.table_elts;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.inh_relations;
  begin match v.Pg_query_types.partbound with
  | Some x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_partition_bound_spec x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.partspec with
  | Some x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_partition_spec x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.of_typename with
  | Some x -> 
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_type_name x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (7, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.constraints;
  List.iter (fun x -> 
    Pbrt.Encoder.key (8, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.options;
  Pbrt.Encoder.key (9, Pbrt.Varint) encoder; 
  encode_on_commit_action v.Pg_query_types.oncommit encoder;
  Pbrt.Encoder.key (10, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.tablespacename encoder;
  Pbrt.Encoder.key (11, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.access_method encoder;
  Pbrt.Encoder.key (12, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.if_not_exists encoder;
  ()

and encode_partition_bound_spec (v:Pg_query_types.partition_bound_spec) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.strategy encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.is_default encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.modulus encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.remainder encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.listdatums;
  List.iter (fun x -> 
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.lowerdatums;
  List.iter (fun x -> 
    Pbrt.Encoder.key (7, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.upperdatums;
  Pbrt.Encoder.key (8, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_partition_spec (v:Pg_query_types.partition_spec) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.strategy encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.part_params;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_type_name (v:Pg_query_types.type_name) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.names;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.type_oid encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.setof encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.pct_type encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.typmods;
  Pbrt.Encoder.key (6, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.typemod encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (7, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.array_bounds;
  Pbrt.Encoder.key (8, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_define_stmt (v:Pg_query_types.define_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_object_type v.Pg_query_types.kind encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.oldstyle encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.defnames;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.args;
  List.iter (fun x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.definition;
  Pbrt.Encoder.key (6, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.if_not_exists encoder;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.replace encoder;
  ()

and encode_drop_stmt (v:Pg_query_types.drop_stmt) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.objects;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  encode_object_type v.Pg_query_types.remove_type encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  encode_drop_behavior v.Pg_query_types.behavior encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.missing_ok encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.concurrent encoder;
  ()

and encode_truncate_stmt (v:Pg_query_types.truncate_stmt) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.relations;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.restart_seqs encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  encode_drop_behavior v.Pg_query_types.behavior encoder;
  ()

and encode_comment_stmt (v:Pg_query_types.comment_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_object_type v.Pg_query_types.objtype encoder;
  begin match v.Pg_query_types.object_ with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.comment encoder;
  ()

and encode_index_stmt (v:Pg_query_types.index_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.idxname encoder;
  begin match v.Pg_query_types.relation with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_var x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.access_method encoder;
  Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.table_space encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.index_params;
  List.iter (fun x -> 
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.index_including_params;
  List.iter (fun x -> 
    Pbrt.Encoder.key (7, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.options;
  begin match v.Pg_query_types.where_clause with
  | Some x -> 
    Pbrt.Encoder.key (8, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (9, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.exclude_op_names;
  Pbrt.Encoder.key (10, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.idxcomment encoder;
  Pbrt.Encoder.key (11, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.index_oid encoder;
  Pbrt.Encoder.key (12, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.old_node encoder;
  Pbrt.Encoder.key (13, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.old_create_subid encoder;
  Pbrt.Encoder.key (14, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.old_first_relfilenode_subid encoder;
  Pbrt.Encoder.key (15, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.unique encoder;
  Pbrt.Encoder.key (16, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.nulls_not_distinct encoder;
  Pbrt.Encoder.key (17, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.primary encoder;
  Pbrt.Encoder.key (18, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.isconstraint encoder;
  Pbrt.Encoder.key (19, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.deferrable encoder;
  Pbrt.Encoder.key (20, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.initdeferred encoder;
  Pbrt.Encoder.key (21, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.transformed encoder;
  Pbrt.Encoder.key (22, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.concurrent encoder;
  Pbrt.Encoder.key (23, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.if_not_exists encoder;
  Pbrt.Encoder.key (24, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.reset_default_tblspc encoder;
  ()

and encode_create_function_stmt (v:Pg_query_types.create_function_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.is_procedure encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.replace encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.funcname;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.parameters;
  begin match v.Pg_query_types.return_type with
  | Some x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_type_name x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.options;
  begin match v.Pg_query_types.sql_body with
  | Some x -> 
    Pbrt.Encoder.key (7, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  ()

and encode_alter_function_stmt (v:Pg_query_types.alter_function_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_object_type v.Pg_query_types.objtype encoder;
  begin match v.Pg_query_types.func with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_object_with_args x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.actions;
  ()

and encode_object_with_args (v:Pg_query_types.object_with_args) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.objname;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.objargs;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.objfuncargs;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.args_unspecified encoder;
  ()

and encode_do_stmt (v:Pg_query_types.do_stmt) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.args;
  ()

and encode_rename_stmt (v:Pg_query_types.rename_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_object_type v.Pg_query_types.rename_type encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  encode_object_type v.Pg_query_types.relation_type encoder;
  begin match v.Pg_query_types.relation with
  | Some x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_var x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.object_ with
  | Some x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.subname encoder;
  Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.newname encoder;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  encode_drop_behavior v.Pg_query_types.behavior encoder;
  Pbrt.Encoder.key (8, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.missing_ok encoder;
  ()

and encode_rule_stmt (v:Pg_query_types.rule_stmt) encoder = 
  begin match v.Pg_query_types.relation with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_var x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.rulename encoder;
  begin match v.Pg_query_types.where_clause with
  | Some x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  encode_cmd_type v.Pg_query_types.event encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.instead encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.actions;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.replace encoder;
  ()

and encode_transaction_stmt (v:Pg_query_types.transaction_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_transaction_stmt_kind v.Pg_query_types.kind encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.options;
  Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.savepoint_name encoder;
  Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.gid encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.chain encoder;
  ()

and encode_view_stmt (v:Pg_query_types.view_stmt) encoder = 
  begin match v.Pg_query_types.view with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_var x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.aliases;
  begin match v.Pg_query_types.query with
  | Some x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.replace encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.options;
  Pbrt.Encoder.key (6, Pbrt.Varint) encoder; 
  encode_view_check_option v.Pg_query_types.with_check_option encoder;
  ()

and encode_create_domain_stmt (v:Pg_query_types.create_domain_stmt) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.domainname;
  begin match v.Pg_query_types.type_name with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_type_name x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.coll_clause with
  | Some x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_collate_clause x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.constraints;
  ()

and encode_collate_clause (v:Pg_query_types.collate_clause) encoder = 
  begin match v.Pg_query_types.arg with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.collname;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_createdb_stmt (v:Pg_query_types.createdb_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.dbname encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.options;
  ()

and encode_dropdb_stmt (v:Pg_query_types.dropdb_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.dbname encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.missing_ok encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.options;
  ()

and encode_vacuum_stmt (v:Pg_query_types.vacuum_stmt) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.options;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.rels;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.is_vacuumcmd encoder;
  ()

and encode_explain_stmt (v:Pg_query_types.explain_stmt) encoder = 
  begin match v.Pg_query_types.query with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.options;
  ()

and encode_create_table_as_stmt (v:Pg_query_types.create_table_as_stmt) encoder = 
  begin match v.Pg_query_types.query with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.into with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_into_clause x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  encode_object_type v.Pg_query_types.objtype encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.is_select_into encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.if_not_exists encoder;
  ()

and encode_create_seq_stmt (v:Pg_query_types.create_seq_stmt) encoder = 
  begin match v.Pg_query_types.sequence with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_var x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.options;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.owner_id encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.for_identity encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.if_not_exists encoder;
  ()

and encode_alter_seq_stmt (v:Pg_query_types.alter_seq_stmt) encoder = 
  begin match v.Pg_query_types.sequence with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_var x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.options;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.for_identity encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.missing_ok encoder;
  ()

and encode_variable_set_stmt (v:Pg_query_types.variable_set_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_variable_set_kind v.Pg_query_types.kind encoder;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.name encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.args;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.is_local encoder;
  ()

and encode_create_trig_stmt (v:Pg_query_types.create_trig_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.replace encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.isconstraint encoder;
  Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.trigname encoder;
  begin match v.Pg_query_types.relation with
  | Some x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_var x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.funcname;
  List.iter (fun x -> 
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.args;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.row encoder;
  Pbrt.Encoder.key (8, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.timing encoder;
  Pbrt.Encoder.key (9, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.events encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (10, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.columns;
  begin match v.Pg_query_types.when_clause with
  | Some x -> 
    Pbrt.Encoder.key (11, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (12, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.transition_rels;
  Pbrt.Encoder.key (13, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.deferrable encoder;
  Pbrt.Encoder.key (14, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.initdeferred encoder;
  begin match v.Pg_query_types.constrrel with
  | Some x -> 
    Pbrt.Encoder.key (15, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_var x) encoder;
  | None -> ();
  end;
  ()

and encode_create_plang_stmt (v:Pg_query_types.create_plang_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.replace encoder;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.plname encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.plhandler;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.plinline;
  List.iter (fun x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.plvalidator;
  Pbrt.Encoder.key (6, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.pltrusted encoder;
  ()

and encode_create_role_stmt (v:Pg_query_types.create_role_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_role_stmt_type v.Pg_query_types.stmt_type encoder;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.role encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.options;
  ()

and encode_alter_role_stmt (v:Pg_query_types.alter_role_stmt) encoder = 
  begin match v.Pg_query_types.role with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_role_spec x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.options;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.action encoder;
  ()

and encode_drop_role_stmt (v:Pg_query_types.drop_role_stmt) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.roles;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.missing_ok encoder;
  ()

and encode_lock_stmt (v:Pg_query_types.lock_stmt) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.relations;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.mode encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.nowait encoder;
  ()

and encode_constraints_set_stmt (v:Pg_query_types.constraints_set_stmt) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.constraints;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.deferred encoder;
  ()

and encode_reindex_stmt (v:Pg_query_types.reindex_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_reindex_object_type v.Pg_query_types.kind encoder;
  begin match v.Pg_query_types.relation with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_var x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.name encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.params;
  ()

and encode_create_schema_stmt (v:Pg_query_types.create_schema_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.schemaname encoder;
  begin match v.Pg_query_types.authrole with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_role_spec x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.schema_elts;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.if_not_exists encoder;
  ()

and encode_alter_database_stmt (v:Pg_query_types.alter_database_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.dbname encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.options;
  ()

and encode_alter_database_set_stmt (v:Pg_query_types.alter_database_set_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.dbname encoder;
  begin match v.Pg_query_types.setstmt with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_variable_set_stmt x) encoder;
  | None -> ();
  end;
  ()

and encode_alter_role_set_stmt (v:Pg_query_types.alter_role_set_stmt) encoder = 
  begin match v.Pg_query_types.role with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_role_spec x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.database encoder;
  begin match v.Pg_query_types.setstmt with
  | Some x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_variable_set_stmt x) encoder;
  | None -> ();
  end;
  ()

and encode_create_conversion_stmt (v:Pg_query_types.create_conversion_stmt) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.conversion_name;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.for_encoding_name encoder;
  Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.to_encoding_name encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.func_name;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.def encoder;
  ()

and encode_create_cast_stmt (v:Pg_query_types.create_cast_stmt) encoder = 
  begin match v.Pg_query_types.sourcetype with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_type_name x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.targettype with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_type_name x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.func with
  | Some x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_object_with_args x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  encode_coercion_context v.Pg_query_types.context encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.inout encoder;
  ()

and encode_create_op_class_stmt (v:Pg_query_types.create_op_class_stmt) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.opclassname;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.opfamilyname;
  Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.amname encoder;
  begin match v.Pg_query_types.datatype with
  | Some x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_type_name x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.items;
  Pbrt.Encoder.key (6, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.is_default encoder;
  ()

and encode_create_op_family_stmt (v:Pg_query_types.create_op_family_stmt) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.opfamilyname;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.amname encoder;
  ()

and encode_alter_op_family_stmt (v:Pg_query_types.alter_op_family_stmt) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.opfamilyname;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.amname encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.is_drop encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.items;
  ()

and encode_prepare_stmt (v:Pg_query_types.prepare_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.name encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.argtypes;
  begin match v.Pg_query_types.query with
  | Some x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  ()

and encode_execute_stmt (v:Pg_query_types.execute_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.name encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.params;
  ()

and encode_declare_cursor_stmt (v:Pg_query_types.declare_cursor_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.portalname encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.options encoder;
  begin match v.Pg_query_types.query with
  | Some x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  ()

and encode_create_table_space_stmt (v:Pg_query_types.create_table_space_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.tablespacename encoder;
  begin match v.Pg_query_types.owner with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_role_spec x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.location encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.options;
  ()

and encode_alter_object_depends_stmt (v:Pg_query_types.alter_object_depends_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_object_type v.Pg_query_types.object_type encoder;
  begin match v.Pg_query_types.relation with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_var x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.object_ with
  | Some x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.extname with
  | Some x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_string x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.remove encoder;
  ()

and encode_alter_object_schema_stmt (v:Pg_query_types.alter_object_schema_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_object_type v.Pg_query_types.object_type encoder;
  begin match v.Pg_query_types.relation with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_var x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.object_ with
  | Some x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.newschema encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.missing_ok encoder;
  ()

and encode_alter_owner_stmt (v:Pg_query_types.alter_owner_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_object_type v.Pg_query_types.object_type encoder;
  begin match v.Pg_query_types.relation with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_var x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.object_ with
  | Some x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.newowner with
  | Some x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_role_spec x) encoder;
  | None -> ();
  end;
  ()

and encode_alter_operator_stmt (v:Pg_query_types.alter_operator_stmt) encoder = 
  begin match v.Pg_query_types.opername with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_object_with_args x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.options;
  ()

and encode_alter_type_stmt (v:Pg_query_types.alter_type_stmt) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.type_name;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.options;
  ()

and encode_drop_owned_stmt (v:Pg_query_types.drop_owned_stmt) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.roles;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  encode_drop_behavior v.Pg_query_types.behavior encoder;
  ()

and encode_reassign_owned_stmt (v:Pg_query_types.reassign_owned_stmt) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.roles;
  begin match v.Pg_query_types.newrole with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_role_spec x) encoder;
  | None -> ();
  end;
  ()

and encode_composite_type_stmt (v:Pg_query_types.composite_type_stmt) encoder = 
  begin match v.Pg_query_types.typevar with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_var x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.coldeflist;
  ()

and encode_create_enum_stmt (v:Pg_query_types.create_enum_stmt) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.type_name;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.vals;
  ()

and encode_create_range_stmt (v:Pg_query_types.create_range_stmt) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.type_name;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.params;
  ()

and encode_alter_enum_stmt (v:Pg_query_types.alter_enum_stmt) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.type_name;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.old_val encoder;
  Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.new_val encoder;
  Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.new_val_neighbor encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.new_val_is_after encoder;
  Pbrt.Encoder.key (6, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.skip_if_new_val_exists encoder;
  ()

and encode_alter_tsdictionary_stmt (v:Pg_query_types.alter_tsdictionary_stmt) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.dictname;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.options;
  ()

and encode_alter_tsconfiguration_stmt (v:Pg_query_types.alter_tsconfiguration_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_alter_tsconfig_type v.Pg_query_types.kind encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.cfgname;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.tokentype;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.dicts;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.override encoder;
  Pbrt.Encoder.key (6, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.replace encoder;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.missing_ok encoder;
  ()

and encode_create_fdw_stmt (v:Pg_query_types.create_fdw_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.fdwname encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.func_options;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.options;
  ()

and encode_alter_fdw_stmt (v:Pg_query_types.alter_fdw_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.fdwname encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.func_options;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.options;
  ()

and encode_create_foreign_server_stmt (v:Pg_query_types.create_foreign_server_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.servername encoder;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.servertype encoder;
  Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.version encoder;
  Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.fdwname encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.if_not_exists encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.options;
  ()

and encode_alter_foreign_server_stmt (v:Pg_query_types.alter_foreign_server_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.servername encoder;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.version encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.options;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.has_version encoder;
  ()

and encode_create_user_mapping_stmt (v:Pg_query_types.create_user_mapping_stmt) encoder = 
  begin match v.Pg_query_types.user with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_role_spec x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.servername encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.if_not_exists encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.options;
  ()

and encode_alter_user_mapping_stmt (v:Pg_query_types.alter_user_mapping_stmt) encoder = 
  begin match v.Pg_query_types.user with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_role_spec x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.servername encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.options;
  ()

and encode_alter_table_space_options_stmt (v:Pg_query_types.alter_table_space_options_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.tablespacename encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.options;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.is_reset encoder;
  ()

and encode_alter_table_move_all_stmt (v:Pg_query_types.alter_table_move_all_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.orig_tablespacename encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  encode_object_type v.Pg_query_types.objtype encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.roles;
  Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.new_tablespacename encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.nowait encoder;
  ()

and encode_sec_label_stmt (v:Pg_query_types.sec_label_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_object_type v.Pg_query_types.objtype encoder;
  begin match v.Pg_query_types.object_ with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.provider encoder;
  Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.label encoder;
  ()

and encode_create_foreign_table_stmt (v:Pg_query_types.create_foreign_table_stmt) encoder = 
  begin match v.Pg_query_types.base_stmt with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_create_stmt x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.servername encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.options;
  ()

and encode_import_foreign_schema_stmt (v:Pg_query_types.import_foreign_schema_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.server_name encoder;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.remote_schema encoder;
  Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.local_schema encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  encode_import_foreign_schema_type v.Pg_query_types.list_type encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.table_list;
  List.iter (fun x -> 
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.options;
  ()

and encode_create_extension_stmt (v:Pg_query_types.create_extension_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.extname encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.if_not_exists encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.options;
  ()

and encode_alter_extension_stmt (v:Pg_query_types.alter_extension_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.extname encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.options;
  ()

and encode_alter_extension_contents_stmt (v:Pg_query_types.alter_extension_contents_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.extname encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.action encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  encode_object_type v.Pg_query_types.objtype encoder;
  begin match v.Pg_query_types.object_ with
  | Some x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  ()

and encode_create_event_trig_stmt (v:Pg_query_types.create_event_trig_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.trigname encoder;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.eventname encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.whenclause;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.funcname;
  ()

and encode_refresh_mat_view_stmt (v:Pg_query_types.refresh_mat_view_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.concurrent encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.skip_data encoder;
  begin match v.Pg_query_types.relation with
  | Some x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_var x) encoder;
  | None -> ();
  end;
  ()

and encode_alter_system_stmt (v:Pg_query_types.alter_system_stmt) encoder = 
  begin match v.Pg_query_types.setstmt with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_variable_set_stmt x) encoder;
  | None -> ();
  end;
  ()

and encode_create_policy_stmt (v:Pg_query_types.create_policy_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.policy_name encoder;
  begin match v.Pg_query_types.table with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_var x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.cmd_name encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.permissive encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.roles;
  begin match v.Pg_query_types.qual with
  | Some x -> 
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.with_check with
  | Some x -> 
    Pbrt.Encoder.key (7, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  ()

and encode_alter_policy_stmt (v:Pg_query_types.alter_policy_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.policy_name encoder;
  begin match v.Pg_query_types.table with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_var x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.roles;
  begin match v.Pg_query_types.qual with
  | Some x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.with_check with
  | Some x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  ()

and encode_create_transform_stmt (v:Pg_query_types.create_transform_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.replace encoder;
  begin match v.Pg_query_types.type_name with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_type_name x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.lang encoder;
  begin match v.Pg_query_types.fromsql with
  | Some x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_object_with_args x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.tosql with
  | Some x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_object_with_args x) encoder;
  | None -> ();
  end;
  ()

and encode_create_am_stmt (v:Pg_query_types.create_am_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.amname encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.handler_name;
  Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.amtype encoder;
  ()

and encode_create_publication_stmt (v:Pg_query_types.create_publication_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.pubname encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.options;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.pubobjects;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.for_all_tables encoder;
  ()

and encode_alter_publication_stmt (v:Pg_query_types.alter_publication_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.pubname encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.options;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.pubobjects;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.for_all_tables encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  encode_alter_publication_action v.Pg_query_types.action encoder;
  ()

and encode_create_subscription_stmt (v:Pg_query_types.create_subscription_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.subname encoder;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.conninfo encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.publication;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.options;
  ()

and encode_alter_subscription_stmt (v:Pg_query_types.alter_subscription_stmt) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_alter_subscription_type v.Pg_query_types.kind encoder;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.subname encoder;
  Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.conninfo encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.publication;
  List.iter (fun x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.options;
  ()

and encode_create_stats_stmt (v:Pg_query_types.create_stats_stmt) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.defnames;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.stat_types;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.exprs;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.relations;
  Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.stxcomment encoder;
  Pbrt.Encoder.key (6, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.transformed encoder;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.if_not_exists encoder;
  ()

and encode_alter_collation_stmt (v:Pg_query_types.alter_collation_stmt) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.collname;
  ()

and encode_call_stmt (v:Pg_query_types.call_stmt) encoder = 
  begin match v.Pg_query_types.funccall with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_func_call x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.funcexpr with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_func_expr x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.outargs;
  ()

and encode_func_call (v:Pg_query_types.func_call) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.funcname;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.args;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.agg_order;
  begin match v.Pg_query_types.agg_filter with
  | Some x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.over with
  | Some x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_window_def x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (6, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.agg_within_group encoder;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.agg_star encoder;
  Pbrt.Encoder.key (8, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.agg_distinct encoder;
  Pbrt.Encoder.key (9, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.func_variadic encoder;
  Pbrt.Encoder.key (10, Pbrt.Varint) encoder; 
  encode_coercion_form v.Pg_query_types.funcformat encoder;
  Pbrt.Encoder.key (11, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_window_def (v:Pg_query_types.window_def) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.name encoder;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.refname encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.partition_clause;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.order_clause;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.frame_options encoder;
  begin match v.Pg_query_types.start_offset with
  | Some x -> 
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.end_offset with
  | Some x -> 
    Pbrt.Encoder.key (7, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (8, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_alter_stats_stmt (v:Pg_query_types.alter_stats_stmt) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.defnames;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.stxstattarget encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.missing_ok encoder;
  ()

and encode_a_expr (v:Pg_query_types.a_expr) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_a_expr_kind v.Pg_query_types.kind encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.name;
  begin match v.Pg_query_types.lexpr with
  | Some x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.rexpr with
  | Some x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_column_ref (v:Pg_query_types.column_ref) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.fields;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_a_indices (v:Pg_query_types.a_indices) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.is_slice encoder;
  begin match v.Pg_query_types.lidx with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.uidx with
  | Some x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  ()

and encode_a_indirection (v:Pg_query_types.a_indirection) encoder = 
  begin match v.Pg_query_types.arg with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.indirection;
  ()

and encode_a_array_expr (v:Pg_query_types.a_array_expr) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.elements;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_res_target (v:Pg_query_types.res_target) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.name encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.indirection;
  begin match v.Pg_query_types.val_ with
  | Some x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_multi_assign_ref (v:Pg_query_types.multi_assign_ref) encoder = 
  begin match v.Pg_query_types.source with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.colno encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.ncolumns encoder;
  ()

and encode_type_cast (v:Pg_query_types.type_cast) encoder = 
  begin match v.Pg_query_types.arg with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.type_name with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_type_name x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_sort_by (v:Pg_query_types.sort_by) encoder = 
  begin match v.Pg_query_types.node with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  encode_sort_by_dir v.Pg_query_types.sortby_dir encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  encode_sort_by_nulls v.Pg_query_types.sortby_nulls encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.use_op;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_range_subselect (v:Pg_query_types.range_subselect) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.lateral encoder;
  begin match v.Pg_query_types.subquery with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.alias with
  | Some x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alias x) encoder;
  | None -> ();
  end;
  ()

and encode_range_function (v:Pg_query_types.range_function) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.lateral encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.ordinality encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.is_rowsfrom encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.functions;
  begin match v.Pg_query_types.alias with
  | Some x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alias x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.coldeflist;
  ()

and encode_range_table_sample (v:Pg_query_types.range_table_sample) encoder = 
  begin match v.Pg_query_types.relation with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.method_;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.args;
  begin match v.Pg_query_types.repeatable with
  | Some x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_range_table_func (v:Pg_query_types.range_table_func) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.lateral encoder;
  begin match v.Pg_query_types.docexpr with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.rowexpr with
  | Some x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.namespaces;
  List.iter (fun x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.columns;
  begin match v.Pg_query_types.alias with
  | Some x -> 
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alias x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_range_table_func_col (v:Pg_query_types.range_table_func_col) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.colname encoder;
  begin match v.Pg_query_types.type_name with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_type_name x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.for_ordinality encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.is_not_null encoder;
  begin match v.Pg_query_types.colexpr with
  | Some x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.coldefexpr with
  | Some x -> 
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_column_def (v:Pg_query_types.column_def) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.colname encoder;
  begin match v.Pg_query_types.type_name with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_type_name x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.compression encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.inhcount encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.is_local encoder;
  Pbrt.Encoder.key (6, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.is_not_null encoder;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.is_from_type encoder;
  Pbrt.Encoder.key (8, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.storage encoder;
  begin match v.Pg_query_types.raw_default with
  | Some x -> 
    Pbrt.Encoder.key (9, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.cooked_default with
  | Some x -> 
    Pbrt.Encoder.key (10, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (11, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.identity encoder;
  begin match v.Pg_query_types.identity_sequence with
  | Some x -> 
    Pbrt.Encoder.key (12, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_var x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (13, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.generated encoder;
  begin match v.Pg_query_types.coll_clause with
  | Some x -> 
    Pbrt.Encoder.key (14, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_collate_clause x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (15, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.coll_oid encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (16, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.constraints;
  List.iter (fun x -> 
    Pbrt.Encoder.key (17, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.fdwoptions;
  Pbrt.Encoder.key (18, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_index_elem (v:Pg_query_types.index_elem) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.name encoder;
  begin match v.Pg_query_types.expr with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.indexcolname encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.collation;
  List.iter (fun x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.opclass;
  List.iter (fun x -> 
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.opclassopts;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  encode_sort_by_dir v.Pg_query_types.ordering encoder;
  Pbrt.Encoder.key (8, Pbrt.Varint) encoder; 
  encode_sort_by_nulls v.Pg_query_types.nulls_ordering encoder;
  ()

and encode_stats_elem (v:Pg_query_types.stats_elem) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.name encoder;
  begin match v.Pg_query_types.expr with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  ()

and encode_constraint_ (v:Pg_query_types.constraint_) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_constr_type v.Pg_query_types.contype encoder;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.conname encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.deferrable encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.initdeferred encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  Pbrt.Encoder.key (6, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.is_no_inherit encoder;
  begin match v.Pg_query_types.raw_expr with
  | Some x -> 
    Pbrt.Encoder.key (7, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (8, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.cooked_expr encoder;
  Pbrt.Encoder.key (9, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.generated_when encoder;
  Pbrt.Encoder.key (10, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.nulls_not_distinct encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (11, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.keys;
  List.iter (fun x -> 
    Pbrt.Encoder.key (12, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.including;
  List.iter (fun x -> 
    Pbrt.Encoder.key (13, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.exclusions;
  List.iter (fun x -> 
    Pbrt.Encoder.key (14, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.options;
  Pbrt.Encoder.key (15, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.indexname encoder;
  Pbrt.Encoder.key (16, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.indexspace encoder;
  Pbrt.Encoder.key (17, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.reset_default_tblspc encoder;
  Pbrt.Encoder.key (18, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.access_method encoder;
  begin match v.Pg_query_types.where_clause with
  | Some x -> 
    Pbrt.Encoder.key (19, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.pktable with
  | Some x -> 
    Pbrt.Encoder.key (20, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_var x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (21, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.fk_attrs;
  List.iter (fun x -> 
    Pbrt.Encoder.key (22, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.pk_attrs;
  Pbrt.Encoder.key (23, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.fk_matchtype encoder;
  Pbrt.Encoder.key (24, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.fk_upd_action encoder;
  Pbrt.Encoder.key (25, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.fk_del_action encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (26, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.fk_del_set_cols;
  List.iter (fun x -> 
    Pbrt.Encoder.key (27, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.old_conpfeqop;
  Pbrt.Encoder.key (28, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.old_pktable_oid encoder;
  Pbrt.Encoder.key (29, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.skip_validation encoder;
  Pbrt.Encoder.key (30, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.initially_valid encoder;
  ()

and encode_def_elem (v:Pg_query_types.def_elem) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.defnamespace encoder;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.defname encoder;
  begin match v.Pg_query_types.arg with
  | Some x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  encode_def_elem_action v.Pg_query_types.defaction encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_range_tbl_entry (v:Pg_query_types.range_tbl_entry) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_rtekind v.Pg_query_types.rtekind encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.relid encoder;
  Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.relkind encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.rellockmode encoder;
  begin match v.Pg_query_types.tablesample with
  | Some x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_table_sample_clause x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.subquery with
  | Some x -> 
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_query x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.security_barrier encoder;
  Pbrt.Encoder.key (8, Pbrt.Varint) encoder; 
  encode_join_type v.Pg_query_types.jointype encoder;
  Pbrt.Encoder.key (9, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.joinmergedcols encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (10, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.joinaliasvars;
  List.iter (fun x -> 
    Pbrt.Encoder.key (11, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.joinleftcols;
  List.iter (fun x -> 
    Pbrt.Encoder.key (12, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.joinrightcols;
  begin match v.Pg_query_types.join_using_alias with
  | Some x -> 
    Pbrt.Encoder.key (13, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alias x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (14, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.functions;
  Pbrt.Encoder.key (15, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.funcordinality encoder;
  begin match v.Pg_query_types.tablefunc with
  | Some x -> 
    Pbrt.Encoder.key (16, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_table_func x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (17, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.values_lists;
  Pbrt.Encoder.key (18, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.ctename encoder;
  Pbrt.Encoder.key (19, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.ctelevelsup encoder;
  Pbrt.Encoder.key (20, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.self_reference encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (21, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.coltypes;
  List.iter (fun x -> 
    Pbrt.Encoder.key (22, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.coltypmods;
  List.iter (fun x -> 
    Pbrt.Encoder.key (23, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.colcollations;
  Pbrt.Encoder.key (24, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.enrname encoder;
  Pbrt.Encoder.key (25, Pbrt.Bits64) encoder; 
  Pbrt.Encoder.float_as_bits64 v.Pg_query_types.enrtuples encoder;
  begin match v.Pg_query_types.alias with
  | Some x -> 
    Pbrt.Encoder.key (26, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alias x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.eref with
  | Some x -> 
    Pbrt.Encoder.key (27, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_alias x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (28, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.lateral encoder;
  Pbrt.Encoder.key (29, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.inh encoder;
  Pbrt.Encoder.key (30, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.in_from_cl encoder;
  Pbrt.Encoder.key (31, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.required_perms encoder;
  Pbrt.Encoder.key (32, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.check_as_user encoder;
  Pbrt.Encoder.key (33, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.nested (fun encoder ->
    List.iter (fun x -> 
      Pbrt.Encoder.int64_as_varint x encoder;
    ) v.Pg_query_types.selected_cols;
  ) encoder;
  Pbrt.Encoder.key (34, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.nested (fun encoder ->
    List.iter (fun x -> 
      Pbrt.Encoder.int64_as_varint x encoder;
    ) v.Pg_query_types.inserted_cols;
  ) encoder;
  Pbrt.Encoder.key (35, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.nested (fun encoder ->
    List.iter (fun x -> 
      Pbrt.Encoder.int64_as_varint x encoder;
    ) v.Pg_query_types.updated_cols;
  ) encoder;
  Pbrt.Encoder.key (36, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.nested (fun encoder ->
    List.iter (fun x -> 
      Pbrt.Encoder.int64_as_varint x encoder;
    ) v.Pg_query_types.extra_updated_cols;
  ) encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (37, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.security_quals;
  ()

and encode_table_sample_clause (v:Pg_query_types.table_sample_clause) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.tsmhandler encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.args;
  begin match v.Pg_query_types.repeatable with
  | Some x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  ()

and encode_range_tbl_function (v:Pg_query_types.range_tbl_function) encoder = 
  begin match v.Pg_query_types.funcexpr with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.funccolcount encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.funccolnames;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.funccoltypes;
  List.iter (fun x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.funccoltypmods;
  List.iter (fun x -> 
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.funccolcollations;
  Pbrt.Encoder.key (7, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.nested (fun encoder ->
    List.iter (fun x -> 
      Pbrt.Encoder.int64_as_varint x encoder;
    ) v.Pg_query_types.funcparams;
  ) encoder;
  ()

and encode_with_check_option (v:Pg_query_types.with_check_option) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_wcokind v.Pg_query_types.kind encoder;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.relname encoder;
  Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.polname encoder;
  begin match v.Pg_query_types.qual with
  | Some x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.cascaded encoder;
  ()

and encode_grouping_set (v:Pg_query_types.grouping_set) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_grouping_set_kind v.Pg_query_types.kind encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.content;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_window_clause (v:Pg_query_types.window_clause) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.name encoder;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.refname encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.partition_clause;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.order_clause;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.frame_options encoder;
  begin match v.Pg_query_types.start_offset with
  | Some x -> 
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.end_offset with
  | Some x -> 
    Pbrt.Encoder.key (7, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (8, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.run_condition;
  Pbrt.Encoder.key (9, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.start_in_range_func encoder;
  Pbrt.Encoder.key (10, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.end_in_range_func encoder;
  Pbrt.Encoder.key (11, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.in_range_coll encoder;
  Pbrt.Encoder.key (12, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.in_range_asc encoder;
  Pbrt.Encoder.key (13, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.in_range_nulls_first encoder;
  Pbrt.Encoder.key (14, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.winref encoder;
  Pbrt.Encoder.key (15, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.copied_order encoder;
  ()

and encode_access_priv (v:Pg_query_types.access_priv) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.priv_name encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.cols;
  ()

and encode_create_op_class_item (v:Pg_query_types.create_op_class_item) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.itemtype encoder;
  begin match v.Pg_query_types.name with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_object_with_args x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.number encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.order_family;
  List.iter (fun x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.class_args;
  begin match v.Pg_query_types.storedtype with
  | Some x -> 
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_type_name x) encoder;
  | None -> ();
  end;
  ()

and encode_table_like_clause (v:Pg_query_types.table_like_clause) encoder = 
  begin match v.Pg_query_types.relation with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_var x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.options encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.relation_oid encoder;
  ()

and encode_function_parameter (v:Pg_query_types.function_parameter) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.name encoder;
  begin match v.Pg_query_types.arg_type with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_type_name x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  encode_function_parameter_mode v.Pg_query_types.mode encoder;
  begin match v.Pg_query_types.defexpr with
  | Some x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  ()

and encode_locking_clause (v:Pg_query_types.locking_clause) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.locked_rels;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  encode_lock_clause_strength v.Pg_query_types.strength encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  encode_lock_wait_policy v.Pg_query_types.wait_policy encoder;
  ()

and encode_xml_serialize (v:Pg_query_types.xml_serialize) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_xml_option_type v.Pg_query_types.xmloption encoder;
  begin match v.Pg_query_types.expr with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.type_name with
  | Some x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_type_name x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_ctesearch_clause (v:Pg_query_types.ctesearch_clause) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.search_col_list;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.search_breadth_first encoder;
  Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.search_seq_column encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_ctecycle_clause (v:Pg_query_types.ctecycle_clause) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.cycle_col_list;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.cycle_mark_column encoder;
  begin match v.Pg_query_types.cycle_mark_value with
  | Some x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.cycle_mark_default with
  | Some x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.cycle_path_column encoder;
  Pbrt.Encoder.key (6, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.cycle_mark_type encoder;
  Pbrt.Encoder.key (8, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.cycle_mark_typmod encoder;
  Pbrt.Encoder.key (9, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.cycle_mark_collation encoder;
  Pbrt.Encoder.key (10, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.cycle_mark_neop encoder;
  ()

and encode_common_table_expr (v:Pg_query_types.common_table_expr) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.ctename encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.aliascolnames;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  encode_ctematerialize v.Pg_query_types.ctematerialized encoder;
  begin match v.Pg_query_types.ctequery with
  | Some x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.search_clause with
  | Some x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_ctesearch_clause x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.cycle_clause with
  | Some x -> 
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_ctecycle_clause x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  Pbrt.Encoder.key (8, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.cterecursive encoder;
  Pbrt.Encoder.key (9, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.cterefcount encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (10, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.ctecolnames;
  List.iter (fun x -> 
    Pbrt.Encoder.key (11, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.ctecoltypes;
  List.iter (fun x -> 
    Pbrt.Encoder.key (12, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.ctecoltypmods;
  List.iter (fun x -> 
    Pbrt.Encoder.key (13, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.ctecolcollations;
  ()

and encode_merge_when_clause (v:Pg_query_types.merge_when_clause) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.matched encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  encode_cmd_type v.Pg_query_types.command_type encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  encode_overriding_kind v.Pg_query_types.override encoder;
  begin match v.Pg_query_types.condition with
  | Some x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.target_list;
  List.iter (fun x -> 
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.values;
  ()

and encode_partition_elem (v:Pg_query_types.partition_elem) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.name encoder;
  begin match v.Pg_query_types.expr with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.collation;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.opclass;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_partition_range_datum (v:Pg_query_types.partition_range_datum) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_partition_range_datum_kind v.Pg_query_types.kind encoder;
  begin match v.Pg_query_types.value with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_partition_cmd (v:Pg_query_types.partition_cmd) encoder = 
  begin match v.Pg_query_types.name with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_var x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.bound with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_partition_bound_spec x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Pg_query_types.concurrent encoder;
  ()

and encode_vacuum_relation (v:Pg_query_types.vacuum_relation) encoder = 
  begin match v.Pg_query_types.relation with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_var x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.oid encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.va_cols;
  ()

and encode_publication_obj_spec (v:Pg_query_types.publication_obj_spec) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_publication_obj_spec_type v.Pg_query_types.pubobjtype encoder;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Pg_query_types.name encoder;
  begin match v.Pg_query_types.pubtable with
  | Some x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_publication_table x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.location encoder;
  ()

and encode_publication_table (v:Pg_query_types.publication_table) encoder = 
  begin match v.Pg_query_types.relation with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_range_var x) encoder;
  | None -> ();
  end;
  begin match v.Pg_query_types.where_clause with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.columns;
  ()

and encode_list (v:Pg_query_types.list) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.items;
  ()

and encode_int_list (v:Pg_query_types.int_list) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.items;
  ()

and encode_oid_list (v:Pg_query_types.oid_list) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_node x) encoder;
  ) v.Pg_query_types.items;
  ()

let rec encode_parse_result (v:Pg_query_types.parse_result) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.version encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_raw_stmt x) encoder;
  ) v.Pg_query_types.stmts;
  ()

let rec encode_token (v:Pg_query_types.token) encoder =
  match v with
  | Pg_query_types.Nul -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Ascii_37 -> Pbrt.Encoder.int_as_varint 37 encoder
  | Pg_query_types.Ascii_40 -> Pbrt.Encoder.int_as_varint 40 encoder
  | Pg_query_types.Ascii_41 -> Pbrt.Encoder.int_as_varint 41 encoder
  | Pg_query_types.Ascii_42 -> Pbrt.Encoder.int_as_varint 42 encoder
  | Pg_query_types.Ascii_43 -> Pbrt.Encoder.int_as_varint 43 encoder
  | Pg_query_types.Ascii_44 -> Pbrt.Encoder.int_as_varint 44 encoder
  | Pg_query_types.Ascii_45 -> Pbrt.Encoder.int_as_varint 45 encoder
  | Pg_query_types.Ascii_46 -> Pbrt.Encoder.int_as_varint 46 encoder
  | Pg_query_types.Ascii_47 -> Pbrt.Encoder.int_as_varint 47 encoder
  | Pg_query_types.Ascii_58 -> Pbrt.Encoder.int_as_varint 58 encoder
  | Pg_query_types.Ascii_59 -> Pbrt.Encoder.int_as_varint 59 encoder
  | Pg_query_types.Ascii_60 -> Pbrt.Encoder.int_as_varint 60 encoder
  | Pg_query_types.Ascii_61 -> Pbrt.Encoder.int_as_varint 61 encoder
  | Pg_query_types.Ascii_62 -> Pbrt.Encoder.int_as_varint 62 encoder
  | Pg_query_types.Ascii_63 -> Pbrt.Encoder.int_as_varint 63 encoder
  | Pg_query_types.Ascii_91 -> Pbrt.Encoder.int_as_varint 91 encoder
  | Pg_query_types.Ascii_92 -> Pbrt.Encoder.int_as_varint 92 encoder
  | Pg_query_types.Ascii_93 -> Pbrt.Encoder.int_as_varint 93 encoder
  | Pg_query_types.Ascii_94 -> Pbrt.Encoder.int_as_varint 94 encoder
  | Pg_query_types.Ident -> Pbrt.Encoder.int_as_varint 258 encoder
  | Pg_query_types.Uident -> Pbrt.Encoder.int_as_varint 259 encoder
  | Pg_query_types.Fconst -> Pbrt.Encoder.int_as_varint 260 encoder
  | Pg_query_types.Sconst -> Pbrt.Encoder.int_as_varint 261 encoder
  | Pg_query_types.Usconst -> Pbrt.Encoder.int_as_varint 262 encoder
  | Pg_query_types.Bconst -> Pbrt.Encoder.int_as_varint 263 encoder
  | Pg_query_types.Xconst -> Pbrt.Encoder.int_as_varint 264 encoder
  | Pg_query_types.Op -> Pbrt.Encoder.int_as_varint 265 encoder
  | Pg_query_types.Iconst -> Pbrt.Encoder.int_as_varint 266 encoder
  | Pg_query_types.Param -> Pbrt.Encoder.int_as_varint 267 encoder
  | Pg_query_types.Typecast -> Pbrt.Encoder.int_as_varint 268 encoder
  | Pg_query_types.Dot_dot -> Pbrt.Encoder.int_as_varint 269 encoder
  | Pg_query_types.Colon_equals -> Pbrt.Encoder.int_as_varint 270 encoder
  | Pg_query_types.Equals_greater -> Pbrt.Encoder.int_as_varint 271 encoder
  | Pg_query_types.Less_equals -> Pbrt.Encoder.int_as_varint 272 encoder
  | Pg_query_types.Greater_equals -> Pbrt.Encoder.int_as_varint 273 encoder
  | Pg_query_types.Not_equals -> Pbrt.Encoder.int_as_varint 274 encoder
  | Pg_query_types.Sql_comment -> Pbrt.Encoder.int_as_varint 275 encoder
  | Pg_query_types.C_comment -> Pbrt.Encoder.int_as_varint 276 encoder
  | Pg_query_types.Abort_p -> Pbrt.Encoder.int_as_varint 277 encoder
  | Pg_query_types.Absolute_p -> Pbrt.Encoder.int_as_varint 278 encoder
  | Pg_query_types.Access -> Pbrt.Encoder.int_as_varint 279 encoder
  | Pg_query_types.Action -> Pbrt.Encoder.int_as_varint 280 encoder
  | Pg_query_types.Add_p -> Pbrt.Encoder.int_as_varint 281 encoder
  | Pg_query_types.Admin -> Pbrt.Encoder.int_as_varint 282 encoder
  | Pg_query_types.After -> Pbrt.Encoder.int_as_varint 283 encoder
  | Pg_query_types.Aggregate -> Pbrt.Encoder.int_as_varint 284 encoder
  | Pg_query_types.All -> Pbrt.Encoder.int_as_varint 285 encoder
  | Pg_query_types.Also -> Pbrt.Encoder.int_as_varint 286 encoder
  | Pg_query_types.Alter -> Pbrt.Encoder.int_as_varint 287 encoder
  | Pg_query_types.Always -> Pbrt.Encoder.int_as_varint 288 encoder
  | Pg_query_types.Analyse -> Pbrt.Encoder.int_as_varint 289 encoder
  | Pg_query_types.Analyze -> Pbrt.Encoder.int_as_varint 290 encoder
  | Pg_query_types.And -> Pbrt.Encoder.int_as_varint 291 encoder
  | Pg_query_types.Any -> Pbrt.Encoder.int_as_varint 292 encoder
  | Pg_query_types.Array -> Pbrt.Encoder.int_as_varint 293 encoder
  | Pg_query_types.As -> Pbrt.Encoder.int_as_varint 294 encoder
  | Pg_query_types.Asc -> Pbrt.Encoder.int_as_varint 295 encoder
  | Pg_query_types.Asensitive -> Pbrt.Encoder.int_as_varint 296 encoder
  | Pg_query_types.Assertion -> Pbrt.Encoder.int_as_varint 297 encoder
  | Pg_query_types.Assignment -> Pbrt.Encoder.int_as_varint 298 encoder
  | Pg_query_types.Asymmetric -> Pbrt.Encoder.int_as_varint 299 encoder
  | Pg_query_types.Atomic -> Pbrt.Encoder.int_as_varint 300 encoder
  | Pg_query_types.At -> Pbrt.Encoder.int_as_varint 301 encoder
  | Pg_query_types.Attach -> Pbrt.Encoder.int_as_varint 302 encoder
  | Pg_query_types.Attribute -> Pbrt.Encoder.int_as_varint 303 encoder
  | Pg_query_types.Authorization -> Pbrt.Encoder.int_as_varint 304 encoder
  | Pg_query_types.Backward -> Pbrt.Encoder.int_as_varint 305 encoder
  | Pg_query_types.Before -> Pbrt.Encoder.int_as_varint 306 encoder
  | Pg_query_types.Begin_p -> Pbrt.Encoder.int_as_varint 307 encoder
  | Pg_query_types.Between -> Pbrt.Encoder.int_as_varint 308 encoder
  | Pg_query_types.Bigint -> Pbrt.Encoder.int_as_varint 309 encoder
  | Pg_query_types.Binary -> Pbrt.Encoder.int_as_varint 310 encoder
  | Pg_query_types.Bit -> Pbrt.Encoder.int_as_varint 311 encoder
  | Pg_query_types.Boolean_p -> Pbrt.Encoder.int_as_varint 312 encoder
  | Pg_query_types.Both -> Pbrt.Encoder.int_as_varint 313 encoder
  | Pg_query_types.Breadth -> Pbrt.Encoder.int_as_varint 314 encoder
  | Pg_query_types.By -> Pbrt.Encoder.int_as_varint 315 encoder
  | Pg_query_types.Cache -> Pbrt.Encoder.int_as_varint 316 encoder
  | Pg_query_types.Call -> Pbrt.Encoder.int_as_varint 317 encoder
  | Pg_query_types.Called -> Pbrt.Encoder.int_as_varint 318 encoder
  | Pg_query_types.Cascade -> Pbrt.Encoder.int_as_varint 319 encoder
  | Pg_query_types.Cascaded -> Pbrt.Encoder.int_as_varint 320 encoder
  | Pg_query_types.Case -> Pbrt.Encoder.int_as_varint 321 encoder
  | Pg_query_types.Cast -> Pbrt.Encoder.int_as_varint 322 encoder
  | Pg_query_types.Catalog_p -> Pbrt.Encoder.int_as_varint 323 encoder
  | Pg_query_types.Chain -> Pbrt.Encoder.int_as_varint 324 encoder
  | Pg_query_types.Char_p -> Pbrt.Encoder.int_as_varint 325 encoder
  | Pg_query_types.Character -> Pbrt.Encoder.int_as_varint 326 encoder
  | Pg_query_types.Characteristics -> Pbrt.Encoder.int_as_varint 327 encoder
  | Pg_query_types.Check -> Pbrt.Encoder.int_as_varint 328 encoder
  | Pg_query_types.Checkpoint -> Pbrt.Encoder.int_as_varint 329 encoder
  | Pg_query_types.Class -> Pbrt.Encoder.int_as_varint 330 encoder
  | Pg_query_types.Close -> Pbrt.Encoder.int_as_varint 331 encoder
  | Pg_query_types.Cluster -> Pbrt.Encoder.int_as_varint 332 encoder
  | Pg_query_types.Coalesce -> Pbrt.Encoder.int_as_varint 333 encoder
  | Pg_query_types.Collate -> Pbrt.Encoder.int_as_varint 334 encoder
  | Pg_query_types.Collation -> Pbrt.Encoder.int_as_varint 335 encoder
  | Pg_query_types.Column -> Pbrt.Encoder.int_as_varint 336 encoder
  | Pg_query_types.Columns -> Pbrt.Encoder.int_as_varint 337 encoder
  | Pg_query_types.Comment -> Pbrt.Encoder.int_as_varint 338 encoder
  | Pg_query_types.Comments -> Pbrt.Encoder.int_as_varint 339 encoder
  | Pg_query_types.Commit -> Pbrt.Encoder.int_as_varint 340 encoder
  | Pg_query_types.Committed -> Pbrt.Encoder.int_as_varint 341 encoder
  | Pg_query_types.Compression -> Pbrt.Encoder.int_as_varint 342 encoder
  | Pg_query_types.Concurrently -> Pbrt.Encoder.int_as_varint 343 encoder
  | Pg_query_types.Configuration -> Pbrt.Encoder.int_as_varint 344 encoder
  | Pg_query_types.Conflict -> Pbrt.Encoder.int_as_varint 345 encoder
  | Pg_query_types.Connection -> Pbrt.Encoder.int_as_varint 346 encoder
  | Pg_query_types.Constraint -> Pbrt.Encoder.int_as_varint 347 encoder
  | Pg_query_types.Constraints -> Pbrt.Encoder.int_as_varint 348 encoder
  | Pg_query_types.Content_p -> Pbrt.Encoder.int_as_varint 349 encoder
  | Pg_query_types.Continue_p -> Pbrt.Encoder.int_as_varint 350 encoder
  | Pg_query_types.Conversion_p -> Pbrt.Encoder.int_as_varint 351 encoder
  | Pg_query_types.Copy -> Pbrt.Encoder.int_as_varint 352 encoder
  | Pg_query_types.Cost -> Pbrt.Encoder.int_as_varint 353 encoder
  | Pg_query_types.Create -> Pbrt.Encoder.int_as_varint 354 encoder
  | Pg_query_types.Cross -> Pbrt.Encoder.int_as_varint 355 encoder
  | Pg_query_types.Csv -> Pbrt.Encoder.int_as_varint 356 encoder
  | Pg_query_types.Cube -> Pbrt.Encoder.int_as_varint 357 encoder
  | Pg_query_types.Current_p -> Pbrt.Encoder.int_as_varint 358 encoder
  | Pg_query_types.Current_catalog -> Pbrt.Encoder.int_as_varint 359 encoder
  | Pg_query_types.Current_date -> Pbrt.Encoder.int_as_varint 360 encoder
  | Pg_query_types.Current_role -> Pbrt.Encoder.int_as_varint 361 encoder
  | Pg_query_types.Current_schema -> Pbrt.Encoder.int_as_varint 362 encoder
  | Pg_query_types.Current_time -> Pbrt.Encoder.int_as_varint 363 encoder
  | Pg_query_types.Current_timestamp -> Pbrt.Encoder.int_as_varint 364 encoder
  | Pg_query_types.Current_user -> Pbrt.Encoder.int_as_varint 365 encoder
  | Pg_query_types.Cursor -> Pbrt.Encoder.int_as_varint 366 encoder
  | Pg_query_types.Cycle -> Pbrt.Encoder.int_as_varint 367 encoder
  | Pg_query_types.Data_p -> Pbrt.Encoder.int_as_varint 368 encoder
  | Pg_query_types.Database -> Pbrt.Encoder.int_as_varint 369 encoder
  | Pg_query_types.Day_p -> Pbrt.Encoder.int_as_varint 370 encoder
  | Pg_query_types.Deallocate -> Pbrt.Encoder.int_as_varint 371 encoder
  | Pg_query_types.Dec -> Pbrt.Encoder.int_as_varint 372 encoder
  | Pg_query_types.Decimal_p -> Pbrt.Encoder.int_as_varint 373 encoder
  | Pg_query_types.Declare -> Pbrt.Encoder.int_as_varint 374 encoder
  | Pg_query_types.Default -> Pbrt.Encoder.int_as_varint 375 encoder
  | Pg_query_types.Defaults -> Pbrt.Encoder.int_as_varint 376 encoder
  | Pg_query_types.Deferrable -> Pbrt.Encoder.int_as_varint 377 encoder
  | Pg_query_types.Deferred -> Pbrt.Encoder.int_as_varint 378 encoder
  | Pg_query_types.Definer -> Pbrt.Encoder.int_as_varint 379 encoder
  | Pg_query_types.Delete_p -> Pbrt.Encoder.int_as_varint 380 encoder
  | Pg_query_types.Delimiter -> Pbrt.Encoder.int_as_varint 381 encoder
  | Pg_query_types.Delimiters -> Pbrt.Encoder.int_as_varint 382 encoder
  | Pg_query_types.Depends -> Pbrt.Encoder.int_as_varint 383 encoder
  | Pg_query_types.Depth -> Pbrt.Encoder.int_as_varint 384 encoder
  | Pg_query_types.Desc -> Pbrt.Encoder.int_as_varint 385 encoder
  | Pg_query_types.Detach -> Pbrt.Encoder.int_as_varint 386 encoder
  | Pg_query_types.Dictionary -> Pbrt.Encoder.int_as_varint 387 encoder
  | Pg_query_types.Disable_p -> Pbrt.Encoder.int_as_varint 388 encoder
  | Pg_query_types.Discard -> Pbrt.Encoder.int_as_varint 389 encoder
  | Pg_query_types.Distinct -> Pbrt.Encoder.int_as_varint 390 encoder
  | Pg_query_types.Do -> Pbrt.Encoder.int_as_varint 391 encoder
  | Pg_query_types.Document_p -> Pbrt.Encoder.int_as_varint 392 encoder
  | Pg_query_types.Domain_p -> Pbrt.Encoder.int_as_varint 393 encoder
  | Pg_query_types.Double_p -> Pbrt.Encoder.int_as_varint 394 encoder
  | Pg_query_types.Drop -> Pbrt.Encoder.int_as_varint 395 encoder
  | Pg_query_types.Each -> Pbrt.Encoder.int_as_varint 396 encoder
  | Pg_query_types.Else -> Pbrt.Encoder.int_as_varint 397 encoder
  | Pg_query_types.Enable_p -> Pbrt.Encoder.int_as_varint 398 encoder
  | Pg_query_types.Encoding -> Pbrt.Encoder.int_as_varint 399 encoder
  | Pg_query_types.Encrypted -> Pbrt.Encoder.int_as_varint 400 encoder
  | Pg_query_types.End_p -> Pbrt.Encoder.int_as_varint 401 encoder
  | Pg_query_types.Enum_p -> Pbrt.Encoder.int_as_varint 402 encoder
  | Pg_query_types.Escape -> Pbrt.Encoder.int_as_varint 403 encoder
  | Pg_query_types.Event -> Pbrt.Encoder.int_as_varint 404 encoder
  | Pg_query_types.Except -> Pbrt.Encoder.int_as_varint 405 encoder
  | Pg_query_types.Exclude -> Pbrt.Encoder.int_as_varint 406 encoder
  | Pg_query_types.Excluding -> Pbrt.Encoder.int_as_varint 407 encoder
  | Pg_query_types.Exclusive -> Pbrt.Encoder.int_as_varint 408 encoder
  | Pg_query_types.Execute -> Pbrt.Encoder.int_as_varint 409 encoder
  | Pg_query_types.Exists -> Pbrt.Encoder.int_as_varint 410 encoder
  | Pg_query_types.Explain -> Pbrt.Encoder.int_as_varint 411 encoder
  | Pg_query_types.Expression -> Pbrt.Encoder.int_as_varint 412 encoder
  | Pg_query_types.Extension -> Pbrt.Encoder.int_as_varint 413 encoder
  | Pg_query_types.External -> Pbrt.Encoder.int_as_varint 414 encoder
  | Pg_query_types.Extract -> Pbrt.Encoder.int_as_varint 415 encoder
  | Pg_query_types.False_p -> Pbrt.Encoder.int_as_varint 416 encoder
  | Pg_query_types.Family -> Pbrt.Encoder.int_as_varint 417 encoder
  | Pg_query_types.Fetch -> Pbrt.Encoder.int_as_varint 418 encoder
  | Pg_query_types.Filter -> Pbrt.Encoder.int_as_varint 419 encoder
  | Pg_query_types.Finalize -> Pbrt.Encoder.int_as_varint 420 encoder
  | Pg_query_types.First_p -> Pbrt.Encoder.int_as_varint 421 encoder
  | Pg_query_types.Float_p -> Pbrt.Encoder.int_as_varint 422 encoder
  | Pg_query_types.Following -> Pbrt.Encoder.int_as_varint 423 encoder
  | Pg_query_types.For -> Pbrt.Encoder.int_as_varint 424 encoder
  | Pg_query_types.Force -> Pbrt.Encoder.int_as_varint 425 encoder
  | Pg_query_types.Foreign -> Pbrt.Encoder.int_as_varint 426 encoder
  | Pg_query_types.Forward -> Pbrt.Encoder.int_as_varint 427 encoder
  | Pg_query_types.Freeze -> Pbrt.Encoder.int_as_varint 428 encoder
  | Pg_query_types.From -> Pbrt.Encoder.int_as_varint 429 encoder
  | Pg_query_types.Full -> Pbrt.Encoder.int_as_varint 430 encoder
  | Pg_query_types.Function -> Pbrt.Encoder.int_as_varint 431 encoder
  | Pg_query_types.Functions -> Pbrt.Encoder.int_as_varint 432 encoder
  | Pg_query_types.Generated -> Pbrt.Encoder.int_as_varint 433 encoder
  | Pg_query_types.Global -> Pbrt.Encoder.int_as_varint 434 encoder
  | Pg_query_types.Grant -> Pbrt.Encoder.int_as_varint 435 encoder
  | Pg_query_types.Granted -> Pbrt.Encoder.int_as_varint 436 encoder
  | Pg_query_types.Greatest -> Pbrt.Encoder.int_as_varint 437 encoder
  | Pg_query_types.Group_p -> Pbrt.Encoder.int_as_varint 438 encoder
  | Pg_query_types.Grouping -> Pbrt.Encoder.int_as_varint 439 encoder
  | Pg_query_types.Groups -> Pbrt.Encoder.int_as_varint 440 encoder
  | Pg_query_types.Handler -> Pbrt.Encoder.int_as_varint 441 encoder
  | Pg_query_types.Having -> Pbrt.Encoder.int_as_varint 442 encoder
  | Pg_query_types.Header_p -> Pbrt.Encoder.int_as_varint 443 encoder
  | Pg_query_types.Hold -> Pbrt.Encoder.int_as_varint 444 encoder
  | Pg_query_types.Hour_p -> Pbrt.Encoder.int_as_varint 445 encoder
  | Pg_query_types.Identity_p -> Pbrt.Encoder.int_as_varint 446 encoder
  | Pg_query_types.If_p -> Pbrt.Encoder.int_as_varint 447 encoder
  | Pg_query_types.Ilike -> Pbrt.Encoder.int_as_varint 448 encoder
  | Pg_query_types.Immediate -> Pbrt.Encoder.int_as_varint 449 encoder
  | Pg_query_types.Immutable -> Pbrt.Encoder.int_as_varint 450 encoder
  | Pg_query_types.Implicit_p -> Pbrt.Encoder.int_as_varint 451 encoder
  | Pg_query_types.Import_p -> Pbrt.Encoder.int_as_varint 452 encoder
  | Pg_query_types.In_p -> Pbrt.Encoder.int_as_varint 453 encoder
  | Pg_query_types.Include -> Pbrt.Encoder.int_as_varint 454 encoder
  | Pg_query_types.Including -> Pbrt.Encoder.int_as_varint 455 encoder
  | Pg_query_types.Increment -> Pbrt.Encoder.int_as_varint 456 encoder
  | Pg_query_types.Index -> Pbrt.Encoder.int_as_varint 457 encoder
  | Pg_query_types.Indexes -> Pbrt.Encoder.int_as_varint 458 encoder
  | Pg_query_types.Inherit -> Pbrt.Encoder.int_as_varint 459 encoder
  | Pg_query_types.Inherits -> Pbrt.Encoder.int_as_varint 460 encoder
  | Pg_query_types.Initially -> Pbrt.Encoder.int_as_varint 461 encoder
  | Pg_query_types.Inline_p -> Pbrt.Encoder.int_as_varint 462 encoder
  | Pg_query_types.Inner_p -> Pbrt.Encoder.int_as_varint 463 encoder
  | Pg_query_types.Inout -> Pbrt.Encoder.int_as_varint 464 encoder
  | Pg_query_types.Input_p -> Pbrt.Encoder.int_as_varint 465 encoder
  | Pg_query_types.Insensitive -> Pbrt.Encoder.int_as_varint 466 encoder
  | Pg_query_types.Insert -> Pbrt.Encoder.int_as_varint 467 encoder
  | Pg_query_types.Instead -> Pbrt.Encoder.int_as_varint 468 encoder
  | Pg_query_types.Int_p -> Pbrt.Encoder.int_as_varint 469 encoder
  | Pg_query_types.Integer -> Pbrt.Encoder.int_as_varint 470 encoder
  | Pg_query_types.Intersect -> Pbrt.Encoder.int_as_varint 471 encoder
  | Pg_query_types.Interval -> Pbrt.Encoder.int_as_varint 472 encoder
  | Pg_query_types.Into -> Pbrt.Encoder.int_as_varint 473 encoder
  | Pg_query_types.Invoker -> Pbrt.Encoder.int_as_varint 474 encoder
  | Pg_query_types.Is -> Pbrt.Encoder.int_as_varint 475 encoder
  | Pg_query_types.Isnull -> Pbrt.Encoder.int_as_varint 476 encoder
  | Pg_query_types.Isolation -> Pbrt.Encoder.int_as_varint 477 encoder
  | Pg_query_types.Join -> Pbrt.Encoder.int_as_varint 478 encoder
  | Pg_query_types.Key -> Pbrt.Encoder.int_as_varint 479 encoder
  | Pg_query_types.Label -> Pbrt.Encoder.int_as_varint 480 encoder
  | Pg_query_types.Language -> Pbrt.Encoder.int_as_varint 481 encoder
  | Pg_query_types.Large_p -> Pbrt.Encoder.int_as_varint 482 encoder
  | Pg_query_types.Last_p -> Pbrt.Encoder.int_as_varint 483 encoder
  | Pg_query_types.Lateral_p -> Pbrt.Encoder.int_as_varint 484 encoder
  | Pg_query_types.Leading -> Pbrt.Encoder.int_as_varint 485 encoder
  | Pg_query_types.Leakproof -> Pbrt.Encoder.int_as_varint 486 encoder
  | Pg_query_types.Least -> Pbrt.Encoder.int_as_varint 487 encoder
  | Pg_query_types.Left -> Pbrt.Encoder.int_as_varint 488 encoder
  | Pg_query_types.Level -> Pbrt.Encoder.int_as_varint 489 encoder
  | Pg_query_types.Like -> Pbrt.Encoder.int_as_varint 490 encoder
  | Pg_query_types.Limit -> Pbrt.Encoder.int_as_varint 491 encoder
  | Pg_query_types.Listen -> Pbrt.Encoder.int_as_varint 492 encoder
  | Pg_query_types.Load -> Pbrt.Encoder.int_as_varint 493 encoder
  | Pg_query_types.Local -> Pbrt.Encoder.int_as_varint 494 encoder
  | Pg_query_types.Localtime -> Pbrt.Encoder.int_as_varint 495 encoder
  | Pg_query_types.Localtimestamp -> Pbrt.Encoder.int_as_varint 496 encoder
  | Pg_query_types.Location -> Pbrt.Encoder.int_as_varint 497 encoder
  | Pg_query_types.Lock_p -> Pbrt.Encoder.int_as_varint 498 encoder
  | Pg_query_types.Locked -> Pbrt.Encoder.int_as_varint 499 encoder
  | Pg_query_types.Logged -> Pbrt.Encoder.int_as_varint 500 encoder
  | Pg_query_types.Mapping -> Pbrt.Encoder.int_as_varint 501 encoder
  | Pg_query_types.Match -> Pbrt.Encoder.int_as_varint 502 encoder
  | Pg_query_types.Matched -> Pbrt.Encoder.int_as_varint 503 encoder
  | Pg_query_types.Materialized -> Pbrt.Encoder.int_as_varint 504 encoder
  | Pg_query_types.Maxvalue -> Pbrt.Encoder.int_as_varint 505 encoder
  | Pg_query_types.Merge -> Pbrt.Encoder.int_as_varint 506 encoder
  | Pg_query_types.Method -> Pbrt.Encoder.int_as_varint 507 encoder
  | Pg_query_types.Minute_p -> Pbrt.Encoder.int_as_varint 508 encoder
  | Pg_query_types.Minvalue -> Pbrt.Encoder.int_as_varint 509 encoder
  | Pg_query_types.Mode -> Pbrt.Encoder.int_as_varint 510 encoder
  | Pg_query_types.Month_p -> Pbrt.Encoder.int_as_varint 511 encoder
  | Pg_query_types.Move -> Pbrt.Encoder.int_as_varint 512 encoder
  | Pg_query_types.Name_p -> Pbrt.Encoder.int_as_varint 513 encoder
  | Pg_query_types.Names -> Pbrt.Encoder.int_as_varint 514 encoder
  | Pg_query_types.National -> Pbrt.Encoder.int_as_varint 515 encoder
  | Pg_query_types.Natural -> Pbrt.Encoder.int_as_varint 516 encoder
  | Pg_query_types.Nchar -> Pbrt.Encoder.int_as_varint 517 encoder
  | Pg_query_types.New -> Pbrt.Encoder.int_as_varint 518 encoder
  | Pg_query_types.Next -> Pbrt.Encoder.int_as_varint 519 encoder
  | Pg_query_types.Nfc -> Pbrt.Encoder.int_as_varint 520 encoder
  | Pg_query_types.Nfd -> Pbrt.Encoder.int_as_varint 521 encoder
  | Pg_query_types.Nfkc -> Pbrt.Encoder.int_as_varint 522 encoder
  | Pg_query_types.Nfkd -> Pbrt.Encoder.int_as_varint 523 encoder
  | Pg_query_types.No -> Pbrt.Encoder.int_as_varint 524 encoder
  | Pg_query_types.None -> Pbrt.Encoder.int_as_varint 525 encoder
  | Pg_query_types.Normalize -> Pbrt.Encoder.int_as_varint 526 encoder
  | Pg_query_types.Normalized -> Pbrt.Encoder.int_as_varint 527 encoder
  | Pg_query_types.Not -> Pbrt.Encoder.int_as_varint 528 encoder
  | Pg_query_types.Nothing -> Pbrt.Encoder.int_as_varint 529 encoder
  | Pg_query_types.Notify -> Pbrt.Encoder.int_as_varint 530 encoder
  | Pg_query_types.Notnull -> Pbrt.Encoder.int_as_varint 531 encoder
  | Pg_query_types.Nowait -> Pbrt.Encoder.int_as_varint 532 encoder
  | Pg_query_types.Null_p -> Pbrt.Encoder.int_as_varint 533 encoder
  | Pg_query_types.Nullif -> Pbrt.Encoder.int_as_varint 534 encoder
  | Pg_query_types.Nulls_p -> Pbrt.Encoder.int_as_varint 535 encoder
  | Pg_query_types.Numeric -> Pbrt.Encoder.int_as_varint 536 encoder
  | Pg_query_types.Object_p -> Pbrt.Encoder.int_as_varint 537 encoder
  | Pg_query_types.Of -> Pbrt.Encoder.int_as_varint 538 encoder
  | Pg_query_types.Off -> Pbrt.Encoder.int_as_varint 539 encoder
  | Pg_query_types.Offset -> Pbrt.Encoder.int_as_varint 540 encoder
  | Pg_query_types.Oids -> Pbrt.Encoder.int_as_varint 541 encoder
  | Pg_query_types.Old -> Pbrt.Encoder.int_as_varint 542 encoder
  | Pg_query_types.On -> Pbrt.Encoder.int_as_varint 543 encoder
  | Pg_query_types.Only -> Pbrt.Encoder.int_as_varint 544 encoder
  | Pg_query_types.Operator -> Pbrt.Encoder.int_as_varint 545 encoder
  | Pg_query_types.Option -> Pbrt.Encoder.int_as_varint 546 encoder
  | Pg_query_types.Options -> Pbrt.Encoder.int_as_varint 547 encoder
  | Pg_query_types.Or -> Pbrt.Encoder.int_as_varint 548 encoder
  | Pg_query_types.Order -> Pbrt.Encoder.int_as_varint 549 encoder
  | Pg_query_types.Ordinality -> Pbrt.Encoder.int_as_varint 550 encoder
  | Pg_query_types.Others -> Pbrt.Encoder.int_as_varint 551 encoder
  | Pg_query_types.Out_p -> Pbrt.Encoder.int_as_varint 552 encoder
  | Pg_query_types.Outer_p -> Pbrt.Encoder.int_as_varint 553 encoder
  | Pg_query_types.Over -> Pbrt.Encoder.int_as_varint 554 encoder
  | Pg_query_types.Overlaps -> Pbrt.Encoder.int_as_varint 555 encoder
  | Pg_query_types.Overlay -> Pbrt.Encoder.int_as_varint 556 encoder
  | Pg_query_types.Overriding -> Pbrt.Encoder.int_as_varint 557 encoder
  | Pg_query_types.Owned -> Pbrt.Encoder.int_as_varint 558 encoder
  | Pg_query_types.Owner -> Pbrt.Encoder.int_as_varint 559 encoder
  | Pg_query_types.Parallel -> Pbrt.Encoder.int_as_varint 560 encoder
  | Pg_query_types.Parameter -> Pbrt.Encoder.int_as_varint 561 encoder
  | Pg_query_types.Parser -> Pbrt.Encoder.int_as_varint 562 encoder
  | Pg_query_types.Partial -> Pbrt.Encoder.int_as_varint 563 encoder
  | Pg_query_types.Partition -> Pbrt.Encoder.int_as_varint 564 encoder
  | Pg_query_types.Passing -> Pbrt.Encoder.int_as_varint 565 encoder
  | Pg_query_types.Password -> Pbrt.Encoder.int_as_varint 566 encoder
  | Pg_query_types.Placing -> Pbrt.Encoder.int_as_varint 567 encoder
  | Pg_query_types.Plans -> Pbrt.Encoder.int_as_varint 568 encoder
  | Pg_query_types.Policy -> Pbrt.Encoder.int_as_varint 569 encoder
  | Pg_query_types.Position -> Pbrt.Encoder.int_as_varint 570 encoder
  | Pg_query_types.Preceding -> Pbrt.Encoder.int_as_varint 571 encoder
  | Pg_query_types.Precision -> Pbrt.Encoder.int_as_varint 572 encoder
  | Pg_query_types.Preserve -> Pbrt.Encoder.int_as_varint 573 encoder
  | Pg_query_types.Prepare -> Pbrt.Encoder.int_as_varint 574 encoder
  | Pg_query_types.Prepared -> Pbrt.Encoder.int_as_varint 575 encoder
  | Pg_query_types.Primary -> Pbrt.Encoder.int_as_varint 576 encoder
  | Pg_query_types.Prior -> Pbrt.Encoder.int_as_varint 577 encoder
  | Pg_query_types.Privileges -> Pbrt.Encoder.int_as_varint 578 encoder
  | Pg_query_types.Procedural -> Pbrt.Encoder.int_as_varint 579 encoder
  | Pg_query_types.Procedure -> Pbrt.Encoder.int_as_varint 580 encoder
  | Pg_query_types.Procedures -> Pbrt.Encoder.int_as_varint 581 encoder
  | Pg_query_types.Program -> Pbrt.Encoder.int_as_varint 582 encoder
  | Pg_query_types.Publication -> Pbrt.Encoder.int_as_varint 583 encoder
  | Pg_query_types.Quote -> Pbrt.Encoder.int_as_varint 584 encoder
  | Pg_query_types.Range -> Pbrt.Encoder.int_as_varint 585 encoder
  | Pg_query_types.Read -> Pbrt.Encoder.int_as_varint 586 encoder
  | Pg_query_types.Real -> Pbrt.Encoder.int_as_varint 587 encoder
  | Pg_query_types.Reassign -> Pbrt.Encoder.int_as_varint 588 encoder
  | Pg_query_types.Recheck -> Pbrt.Encoder.int_as_varint 589 encoder
  | Pg_query_types.Recursive -> Pbrt.Encoder.int_as_varint 590 encoder
  | Pg_query_types.Ref_p -> Pbrt.Encoder.int_as_varint 591 encoder
  | Pg_query_types.References -> Pbrt.Encoder.int_as_varint 592 encoder
  | Pg_query_types.Referencing -> Pbrt.Encoder.int_as_varint 593 encoder
  | Pg_query_types.Refresh -> Pbrt.Encoder.int_as_varint 594 encoder
  | Pg_query_types.Reindex -> Pbrt.Encoder.int_as_varint 595 encoder
  | Pg_query_types.Relative_p -> Pbrt.Encoder.int_as_varint 596 encoder
  | Pg_query_types.Release -> Pbrt.Encoder.int_as_varint 597 encoder
  | Pg_query_types.Rename -> Pbrt.Encoder.int_as_varint 598 encoder
  | Pg_query_types.Repeatable -> Pbrt.Encoder.int_as_varint 599 encoder
  | Pg_query_types.Replace -> Pbrt.Encoder.int_as_varint 600 encoder
  | Pg_query_types.Replica -> Pbrt.Encoder.int_as_varint 601 encoder
  | Pg_query_types.Reset -> Pbrt.Encoder.int_as_varint 602 encoder
  | Pg_query_types.Restart -> Pbrt.Encoder.int_as_varint 603 encoder
  | Pg_query_types.Restrict -> Pbrt.Encoder.int_as_varint 604 encoder
  | Pg_query_types.Return -> Pbrt.Encoder.int_as_varint 605 encoder
  | Pg_query_types.Returning -> Pbrt.Encoder.int_as_varint 606 encoder
  | Pg_query_types.Returns -> Pbrt.Encoder.int_as_varint 607 encoder
  | Pg_query_types.Revoke -> Pbrt.Encoder.int_as_varint 608 encoder
  | Pg_query_types.Right -> Pbrt.Encoder.int_as_varint 609 encoder
  | Pg_query_types.Role -> Pbrt.Encoder.int_as_varint 610 encoder
  | Pg_query_types.Rollback -> Pbrt.Encoder.int_as_varint 611 encoder
  | Pg_query_types.Rollup -> Pbrt.Encoder.int_as_varint 612 encoder
  | Pg_query_types.Routine -> Pbrt.Encoder.int_as_varint 613 encoder
  | Pg_query_types.Routines -> Pbrt.Encoder.int_as_varint 614 encoder
  | Pg_query_types.Row -> Pbrt.Encoder.int_as_varint 615 encoder
  | Pg_query_types.Rows -> Pbrt.Encoder.int_as_varint 616 encoder
  | Pg_query_types.Rule -> Pbrt.Encoder.int_as_varint 617 encoder
  | Pg_query_types.Savepoint -> Pbrt.Encoder.int_as_varint 618 encoder
  | Pg_query_types.Schema -> Pbrt.Encoder.int_as_varint 619 encoder
  | Pg_query_types.Schemas -> Pbrt.Encoder.int_as_varint 620 encoder
  | Pg_query_types.Scroll -> Pbrt.Encoder.int_as_varint 621 encoder
  | Pg_query_types.Search -> Pbrt.Encoder.int_as_varint 622 encoder
  | Pg_query_types.Second_p -> Pbrt.Encoder.int_as_varint 623 encoder
  | Pg_query_types.Security -> Pbrt.Encoder.int_as_varint 624 encoder
  | Pg_query_types.Select -> Pbrt.Encoder.int_as_varint 625 encoder
  | Pg_query_types.Sequence -> Pbrt.Encoder.int_as_varint 626 encoder
  | Pg_query_types.Sequences -> Pbrt.Encoder.int_as_varint 627 encoder
  | Pg_query_types.Serializable -> Pbrt.Encoder.int_as_varint 628 encoder
  | Pg_query_types.Server -> Pbrt.Encoder.int_as_varint 629 encoder
  | Pg_query_types.Session -> Pbrt.Encoder.int_as_varint 630 encoder
  | Pg_query_types.Session_user -> Pbrt.Encoder.int_as_varint 631 encoder
  | Pg_query_types.Set -> Pbrt.Encoder.int_as_varint 632 encoder
  | Pg_query_types.Sets -> Pbrt.Encoder.int_as_varint 633 encoder
  | Pg_query_types.Setof -> Pbrt.Encoder.int_as_varint 634 encoder
  | Pg_query_types.Share -> Pbrt.Encoder.int_as_varint 635 encoder
  | Pg_query_types.Show -> Pbrt.Encoder.int_as_varint 636 encoder
  | Pg_query_types.Similar -> Pbrt.Encoder.int_as_varint 637 encoder
  | Pg_query_types.Simple -> Pbrt.Encoder.int_as_varint 638 encoder
  | Pg_query_types.Skip -> Pbrt.Encoder.int_as_varint 639 encoder
  | Pg_query_types.Smallint -> Pbrt.Encoder.int_as_varint 640 encoder
  | Pg_query_types.Snapshot -> Pbrt.Encoder.int_as_varint 641 encoder
  | Pg_query_types.Some -> Pbrt.Encoder.int_as_varint 642 encoder
  | Pg_query_types.Sql_p -> Pbrt.Encoder.int_as_varint 643 encoder
  | Pg_query_types.Stable -> Pbrt.Encoder.int_as_varint 644 encoder
  | Pg_query_types.Standalone_p -> Pbrt.Encoder.int_as_varint 645 encoder
  | Pg_query_types.Start -> Pbrt.Encoder.int_as_varint 646 encoder
  | Pg_query_types.Statement -> Pbrt.Encoder.int_as_varint 647 encoder
  | Pg_query_types.Statistics -> Pbrt.Encoder.int_as_varint 648 encoder
  | Pg_query_types.Stdin -> Pbrt.Encoder.int_as_varint 649 encoder
  | Pg_query_types.Stdout -> Pbrt.Encoder.int_as_varint 650 encoder
  | Pg_query_types.Storage -> Pbrt.Encoder.int_as_varint 651 encoder
  | Pg_query_types.Stored -> Pbrt.Encoder.int_as_varint 652 encoder
  | Pg_query_types.Strict_p -> Pbrt.Encoder.int_as_varint 653 encoder
  | Pg_query_types.Strip_p -> Pbrt.Encoder.int_as_varint 654 encoder
  | Pg_query_types.Subscription -> Pbrt.Encoder.int_as_varint 655 encoder
  | Pg_query_types.Substring -> Pbrt.Encoder.int_as_varint 656 encoder
  | Pg_query_types.Support -> Pbrt.Encoder.int_as_varint 657 encoder
  | Pg_query_types.Symmetric -> Pbrt.Encoder.int_as_varint 658 encoder
  | Pg_query_types.Sysid -> Pbrt.Encoder.int_as_varint 659 encoder
  | Pg_query_types.System_p -> Pbrt.Encoder.int_as_varint 660 encoder
  | Pg_query_types.Table -> Pbrt.Encoder.int_as_varint 661 encoder
  | Pg_query_types.Tables -> Pbrt.Encoder.int_as_varint 662 encoder
  | Pg_query_types.Tablesample -> Pbrt.Encoder.int_as_varint 663 encoder
  | Pg_query_types.Tablespace -> Pbrt.Encoder.int_as_varint 664 encoder
  | Pg_query_types.Temp -> Pbrt.Encoder.int_as_varint 665 encoder
  | Pg_query_types.Template -> Pbrt.Encoder.int_as_varint 666 encoder
  | Pg_query_types.Temporary -> Pbrt.Encoder.int_as_varint 667 encoder
  | Pg_query_types.Text_p -> Pbrt.Encoder.int_as_varint 668 encoder
  | Pg_query_types.Then -> Pbrt.Encoder.int_as_varint 669 encoder
  | Pg_query_types.Ties -> Pbrt.Encoder.int_as_varint 670 encoder
  | Pg_query_types.Time -> Pbrt.Encoder.int_as_varint 671 encoder
  | Pg_query_types.Timestamp -> Pbrt.Encoder.int_as_varint 672 encoder
  | Pg_query_types.To -> Pbrt.Encoder.int_as_varint 673 encoder
  | Pg_query_types.Trailing -> Pbrt.Encoder.int_as_varint 674 encoder
  | Pg_query_types.Transaction -> Pbrt.Encoder.int_as_varint 675 encoder
  | Pg_query_types.Transform -> Pbrt.Encoder.int_as_varint 676 encoder
  | Pg_query_types.Treat -> Pbrt.Encoder.int_as_varint 677 encoder
  | Pg_query_types.Trigger -> Pbrt.Encoder.int_as_varint 678 encoder
  | Pg_query_types.Trim -> Pbrt.Encoder.int_as_varint 679 encoder
  | Pg_query_types.True_p -> Pbrt.Encoder.int_as_varint 680 encoder
  | Pg_query_types.Truncate -> Pbrt.Encoder.int_as_varint 681 encoder
  | Pg_query_types.Trusted -> Pbrt.Encoder.int_as_varint 682 encoder
  | Pg_query_types.Type_p -> Pbrt.Encoder.int_as_varint 683 encoder
  | Pg_query_types.Types_p -> Pbrt.Encoder.int_as_varint 684 encoder
  | Pg_query_types.Uescape -> Pbrt.Encoder.int_as_varint 685 encoder
  | Pg_query_types.Unbounded -> Pbrt.Encoder.int_as_varint 686 encoder
  | Pg_query_types.Uncommitted -> Pbrt.Encoder.int_as_varint 687 encoder
  | Pg_query_types.Unencrypted -> Pbrt.Encoder.int_as_varint 688 encoder
  | Pg_query_types.Union -> Pbrt.Encoder.int_as_varint 689 encoder
  | Pg_query_types.Unique -> Pbrt.Encoder.int_as_varint 690 encoder
  | Pg_query_types.Unknown -> Pbrt.Encoder.int_as_varint 691 encoder
  | Pg_query_types.Unlisten -> Pbrt.Encoder.int_as_varint 692 encoder
  | Pg_query_types.Unlogged -> Pbrt.Encoder.int_as_varint 693 encoder
  | Pg_query_types.Until -> Pbrt.Encoder.int_as_varint 694 encoder
  | Pg_query_types.Update -> Pbrt.Encoder.int_as_varint 695 encoder
  | Pg_query_types.User -> Pbrt.Encoder.int_as_varint 696 encoder
  | Pg_query_types.Using -> Pbrt.Encoder.int_as_varint 697 encoder
  | Pg_query_types.Vacuum -> Pbrt.Encoder.int_as_varint 698 encoder
  | Pg_query_types.Valid -> Pbrt.Encoder.int_as_varint 699 encoder
  | Pg_query_types.Validate -> Pbrt.Encoder.int_as_varint 700 encoder
  | Pg_query_types.Validator -> Pbrt.Encoder.int_as_varint 701 encoder
  | Pg_query_types.Value_p -> Pbrt.Encoder.int_as_varint 702 encoder
  | Pg_query_types.Values -> Pbrt.Encoder.int_as_varint 703 encoder
  | Pg_query_types.Varchar -> Pbrt.Encoder.int_as_varint 704 encoder
  | Pg_query_types.Variadic -> Pbrt.Encoder.int_as_varint 705 encoder
  | Pg_query_types.Varying -> Pbrt.Encoder.int_as_varint 706 encoder
  | Pg_query_types.Verbose -> Pbrt.Encoder.int_as_varint 707 encoder
  | Pg_query_types.Version_p -> Pbrt.Encoder.int_as_varint 708 encoder
  | Pg_query_types.View -> Pbrt.Encoder.int_as_varint 709 encoder
  | Pg_query_types.Views -> Pbrt.Encoder.int_as_varint 710 encoder
  | Pg_query_types.Volatile -> Pbrt.Encoder.int_as_varint 711 encoder
  | Pg_query_types.When -> Pbrt.Encoder.int_as_varint 712 encoder
  | Pg_query_types.Where -> Pbrt.Encoder.int_as_varint 713 encoder
  | Pg_query_types.Whitespace_p -> Pbrt.Encoder.int_as_varint 714 encoder
  | Pg_query_types.Window -> Pbrt.Encoder.int_as_varint 715 encoder
  | Pg_query_types.With -> Pbrt.Encoder.int_as_varint 716 encoder
  | Pg_query_types.Within -> Pbrt.Encoder.int_as_varint 717 encoder
  | Pg_query_types.Without -> Pbrt.Encoder.int_as_varint 718 encoder
  | Pg_query_types.Work -> Pbrt.Encoder.int_as_varint 719 encoder
  | Pg_query_types.Wrapper -> Pbrt.Encoder.int_as_varint 720 encoder
  | Pg_query_types.Write -> Pbrt.Encoder.int_as_varint 721 encoder
  | Pg_query_types.Xml_p -> Pbrt.Encoder.int_as_varint 722 encoder
  | Pg_query_types.Xmlattributes -> Pbrt.Encoder.int_as_varint 723 encoder
  | Pg_query_types.Xmlconcat -> Pbrt.Encoder.int_as_varint 724 encoder
  | Pg_query_types.Xmlelement -> Pbrt.Encoder.int_as_varint 725 encoder
  | Pg_query_types.Xmlexists -> Pbrt.Encoder.int_as_varint 726 encoder
  | Pg_query_types.Xmlforest -> Pbrt.Encoder.int_as_varint 727 encoder
  | Pg_query_types.Xmlnamespaces -> Pbrt.Encoder.int_as_varint 728 encoder
  | Pg_query_types.Xmlparse -> Pbrt.Encoder.int_as_varint 729 encoder
  | Pg_query_types.Xmlpi -> Pbrt.Encoder.int_as_varint 730 encoder
  | Pg_query_types.Xmlroot -> Pbrt.Encoder.int_as_varint 731 encoder
  | Pg_query_types.Xmlserialize -> Pbrt.Encoder.int_as_varint 732 encoder
  | Pg_query_types.Xmltable -> Pbrt.Encoder.int_as_varint 733 encoder
  | Pg_query_types.Year_p -> Pbrt.Encoder.int_as_varint 734 encoder
  | Pg_query_types.Yes_p -> Pbrt.Encoder.int_as_varint 735 encoder
  | Pg_query_types.Zone -> Pbrt.Encoder.int_as_varint 736 encoder
  | Pg_query_types.Not_la -> Pbrt.Encoder.int_as_varint 737 encoder
  | Pg_query_types.Nulls_la -> Pbrt.Encoder.int_as_varint 738 encoder
  | Pg_query_types.With_la -> Pbrt.Encoder.int_as_varint 739 encoder
  | Pg_query_types.Mode_type_name -> Pbrt.Encoder.int_as_varint 740 encoder
  | Pg_query_types.Mode_plpgsql_expr -> Pbrt.Encoder.int_as_varint 741 encoder
  | Pg_query_types.Mode_plpgsql_assign1 -> Pbrt.Encoder.int_as_varint 742 encoder
  | Pg_query_types.Mode_plpgsql_assign2 -> Pbrt.Encoder.int_as_varint 743 encoder
  | Pg_query_types.Mode_plpgsql_assign3 -> Pbrt.Encoder.int_as_varint 744 encoder
  | Pg_query_types.Uminus -> Pbrt.Encoder.int_as_varint 745 encoder

let rec encode_keyword_kind (v:Pg_query_types.keyword_kind) encoder =
  match v with
  | Pg_query_types.No_keyword -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Unreserved_keyword -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Col_name_keyword -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Type_func_name_keyword -> Pbrt.Encoder.int_as_varint 3 encoder
  | Pg_query_types.Reserved_keyword -> Pbrt.Encoder.int_as_varint 4 encoder

let rec encode_scan_token (v:Pg_query_types.scan_token) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.start encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.end_ encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  encode_token v.Pg_query_types.token encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  encode_keyword_kind v.Pg_query_types.keyword_kind encoder;
  ()

let rec encode_scan_result (v:Pg_query_types.scan_result) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Pg_query_types.version encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_scan_token x) encoder;
  ) v.Pg_query_types.tokens;
  ()

let rec encode_set_quantifier (v:Pg_query_types.set_quantifier) encoder =
  match v with
  | Pg_query_types.Set_quantifier_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Set_quantifier_default -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Set_quantifier_all -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Set_quantifier_distinct -> Pbrt.Encoder.int_as_varint 3 encoder

let rec encode_table_like_option (v:Pg_query_types.table_like_option) encoder =
  match v with
  | Pg_query_types.Table_like_option_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Create_table_like_comments -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Create_table_like_compression -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Create_table_like_constraints -> Pbrt.Encoder.int_as_varint 3 encoder
  | Pg_query_types.Create_table_like_defaults -> Pbrt.Encoder.int_as_varint 4 encoder
  | Pg_query_types.Create_table_like_generated -> Pbrt.Encoder.int_as_varint 5 encoder
  | Pg_query_types.Create_table_like_identity -> Pbrt.Encoder.int_as_varint 6 encoder
  | Pg_query_types.Create_table_like_indexes -> Pbrt.Encoder.int_as_varint 7 encoder
  | Pg_query_types.Create_table_like_statistics -> Pbrt.Encoder.int_as_varint 8 encoder
  | Pg_query_types.Create_table_like_storage -> Pbrt.Encoder.int_as_varint 9 encoder
  | Pg_query_types.Create_table_like_all -> Pbrt.Encoder.int_as_varint 10 encoder

let rec encode_agg_strategy (v:Pg_query_types.agg_strategy) encoder =
  match v with
  | Pg_query_types.Agg_strategy_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Agg_plain -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Agg_sorted -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Agg_hashed -> Pbrt.Encoder.int_as_varint 3 encoder
  | Pg_query_types.Agg_mixed -> Pbrt.Encoder.int_as_varint 4 encoder

let rec encode_set_op_cmd (v:Pg_query_types.set_op_cmd) encoder =
  match v with
  | Pg_query_types.Set_op_cmd_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Setopcmd_intersect -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Setopcmd_intersect_all -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Setopcmd_except -> Pbrt.Encoder.int_as_varint 3 encoder
  | Pg_query_types.Setopcmd_except_all -> Pbrt.Encoder.int_as_varint 4 encoder

let rec encode_set_op_strategy (v:Pg_query_types.set_op_strategy) encoder =
  match v with
  | Pg_query_types.Set_op_strategy_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Setop_sorted -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Setop_hashed -> Pbrt.Encoder.int_as_varint 2 encoder

let rec encode_lock_tuple_mode (v:Pg_query_types.lock_tuple_mode) encoder =
  match v with
  | Pg_query_types.Lock_tuple_mode_undefined -> Pbrt.Encoder.int_as_varint (0) encoder
  | Pg_query_types.Lock_tuple_key_share -> Pbrt.Encoder.int_as_varint 1 encoder
  | Pg_query_types.Lock_tuple_share -> Pbrt.Encoder.int_as_varint 2 encoder
  | Pg_query_types.Lock_tuple_no_key_exclusive -> Pbrt.Encoder.int_as_varint 3 encoder
  | Pg_query_types.Lock_tuple_exclusive -> Pbrt.Encoder.int_as_varint 4 encoder
