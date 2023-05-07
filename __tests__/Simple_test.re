open Jest;
open Expect;
// open DecodeParsed;
open Mel_pgsql_parser;
// open DecodeParsed;
// open Relude;

let testThing = {j|
  SELECT
    *
  FROM
    blah
  ;
  |j};

let testThingExpected = {j|{
  "RawStmt": {
    "stmt": {
      "SelectStmt": {
        "targetList": [
          {
            "ResTarget": {
              "val": {
                "ColumnRef": {
                  "fields": [
                    {
                      "A_Star": {}
                    }
                  ],
                  "location": 14
                }
              },
              "location": 14
            }
          }
        ],
        "fromClause": [
          {
            "RangeVar": {
              "relname": "blah",
              "inh": true,
              "relpersistence": "p",
              "location": 27
            }
          }
        ],
        "limitOption": "LIMIT_OPTION_DEFAULT",
        "op": "SETOP_NONE"
      }
    },
    "stmt_len": 34,
    "stmt_location": 0
  }
}|j};

describe("blah", () => {
  test("true = true should succeed", () =>
    expect(true) |> toEqual(true)
  )
});

describe("Parses as expected", () => {
  test("Compare parsed output of simple select query", () =>
    expect(
      testThing
      |> Parse.parse
      |> Array.head
      |> Option.getOrThrow
      |> Js.Json.stringifyWithSpace(_, 2),
    )
    |> toEqual(testThingExpected)
  )
});

describe("Parse |> decode |> update |> encode |> deparse", () => {
  test("Update from clause of simple query", () => {
    let update: AstTypes.outerRawStmt => AstTypes.outerRawStmt =
      AstModify.(
        updateOuterRawStmt(
          ~rawStmt=
            updateRawStmt(
              ~stmt=
                updateNode(
                  ~update_select=
                    updateSelectStmt(
                      ~fromClause=
                        Option.map(
                          Array.map(
                            updateNode(
                              ~update_range_var=
                                updateRangeVar(~relName=_ =>
                                  Some("something_else")
                                ),
                            ),
                          ),
                        ),
                    ),
                ),
            ),
        )
      );

    expect(
      "SELECT * FROM blah;"
      |> Parse.parse
      |> Array.map(
           DecodeParsed.decodeParsed
           >> Result.getOk
           >> Option.getOrThrow
           >> update
           >> EncodeParsed.encodeParsed,
         )
      |> Parse.deparse,
    )
    |> toEqual("SELECT * FROM something_else;");
  })
});
