include Encode;
open Parse;

let null = str => (str, null);

let optionalJson = (str, x) => (str, x |> option(id));

let okJson = (str, x) => (str, x);

let rec encodeAExpr = ({kind, name, lexpr, rexpr}) =>
  obj([
    optionalJson("kind", kind),
    optionalJson("name", name),
    optionalJson("lexpr", lexpr),
    optionalJson("rexpr", rexpr),
  ])

and encodeValue = value =>
  obj([
    switch (value) {
    | String(x) => okJson("String", x)
    | Int(x) => okJson("Integer", x)
    | Float(x) => okJson("Float", x)
    | BitString(x) => okJson("BitString", x)
    | Null => null("Null")
    },
  ])

and encodeAConst = ({val_, location}: a_const) =>
  obj([
    ("val", val_ |> option(encodeValue)),
    ("location", location |> option(int)),
  ])

and encodeResTarget = ({name, indirection, val_, location}) =>
  Encode.(
    obj([
      ("name", name |> option(string)),
      ("indirection", indirection |> option(array(encodeStmt))),
      ("val", val_ |> option(encodeStmt)),
      ("location", location |> int),
    ])
  )

and encodeWithClause = ({ctes, recursive, location}) =>
  Encode.(
    obj([
      ("ctes", ctes |> option(array(encodeStmt))),
      ("recursive", recursive |> bool),
      ("location", location |> int),
    ])
  )

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
  Encode.(
    obj([
      ("distinctClause", distinctClause |> option(array(id))),
      ("intoClause", intoClause |> option(id)),
      ("targetList", targetList |> option(array(encodeStmt))),
      ("fromClause", fromClause |> option(array(id))),
      ("whereClause", whereClause |> option(encodeStmt)),
      ("groupClause", groupClause |> option(array(id))),
      ("havingClause", havingClause |> option(id)),
      ("windowClause", windowClause |> option(array(id))),
      ("valuesLists", valuesLists |> option(array(id))),
      ("sortClause", sortClause |> option(array(id))),
      ("limitOffset", limitOffset |> option(id)),
      ("limitCount", limitCount |> option(encodeStmt)),
      ("lockingClause", lockingClause |> option(array(id))),
      ("withClause", withClause |> option(encodeWithClause)),
      ("op", op |> option(id)),
      ("all", all |> option(bool)),
      ("larg", larg |> option(encodeSelectStmt)),
      ("rarg", rarg |> option(encodeSelectStmt)),
    ])
  )

and encodeStmt = stmt =>
  Encode.(
    obj([
      switch (stmt) {
      | Select(x) => ("SelectStmt", x |> encodeSelectStmt)
      | Insert(x) => ("InsertStmt", x |> id)
      | Update(x) => ("UpdateStmt", x |> id)
      | A_Expr(x) => ("A_Expr", x |> encodeAExpr)
      | ResTarget(x) => ("ResTarget", x |> encodeResTarget)
      | Other(x) => ("==OTHER/NYI==", x |> id)
      },
    ])
  );

let encodeRawStmt = ({stmt, stmt_len, stmt_location}) =>
  Encode.(
    obj([
      ("stmt", stmt |> encodeStmt),
      ("stmt_len", stmt_len |> int),
      ("stmt_location", stmt_location |> int),
    ])
  );

let encodeParsed = ({rawStmt}) =>
  Encode.(obj([("RawStmt", rawStmt |> encodeRawStmt)]));
