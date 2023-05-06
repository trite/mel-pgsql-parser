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

// [@bs.module "pgsql-parser"] external parse: string => 'a = "parse";
/* TODO: Swap back to the array(Js.Json.t) version
   when done using Js.Dict.t for exploration */
[@bs.module "pgsql-parser"]
external parse: string => array(Js.Json.t) = "parse";

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

type wrap = {
  start: string,
  end_: string,
};

let braces = {start: "{", end_: "}"};

let brackets = {start: "[", end_: "]"};

let indentString = (~indent, str) => {
  let addIndent = (~indent, s) =>
    // String.repeat(indent, "  ") ++ s;
    String.repeat(indent, {j|$indent$indent|j}) ++ s;

  str
  |> String.splitList(~delimiter="\n")
  |> List.map(addIndent(~indent))
  |> List.String.joinWith("\n")
  |> addIndent(~indent);
};

// TODO: change this back probably
[@ocaml.warning "-27"]
let namedString = (~wrap: option(wrap)=?, name: string, str: string) => {
  let nStr = {j|$name: $str|j};

  wrap |> Option.fold(nStr, ({start, end_}) => {j|$start
  $nStr
$end_|j});
};

let indentNamedString = (~wrap=?, ~indent, name: string, str: string) =>
  namedString(~wrap?, name, str) |> indentString(~indent);

let namedJsonT = (~wrap=?, name: string, json: Js.Json.t) =>
  Js.Json.stringifyWithSpace(json, 1) |> namedString(~wrap?, name);

let indentNamedJsonT = (~indent, name: string, json: Js.Json.t) =>
  namedJsonT(name, json) |> indentString(~indent);

let rec encodeAExpr = ({kind, name, lexpr, rexpr}) =>
  Encode.(
    obj([
      ("kind", kind |> option(id)),
      ("name", name |> option(id)),
      ("lexpr", lexpr |> option(id)),
      ("rexpr", rexpr |> option(id)),
    ])
  )

and encodeValue = value =>
  Encode.(
    obj([
      switch (value) {
      | String(x) => ("String", x |> id)
      | Int(x) => ("Integer", x |> id)
      | Float(x) => ("Float", x |> id)
      | BitString(x) => ("BitString", x |> id)
      | Null => ("Null", null)
      },
    ])
  )

and encodeAConst = ({val_, location}) =>
  Encode.(
    obj([
      ("val", val_ |> option(encodeValue)),
      ("location", location |> option(int)),
    ])
  )

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

external jsonToDict: Js.Json.t => Js.Dict.t(Js.Json.t) = "%identity";

let get: (string, Js.Dict.t(Js.Json.t)) => Js.Dict.t(Js.Json.t) =
  (str, dict) => Js.Dict.unsafeGet(dict, str) |> jsonToDict;

parsed
|> Array.map(stmt =>
     Encode.(
       obj([
         stmt
         |> decodeParsed
         |> Result.fold(
              err =>
                (
                  "encode/decode - FAIL",
                  err |> Decode_ParseError.failureToDebugString |> string,
                ),
              yay =>
                ("encode/decode - SUCCESS", yay.rawStmt.stmt |> encodeStmt),
            ),
         (
           "original",
           stmt |> jsonToDict |> get("RawStmt") |> get("stmt") |> dict(id),
         ),
       ])
     )
     |> Js.Json.stringifyWithSpace(_, 2)
   )
|> Array.head
|> Option.getOrThrow
|> Js.log;

/* TODO: replace above using diffing from Compare module */
