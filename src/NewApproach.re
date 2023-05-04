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
  distinctClause: option(list(stmt)),
  intoClause: unk,
  targetList: option(list(stmt)),
  fromClause: option(list(stmt)),
  whereClause: option(list(stmt)),
  groupClause: option(list(stmt)),
  havingClause: option(list(stmt)),
  windowClause: option(list(stmt)),
  valuesLists: option(list(stmt)),
  sortClause: option(list(stmt)),
  limitOffset: option(list(stmt)),
  limitCount: option(list(stmt)),
  lockingClause: option(list(stmt)),
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
let roggle = parsed |> deparse;

// TODO: Move array map outside this function
let rec readParsed = parsed =>
  parsed
  |> Belt_Array.map(_, item =>
       switch (item.rawStmt.stmt) {
       | `SelectStmt(x) =>
         // WhereClause must be checked and then looped through
         Js.log(("Select Statement", x.whereClause |> readParsed))
       | `UpdateStmt(x) => Js.log(("Update Statement", x.targetList))
       | `InsertStmt(x) => Js.log(("Insert Statement", x.override))
       | `A_Expr(x) => Js.log(("A_Expr", x))
       | `other(_) => Js.Exn.raiseError("Unexpected statement type!")
       }
     );

parsed |> readParsed;
