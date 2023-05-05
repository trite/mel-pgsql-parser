type unk;

type resTarget = {
  name: unk,
  indirection: unk,
  [@bs.as "val"]
  _val: unk,
};

type a_expr = {
  kind: unk,
  name: unk,
  lexpr: unk,
  rexpr: unk,
}

and selectStmt = {
  distinctClause: option(array(stmt)),
  intoClause: unk,
  targetList: option(array(stmt)),
  fromClause: option(array(stmt)),
  whereClause: option(array(stmt)),
  groupClause: option(array(stmt)),
  havingClause: option(array(stmt)),
  windowClause: option(array(stmt)),
  valuesLists: option(array(stmt)),
  sortClause: option(array(stmt)),
  limitOffset: option(array(stmt)),
  limitCount: option(array(stmt)),
  lockingClause: option(array(stmt)),
  withClause: unk,
  op: unk,
  all: bool,
  larg: option(selectStmt),
  rarg: option(selectStmt),
}

and insertStmt = {
  relation: unk,
  cols: unk,
  selectStmt: unk,
  onConflictClause: unk,
  returningList: unk,
  withClause: unk,
  override: unk,
}

and updateStmt = {
  relation: unk,
  targetList: unk,
  whereClause: unk,
  fromClause: unk,
  returningList: unk,
  withClause: unk,
}

and stmt = [
  | `SelectStmt(selectStmt)
  | `InsertStmt(insertStmt)
  | `UpdateStmt(updateStmt)
  | `A_Expr(a_expr)
  | `other(unk)
];

// https://docs.rs/postgres-parser/0.0.4/postgres_parser/nodes/struct.RawStmt.html
// or https://docs.rs/crate/postgres-parser/latest/source/src/nodes.rs
type rawStmt = {
  stmt,
  stmt_len: int,
  stmt_location: int,
};

type outerRawStmt = {
  [@bs.as "RawStmt"]
  rawStmt,
};

type t = array(outerRawStmt);

// Needing this is a problem, wonder if there's a better way?
%raw
{|
   function wrappedParse(toParse) {
     var rawParsed = PgsqlParser.parse(toParse);

     for (var i = 0; i < rawParsed.length; i++) {
       if (Object.keys(rawParsed[i].RawStmt.stmt).length === 1) {
         /* get key name: */
         var keyName = Object.keys(rawParsed[i].RawStmt.stmt)[0];

         /* adding `NAME`:  */
         rawParsed[i].RawStmt.stmt.NAME = keyName;

         /* adding `VAL`: */
         rawParsed[i].RawStmt.stmt.VAL = rawParsed[i].RawStmt.stmt[keyName];
       }
     }

     return rawParsed
   }
|};
external wrappedParse: string => t = "wrappedParse";

[@bs.module "pgsql-parser"] external deparse: t => string = "deparse";
let parsed =
  wrappedParse(
    {|
  SELECT
    a.id,
    b.id,
    a.name,
    b.name
  FROM
    table_a AS a
    JOIN table_b AS b ON b.a_id = a.id
  WHERE
    a.id = 42
  LIMIT 50
  ;

  SELECT
    *
  FROM
    blah
  ;

  UPDATE
    some_table
  SET
    some_column = "some value",
    another_column = 27
  WHERE
    id = 42
  ;

  INSERT INTO something(id, col1, col2)
  VALUES (123, "foo", "bar")
  ;
|},
  );

// Don't necessarily print anything here yet, but running this does 2 things:
//  1. `require("pgsql-parser")`
//      a sign I am doing something wrong probably
//  2. make sure I'm not doing something that breaks the deparse process
//      which is the point of this entire exercise
let roggle = parsed |> deparse /* |> Array.S*/;

// TODO: Move array map outside this function
// let rec readParsed = parsed =>
//   parsed
//   |> Belt_Array.map(_, item =>
//        switch (item.rawStmt.stmt) {
//        | `SelectStmt(x) =>
//          // WhereClause must be checked and then looped through
//          Js.log(("Select Statement", x.whereClause |> readParsed))
//        | `UpdateStmt(x) => Js.log(("Update Statement", x.targetList))
//        | `InsertStmt(x) => Js.log(("Insert Statement", x.override))
//        | `A_Expr(x) => Js.log(("A_Expr", x))
//        | `other(_) => Js.Exn.raiseError("Unexpected statement type!")
//        }
//      );

// let stmtToString: stmt => string =
//   fun
//   | `SelectStmt(stmt) => "Select statement";

// parsed |> readParsed;

let rec optArrayStmtToString: option(array(stmt)) => string =
  optArrayStmt => {j|$optArrayStmt|j}
// optArrayStmt
// |> Option.fold("", x =>
//      x |> Array.map(stmtToString) |> Array.String.joinWith(",")
//    )

and unkToString: unk => string =
  unk => {j|Type unknown or not yet dealt with: $unk|j}

and selectStmtToString: selectStmt => string =
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
  ) => {
    let distinctClause =
      distinctClause
      |> Option.map(
           Array.map(stmt => {j|
    distinctClauseInfo: $stmt
    |j}),
         );
    let intoClause = intoClause |> unkToString;
    let targetList =
      targetList
      |> Option.fold("", x =>
           x |> Array.map(stmtToString) |> Array.String.joinWith(",")
         );
    let fromClause = fromClause |> optArrayStmtToString;
    let whereClause = whereClause |> optArrayStmtToString;
    let groupClause = groupClause |> optArrayStmtToString;
    let havingClause = havingClause |> optArrayStmtToString;
    let windowClause = windowClause |> optArrayStmtToString;
    let valuesLists = valuesLists |> optArrayStmtToString;
    let sortClause = sortClause |> optArrayStmtToString;
    let limitOffset = limitOffset |> optArrayStmtToString;
    let limitCount = limitCount |> optArrayStmtToString;
    let lockingClause = lockingClause |> optArrayStmtToString;
    let withClause = withClause |> unkToString;
    let op = op |> unkToString;
    let all = all |> Bool.show;
    let larg = larg |> Option.map(selectStmtToString);
    let rarg = rarg |> Option.map(selectStmtToString);

    {j|
SelectStmt:
  distinctClause: $distinctClause
  intoClause: $intoClause
  targetList: $targetList
  fromClause: $fromClause
  whereClause: $whereClause
  groupClause: $groupClause
  havingClause: $havingClause
  windowClause: $windowClause
  valuesLists: $valuesLists
  sortClause: $sortClause
  limitOffset: $limitOffset
  limitCount: $limitCount
  lockingClause: $lockingClause
  withClause: $withClause
  op: $op
  all: $all
  larg: $larg
  rarg: $rarg
      |j};
  }

