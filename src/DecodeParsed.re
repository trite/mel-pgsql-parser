module Decode = Decode.AsResult.OfParseError;

// open Decode;
include Decode;
open AstTypes;

let (<$>) = map;

let (<*>) = apply;

let rec decodeAArrayExpr = json =>
  json
  |> (
    ((elements, location) => {elements, location})
    <$> optionalField("elements", array(decodeNode))
    <*> field("location", intFromNumber)
  )

and decodeAConst = json =>
  json
  |> (
    ((val_, location) => {val_, location})
    <$> optionalField("val", decodeValue)
    <*> optionalField("location", intFromNumber)
  )

and decodeAExpr = json =>
  json
  |> (
    ((kind, name, lexpr, rexpr) => {kind, name, lexpr, rexpr})
    <$> optionalField("kind", okJson)
    <*> optionalField("name", array(decodeNode))
    <*> optionalField("lexpr", okJson)
    <*> optionalField("rexpr", okJson)
  )

and decodeAIndices = json =>
  json
  |> (
    ((is_slice, lidx, uidx) => {is_slice, lidx, uidx})
    <$> field("is_slice", boolean)
    <*> optionalField("lidx", decodeNode)
    <*> optionalField("uidx", decodeNode)
  )

and decodeAStar = json => json |> okJson

and decodeValue = json =>
  json
  |> oneOf(
       field("String", okJson) |> map(x => String(x)),
       [
         field("Integer", okJson) |> map(x => Int(x)),
         field("Float", okJson) |> map(x => Float(x)),
         field("BitString", okJson) |> map(x => BitString(x)),
         field("Null", okJson) |> map(_ => Null),
       ],
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
       <*> optionalField("indirection", array(decodeNode))
       <*> optionalField("val", decodeNode)
       <*> field("location", intFromNumber)
     )

and decodeWithClause = json =>
  json
  |> Decode.(
       ((ctes, recursive, location) => {ctes, recursive, location})
       <$> optionalField("ctes", array(decodeNode))
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
       <*> optionalField("targetList", array(decodeNode))
       <*> optionalField("fromClause", array(decodeNode))
       <*> optionalField("whereClause", decodeNode)
       <*> optionalField("groupClause", array(okJson))
       <*> optionalField("havingClause", okJson)
       <*> optionalField("windowClause", array(okJson))
       <*> optionalField("valuesLists", array(okJson))
       <*> optionalField("sortClause", array(okJson))
       <*> optionalField("limitOffset", okJson)
       <*> optionalField("limitCount", decodeNode)
       <*> optionalField("lockingClause", array(okJson))
       <*> optionalField("withClause", decodeWithClause)
       <*> optionalField("op", okJson)
       <*> optionalField("all", boolean)
       <*> optionalField("larg", decodeSelectStmt)
       <*> optionalField("rarg", decodeSelectStmt)
     )

and decodeAlias = json =>
  json
  |> (
    ((aliasName, colNames) => {aliasName, colNames})
    <$> optionalField("aliasName", string)
    <*> optionalField("colNames", array(decodeNode))
  )

and decodeRangeVar = json =>
  json
  |> (
    (
      (catalogName, schemaName, relName, inh, relPersistence, alias, location) => {
        catalogName,
        schemaName,
        relName,
        inh,
        relPersistence,
        alias,
        location,
      }
    )
    <$> optionalField("catalogname", string)
    <*> optionalField("schemaname", string)
    <*> optionalField("relname", string)
    <*> field("inh", boolean)
    <*> field("relpersistence", string)
    <*> optionalField("alias", array(decodeAlias))
    <*> field("location", intFromNumber)
  )

and decodeColumnRef = json =>
  json
  |> (
    ((fields, location) => {fields, location})
    <$> optionalField("fields", array(decodeNode))
    <*> field("location", intFromNumber)
  )

and decodeNode = json =>
  json
  |> oneOf(
       field("SelectStmt", decodeSelectStmt) |> map(x => Select(x)),
       [
         field("A_ArrayExpr", decodeAArrayExpr) |> map(x => A_ArrayExpr(x)),
         field("A_Const", decodeAConst) |> map(x => A_Const(x)),
         field("A_Expr", decodeAExpr) |> map(x => A_Expr(x)),
         field("A_Star", decodeAStar) |> map(_ => A_Star),
         field("InsertStmt", okJson) |> map(x => Insert(x)),
         field("UpdateStmt", okJson) |> map(x => Update(x)),
         field("ResTarget", decodeResTarget) |> map(x => ResTarget(x)),
         field("RangeVar", decodeRangeVar) |> map(x => RangeVar(x)),
         field("ColumnRef", decodeColumnRef) |> map(x => ColumnRef(x)),
         /* TODO: error here once all stmt/node types are accounted for */
         Decode.okJson |> map(x => Other(x)),
       ],
     );

let decodeRawStmt =
  Decode.(
    ((stmt, stmt_len, stmt_location) => {stmt, stmt_len, stmt_location})
    <$> field("stmt", decodeNode)
    <*> field("stmt_len", intFromNumber)
    <*> field("stmt_location", intFromNumber)
  );

let decodeParsed =
  Decode.(
    (rawStmt => {rawStmt: rawStmt}) <$> field("RawStmt", decodeRawStmt)
  );
