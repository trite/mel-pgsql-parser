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

and decodeResTarget = json =>
  json
  |> Decode.(
       (
         (name, indirection, val_, location) => {
           name,
           indirection,
           val_,
           location,
         }
       )
       <$> optionalField("name", string)
       <*> optionalField("indirection", array(decodeStmt))
       <*> optionalField("val", decodeStmt)
       <*> field("location", intFromNumber)
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
       <*> optionalField("targetList", array(decodeStmt))
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
         let decodeResTarget =
           field("ResTarget", decodeResTarget) |> map(x => ResTarget(x));
         let decodeOther = okJson |> map(x => Other(x));

         oneOf(
           decodeSelectStmt,
           [
             decodeInsertStmt,
             decodeUpdateStmt,
             decodeAExpr,
             decodeResTarget,
             decodeOther,
           ],
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

let indentString = (~indent, str) => {
  let addIndent = (~indent, str) => String.repeat(indent, "  ") ++ str;

  str
  |> String.splitList(~delimiter="\n")
  |> List.map(addIndent(~indent))
  |> List.String.joinWith("\n");
};

let namedString = (~wrap: option(bool)=?, name: string, str: string) => {
  let unwrapped = {j|$name: $str|j};

  let wrapped = {j|$name: {
$str
}|j};

  wrap |> Option.fold(unwrapped, b => b ? wrapped : unwrapped);
};

let indentNamedString =
    (~wrap: option(bool)=?, ~indent, name: string, str: string) =>
  namedString(~wrap?, name, str) |> indentString(~indent);

let indentNamedJsonT = (~indent, name: string, str: Js.Json.t) => {
  let str =
    Js.Json.stringifyWithSpace(str, 2)
    |> String.splitList(~delimiter="\n")
    |> List.map(indentString(~indent))
    |> List.String.joinWith("\n");

  indentNamedString(~indent, name, str);
};

let rec stmtToString = (~indent, stmt) => {
  let indent = indent + 1;

  switch (stmt) {
  | Select(x) => x |> selectStmtToString(~indent)
  | Insert(x) => indentNamedJsonT(~indent, "Insert", x)
  | Update(x) => indentNamedJsonT(~indent, "Update", x)
  | A_Expr(x) => indentNamedString(~indent, "A_Expr", {j|$x|j}) // TODO: aexprToString
  | ResTarget(x) => x |> resTargetToString(~indent)
  | Other(x) => indentNamedJsonT(~indent, "==Other==", x)
  };
}

and resTargetToString = (~indent, {name, indirection, val_, location}) => {
  let indent = indent + 1;

  [
    name |> Option.map(indentNamedString(~indent, "name")),
    indirection
    |> Option.map(
         Array.map(stmtToString(~indent))
         >> Array.String.joinWith(",,")
         >> (x => {j|$x|j})
         >> indentNamedString(~indent, "indirection"),
       ),
    val_
    |> Option.map(
         stmtToString(~indent)
         >> indentNamedString(~wrap=true, ~indent, "valx1_"),
       ),
    location
    |> Int.toString
    |> indentNamedString(~indent, "location")
    |> Option.pure,
  ]
  |> List.catOptions
  |> List.map((++)("  "))
  |> List.String.joinWith("\n")
  |> indentNamedString(~wrap=true, ~indent, "ResTarget");
}

and selectStmtToString =
    (
      ~indent,
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
  let indent = indent + 1;

  let allTheThings =
    [
      distinctClause
      |> Option.map(
           Array.map(indentNamedJsonT(~indent, "distinctClause"))
           >> Array.String.joinWith("\n"),
         ),
      intoClause |> Option.map(indentNamedJsonT(~indent, "intoClause")),
      targetList
      |> Option.map(
           Array.map(stmtToString(~indent)) >> Array.String.joinWith(",,\n"),
         ),
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
      larg |> Option.map(selectStmtToString(~indent)),
      rarg |> Option.map(selectStmtToString(~indent)),
    ]
    |> List.catOptions
    |> List.map((++)("  "))
    |> List.String.joinWith("\n");

  {j|
Select: {
$allTheThings
}|j};
};

// let checkStmt: stmt => unit =
//   fun
//   | Select(x) => Js.log2("Select", x)
//   | Insert(x) => Js.log2("Insert", x)
//   | Update(x) => Js.log2("Update", x)
//   | A_Expr(x) => Js.log2("A_Expr", x)
//   | Other(x) => Js.log2("Other", x);

parsed
|> Array.forEach(
     decodeParsed
     >> Result.fold(
          Decode_ParseError.failureToDebugString >> Js.log2(_, "Fail"), x =>
          x.rawStmt.stmt |> stmtToString(~indent=-1) |> Js.log
        ),
   );

Js.log("\n\n========\n\n");

// parsed |> Array.forEach(Js.Dict.get(_, "RawStmt") >> Js.log);
parsed
|> Array.head
|> Option.getOrThrow
|> Js.Dict.unsafeGet(_, "RawStmt")
|> Js.Dict.unsafeGet(_, "stmt")
|> Js.Dict.unsafeGet(_, "SelectStmt")
|> Js.Dict.unsafeGet(_, "targetList")
|> Js.log;

// Next: ResTarget
