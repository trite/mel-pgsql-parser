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

describe("Decodes as expected", () => {
  test("TODO: name later", () =>
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
