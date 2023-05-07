open AstTypes;

// TODO: not everything is implemented yet, add as needed by following pattern below

// TODO: this shouldn't be exposed with the rest of these functions...
let update: ('a, option('a => 'a)) => 'a =
  (original, f) =>
    f |> Option.map(f => f(original)) |> Option.getOrElse(original);

let updateAArrayExpr =
    (
      ~elements=?,
      ~location=?,
      {elements: original_elements, location: original_location},
    ) => {
  elements: elements |> update(original_elements),
  location: location |> update(original_location),
};

let updateAConst =
    (
      ~val_=?,
      ~location=?,
      {val_: original_val_, location: original_location}: aConst,
    ) => {
  val_: val_ |> update(original_val_),
  location: location |> update(original_location),
};

let updateAExpr =
    (
      ~kind=?,
      ~name=?,
      ~lexpr=?,
      ~rexpr=?,
      {
        kind: original_kind,
        name: original_name,
        lexpr: original_lexpr,
        rexpr: original_rexpr,
      },
    ) => {
  kind: kind |> update(original_kind),
  name: name |> update(original_name),
  lexpr: lexpr |> update(original_lexpr),
  rexpr: rexpr |> update(original_rexpr),
};

let updateAIndices =
    (
      ~is_slice=?,
      ~lidx=?,
      ~uidx=?,
      {is_slice: original_is_slice, lidx: original_lidx, uidx: original_uidx},
    ) => {
  is_slice: is_slice |> update(original_is_slice),
  lidx: lidx |> update(original_lidx),
  uidx: uidx |> update(original_uidx),
};

let updateRangeVar =
    (
      ~catalogName=?,
      ~schemaName=?,
      ~relName=?,
      ~inh=?,
      ~relPersistence=?,
      ~alias=?,
      ~location=?,
      {
        catalogName: original_catalogName,
        schemaName: original_schemaName,
        relName: original_relName,
        inh: original_inh,
        relPersistence: original_relPersistence,
        alias: original_alias,
        location: original_location,
      },
    ) => {
  catalogName: catalogName |> update(original_catalogName),
  schemaName: schemaName |> update(original_schemaName),
  relName: relName |> update(original_relName),
  inh: inh |> update(original_inh),
  relPersistence: relPersistence |> update(original_relPersistence),
  alias: alias |> update(original_alias),
  location: location |> update(original_location),
};

let updateSelectStmt =
    (
      ~distinctClause=?,
      ~intoClause=?,
      ~targetList=?,
      ~fromClause=?,
      ~whereClause=?,
      ~groupClause=?,
      ~havingClause=?,
      ~windowClause=?,
      ~valuesLists=?,
      ~sortClause=?,
      ~limitOffset=?,
      ~limitCount=?,
      ~lockingClause=?,
      ~withClause=?,
      ~op=?,
      ~all=?,
      ~larg=?,
      ~rarg=?,
      {
        distinctClause: original_distinctClause,
        intoClause: original_intoClause,
        targetList: original_targetList,
        fromClause: original_fromClause,
        whereClause: original_whereClause,
        groupClause: original_groupClause,
        havingClause: original_havingClause,
        windowClause: original_windowClause,
        valuesLists: original_valuesLists,
        sortClause: original_sortClause,
        limitOffset: original_limitOffset,
        limitCount: original_limitCount,
        lockingClause: original_lockingClause,
        withClause: original_withClause,
        op: original_op,
        all: original_all,
        larg: original_larg,
        rarg: original_rarg,
      },
    ) => {
  distinctClause: distinctClause |> update(original_distinctClause),
  intoClause: intoClause |> update(original_intoClause),
  targetList: targetList |> update(original_targetList),
  fromClause: fromClause |> update(original_fromClause),
  whereClause: whereClause |> update(original_whereClause),
  groupClause: groupClause |> update(original_groupClause),
  havingClause: havingClause |> update(original_havingClause),
  windowClause: windowClause |> update(original_windowClause),
  valuesLists: valuesLists |> update(original_valuesLists),
  sortClause: sortClause |> update(original_sortClause),
  limitOffset: limitOffset |> update(original_limitOffset),
  limitCount: limitCount |> update(original_limitCount),
  lockingClause: lockingClause |> update(original_lockingClause),
  withClause: withClause |> update(original_withClause),
  op: op |> update(original_op),
  all: all |> update(original_all),
  larg: larg |> update(original_larg),
  rarg: rarg |> update(original_rarg),
};

// TODO: this is a really awkward feeling way to handle things... make it less bad
let updateNode =
    (
      ~update_a_array_expr=?,
      ~update_a_const=?,
      ~update_a_expr=?,
      ~update_select=?,
      ~update_insert=?,
      ~update_update=?,
      ~update_res_target=?,
      ~update_range_var=?,
      ~update_column_ref=?,
      original_stmt: node,
    ) => {
  switch (original_stmt) {
  | A_ArrayExpr(x) => A_ArrayExpr(update_a_array_expr |> update(x))
  | A_Const(x) => A_Const(update_a_const |> update(x))
  | A_Expr(x) => A_Expr(update_a_expr |> update(x))
  | A_Star => A_Star
  | Select(x) => Select(update_select |> update(x))
  | Insert(x) => Insert(update_insert |> update(x))
  | Update(x) => Update(update_update |> update(x))
  | ResTarget(x) => ResTarget(update_res_target |> update(x))
  | RangeVar(x) => RangeVar(update_range_var |> update(x))
  | ColumnRef(x) => ColumnRef(update_column_ref |> update(x))
  | Other(_) => failwith("cannot update `Other` fields at this time")
  };
};

let updateRawStmt =
    (
      ~stmt=?,
      ~stmt_len=?,
      ~stmt_location=?,
      {
        stmt: original_stmt,
        stmt_len: original_stmt_len,
        stmt_location: original_stmt_location,
      },
    )
    : rawStmt => {
  stmt: stmt |> update(original_stmt),
  stmt_len: stmt_len |> update(original_stmt_len),
  stmt_location: stmt_location |> update(original_stmt_location),
};

let updateOuterRawStmt = (~rawStmt, {rawStmt: raw_stmt_original}) => {
  rawStmt: rawStmt |> Option.pure |> update(raw_stmt_original),
};
