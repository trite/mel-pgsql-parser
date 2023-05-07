module E = EncodeParsed;
module D = DecodeParsed;

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

let parsed = testExample |> Parse.parse;

external jsonToDict: Js.Json.t => Js.Dict.t(Js.Json.t) = "%identity";

let get: (string, Js.Dict.t(Js.Json.t)) => Js.Dict.t(Js.Json.t) =
  (str, dict) => Js.Dict.unsafeGet(dict, str) |> jsonToDict;

parsed
|> Array.map(stmt =>
     E.obj([
       stmt
       |> D.decodeParsed
       |> Result.fold(
            err =>
              (
                "encode/decode - FAIL",
                err |> Decode_ParseError.failureToDebugString |> E.string,
              ),
            (yay: Parse.outerRawStmt) =>
              ("encode/decode - SUCCESS", yay.rawStmt.stmt |> E.encodeStmt),
          ),
       (
         "original",
         stmt |> jsonToDict |> get("RawStmt") |> get("stmt") |> E.dict(id),
       ),
     ])
     |> Js.Json.stringifyWithSpace(_, 2)
   )
|> Array.head
|> Option.getOrThrow
|> Js.log;

/* TODO: replace above using diffing from Compare module */
