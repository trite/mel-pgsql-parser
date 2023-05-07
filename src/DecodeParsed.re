module Decode = Decode.AsResult.OfParseError;

// open Decode;
include Decode;
open Parse;

let (<$>) = map;

let (<*>) = apply;

let null = field(_, null);

let optionalJson = optionalField(_, okJson);

let okJson = field(_, okJson);

let rec decodeAExpr = json =>
  json
  |> (
    ((kind, name, lexpr, rexpr) => {kind, name, lexpr, rexpr})
    <$> optionalJson("kind")
    <*> optionalJson("name")
    <*> optionalJson("lexpr")
    <*> optionalJson("rexpr")
  )

and decodeValue = json =>
  json
  |> Decode.oneOf(
       okJson("String") |> map(x => String(x)),
       [
         okJson("Integer") |> map(x => Int(x)),
         okJson("Float") |> map(x => Float(x)),
         okJson("BitString") |> map(x => BitString(x)),
         okJson("Null") |> map(_ => Null),
       ],
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

let decodeRawStmt =
  Decode.(
    ((stmt, stmt_len, stmt_location) => {stmt, stmt_len, stmt_location})
    <$> field("stmt", decodeStmt)
    <*> field("stmt_len", intFromNumber)
    <*> field("stmt_location", intFromNumber)
  );

let decodeParsed =
  Decode.(
    (rawStmt => {rawStmt: rawStmt}) <$> field("RawStmt", decodeRawStmt)
  );
