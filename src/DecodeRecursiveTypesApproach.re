module Decode = Decode.AsResult.OfParseError;
let ((<$>), (<*>)) = Decode.(map, apply);

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

and selectStmt = {
  distinctClause: option(array(Js.Json.t)),
  intoClause: option(Js.Json.t),
  targetList: option(array(Js.Json.t)),
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
  | Other(Js.Json.t);

let rec decodeAExpr = json =>
  json
  |> Decode.(
       ((kind, name, lexpr, rexpr) => {kind, name, lexpr, rexpr})
       <$> optionalField("kind", okJson)
       <*> optionalField("name", okJson)
       <*> optionalField("lexpr", okJson)
       <*> optionalField("rexpr", okJson)
     )

and decodeValue = json =>
  json
  |> Decode.(
       {
         let stringDecode = field("String", okJson) |> map(x => String(x));
         let intDecode = field("Integer", okJson) |> map(x => Int(x));
         let floatDecode = field("Float", okJson) |> map(x => Float(x));
         let bitStringDecode =
           field("BitString", okJson) |> map(x => BitString(x));
         let nullDecode = field("Null", okJson) |> map(_ => Null);

         oneOf(
           stringDecode,
           [intDecode, floatDecode, bitStringDecode, nullDecode],
         );
       }
     )

and decodeAConst = json =>
  json
  |> Decode.(
       ((val_, location) => {val_, location})
       <$> optionalField("val", decodeValue)
       <*> optionalField("location", intFromNumber)
     )

and decodeWithClause = json =>
  json
  |> Decode.(
       ((ctes, recursive, location) => {ctes, recursive, location})
       <$> optionalField("ctes", array(decodeStmt))
       <*> field("recursive", boolean)
       <*> field("location", intFromNumber)
     )

and decodeSelectStmt = json =>
  json
  |> Decode.(
       (
         (
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
         ) => {
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
         }
       )
       <$> optionalField("distinctClause", array(okJson))
       <*> optionalField("intoClause", okJson)
       <*> optionalField("targetList", array(okJson))
       <*> optionalField("fromClause", array(okJson))
       <*> optionalField("whereClause", decodeStmt)
       <*> optionalField("groupClause", array(okJson))
       <*> optionalField("havingClause", okJson)
       <*> optionalField("windowClause", array(okJson))
       <*> optionalField("valuesLists", array(okJson))
       <*> optionalField("sortClause", array(okJson))
       <*> optionalField("limitOffset", okJson)
       <*> optionalField("limitCount", decodeStmt)
       <*> optionalField("lockingClause", array(okJson))
       <*> optionalField("withClause", decodeWithClause)
       <*> optionalField("op", okJson)
       <*> optionalField("all", boolean)
       <*> optionalField("larg", decodeSelectStmt)
       <*> optionalField("rarg", decodeSelectStmt)
     )

and decodeStmt = json =>
  json
  |> Decode.(
       {
         let decodeSelectStmt =
           field("SelectStmt", decodeSelectStmt) |> map(x => Select(x));
         let decodeInsertStmt =
           field("InsertStmt", okJson) |> map(x => Insert(x));
         let decodeUpdateStmt =
           field("UpdateStmt", okJson) |> map(x => Update(x));
         let decodeAExpr =
           field("A_Expr", decodeAExpr) |> map(x => A_Expr(x));
         let decodeOther = okJson |> map(x => Other(x));

         oneOf(
           decodeSelectStmt,
           [decodeInsertStmt, decodeUpdateStmt, decodeAExpr, decodeOther],
         );
       }
     );

type rawStmt = {
  stmt,
  stmt_len: int,
  stmt_location: int,
};

let decodeRawStmt =
  Decode.(
    ((stmt, stmt_len, stmt_location) => {stmt, stmt_len, stmt_location})
    <$> field("stmt", decodeStmt)
    <*> field("stmt_len", intFromNumber)
    <*> field("stmt_location", intFromNumber)
  );

type outerRawStmt = {rawStmt};

let decodeParsed =
  Decode.(
    (rawStmt => {rawStmt: rawStmt}) <$> field("RawStmt", decodeRawStmt)
  );

[@bs.module "pgsql-parser"] external parse: string => 'a = "parse";
/* TODO: Swap back to the array(Js.Json.t) version
   when done using Js.Dict.t for exploration */
// external parse: string => array(Js.Json.t) = "parse";

let testExample = {|
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
|};

let parsed = testExample |> parse;

let rec stmtToString = stmt =>
  switch (stmt) {
  | Select(x) => x |> selectStmtToString
  | Insert(x) => {j|Insert: {$x}|j}
  | Update(x) => {j|Update: {$x}|j}
  | A_Expr(x) => {j|A_Expr: {$x}|j}
  | Other(x) => {j|==Other==: {$x}|j}
  }

and selectStmtToString =
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
  let allTheThings =
    [
      distinctClause |> Option.map(x => {j|distinctClause: $x|j}),
      intoClause |> Option.map(x => {j|intoClause: $x|j}),
      targetList |> Option.map(x => {j|targetClause: $x|j}),
      fromClause |> Option.map(x => {j|fromClause: $x|j}),
      whereClause |> Option.map(x => {j|whereClause: $x|j}),
      groupClause |> Option.map(x => {j|groupClause: $x|j}),
      havingClause |> Option.map(x => {j|havingClause: $x|j}),
      windowClause |> Option.map(x => {j|windowClause: $x|j}),
      valuesLists |> Option.map(x => {j|valuesLists: $x|j}),
      sortClause |> Option.map(x => {j|sortClause: $x|j}),
      limitOffset |> Option.map(x => {j|limitOffset: $x|j}),
      limitCount |> Option.map(x => {j|limitCount: $x|j}),
      lockingClause |> Option.map(x => {j|lockingClause: $x|j}),
      withClause |> Option.map(x => {j|withClause: $x|j}),
      op |> Option.map(x => {j|op: $x|j}),
      all |> Option.map(x => {j|bool: $x|j}),
      larg |> Option.map(selectStmtToString),
      rarg |> Option.map(selectStmtToString),
    ]
    |> List.catOptions
    |> List.map((++)("  "))
    |> List.String.joinWith("\n");

  {j|
Select: {
$allTheThings
}|j};
};

let checkStmt: stmt => unit =
  fun
  | Select(x) => Js.log2("Select", x)
  | Insert(x) => Js.log2("Insert", x)
  | Update(x) => Js.log2("Update", x)
  | A_Expr(x) => Js.log2("A_Expr", x)
  | Other(x) => Js.log2("Other", x);

parsed
|> Array.forEach(
     decodeParsed
     >> Result.fold(
          Decode_ParseError.failureToDebugString >> Js.log2(_, "Fail"), x =>
          x.rawStmt.stmt |> stmtToString |> Js.log
        ),
   );

Js.log("\n\n========\n\n");

parsed |> Array.forEach(Js.Dict.get(_, "RawStmt") >> Js.log);
