// type translation = {
//   name: string,
// }
/* How hard is it to make a ppx rewriter? */

module type AstType = {
  type t;

  let decode: Js.Json.t => result(t, Decode.ParseError.failure);

  let encode: t => Js.Json.t;
};

module rec A_Expr: AstType = {
  type t = {
    kind: option(Js.Json.t),
    name: option(Js.Json.t),
    lexpr: option(Js.Json.t),
    rexpr: option(Js.Json.t),
  };

  let decode =
    DecodeParsed.(
      ((kind, name, lexpr, rexpr) => {kind, name, lexpr, rexpr})
      <$> optionalField("kind", okJson)
      <*> optionalField("name", okJson)
      <*> optionalField("lexpr", okJson)
      <*> optionalField("rexpr", okJson)
    );

  let encode = ({kind, name, lexpr, rexpr}) =>
    Encode.(
      obj([
        ("kind", kind |> option(id)),
        ("name", name |> option(id)),
        ("lexpr", lexpr |> option(id)),
        ("rexpr", rexpr |> option(id)),
      ])
    );
}

and Stmt: AstType = {
  type t =
    | A_Expr(A_Expr.t);

  // let names = {
  //   aExpr = "A_Expr"
  // };

  let decode =
    DecodeParsed.(
      oneOf(
        // field("SelectStmt", okJson) |> map(x => )
        field("A_Expr", A_Expr.decode) |> map(x => A_Expr(x)),
        [],
      )
    );

  let encode = stmt =>
    Encode.(
      obj([
        switch (stmt) {
        | A_Expr(x) => ("A_Expr", x |> A_Expr.encode)
        },
      ])
    );
};
