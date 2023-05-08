open Encode;
open AstTypes;

// let null = str => (str, null);

// let optionalJson = (str, x) => (str, x |> option(id));

// let okJson = (str, x) => (str, x);

let rec encodeAArrayExpr = ({elements, location}) =>
  obj([
    ("elements", elements |> option(array(encodeNode))),
    ("location", location |> int),
  ])

and encodeAConst = ({val_, location}: aConst) =>
  obj([
    ("val", val_ |> option(encodeValue)),
    ("location", location |> option(int)),
  ])

and encodeAExpr = ({kind, name, lexpr, rexpr}) =>
  obj([
    ("kind", kind |> option(id)),
    ("name", name |> option(array(encodeNode))),
    ("lexpr", lexpr |> option(id)),
    ("rexpr", rexpr |> option(id)),
  ])

and encodeAIndices = ({is_slice, lidx, uidx}) =>
  obj([
    ("is_slice", is_slice |> bool),
    ("lidx", lidx |> option(encodeNode)),
    ("uidx", uidx |> option(encodeNode)),
  ])

and encodeAStar: Js.Json.t = [%raw "{}"]

and encodeValue = value =>
  obj([
    switch (value) {
    | String(x) => ("String", x)
    | Int(x) => ("Integer", x)
    | Float(x) => ("Float", x)
    | BitString(x) => ("BitString", x)
    | Null => ("Null", null)
    },
  ])

and encodeResTarget = ({name, indirection, val_, location}) =>
  obj([
    ("name", name |> option(string)),
    ("indirection", indirection |> option(array(encodeNode))),
    ("val", val_ |> option(encodeNode)),
    ("location", location |> int),
  ])

and encodeWithClause = ({ctes, recursive, location}) =>
  obj([
    ("ctes", ctes |> option(array(encodeNode))),
    ("recursive", recursive |> bool),
    ("location", location |> int),
  ])

and encodeSelectStmt =
    (
      {
        distinctClause,
        intoClause,
        targetList,
        fromClause,
        whereClause,
        groupClause,
        havingClause,
        windowClause,
        valuesLists,
        sortClause,
        limitOffset,
        limitCount,
        lockingClause,
        withClause,
        op,
        all,
        larg,
        rarg,
      },
    ) =>
  obj([
    ("distinctClause", distinctClause |> option(array(id))),
    ("intoClause", intoClause |> option(id)),
    ("targetList", targetList |> option(array(encodeNode))),
    ("fromClause", fromClause |> option(array(encodeNode))),
    ("whereClause", whereClause |> option(encodeNode)),
    ("groupClause", groupClause |> option(array(id))),
    ("havingClause", havingClause |> option(id)),
    ("windowClause", windowClause |> option(array(id))),
    ("valuesLists", valuesLists |> option(array(id))),
    ("sortClause", sortClause |> option(array(id))),
    ("limitOffset", limitOffset |> option(id)),
    ("limitCount", limitCount |> option(encodeNode)),
    ("lockingClause", lockingClause |> option(array(id))),
    ("withClause", withClause |> option(encodeWithClause)),
    ("op", op |> option(id)),
    ("all", all |> option(bool)),
    ("larg", larg |> option(encodeSelectStmt)),
    ("rarg", rarg |> option(encodeSelectStmt)),
  ])

and encodeAlias = ({aliasName, colNames}) =>
  obj([
    ("aliasname", aliasName |> option(string)),
    ("colNames", colNames |> option(array(encodeNode))),
  ])

and encodeRangeVar =
    (
      {catalogName, schemaName, relName, inh, relPersistence, alias, location},
    ) =>
  obj([
    ("catalogname", catalogName |> option(string)),
    ("schemaname", schemaName |> option(string)),
    ("relname", relName |> option(string)),
    ("inh", inh |> bool),
    ("relpersistence", relPersistence |> string),
    ("alias", alias |> option(array(encodeAlias))),
    ("location", location |> int),
  ])

and encodeColumnRef = ({fields, location}) =>
  obj([
    ("fields", fields |> option(array(encodeNode))),
    ("location", location |> int),
  ])

// TODO: need to implement other things for deparsing to work still
//   I suspect that just having everything in the `stmt` type as Js.Json.t until implemented should work

and encodeNode = stmt =>
  obj([
    switch (stmt) {
    | A_ArrayExpr(x) => ("A_ArrayExpr", x |> encodeAArrayExpr)
    | A_Const(x) => ("A_Const", x |> encodeAConst)
    | A_Expr(x) => ("A_Expr", x |> encodeAExpr)
    | A_Star => ("A_Star", encodeAStar)
    | Select(x) => ("SelectStmt", x |> encodeSelectStmt)
    | Insert(x) => ("InsertStmt", x |> id)
    | Update(x) => ("UpdateStmt", x |> id)
    | ResTarget(x) => ("ResTarget", x |> encodeResTarget)
    | RangeVar(x) => ("RangeVar", x |> encodeRangeVar)
    | ColumnRef(x) => ("ColumnRef", x |> encodeColumnRef)
    | Other(x) => ("==OTHER/NYI==", x |> id)
    },
  ]);

let encodeRawStmt = ({stmt, stmt_len, stmt_location}) =>
  obj([
    ("stmt", stmt |> encodeNode),
    ("stmt_len", stmt_len |> int),
    ("stmt_location", stmt_location |> int),
  ]);

let encodeParsed = ({rawStmt}) =>
  obj([("RawStmt", rawStmt |> encodeRawStmt)]);
