type stmt = Js.Json.t;

let makeStmt = stmt => stmt;

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

type outerRawStmt = {
  [@bs.as "RawStmt"]
  rawStmt,
};

let makeOuterRawStmt = rawStmt => {
  rawStmt;
};

type parsed = array(outerRawStmt);

[@bs.module "pgsql-parser"] external parse: string => Js.Json.t = "parse";

// let decodeParsed = Decode.()

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

// let first = parsed |> Array.head |> Option.getOrThrow;

// first.rawStmt.stmt |> Js.log;

// first |> Js.Dict.get(_, "RawStmt") |> Js.log;
