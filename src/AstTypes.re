type aArrayExpr = {
  elements: option(array(node)),
  location: int,
}

and aConst = {
  val_: option(value),
  location: option(int),
}

and aExpr = {
  kind: option(Js.Json.t),
  name: option(Js.Json.t),
  lexpr: option(Js.Json.t),
  rexpr: option(Js.Json.t),
}

and aIndices = {
  is_slice: bool,
  lidx: option(node),
  uidx: option(node),
}

and aIndirection = {
  arg: option(node),
  indirection: option(array(node)),
}

and accessPriv = {
  priv_name: option(string),
  cols: option(array(node)),
}

// and aggref = {
//   aggfnoid: Js.Json.t,
//   aggtype: Js.Json.t,
//   aggcollid: Js.Json.t,
//   inputcollid: Js.Json.t,

// }

/* TODO: "value" values are wrapped in an extra layer
   that needs some discovery done
     ex: "val":{"Integer":{"ival":50}} */
and value =
  | String(Js.Json.t)
  | Int(Js.Json.t)
  | Float(Js.Json.t)
  | BitString(Js.Json.t)
  | Null

and withClause = {
  ctes: option(array(node)),
  recursive: bool,
  location: int,
}

and resTarget = {
  name: option(string),
  indirection: option(array(node)),
  val_: option(node),
  location: int,
}

and selectStmt = {
  distinctClause: option(array(Js.Json.t)),
  intoClause: option(Js.Json.t),
  targetList: option(array(node)),
  fromClause: option(array(node)),
  whereClause: option(node),
  groupClause: option(array(Js.Json.t)),
  havingClause: option(Js.Json.t),
  windowClause: option(array(Js.Json.t)),
  valuesLists: option(array(Js.Json.t)),
  sortClause: option(array(Js.Json.t)),
  limitOffset: option(Js.Json.t),
  limitCount: option(node),
  lockingClause: option(array(Js.Json.t)),
  withClause: option(withClause),
  op: option(Js.Json.t),
  all: option(bool),
  larg: option(selectStmt),
  rarg: option(selectStmt),
}

and insertStmt = {
  relation: Js.Json.t,
  cols: Js.Json.t,
  selectStmt: Js.Json.t,
  onConflictClause: Js.Json.t,
  returningList: Js.Json.t,
  withClause: Js.Json.t,
  override: Js.Json.t,
}

and updateStmt = {
  relation: Js.Json.t,
  targetList: Js.Json.t,
  whereClause: Js.Json.t,
  fromClause: Js.Json.t,
  returningList: Js.Json.t,
  withClause: Js.Json.t,
}

and alias = {
  aliasName: option(string),
  colNames: option(array(node)),
}

and rangeVar = {
  catalogName: option(string),
  schemaName: option(string),
  relName: option(string),
  inh: bool,
  relPersistence: string,
  alias: option(array(alias)),
  location: int,
}

and columnRef = {
  fields: option(array(node)),
  location: int,
}

and node =
  | A_ArrayExpr(aArrayExpr)
  | A_Const(aConst)
  | A_Expr(aExpr)
  | A_Star
  | Select(selectStmt)
  | Insert(Js.Json.t)
  | Update(Js.Json.t)
  | ResTarget(resTarget)
  | RangeVar(rangeVar)
  | ColumnRef(columnRef)
  | Other(Js.Json.t);

type rawStmt = {
  stmt: node,
  stmt_len: int,
  stmt_location: int,
};

type outerRawStmt = {rawStmt};
