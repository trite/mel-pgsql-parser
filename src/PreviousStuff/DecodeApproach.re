module Decode = Decode.AsResult.OfParseError;
let ((<$>), (<*>)) = Decode.(map, apply);

type stmt =
  | Select(Js.Json.t)
  | Insert(Js.Json.t)
  | Update(Js.Json.t)
  // | `A_Expr(Js.Json.t)
  | Other(Js.Json.t);

let decodeStmt =
  Decode.(
    {
      let decodeSelectStmt =
        field("SelectStmt", okJson) |> map(x => Select(x));
      let decodeInsertStmt =
        field("InsertStmt", okJson) |> map(x => Insert(x));
      let decodeUpdateStmt =
        field("UpdateStmt", okJson) |> map(x => Update(x));
      // let decodeAExpr = field("", okJson) |> map(x => `SelectStmt(x));
      let decodeOther = okJson |> map(x => Other(x));

      oneOf(
        decodeSelectStmt,
        [decodeInsertStmt, decodeUpdateStmt, decodeOther],
      );
    }
  );

// let makeStmt = stmt => stmt;

type rawStmt = {
  stmt,
  stmt_len: int,
  stmt_location: int,
};

let makeRawStmt = (stmt, stmt_len, stmt_location) => {
  stmt,
  stmt_len,
  stmt_location,
};

let decodeRawStmt =
  Decode.(
    makeRawStmt
    <$> field("stmt", decodeStmt)
    <*> field("stmt_len", intFromNumber)
    <*> field("stmt_location", intFromNumber)
  );

type outerRawStmt = {
  [@bs.as "RawStmt"]
  rawStmt,
};

let makeOuterRawStmt = rawStmt => {rawStmt: rawStmt};

let decodeParsed =
  Decode.(makeOuterRawStmt <$> field("RawStmt", decodeRawStmt));

type parsed = array(outerRawStmt);

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

let checkStmt: stmt => unit =
  fun
  | Select(x) => Js.log2("Select", x)
  | Insert(x) => Js.log2("Select", x)
  | Update(x) => Js.log2("Select", x)
  | Other(x) => Js.log2("Select", x);

parsed
|> Array.map(decodeParsed)
|> Array.head
|> Option.getOrThrow
|> Result.fold(
     Decode_ParseError.failureToDebugString >> Js.log2(_, "Fail"),
     //  Js.log2("Success"),
     x =>
     x.rawStmt.stmt |> checkStmt
   );

// parsed |> Array.head |> Option.getOrThrow |> Js.log;

// let first = parsed |> Array.head |> Option.getOrThrow;

// first.rawStmt.stmt |> Js.log;

// first |> Js.Dict.get(_, "RawStmt") |> Js.log;