and insertStmtToString: insertStmt => string =
  (
    {
      relation,
      cols,
      selectStmt,
      onConflictClause,
      returningList,
      withClause,
      override,
    },
  ) => {
    let relation = relation |> unkToString;
    let cols = cols |> unkToString;
    let selectStmt = selectStmt |> unkToString;
    let onConflictClause = onConflictClause |> unkToString;
    let returningList = returningList |> unkToString;
    let withClause = withClause |> unkToString;
    let override = override |> unkToString;

    {j|
InsertStmt:
  relation: $relation
  cols: $cols
  selectStmt: $selectStmt
  onConflictClause: $onConflictClause
  returningList: $returningList
  withClause: $withClause
  override: $override
  |j};
  }

and updateStmtToString: updateStmt => string =
  (
    {relation, targetList, whereClause, fromClause, returningList, withClause},
  ) => {
    let relation = relation |> unkToString;
    let targetList = targetList |> unkToString;
    let whereClause = whereClause |> unkToString;
    let fromClause = fromClause |> unkToString;
    let returningList = returningList |> unkToString;
    let withClause = withClause |> unkToString;

    {j|
UpdateStmt:
  relation: $relation
  targetList: $targetList
  whereClause: $whereClause
  fromClause: $fromClause
  returningList: $returningList
  withClause: $withClause
  |j};
  }

and aExprToString: a_expr => string = aexpr => {j|$aexpr|j}
// ({kind, name, lexpr, rexpr}) => {
//   let kind = kind |> unkToString;
//   let name = name |> unkToString;
//   let lexpr = lexpr |> unkToString;
//   let rexpr = rexpr |> unkToString;

//   {j|
// kind: $kind
// name: $name
// lexpr: $lexpr
// rexpr: $rexpr
// |j};
// }

and stmtToString =
  fun
  | `SelectStmt(stmt) => stmt |> selectStmtToString
  | `UpdateStmt(stmt) => stmt |> updateStmtToString
  | `InsertStmt(stmt) => stmt |> insertStmtToString
  | `A_Expr(stmt) => stmt |> aExprToString
  | `other(something) => {j|
====================
  Statement type not yet known: $something
====================
  |j};

parsed
|> Array.map(item => item.rawStmt.stmt |> stmtToString)
|> Array.forEach(Js.log);
