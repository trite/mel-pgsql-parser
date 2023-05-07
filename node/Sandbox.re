open Mel_pgsql_parser;

let test = [%raw
  {j|
  {
    something:
    {
      val_a: 1234,
      val_b: ["asdf", 2345]
    }
  }
|j}
];

// boo
{j|$test|j} |> Js.log;

let test = test |> Js.Json.stringifyWithSpace(_, 2);

// yay!
{j|$test|j} |> Js.log;

// How does splitting and joining a string on line returns behave?
"abc"
|> String.splitList(~delimiter="\n")
|> List.map((++)("prefix:"))
|> List.String.joinWith("\n")
|> (x => {j|<$x>|j})
|> Js.log;

String.repeat(-1, "blah") |> (x => {j|<$x>|j}) |> Js.log;

Js.log(Colors.green("green") ++ " text");
Js.log(Colors.red("red") ++ " text");
Js.log(Colors.grey("grey") ++ " text");

open Compare;

let oldStr = "blah stuff and things";

let newStr = "blarg stuff and more stuff";

diffChars(oldStr, newStr)
|> colorizeAndMerge
|> (++)("diffChars: ")
|> Js.log;

diffWords(oldStr, newStr)
|> colorizeAndMerge
|> (++)("diffWords: ")
|> Js.log;

Js.log("========");

let testThing = {j|
  SELECT
    *
  FROM
    blah
  ;
  |j};

// testThing
// |> Parse.parse
// |> Array.head
// |> Option.getOrThrow
// |> Js.Json.stringifyWithSpace(_, 2)
// |> Js.log;

// TODO: handle decoding of fromClause and then attempt to change the AST using it
//   Then deparse and observe the updated SQL
//   Finally, make that into the first real test!
// let update: AstTypes.outerRawStmt => AstTypes.outerRawStmt =
//   ({rawStmt}: AstTypes.outerRawStmt) => {
//     rawStmt:
//       rawStmt
//       |> (
//         ({stmt, stmt_len: _, stmt_location: _} as innerStmt) => {
//           ...innerStmt,
//           stmt:
//             stmt
//             |> (
//               fun
//               | Select(
//                   {
//                     distinctClause: _,
//                     intoClause: _,
//                     targetList: _,
//                     fromClause,
//                     whereClause: _,
//                     groupClause: _,
//                     havingClause: _,
//                     windowClause: _,
//                     valuesLists: _,
//                     sortClause: _,
//                     limitOffset: _,
//                     limitCount: _,
//                     lockingClause: _,
//                     withClause: _,
//                     op: _,
//                     all: _,
//                     larg: _,
//                     rarg: _,
//                   } as sel,
//                 ) =>
//                 AstTypes.Select({
//                   ...sel,
//                   fromClause:
//                     fromClause
//                     |> Option.map(
//                          Array.map(s =>
//                            s
//                            |> (
//                              fun
//                              | AstTypes.RangeVar(
//                                  {
//                                    catalogName: _,
//                                    schemaName: _,
//                                    relName,
//                                    inh: _,
//                                    relPersistence: _,
//                                    alias: _,
//                                    location: _,
//                                  } as rangeVar,
//                                ) =>
//                                AstTypes.RangeVar({
//                                  ...rangeVar,
//                                  relName:
//                                    relName |> Option.map(_ => "something_new"),
//                                })
//                              | _ =>
//                                failwith(
//                                  "Seriously, wut"
//                                  ++ (
//                                    s
//                                    |> Js.Json.stringifyAny
//                                    |> Option.getOrThrow
//                                  ),
//                                )
//                            )
//                          ),
//                        ),
//                 })
//               | _ => failwith("Wut")
//             ),
//         }
//       ),
//   };

// let update: AstTypes.outerRawStmt => AstTypes.outerRawStmt =
//   AstModify.(
//     updateOuterRawStmt(
//       ~rawStmt=
//         updateRawStmt(
//           ~stmt=
//             fun
//             | Select(selStmt) =>
//               Select(
//                 selStmt
//                 |> updateSelectStmt(
//                      ~fromClause=
//                        Option.map(
//                          Array.map(
//                            fun
//                            | AstTypes.RangeVar(rVar) =>
//                              AstTypes.RangeVar(
//                                rVar
//                                |> updateRangeVar(~relName=_ =>
//                                     Some("something_else")
//                                   ),
//                              )
//                            | _ =>
//                              failwith(
//                                "Unexpected statement type, expected RangeVar",
//                              ),
//                          ),
//                        ),
//                    ),
//               )
//             | _ => failwith("Unexpected statement type, expected Select"),
//         ),
//     )
//   );

// Well this works... but the nesting gets extreme quite fast
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

let parsed =
  testThing
  |> Parse.parse
  |> Array.head
  |> Option.getOrThrow
  |> DecodeParsed.decodeParsed
  |> Result.fold(
       err => Js.log2(err |> Decode_ParseError.failureToDebugString, "FAIL"),
       x =>
         [|x |> update |> EncodeParsed.encodeParsed|]
         |> Parse.deparse
         |> Js.log,
     );
