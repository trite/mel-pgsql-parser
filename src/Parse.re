[@bs.module "pgsql-parser"]
external parse: string => array(Js.Json.t) = "parse";

type a_expr = {
  kind: option(Js.Json.t),
  name: option(Js.Json.t),
  lexpr: option(Js.Json.t),
  rexpr: option(Js.Json.t),
}

/* TODO: "value" values are wrapped in an extra layer
   that needs some discovery done
     ex: "val":{"Integer":{"ival":50}} */
and value =
  | String(Js.Json.t)
  | Int(Js.Json.t)
  | Float(Js.Json.t)
  | BitString(Js.Json.t)
  | Null

and a_const = {
  val_: option(value),
  location: option(int),
}

and withClause = {
  ctes: option(array(stmt)),
  recursive: bool,
  location: int,
}

and resTarget = {
  name: option(string),
  indirection: option(array(stmt)),
  val_: option(stmt),
  location: int,
}

and selectStmt = {
  distinctClause: option(array(Js.Json.t)),
  intoClause: option(Js.Json.t),
  targetList: option(array(stmt)),
  fromClause: option(array(Js.Json.t)),
  whereClause: option(stmt),
  groupClause: option(array(Js.Json.t)),
  havingClause: option(Js.Json.t),
  windowClause: option(array(Js.Json.t)),
  valuesLists: option(array(Js.Json.t)),
  sortClause: option(array(Js.Json.t)),
  limitOffset: option(Js.Json.t),
  limitCount: option(stmt),
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

and stmt =
  | Select(selectStmt)
  | Insert(Js.Json.t)
  | Update(Js.Json.t)
  | A_Expr(a_expr)
  | ResTarget(resTarget)
  | Other(Js.Json.t);

type rawStmt = {
  stmt,
  stmt_len: int,
  stmt_location: int,
};

type outerRawStmt = {rawStmt};
