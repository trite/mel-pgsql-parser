module type AstType = {
  type t;

  let decode: Js.Json.t => result(t, Decode.ParseError.failure);

  let encode: t => Js.Json.t;
};

module rec A_ArrayExpr: AstType = {
  type t = {
    elements: option(array(Stmt.t)),
    location: int,
  };

  let decode =
    DecodeParsed.(
      ((elements, location) => {elements, location})
      <$> optionalField("elements", array(Stmt.decode))
      <*> field("location", intFromNumber)
    );

  let encode = ({elements, location}) =>
    Encode.(
      obj([
        ("elements", elements |> option(array(Stmt.encode))),
        ("location", location |> int),
      ])
    );
}

and A_Const: AstType = {
  type t = {
    val_: option(Value.t),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      ((val_, location) => {val_, location})
      <$> optionalField("val", Value.decode)
      <*> optionalField("location", intFromNumber)
    );

  let encode = ({val_, location}) =>
    Encode.(
      obj([
        ("val", val_ |> option(Value.encode)),
        ("location", location |> option(int)),
      ])
    );
}

and A_Expr: AstType = {
  type t = {
    kind: option(Js.Json.t),
    name: option(array(Stmt.t)),
    lexpr: option(Js.Json.t),
    rexpr: option(Js.Json.t),
  };

  let decode =
    DecodeParsed.(
      ((kind, name, lexpr, rexpr) => {kind, name, lexpr, rexpr})
      <$> optionalField("kind", okJson)
      <*> optionalField("name", array(Stmt.decode))
      <*> optionalField("lexpr", okJson)
      <*> optionalField("rexpr", okJson)
    );

  let encode = ({kind, name, lexpr, rexpr}) =>
    Encode.(
      obj([
        ("kind", kind |> option(id)),
        ("name", name |> option(array(Stmt.encode))),
        ("lexpr", lexpr |> option(id)),
        ("rexpr", rexpr |> option(id)),
      ])
    );
}

and A_Indices: AstType = {
  type t = {
    is_slice: bool,
    lidx: option(Stmt.t),
    uidx: option(Stmt.t),
  };

  let decode =
    DecodeParsed.(
      ((is_slice, lidx, uidx) => {is_slice, lidx, uidx})
      <$> field("is_slice", boolean)
      <*> optionalField("lidx", Stmt.decode)
      <*> optionalField("uidx", Stmt.decode)
    );

  let encode = ({is_slice, lidx, uidx}) =>
    Encode.(
      obj([
        ("is_slice", is_slice |> bool),
        ("lidx", lidx |> option(Stmt.encode)),
        ("uidx", uidx |> option(Stmt.encode)),
      ])
    );
}

and A_Indirection: AstType = {
  type t = {
    arg: option(Stmt.t),
    indirection: option(array(Stmt.t)),
  };

  let decode =
    DecodeParsed.(
      ((arg, indirection) => {arg, indirection})
      <$> optionalField("arg", Stmt.decode)
      <*> optionalField("indirection", array(Stmt.decode))
    );

  let encode = ({arg, indirection}) =>
    Encode.(
      obj([
        ("arg", arg |> option(Stmt.encode)),
        ("indirection", indirection |> option(array(Stmt.encode))),
      ])
    );
}

and AccessPriv: AstType = {
  type t = {
    priv_name: option(string),
    cols: option(array(Stmt.t)),
  };

  let decode =
    DecodeParsed.(
      ((priv_name, cols) => {priv_name, cols})
      <$> optionalField("priv_name", string)
      <*> optionalField("cols", array(Stmt.decode))
    );

  let encode = ({priv_name, cols}) =>
    Encode.(
      obj([
        ("priv_name", priv_name |> option(string)),
        ("cols", cols |> option(array(Stmt.encode))),
      ])
    );
}

and Aggref: AstType = {
  type t = {
    aggfnoid: option(int),
    aggtype: option(int),
    aggcollid: option(int),
    inputcollid: option(int),
    aggtranstype: option(int),
    aggargtypes: option(array(Stmt.t)),
    aggdirectargs: option(array(Stmt.t)),
    args: option(array(Stmt.t)),
    aggorder: option(array(Stmt.t)),
    aggdistinct: option(array(Stmt.t)),
    aggfilter: option(Stmt.t),
    aggstar: option(bool),
    aggvariadic: option(bool),
    aggkind: option(string),
    agglevelsup: option(int),
    aggsplit: option(Js.Json.t),
    aggno: option(int),
    aggtransno: option(int),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (
          aggfnoid,
          aggtype,
          aggcollid,
          inputcollid,
          aggtranstype,
          aggargtypes,
          aggdirectargs,
          args,
          aggorder,
          aggdistinct,
          aggfilter,
          aggstar,
          aggvariadic,
          aggkind,
          agglevelsup,
          aggsplit,
          aggno,
          aggtransno,
          location,
        ) => {
          aggfnoid,
          aggtype,
          aggcollid,
          inputcollid,
          aggtranstype,
          aggargtypes,
          aggdirectargs,
          args,
          aggorder,
          aggdistinct,
          aggfilter,
          aggstar,
          aggvariadic,
          aggkind,
          agglevelsup,
          aggsplit,
          aggno,
          aggtransno,
          location,
        }
      )
      <$> optionalField("aggfnoid", intFromNumber)
      <*> optionalField("aggtype", intFromNumber)
      <*> optionalField("aggcollid", intFromNumber)
      <*> optionalField("inputcollid", intFromNumber)
      <*> optionalField("aggtranstype", intFromNumber)
      <*> optionalField("aggargtypes", array(Stmt.decode))
      <*> optionalField("aggdirectargs", array(Stmt.decode))
      <*> optionalField("args", array(Stmt.decode))
      <*> optionalField("aggorder", array(Stmt.decode))
      <*> optionalField("aggdistinct", array(Stmt.decode))
      <*> optionalField("aggfilter", Stmt.decode)
      <*> optionalField("aggstar", boolean)
      <*> optionalField("aggvariadic", boolean)
      <*> optionalField("aggkind", string)
      <*> optionalField("agglevelsup", intFromNumber)
      <*> optionalField("aggsplit", okJson)
      <*> optionalField("aggno", intFromNumber)
      <*> optionalField("aggtransno", intFromNumber)
      <*> optionalField("location", intFromNumber)
    );

  let encode =
      (
        {
          aggfnoid,
          aggtype,
          aggcollid,
          inputcollid,
          aggtranstype,
          aggargtypes,
          aggdirectargs,
          args,
          aggorder,
          aggdistinct,
          aggfilter,
          aggstar,
          aggvariadic,
          aggkind,
          agglevelsup,
          aggsplit,
          aggno,
          aggtransno,
          location,
        },
      ) =>
    Encode.(
      obj([
        ("aggfnoid", aggfnoid |> option(int)),
        ("aggtype", aggtype |> option(int)),
        ("aggcollid", aggcollid |> option(int)),
        ("inputcollid", inputcollid |> option(int)),
        ("aggtranstype", aggtranstype |> option(int)),
        ("aggargtypes", aggargtypes |> option(array(Stmt.encode))),
        ("aggdirectargs", aggdirectargs |> option(array(Stmt.encode))),
        ("args", args |> option(array(Stmt.encode))),
        ("aggorder", aggorder |> option(array(Stmt.encode))),
        ("aggdistinct", aggdistinct |> option(array(Stmt.encode))),
        ("aggfilter", aggfilter |> option(Stmt.encode)),
        ("aggstar", aggstar |> option(bool)),
        ("aggvariadic", aggvariadic |> option(bool)),
        ("aggkind", aggkind |> option(string)),
        ("agglevelsup", agglevelsup |> option(int)),
        ("aggsplit", aggsplit |> option(id)),
        ("aggno", aggno |> option(int)),
        ("aggtransno", aggtransno |> option(int)),
        ("location", location |> option(int)),
      ])
    );
}

and Alias: AstType = {
  type t = {
    aliasname: option(string),
    colnames: option(array(Stmt.t)),
  };

  let decode =
    DecodeParsed.(
      ((aliasname, colnames) => {aliasname, colnames})
      <$> optionalField("aliasname", string)
      <*> optionalField("colnames", array(Stmt.decode))
    );

  let encode = ({aliasname, colnames}) =>
    Encode.(
      obj([
        ("aliasname", aliasname |> option(string)),
        ("colnames", colnames |> option(array(Stmt.encode))),
      ])
    );
}

and AlterCollationStmt: AstType = {
  type t = {collname: option(array(Stmt.t))};

  let decode =
    DecodeParsed.(
      (collname => {collname: collname})
      <$> optionalField("collname", array(Stmt.decode))
    );

  let encode = ({collname}) =>
    Encode.(obj([("collname", collname |> option(array(Stmt.encode)))]));
}

and AlterDatabaseSetStmt: AstType = {
  type t = {
    dbname: option(string),
    setstmt: option(VariableSetStmt.t),
  };

  let decode =
    DecodeParsed.(
      ((dbname, setstmt) => {dbname, setstmt})
      <$> optionalField("dbname", string)
      <*> optionalField("setstmt", VariableSetStmt.decode)
    );

  let encode = ({dbname, setstmt}) =>
    Encode.(
      obj([
        ("dbname", dbname |> option(string)),
        ("setstmt", setstmt |> option(VariableSetStmt.encode)),
      ])
    );
}

and AlterDatabaseStmt: AstType = {
  type t = {
    dbname: option(string),
    options: option(array(Stmt.t)),
  };

  let decode =
    DecodeParsed.(
      ((dbname, options) => {dbname, options})
      <$> optionalField("dbname", string)
      <*> optionalField("options", array(Stmt.decode))
    );

  let encode = ({dbname, options}) =>
    Encode.(
      obj([
        ("dbname", dbname |> option(string)),
        ("options", options |> option(array(Stmt.encode))),
      ])
    );
}

and AlterDefaultPrivilegesStmt: AstType = {
  type t = {
    options: option(array(Stmt.t)),
    action: option(GrantStmt.t),
  };

  let decode =
    DecodeParsed.(
      ((options, action) => {options, action})
      <$> optionalField("options", array(Stmt.decode))
      <*> optionalField("action", GrantStmt.decode)
    );

  let encode = ({options, action}) =>
    Encode.(
      obj([
        ("options", options |> option(array(Stmt.encode))),
        ("action", action |> option(GrantStmt.encode)),
      ])
    );
}

and AlterDomainStmt: AstType = {
  type t = {
    subtype: option(string),
    type_name: option(array(Stmt.t)),
    name: option(string),
    def: option(Stmt.t),
    behavior: option(Js.Json.t),
    missing_ok: option(bool),
  };

  let decode =
    DecodeParsed.(
      (
        (subtype, type_name, name, def, behavior, missing_ok) => {
          subtype,
          type_name,
          name,
          def,
          behavior,
          missing_ok,
        }
      )
      <$> optionalField("subtype", string)
      <*> optionalField("type_name", array(Stmt.decode))
      <*> optionalField("name", string)
      <*> optionalField("def", Stmt.decode)
      <*> optionalField("behavior", okJson)
      <*> optionalField("missing_ok", boolean)
    );

  let encode = ({subtype, type_name, name, def, behavior, missing_ok}) =>
    Encode.(
      obj([
        ("subtype", subtype |> option(string)),
        ("type_name", type_name |> option(array(Stmt.encode))),
        ("name", name |> option(string)),
        ("def", def |> option(Stmt.encode)),
        ("behavior", behavior |> option(id)),
        ("missing_ok", missing_ok |> option(bool)),
      ])
    );
}

and AlterEnumStmt: AstType = {
  type t = {
    type_name: option(array(Stmt.t)),
    old_val: option(string),
    new_val: option(string),
    new_val_neighbor: option(string),
    new_val_is_after: option(bool),
    skip_if_new_val_exists: option(bool),
  };

  let decode =
    DecodeParsed.(
      (
        (
          type_name,
          old_val,
          new_val,
          new_val_neighbor,
          new_val_is_after,
          skip_if_new_val_exists,
        ) => {
          type_name,
          old_val,
          new_val,
          new_val_neighbor,
          new_val_is_after,
          skip_if_new_val_exists,
        }
      )
      <$> optionalField("type_name", array(Stmt.decode))
      <*> optionalField("old_val", string)
      <*> optionalField("new_val", string)
      <*> optionalField("new_val_neighbor", string)
      <*> optionalField("new_val_is_after", boolean)
      <*> optionalField("skip_if_new_val_exists", boolean)
    );

  let encode =
      (
        {
          type_name,
          old_val,
          new_val,
          new_val_neighbor,
          new_val_is_after,
          skip_if_new_val_exists,
        },
      ) =>
    Encode.(
      obj([
        ("type_name", type_name |> option(array(Stmt.encode))),
        ("old_val", old_val |> option(string)),
        ("new_val", new_val |> option(string)),
        ("new_val_neighbor", new_val_neighbor |> option(string)),
        ("new_val_is_after", new_val_is_after |> option(bool)),
        ("skip_if_new_val_exists", skip_if_new_val_exists |> option(bool)),
      ])
    );
}

and AlterEventTrigStmt: AstType = {
  type t = {
    trigname: option(string),
    tgenabled: option(string),
  };

  let decode =
    DecodeParsed.(
      ((trigname, tgenabled) => {trigname, tgenabled})
      <$> optionalField("trigname", string)
      <*> optionalField("tgenabled", string)
    );

  let encode = ({trigname, tgenabled}) =>
    Encode.(
      obj([
        ("trigname", trigname |> option(string)),
        ("tgenabled", tgenabled |> option(string)),
      ])
    );
}

and AlterExtensionContentsStmt: AstType = {
  type t = {
    extname: option(string),
    action: option(int),
    objtype: option(Js.Json.t),
    object_: option(Stmt.t),
  };

  let decode =
    DecodeParsed.(
      (
        (extname, action, objtype, object_) => {
          extname,
          action,
          objtype,
          object_,
        }
      )
      <$> optionalField("extname", string)
      <*> optionalField("action", intFromNumber)
      <*> optionalField("objtype", okJson)
      <*> optionalField("object", Stmt.decode)
    );

  let encode = ({extname, action, objtype, object_}) =>
    Encode.(
      obj([
        ("extname", extname |> option(string)),
        ("action", action |> option(int)),
        ("objtype", objtype |> option(id)),
        ("object", object_ |> option(Stmt.encode)),
      ])
    );
}

and AlterExtensionStmt: AstType = {
  type t = {
    extname: option(string),
    options: option(array(Stmt.t)),
  };

  let decode =
    DecodeParsed.(
      ((extname, options) => {extname, options})
      <$> optionalField("extname", string)
      <*> optionalField("options", array(Stmt.decode))
    );

  let encode = ({extname, options}) =>
    Encode.(
      obj([
        ("extname", extname |> option(string)),
        ("options", options |> option(array(Stmt.encode))),
      ])
    );
}

and AlterFdwStmt: AstType = {
  type t = {
    fdwname: option(string),
    func_options: option(array(Stmt.t)),
    options: option(array(Stmt.t)),
  };

  let decode =
    DecodeParsed.(
      ((fdwname, func_options, options) => {fdwname, func_options, options})
      <$> optionalField("fdwname", string)
      <*> optionalField("func_options", array(Stmt.decode))
      <*> optionalField("options", array(Stmt.decode))
    );

  let encode = ({fdwname, func_options, options}) =>
    Encode.(
      obj([
        ("fdwname", fdwname |> option(string)),
        ("func_options", func_options |> option(array(Stmt.encode))),
        ("options", options |> option(array(Stmt.encode))),
      ])
    );
}

and AlterForeignServerStmt: AstType = {
  type t = {
    servername: option(string),
    version: option(string),
    options: option(array(Stmt.t)),
    has_version: option(bool),
  };

  let decode =
    DecodeParsed.(
      (
        (servername, version, options, has_version) => {
          servername,
          version,
          options,
          has_version,
        }
      )
      <$> optionalField("servername", string)
      <*> optionalField("version", string)
      <*> optionalField("options", array(Stmt.decode))
      <*> optionalField("has_version", boolean)
    );

  let encode = ({servername, version, options, has_version}) =>
    Encode.(
      obj([
        ("servername", servername |> option(string)),
        ("version", version |> option(string)),
        ("options", options |> option(array(Stmt.encode))),
        ("has_version", has_version |> option(bool)),
      ])
    );
}

and AlterFunctionStmt: AstType = {
  type t = {
    objtype: option(Js.Json.t),
    func: option(ObjectWithArgs.t),
    actions: option(array(Stmt.t)),
  };

  let decode =
    DecodeParsed.(
      ((objtype, func, actions) => {objtype, func, actions})
      <$> optionalField("objtype", okJson)
      <*> optionalField("func", ObjectWithArgs.decode)
      <*> optionalField("actions", array(Stmt.decode))
    );

  let encode = ({objtype, func, actions}) =>
    Encode.(
      obj([
        ("objtype", objtype |> option(id)),
        ("func", func |> option(ObjectWithArgs.encode)),
        ("actions", actions |> option(array(Stmt.encode))),
      ])
    );
}

and AlterObjectDependsStmt: AstType = {
  type t = {
    objectType: option(Js.Json.t),
    relation: option(RangeVar.t),
    object_: option(Stmt.t),
    extname: option(Value.t),
  };

  let decode =
    DecodeParsed.(
      (
        (objectType, relation, object_, extname) => {
          objectType,
          relation,
          object_,
          extname,
        }
      )
      <$> optionalField("objectType", okJson)
      <*> optionalField("relation", RangeVar.decode)
      <*> optionalField("object", Stmt.decode)
      <*> optionalField("extname", Value.decode)
    );

  let encode = ({objectType, relation, object_, extname}) =>
    Encode.(
      obj([
        ("objectType", objectType |> option(id)),
        ("relation", relation |> option(RangeVar.encode)),
        ("object", object_ |> option(Stmt.encode)),
        ("extname", extname |> option(Value.encode)),
      ])
    );
}

and AlterObjectSchemaStmt: AstType = {
  type t = {
    objectType: option(Js.Json.t),
    relation: option(RangeVar.t),
    object_: option(Stmt.t),
    newschema: option(string),
    missing_ok: option(bool),
  };

  let decode =
    DecodeParsed.(
      (
        (objectType, relation, object_, newschema, missing_ok) => {
          objectType,
          relation,
          object_,
          newschema,
          missing_ok,
        }
      )
      <$> optionalField("objectType", okJson)
      <*> optionalField("relation", RangeVar.decode)
      <*> optionalField("object", Stmt.decode)
      <*> optionalField("newschema", string)
      <*> optionalField("missing_ok", boolean)
    );

  let encode = ({objectType, relation, object_, newschema, missing_ok}) =>
    Encode.(
      obj([
        ("objectType", objectType |> option(id)),
        ("relation", relation |> option(RangeVar.encode)),
        ("object", object_ |> option(Stmt.encode)),
        ("newschema", newschema |> option(string)),
        ("missing_ok", missing_ok |> option(bool)),
      ])
    );
}

and AlterOpFamilyStmt: AstType = {
  type t = {
    opfamilyname: option(array(Stmt.t)),
    amname: option(string),
    isDrop: option(bool),
    items: option(array(Stmt.t)),
  };

  let decode =
    DecodeParsed.(
      (
        (opfamilyname, amname, isDrop, items) => {
          opfamilyname,
          amname,
          isDrop,
          items,
        }
      )
      <$> optionalField("opfamilyname", array(Stmt.decode))
      <*> optionalField("amname", string)
      <*> optionalField("isDrop", boolean)
      <*> optionalField("items", array(Stmt.decode))
    );

  let encode = ({opfamilyname, amname, isDrop, items}) =>
    Encode.(
      obj([
        ("opfamilyname", opfamilyname |> option(array(Stmt.encode))),
        ("amname", amname |> option(string)),
        ("isDrop", isDrop |> option(bool)),
        ("items", items |> option(array(Stmt.encode))),
      ])
    );
}

and AlterOperatorStmt: AstType = {
  type t = {
    opername: option(ObjectWithArgs.t),
    options: option(array(Stmt.t)),
  };

  let decode =
    DecodeParsed.(
      ((opername, options) => {opername, options})
      <$> optionalField("opername", ObjectWithArgs.decode)
      <*> optionalField("options", array(Stmt.decode))
    );

  let encode = ({opername, options}) =>
    Encode.(
      obj([
        ("opername", opername |> option(ObjectWithArgs.encode)),
        ("options", options |> option(array(Stmt.encode))),
      ])
    );
}

and AlterOwnerStmt: AstType = {
  type t = {
    objectType: option(Js.Json.t),
    relation: option(RangeVar.t),
    object_: option(Stmt.t),
    newowner: option(RoleSpec.t),
  };

  let decode =
    DecodeParsed.(
      (
        (objectType, relation, object_, newowner) => {
          objectType,
          relation,
          object_,
          newowner,
        }
      )
      <$> optionalField("objectType", okJson)
      <*> optionalField("relation", RangeVar.decode)
      <*> optionalField("object", Stmt.decode)
      <*> optionalField("newowner", RoleSpec.decode)
    );

  let encode = ({objectType, relation, object_, newowner}) =>
    Encode.(
      obj([
        ("objectType", objectType |> option(id)),
        ("relation", relation |> option(RangeVar.encode)),
        ("object", object_ |> option(Stmt.encode)),
        ("newowner", newowner |> option(RoleSpec.encode)),
      ])
    );
}

and AlterPolicyStmt: AstType = {
  type t = {
    policy_name: option(string),
    table: option(RangeVar.t),
    roles: option(array(Stmt.t)),
    qual: option(Stmt.t),
    with_check: option(Stmt.t),
  };

  let decode =
    DecodeParsed.(
      (
        (policy_name, table, roles, qual, with_check) => {
          policy_name,
          table,
          roles,
          qual,
          with_check,
        }
      )
      <$> optionalField("policy_name", string)
      <*> optionalField("table", RangeVar.decode)
      <*> optionalField("roles", array(Stmt.decode))
      <*> optionalField("qual", Stmt.decode)
      <*> optionalField("with_check", Stmt.decode)
    );

  let encode = ({policy_name, table, roles, qual, with_check}) =>
    Encode.(
      obj([
        ("policy_name", policy_name |> option(string)),
        ("table", table |> option(RangeVar.encode)),
        ("roles", roles |> option(array(Stmt.encode))),
        ("qual", qual |> option(Stmt.encode)),
        ("with_check", with_check |> option(Stmt.encode)),
      ])
    );
}

and AlterPublicationStmt: AstType = {
  type t = {
    pubname: option(string),
    options: option(array(Stmt.t)),
    tables: option(array(Stmt.t)),
    for_all_tables: option(bool),
    table_action: option(Js.Json.t),
  };

  let decode =
    DecodeParsed.(
      (
        (pubname, options, tables, for_all_tables, table_action) => {
          pubname,
          options,
          tables,
          for_all_tables,
          table_action,
        }
      )
      <$> optionalField("pubname", string)
      <*> optionalField("options", array(Stmt.decode))
      <*> optionalField("tables", array(Stmt.decode))
      <*> optionalField("for_all_tables", boolean)
      <*> optionalField("table_action", okJson)
    );

  let encode = ({pubname, options, tables, for_all_tables, table_action}) =>
    Encode.(
      obj([
        ("pubname", pubname |> option(string)),
        ("options", options |> option(array(Stmt.encode))),
        ("tables", tables |> option(array(Stmt.encode))),
        ("for_all_tables", for_all_tables |> option(bool)),
        ("table_action", table_action |> option(id)),
      ])
    );
}

and AlterRoleSetStmt: AstType = {
  type t = {
    role: option(RoleSpec.t),
    database: option(string),
    setstmt: option(VariableSetStmt.t),
  };

  let decode =
    DecodeParsed.(
      ((role, database, setstmt) => {role, database, setstmt})
      <$> optionalField("role", RoleSpec.decode)
      <*> optionalField("database", string)
      <*> optionalField("setstmt", VariableSetStmt.decode)
    );

  let encode = ({role, database, setstmt}) =>
    Encode.(
      obj([
        ("role", role |> option(RoleSpec.encode)),
        ("database", database |> option(string)),
        ("setstmt", setstmt |> option(VariableSetStmt.encode)),
      ])
    );
}

and AlterRoleStmt: AstType = {
  type t = {
    role: option(RoleSpec.t),
    options: option(array(Stmt.t)),
    action: option(int),
  };

  let decode =
    DecodeParsed.(
      ((role, options, action) => {role, options, action})
      <$> optionalField("role", RoleSpec.decode)
      <*> optionalField("options", array(Stmt.decode))
      <*> optionalField("action", intFromNumber)
    );

  let encode = ({role, options, action}) =>
    Encode.(
      obj([
        ("role", role |> option(RoleSpec.encode)),
        ("options", options |> option(array(Stmt.encode))),
        ("action", action |> option(int)),
      ])
    );
}

and AlterSeqStmt: AstType = {
  type t = {
    sequence: option(RangeVar.t),
    options: option(array(Stmt.t)),
    for_identity: option(bool),
    missing_ok: option(bool),
  };

  let decode =
    DecodeParsed.(
      (
        (sequence, options, for_identity, missing_ok) => {
          sequence,
          options,
          for_identity,
          missing_ok,
        }
      )
      <$> optionalField("sequence", RangeVar.decode)
      <*> optionalField("options", array(Stmt.decode))
      <*> optionalField("for_identity", boolean)
      <*> optionalField("missing_ok", boolean)
    );

  let encode = ({sequence, options, for_identity, missing_ok}) =>
    Encode.(
      obj([
        ("sequence", sequence |> option(RangeVar.encode)),
        ("options", options |> option(array(Stmt.encode))),
        ("for_identity", for_identity |> option(bool)),
        ("missing_ok", missing_ok |> option(bool)),
      ])
    );
}

and AlterSubscriptionStmt: AstType = {
  type t = {
    kind: option(Js.Json.t),
    subname: option(string),
    conninfo: option(string),
    publication: option(array(Stmt.t)),
    options: option(array(Stmt.t)),
  };

  let decode =
    DecodeParsed.(
      (
        (kind, subname, conninfo, publication, options) => {
          kind,
          subname,
          conninfo,
          publication,
          options,
        }
      )
      <$> optionalField("kind", okJson)
      <*> optionalField("subname", string)
      <*> optionalField("conninfo", string)
      <*> optionalField("publication", array(Stmt.decode))
      <*> optionalField("options", array(Stmt.decode))
    );

  let encode = ({kind, subname, conninfo, publication, options}) =>
    Encode.(
      obj([
        ("kind", kind |> option(id)),
        ("subname", subname |> option(string)),
        ("conninfo", conninfo |> option(string)),
        ("publication", publication |> option(array(Stmt.encode))),
        ("options", options |> option(array(Stmt.encode))),
      ])
    );
}

and AlterSystemStmt: AstType = {
  type t = {setstmt: option(VariableSetStmt.t)};

  let decode =
    DecodeParsed.(
      (setstmt => {setstmt: setstmt})
      <$> optionalField("setstmt", VariableSetStmt.decode)
    );

  let encode = ({setstmt}) =>
    Encode.(obj([("setstmt", setstmt |> option(VariableSetStmt.encode))]));
}

and AlterTSConfigurationStmt: AstType = {
  type t = {
    kind: option(Js.Json.t),
    cfgname: option(array(Stmt.t)),
    tokentype: option(array(string)),
    dictname: option(array(Stmt.t)),
    override: option(bool),
    replace: option(bool),
    missing_ok: option(bool),
  };

  let decode =
    DecodeParsed.(
      (
        (kind, cfgname, tokentype, dictname, override, replace, missing_ok) => {
          kind,
          cfgname,
          tokentype,
          dictname,
          override,
          replace,
          missing_ok,
        }
      )
      <$> optionalField("kind", okJson)
      <*> optionalField("cfgname", array(Stmt.decode))
      <*> optionalField("tokentype", array(string))
      <*> optionalField("dictname", array(Stmt.decode))
      <*> optionalField("override", boolean)
      <*> optionalField("replace", boolean)
      <*> optionalField("missing_ok", boolean)
    );

  let encode =
      ({kind, cfgname, tokentype, dictname, override, replace, missing_ok}) =>
    Encode.(
      obj([
        ("kind", kind |> option(id)),
        ("cfgname", cfgname |> option(array(Stmt.encode))),
        ("tokentype", tokentype |> option(array(string))),
        ("dictname", dictname |> option(array(Stmt.encode))),
        ("override", override |> option(bool)),
        ("replace", replace |> option(bool)),
        ("missing_ok", missing_ok |> option(bool)),
      ])
    );
}

and AlterTSDictionaryStmt: AstType = {
  type t = {
    dictname: option(array(Stmt.t)),
    options: option(array(Stmt.t)),
  };

  let decode =
    DecodeParsed.(
      ((dictname, options) => {dictname, options})
      <$> optionalField("dictname", array(Stmt.decode))
      <*> optionalField("options", array(Stmt.decode))
    );

  let encode = ({dictname, options}) =>
    Encode.(
      obj([
        ("dictname", dictname |> option(array(Stmt.encode))),
        ("options", options |> option(array(Stmt.encode))),
      ])
    );
}

and AlterTableCmd: AstType = {
  type t = {
    subtype: option(Js.Json.t),
    name: option(string),
    num: int,
    newowner: option(RoleSpec.t),
    def: option(Stmt.t),
    behavior: option(Js.Json.t),
    missing_ok: option(bool),
  };

  let decode =
    DecodeParsed.(
      (
        (subtype, name, num, newowner, def, behavior, missing_ok) => {
          subtype,
          name,
          num,
          newowner,
          def,
          behavior,
          missing_ok,
        }
      )
      <$> optionalField("subtype", okJson)
      <*> optionalField("name", string)
      <*> field("num", intFromNumber)
      <*> optionalField("newowner", RoleSpec.decode)
      <*> optionalField("def", Stmt.decode)
      <*> optionalField("behavior", okJson)
      <*> optionalField("missing_ok", boolean)
    );

  let encode = ({subtype, name, num, newowner, def, behavior, missing_ok}) =>
    Encode.(
      obj([
        ("subtype", subtype |> option(id)),
        ("name", name |> option(string)),
        ("num", num |> int),
        ("newowner", newowner |> option(RoleSpec.encode)),
        ("def", def |> option(Stmt.encode)),
        ("behavior", behavior |> option(id)),
        ("missing_ok", missing_ok |> option(bool)),
      ])
    );
}

and AlterTableMoveAllStmt: AstType = {
  type t = {
    orig_tablespacename: option(string),
    objtype: option(Js.Json.t),
    roles: option(array(Stmt.t)),
    new_tablespacename: option(string),
    nowait: option(bool),
  };

  let decode =
    DecodeParsed.(
      (
        (orig_tablespacename, objtype, roles, new_tablespacename, nowait) => {
          orig_tablespacename,
          objtype,
          roles,
          new_tablespacename,
          nowait,
        }
      )
      <$> optionalField("orig_tablespacename", string)
      <*> optionalField("objtype", okJson)
      <*> optionalField("roles", array(Stmt.decode))
      <*> optionalField("new_tablespacename", string)
      <*> optionalField("nowait", boolean)
    );

  let encode =
      ({orig_tablespacename, objtype, roles, new_tablespacename, nowait}) =>
    Encode.(
      obj([
        ("orig_tablespacename", orig_tablespacename |> option(string)),
        ("objtype", objtype |> option(id)),
        ("roles", roles |> option(array(Stmt.encode))),
        ("new_tablespacename", new_tablespacename |> option(string)),
        ("nowait", nowait |> option(bool)),
      ])
    );
}

and AlterTableSpaceOptionsStmt: AstType = {
  type t = {
    tablespacename: option(string),
    options: option(array(Stmt.t)),
    isReset: option(bool),
  };

  let decode =
    DecodeParsed.(
      (
        (tablespacename, options, isReset) => {
          tablespacename,
          options,
          isReset,
        }
      )
      <$> optionalField("tablespacename", string)
      <*> optionalField("options", array(Stmt.decode))
      <*> optionalField("isReset", boolean)
    );

  let encode = ({tablespacename, options, isReset}) =>
    Encode.(
      obj([
        ("tablespacename", tablespacename |> option(string)),
        ("options", options |> option(array(Stmt.encode))),
        ("isReset", isReset |> option(bool)),
      ])
    );
}

and AlterTableStmt: AstType = {
  type t = {
    relation: option(RangeVar.t),
    cmds: option(array(Stmt.t)),
    relkind: option(Js.Json.t),
    missing_ok: option(bool),
  };

  let decode =
    DecodeParsed.(
      (
        (relation, cmds, relkind, missing_ok) => {
          relation,
          cmds,
          relkind,
          missing_ok,
        }
      )
      <$> optionalField("relation", RangeVar.decode)
      <*> optionalField("cmds", array(Stmt.decode))
      <*> optionalField("relkind", okJson)
      <*> optionalField("missing_ok", boolean)
    );

  let encode = ({relation, cmds, relkind, missing_ok}) =>
    Encode.(
      obj([
        ("relation", relation |> option(RangeVar.encode)),
        ("cmds", cmds |> option(array(Stmt.encode))),
        ("relkind", relkind |> option(id)),
        ("missing_ok", missing_ok |> option(bool)),
      ])
    );
}

and AlterUserMappingStmt: AstType = {
  type t = {
    user: option(RoleSpec.t),
    servername: option(string),
    options: option(array(Stmt.t)),
  };

  let decode =
    DecodeParsed.(
      ((user, servername, options) => {user, servername, options})
      <$> optionalField("user", RoleSpec.decode)
      <*> optionalField("servername", string)
      <*> optionalField("options", array(Stmt.decode))
    );

  let encode = ({user, servername, options}) =>
    Encode.(
      obj([
        ("user", user |> option(RoleSpec.encode)),
        ("servername", servername |> option(string)),
        ("options", options |> option(array(Stmt.encode))),
      ])
    );
}

and AlternativeSubPlan: AstType = {
  type t = {subplans: option(array(Stmt.t))};

  let decode =
    DecodeParsed.(
      (subplans => {subplans: subplans})
      <$> optionalField("subplans", array(Stmt.decode))
    );

  let encode = ({subplans}) =>
    Encode.(obj([("subplans", subplans |> option(array(Stmt.encode)))]));
}

and ArrayCoerceExpr: AstType = {
  type t = {
    xpr: option(Stmt.t),
    arg: option(Stmt.t),
    elemexpr: option(Stmt.t),
    resulttype: option(int),
    resulttypmod: option(int),
    resultcollid: option(int),
    coerceformat: option(Js.Json.t),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (
          xpr,
          arg,
          elemexpr,
          resulttype,
          resulttypmod,
          resultcollid,
          coerceformat,
          location,
        ) => {
          xpr,
          arg,
          elemexpr,
          resulttype,
          resulttypmod,
          resultcollid,
          coerceformat,
          location,
        }
      )
      <$> optionalField("xpr", Stmt.decode)
      <*> optionalField("arg", Stmt.decode)
      <*> optionalField("elemexpr", Stmt.decode)
      <*> optionalField("resulttype", intFromNumber)
      <*> optionalField("resulttypmod", intFromNumber)
      <*> optionalField("resultcollid", intFromNumber)
      <*> optionalField("coerceformat", okJson)
      <*> optionalField("location", intFromNumber)
    );

  let encode =
      (
        {
          xpr,
          arg,
          elemexpr,
          resulttype,
          resulttypmod,
          resultcollid,
          coerceformat,
          location,
        },
      ) =>
    Encode.(
      obj([
        ("xpr", xpr |> option(Stmt.encode)),
        ("arg", arg |> option(Stmt.encode)),
        ("elemexpr", elemexpr |> option(Stmt.encode)),
        ("resulttype", resulttype |> option(int)),
        ("resulttypmod", resulttypmod |> option(int)),
        ("resultcollid", resultcollid |> option(int)),
        ("coerceformat", coerceformat |> option(id)),
        ("location", location |> option(int)),
      ])
    );
}

and ArrayExpr: AstType = {
  type t = {
    xpr: option(Stmt.t),
    array_typeid: option(int),
    array_collid: option(int),
    element_typeid: option(int),
    elements: option(array(Stmt.t)),
    multidims: option(bool),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (
          xpr,
          array_typeid,
          array_collid,
          element_typeid,
          elements,
          multidims,
          location,
        ) => {
          xpr,
          array_typeid,
          array_collid,
          element_typeid,
          elements,
          multidims,
          location,
        }
      )
      <$> optionalField("xpr", Stmt.decode)
      <*> optionalField("array_typeid", intFromNumber)
      <*> optionalField("array_collid", intFromNumber)
      <*> optionalField("element_typeid", intFromNumber)
      <*> optionalField("elements", array(Stmt.decode))
      <*> optionalField("multidims", boolean)
      <*> optionalField("location", intFromNumber)
    );

  let encode =
      (
        {
          xpr,
          array_typeid,
          array_collid,
          element_typeid,
          elements,
          multidims,
          location,
        },
      ) =>
    Encode.(
      obj([
        ("xpr", xpr |> option(Stmt.encode)),
        ("array_typeid", array_typeid |> option(int)),
        ("array_collid", array_collid |> option(int)),
        ("element_typeid", element_typeid |> option(int)),
        ("elements", elements |> option(array(Stmt.encode))),
        ("multidims", multidims |> option(bool)),
        ("location", location |> option(int)),
      ])
    );
}

and BoolExpr: AstType = {
  type t = {
    xpr: option(Stmt.t),
    boolop: option(Js.Json.t),
    args: option(array(Stmt.t)),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      ((xpr, boolop, args, location) => {xpr, boolop, args, location})
      <$> optionalField("xpr", Stmt.decode)
      <*> optionalField("boolop", okJson)
      <*> optionalField("args", array(Stmt.decode))
      <*> optionalField("location", intFromNumber)
    );

  let encode = ({xpr, boolop, args, location}) =>
    Encode.(
      obj([
        ("xpr", xpr |> option(Stmt.encode)),
        ("boolop", boolop |> option(id)),
        ("args", args |> option(array(Stmt.encode))),
        ("location", location |> option(int)),
      ])
    );
}

and BooleanTest: AstType = {
  type t = {
    xpr: option(Stmt.t),
    arg: option(Stmt.t),
    booltesttype: option(Js.Json.t),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (xpr, arg, booltesttype, location) => {
          xpr,
          arg,
          booltesttype,
          location,
        }
      )
      <$> optionalField("xpr", Stmt.decode)
      <*> optionalField("arg", Stmt.decode)
      <*> optionalField("booltesttype", okJson)
      <*> optionalField("location", intFromNumber)
    );

  let encode = ({xpr, arg, booltesttype, location}) =>
    Encode.(
      obj([
        ("xpr", xpr |> option(Stmt.encode)),
        ("arg", arg |> option(Stmt.encode)),
        ("booltesttype", booltesttype |> option(id)),
        ("location", location |> option(int)),
      ])
    );
}

and CallContext: AstType = {
  type t = {atomic: option(bool)};

  let decode =
    DecodeParsed.(
      (atomic => {atomic: atomic}) <$> optionalField("atomic", boolean)
    );

  let encode = ({atomic}) =>
    Encode.(obj([("atomic", atomic |> option(bool))]));
}

and CallStmt: AstType = {
  type t = {funccall: option(FuncCall.t)};

  let decode =
    DecodeParsed.(
      (funccall => {funccall: funccall})
      <$> optionalField("funccall", FuncCall.decode)
    );

  let encode = ({funccall}) =>
    Encode.(obj([("funccall", funccall |> option(FuncCall.encode))]));
}

and CaseExpr: AstType = {
  type t = {
    xpr: option(Stmt.t),
    casetype: option(int),
    casecollid: option(int),
    arg: option(Stmt.t),
    args: option(array(Stmt.t)),
    defresult: option(Stmt.t),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (xpr, casetype, casecollid, arg, args, defresult, location) => {
          xpr,
          casetype,
          casecollid,
          arg,
          args,
          defresult,
          location,
        }
      )
      <$> optionalField("xpr", Stmt.decode)
      <*> optionalField("casetype", intFromNumber)
      <*> optionalField("casecollid", intFromNumber)
      <*> optionalField("arg", Stmt.decode)
      <*> optionalField("args", array(Stmt.decode))
      <*> optionalField("defresult", Stmt.decode)
      <*> optionalField("location", intFromNumber)
    );

  let encode = ({xpr, casetype, casecollid, arg, args, defresult, location}) =>
    Encode.(
      obj([
        ("xpr", xpr |> option(Stmt.encode)),
        ("casetype", casetype |> option(int)),
        ("casecollid", casecollid |> option(int)),
        ("arg", arg |> option(Stmt.encode)),
        ("args", args |> option(array(Stmt.encode))),
        ("defresult", defresult |> option(Stmt.encode)),
        ("location", location |> option(int)),
      ])
    );
}

and CaseTestExpr: AstType = {
  type t = {
    xpr: option(Stmt.t),
    typeId: option(int),
    collation: option(int),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (xpr, typeId, collation, location) => {
          xpr,
          typeId,
          collation,
          location,
        }
      )
      <$> optionalField("xpr", Stmt.decode)
      <*> optionalField("typeId", intFromNumber)
      <*> optionalField("collation", intFromNumber)
      <*> optionalField("location", intFromNumber)
    );

  let encode = ({xpr, typeId, collation, location}) =>
    Encode.(
      obj([
        ("xpr", xpr |> option(Stmt.encode)),
        ("typeId", typeId |> option(int)),
        ("collation", collation |> option(int)),
        ("location", location |> option(int)),
      ])
    );
}

and CaseWhen: AstType = {
  type t = {
    xpr: option(Stmt.t),
    expr: option(Stmt.t),
    result: option(Stmt.t),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      ((xpr, expr, result, location) => {xpr, expr, result, location})
      <$> optionalField("xpr", Stmt.decode)
      <*> optionalField("expr", Stmt.decode)
      <*> optionalField("result", Stmt.decode)
      <*> optionalField("location", intFromNumber)
    );

  let encode = ({xpr, expr, result, location}) =>
    Encode.(
      obj([
        ("xpr", xpr |> option(Stmt.encode)),
        ("expr", expr |> option(Stmt.encode)),
        ("result", result |> option(Stmt.encode)),
        ("location", location |> option(int)),
      ])
    );
}

and CheckPointStmt: AstType = {
  type t = Js.Json.t;

  let decode = DecodeParsed.(okJson);

  let encode = id;
}

and ClosePortalStmt: AstType = {
  type t = {portalname: option(string)};

  let decode =
    DecodeParsed.(
      (portalname => {portalname: portalname})
      <$> optionalField("portalname", string)
    );

  let encode = ({portalname}) =>
    Encode.(obj([("portalname", portalname |> option(string))]));
}

and ClusterStmt: AstType = {
  type t = {
    relation: option(RangeVar.t),
    indexname: option(string),
    options: option(int),
  };

  let decode =
    DecodeParsed.(
      ((relation, indexname, options) => {relation, indexname, options})
      <$> optionalField("relation", RangeVar.decode)
      <*> optionalField("indexname", string)
      <*> optionalField("options", intFromNumber)
    );

  let encode = ({relation, indexname, options}) =>
    Encode.(
      obj([
        ("relation", relation |> option(RangeVar.encode)),
        ("indexname", indexname |> option(string)),
        ("options", options |> option(int)),
      ])
    );
}

and CoalesceExpr: AstType = {
  type t = {
    xpr: option(Stmt.t),
    coalescetype: option(int),
    coalescecollid: option(int),
    args: option(array(Stmt.t)),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (xpr, coalescetype, coalescecollid, args, location) => {
          xpr,
          coalescetype,
          coalescecollid,
          args,
          location,
        }
      )
      <$> optionalField("xpr", Stmt.decode)
      <*> optionalField("coalescetype", intFromNumber)
      <*> optionalField("coalescecollid", intFromNumber)
      <*> optionalField("args", array(Stmt.decode))
      <*> optionalField("location", intFromNumber)
    );

  let encode = ({xpr, coalescetype, coalescecollid, args, location}) =>
    Encode.(
      obj([
        ("xpr", xpr |> option(Stmt.encode)),
        ("coalescetype", coalescetype |> option(int)),
        ("coalescecollid", coalescecollid |> option(int)),
        ("args", args |> option(array(Stmt.encode))),
        ("location", location |> option(int)),
      ])
    );
}

and CoerceToDomain: AstType = {
  type t = {
    xpr: option(Stmt.t),
    arg: option(Stmt.t),
    resulttype: option(int),
    resulttypmod: option(int),
    resultcollid: option(int),
    coercionformat: option(Js.Json.t),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (
          xpr,
          arg,
          resulttype,
          resulttypmod,
          resultcollid,
          coercionformat,
          location,
        ) => {
          xpr,
          arg,
          resulttype,
          resulttypmod,
          resultcollid,
          coercionformat,
          location,
        }
      )
      <$> optionalField("xpr", Stmt.decode)
      <*> optionalField("arg", Stmt.decode)
      <*> optionalField("resulttype", intFromNumber)
      <*> optionalField("resulttypmod", intFromNumber)
      <*> optionalField("resultcollid", intFromNumber)
      <*> optionalField("coercionformat", okJson)
      <*> optionalField("location", intFromNumber)
    );

  let encode =
      (
        {
          xpr,
          arg,
          resulttype,
          resulttypmod,
          resultcollid,
          coercionformat,
          location,
        },
      ) =>
    Encode.(
      obj([
        ("xpr", xpr |> option(Stmt.encode)),
        ("arg", arg |> option(Stmt.encode)),
        ("resulttype", resulttype |> option(int)),
        ("resulttypmod", resulttypmod |> option(int)),
        ("resultcollid", resultcollid |> option(int)),
        ("coercionformat", coercionformat |> option(id)),
        ("location", location |> option(int)),
      ])
    );
}

and CoerceToDomainValue: AstType = {
  type t = {
    xpr: option(Stmt.t),
    type_id: option(int),
    type_mod: option(int),
    collation: option(int),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (xpr, type_id, type_mod, collation, location) => {
          xpr,
          type_id,
          type_mod,
          collation,
          location,
        }
      )
      <$> optionalField("xpr", Stmt.decode)
      <*> optionalField("type_id", intFromNumber)
      <*> optionalField("type_mod", intFromNumber)
      <*> optionalField("collation", intFromNumber)
      <*> optionalField("location", intFromNumber)
    );

  let encode = ({xpr, type_id, type_mod, collation, location}) =>
    Encode.(
      obj([
        ("xpr", xpr |> option(Stmt.encode)),
        ("type_id", type_id |> option(int)),
        ("type_mod", type_mod |> option(int)),
        ("collation", collation |> option(int)),
        ("location", location |> option(int)),
      ])
    );
}

and CoerceViaIO: AstType = {
  type t = {
    xpr: option(Stmt.t),
    arg: option(Stmt.t),
    resulttype: option(int),
    resultcollid: option(int),
    coerceformat: option(Js.Json.t),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (xpr, arg, resulttype, resultcollid, coerceformat, location) => {
          xpr,
          arg,
          resulttype,
          resultcollid,
          coerceformat,
          location,
        }
      )
      <$> optionalField("xpr", Stmt.decode)
      <*> optionalField("arg", Stmt.decode)
      <*> optionalField("resulttype", intFromNumber)
      <*> optionalField("resultcollid", intFromNumber)
      <*> optionalField("coerceformat", okJson)
      <*> optionalField("location", intFromNumber)
    );

  let encode = ({xpr, arg, resulttype, resultcollid, coerceformat, location}) =>
    Encode.(
      obj([
        ("xpr", xpr |> option(Stmt.encode)),
        ("arg", arg |> option(Stmt.encode)),
        ("resulttype", resulttype |> option(int)),
        ("resultcollid", resultcollid |> option(int)),
        ("coerceformat", coerceformat |> option(id)),
        ("location", location |> option(int)),
      ])
    );
}

and CollateClause: AstType = {
  type t = {
    arg: option(Stmt.t),
    collname: option(array(Stmt.t)),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      ((arg, collname, location) => {arg, collname, location})
      <$> optionalField("arg", Stmt.decode)
      <*> optionalField("collname", array(Stmt.decode))
      <*> optionalField("location", intFromNumber)
    );

  let encode = ({arg, collname, location}) =>
    Encode.(
      obj([
        ("arg", arg |> option(Stmt.encode)),
        ("collname", collname |> option(array(Stmt.encode))),
        ("location", location |> option(int)),
      ])
    );
}

and CollateExpr: AstType = {
  type t = {
    xpr: option(Stmt.t),
    arg: option(Stmt.t),
    collOid: option(int),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      ((xpr, arg, collOid, location) => {xpr, arg, collOid, location})
      <$> optionalField("xpr", Stmt.decode)
      <*> optionalField("arg", Stmt.decode)
      <*> optionalField("collOid", intFromNumber)
      <*> optionalField("location", intFromNumber)
    );

  let encode = ({xpr, arg, collOid, location}) =>
    Encode.(
      obj([
        ("xpr", xpr |> option(Stmt.encode)),
        ("arg", arg |> option(Stmt.encode)),
        ("collOid", collOid |> option(int)),
        ("location", location |> option(int)),
      ])
    );
}

and ColumnDef: AstType = {
  type t = {
    colname: option(string),
    typeName: option(Stmt.t),
    inhcount: option(int),
    is_local: option(bool),
    is_not_null: option(bool),
    is_from_type: option(bool),
    storage: option(string),
    raw_default: option(Stmt.t),
    cooked_default: option(Stmt.t),
    identity: option(string),
    identitySequence: option(Stmt.t),
    generated: option(string),
    collClause: option(CollateClause.t),
    collOid: option(int),
    constraints: option(array(Stmt.t)),
    fdwoptions: option(array(Stmt.t)),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (
          colname,
          typeName,
          inhcount,
          is_local,
          is_not_null,
          is_from_type,
          storage,
          raw_default,
          cooked_default,
          identity,
          identitySequence,
          generated,
          collClause,
          collOid,
          constraints,
          fdwoptions,
          location,
        ) => {
          colname,
          typeName,
          inhcount,
          is_local,
          is_not_null,
          is_from_type,
          storage,
          raw_default,
          cooked_default,
          identity,
          identitySequence,
          generated,
          collClause,
          collOid,
          constraints,
          fdwoptions,
          location,
        }
      )
      <$> optionalField("colname", string)
      <*> optionalField("typeName", Stmt.decode)
      <*> optionalField("inhcount", intFromNumber)
      <*> optionalField("is_local", boolean)
      <*> optionalField("is_not_null", boolean)
      <*> optionalField("is_from_type", boolean)
      <*> optionalField("storage", string)
      <*> optionalField("raw_default", Stmt.decode)
      <*> optionalField("cooked_default", Stmt.decode)
      <*> optionalField("identity", string)
      <*> optionalField("identitySequence", Stmt.decode)
      <*> optionalField("generated", string)
      <*> optionalField("collClause", CollateClause.decode)
      <*> optionalField("collOid", intFromNumber)
      <*> optionalField("constraints", array(Stmt.decode))
      <*> optionalField("fdwoptions", array(Stmt.decode))
      <*> optionalField("location", intFromNumber)
    );

  let encode =
      (
        {
          colname,
          typeName,
          inhcount,
          is_local,
          is_not_null,
          is_from_type,
          storage,
          raw_default,
          cooked_default,
          identity,
          identitySequence,
          generated,
          collClause,
          collOid,
          constraints,
          fdwoptions,
          location,
        },
      ) =>
    Encode.(
      obj([
        ("colname", colname |> option(string)),
        ("typeName", typeName |> option(Stmt.encode)),
        ("inhcount", inhcount |> option(int)),
        ("is_local", is_local |> option(bool)),
        ("is_not_null", is_not_null |> option(bool)),
        ("is_from_type", is_from_type |> option(bool)),
        ("storage", storage |> option(string)),
        ("raw_default", raw_default |> option(Stmt.encode)),
        ("cooked_default", cooked_default |> option(Stmt.encode)),
        ("identity", identity |> option(string)),
        ("identitySequence", identitySequence |> option(Stmt.encode)),
        ("generated", generated |> option(string)),
        ("collClause", collClause |> option(CollateClause.encode)),
        ("collOid", collOid |> option(int)),
        ("constraints", constraints |> option(array(Stmt.encode))),
        ("fdwoptions", fdwoptions |> option(array(Stmt.encode))),
        ("location", location |> option(int)),
      ])
    );
}

and ColumnRef: AstType = {
  type t = {
    fields: option(array(Stmt.t)),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      ((fields, location) => {fields, location})
      <$> optionalField("fields", array(Stmt.decode))
      <*> optionalField("location", intFromNumber)
    );

  let encode = ({fields, location}) =>
    Encode.(
      obj([
        ("fields", fields |> option(array(Stmt.encode))),
        ("location", location |> option(int)),
      ])
    );
}

and CommentStmt: AstType = {
  type t = {
    objtype: option(Js.Json.t),
    object_: option(array(Stmt.t)),
    comment: option(string),
  };

  let decode =
    DecodeParsed.(
      ((objtype, object_, comment) => {objtype, object_, comment})
      <$> optionalField("objtype", okJson)
      <*> optionalField("object", array(Stmt.decode))
      <*> optionalField("comment", string)
    );

  let encode = ({objtype, object_, comment}) =>
    Encode.(
      obj([
        ("objtype", objtype |> option(id)),
        ("object", object_ |> option(array(Stmt.encode))),
        ("comment", comment |> option(string)),
      ])
    );
}

and CommonTableExpr: AstType = {
  type t = {
    ctename: option(string),
    aliascolnames: option(array(Stmt.t)),
    ctematerialized: option(Js.Json.t),
    ctequery: option(Stmt.t),
    location: option(int),
    cterecursive: option(bool),
    cterefcount: option(int),
    ctecolnames: option(array(Stmt.t)),
    ctecoltypes: option(array(Stmt.t)),
    ctecoltypmods: option(array(Stmt.t)),
    ctecolcollations: option(array(Stmt.t)),
  };

  let decode =
    DecodeParsed.(
      (
        (
          ctename,
          aliascolnames,
          ctematerialized,
          ctequery,
          location,
          cterecursive,
          cterefcount,
          ctecolnames,
          ctecoltypes,
          ctecoltypmods,
          ctecolcollations,
        ) => {
          ctename,
          aliascolnames,
          ctematerialized,
          ctequery,
          location,
          cterecursive,
          cterefcount,
          ctecolnames,
          ctecoltypes,
          ctecoltypmods,
          ctecolcollations,
        }
      )
      <$> optionalField("ctename", string)
      <*> optionalField("aliascolnames", array(Stmt.decode))
      <*> optionalField("ctematerialized", okJson)
      <*> optionalField("ctequery", Stmt.decode)
      <*> optionalField("location", intFromNumber)
      <*> optionalField("cterecursive", boolean)
      <*> optionalField("cterefcount", intFromNumber)
      <*> optionalField("ctecolnames", array(Stmt.decode))
      <*> optionalField("ctecoltypes", array(Stmt.decode))
      <*> optionalField("ctecoltypmods", array(Stmt.decode))
      <*> optionalField("ctecolcollations", array(Stmt.decode))
    );

  let encode =
      (
        {
          ctename,
          aliascolnames,
          ctematerialized,
          ctequery,
          location,
          cterecursive,
          cterefcount,
          ctecolnames,
          ctecoltypes,
          ctecoltypmods,
          ctecolcollations,
        },
      ) =>
    Encode.(
      obj([
        ("ctename", ctename |> option(string)),
        ("aliascolnames", aliascolnames |> option(array(Stmt.encode))),
        ("ctematerialized", ctematerialized |> option(id)),
        ("ctequery", ctequery |> option(Stmt.encode)),
        ("location", location |> option(int)),
        ("cterecursive", cterecursive |> option(bool)),
        ("cterefcount", cterefcount |> option(int)),
        ("ctecolnames", ctecolnames |> option(array(Stmt.encode))),
        ("ctecoltypes", ctecoltypes |> option(array(Stmt.encode))),
        ("ctecoltypmods", ctecoltypmods |> option(array(Stmt.encode))),
        (
          "ctecolcollations",
          ctecolcollations |> option(array(Stmt.encode)),
        ),
      ])
    );
}

and CompositeTypeStmt: AstType = {
  type t = {
    typevar: option(RangeVar.t),
    coldeflist: option(array(Stmt.t)),
  };

  let decode =
    DecodeParsed.(
      ((typevar, coldeflist) => {typevar, coldeflist})
      <$> optionalField("typevar", RangeVar.decode)
      <*> optionalField("coldeflist", array(Stmt.decode))
    );

  let encode = ({typevar, coldeflist}) =>
    Encode.(
      obj([
        ("typevar", typevar |> option(RangeVar.encode)),
        ("coldeflist", coldeflist |> option(array(Stmt.encode))),
      ])
    );
}

and Const: AstType = {
  type t = {
    xpr: option(Stmt.t),
    consttype: option(int),
    consttypmod: option(int),
    constcollid: option(int),
    constlen: option(int),
    constbyval: option(bool),
    constisnull: option(bool),
    location: option(int),
    constvalue: option(Js.Json.t),
  };

  let decode =
    DecodeParsed.(
      (
        (
          xpr,
          consttype,
          consttypmod,
          constcollid,
          constlen,
          constbyval,
          constisnull,
          location,
          constvalue,
        ) => {
          xpr,
          consttype,
          consttypmod,
          constcollid,
          constlen,
          constbyval,
          constisnull,
          location,
          constvalue,
        }
      )
      <$> optionalField("xpr", Stmt.decode)
      <*> optionalField("consttype", intFromNumber)
      <*> optionalField("consttypmod", intFromNumber)
      <*> optionalField("constcollid", intFromNumber)
      <*> optionalField("constlen", intFromNumber)
      <*> optionalField("constbyval", boolean)
      <*> optionalField("constisnull", boolean)
      <*> optionalField("location", intFromNumber)
      <*> optionalField("constvalue", okJson)
    );

  let encode =
      (
        {
          xpr,
          consttype,
          consttypmod,
          constcollid,
          constlen,
          constbyval,
          constisnull,
          location,
          constvalue,
        },
      ) =>
    Encode.(
      obj([
        ("xpr", xpr |> option(Stmt.encode)),
        ("consttype", consttype |> option(int)),
        ("consttypmod", consttypmod |> option(int)),
        ("constcollid", constcollid |> option(int)),
        ("constlen", constlen |> option(int)),
        ("constbyval", constbyval |> option(bool)),
        ("constisnull", constisnull |> option(bool)),
        ("location", location |> option(int)),
        ("constvalue", constvalue |> option(id)),
      ])
    );
}

and Constraint: AstType = {
  type t = {
    contype: option(Js.Json.t),
    conname: option(string),
    deferrable: option(bool),
    initdeferred: option(bool),
    location: option(int),
    is_no_inherit: option(bool),
    raw_expr: option(Stmt.t),
    cooked_expr: option(string),
    generated_when: option(string),
    keys: option(array(Stmt.t)),
    including: option(array(Stmt.t)),
    exclusions: option(array(Stmt.t)),
    options: option(array(Stmt.t)),
    indexname: option(string),
    indexspace: option(string),
    reset_default_tblspc: option(bool),
    access_method: option(string),
    where_clause: option(Stmt.t),
    pktable: option(RangeVar.t),
    fk_attrs: option(array(Stmt.t)),
    pk_attrs: option(array(Stmt.t)),
    fk_matchtype: option(string),
    fk_upd_action: option(string),
    fk_del_action: option(string),
    old_conpfeqop: option(array(Stmt.t)),
    old_pktable_oid: option(int),
    skip_validation: option(bool),
    initially_valid: option(bool),
  };

  let decode =
    DecodeParsed.(
      (
        (
          contype,
          conname,
          deferrable,
          initdeferred,
          location,
          is_no_inherit,
          raw_expr,
          cooked_expr,
          generated_when,
          keys,
          including,
          exclusions,
          options,
          indexname,
          indexspace,
          reset_default_tblspc,
          access_method,
          where_clause,
          pktable,
          fk_attrs,
          pk_attrs,
          fk_matchtype,
          fk_upd_action,
          fk_del_action,
          old_conpfeqop,
          old_pktable_oid,
          skip_validation,
          initially_valid,
        ) => {
          contype,
          conname,
          deferrable,
          initdeferred,
          location,
          is_no_inherit,
          raw_expr,
          cooked_expr,
          generated_when,
          keys,
          including,
          exclusions,
          options,
          indexname,
          indexspace,
          reset_default_tblspc,
          access_method,
          where_clause,
          pktable,
          fk_attrs,
          pk_attrs,
          fk_matchtype,
          fk_upd_action,
          fk_del_action,
          old_conpfeqop,
          old_pktable_oid,
          skip_validation,
          initially_valid,
        }
      )
      <$> optionalField("contype", okJson)
      <*> optionalField("conname", string)
      <*> optionalField("deferrable", boolean)
      <*> optionalField("initdeferred", boolean)
      <*> optionalField("location", intFromNumber)
      <*> optionalField("is_no_inherit", boolean)
      <*> optionalField("raw_expr", Stmt.decode)
      <*> optionalField("cooked_expr", string)
      <*> optionalField("generated_when", string)
      <*> optionalField("keys", array(Stmt.decode))
      <*> optionalField("including", array(Stmt.decode))
      <*> optionalField("exclusions", array(Stmt.decode))
      <*> optionalField("options", array(Stmt.decode))
      <*> optionalField("indexname", string)
      <*> optionalField("indexspace", string)
      <*> optionalField("reset_default_tblspc", boolean)
      <*> optionalField("access_method", string)
      <*> optionalField("where_clause", Stmt.decode)
      <*> optionalField("pktable", RangeVar.decode)
      <*> optionalField("fk_attrs", array(Stmt.decode))
      <*> optionalField("pk_attrs", array(Stmt.decode))
      <*> optionalField("fk_matchtype", string)
      <*> optionalField("fk_upd_action", string)
      <*> optionalField("fk_del_action", string)
      <*> optionalField("old_conpfeqop", array(Stmt.decode))
      <*> optionalField("old_pktable_oid", intFromNumber)
      <*> optionalField("skip_validation", boolean)
      <*> optionalField("initially_valid", boolean)
    );

  let encode =
      (
        {
          contype,
          conname,
          deferrable,
          initdeferred,
          location,
          is_no_inherit,
          raw_expr,
          cooked_expr,
          generated_when,
          keys,
          including,
          exclusions,
          options,
          indexname,
          indexspace,
          reset_default_tblspc,
          access_method,
          where_clause,
          pktable,
          fk_attrs,
          pk_attrs,
          fk_matchtype,
          fk_upd_action,
          fk_del_action,
          old_conpfeqop,
          old_pktable_oid,
          skip_validation,
          initially_valid,
        },
      ) =>
    Encode.(
      obj([
        ("contype", contype |> option(id)),
        ("conname", conname |> option(string)),
        ("deferrable", deferrable |> option(bool)),
        ("initdeferred", initdeferred |> option(bool)),
        ("location", location |> option(int)),
        ("is_no_inherit", is_no_inherit |> option(bool)),
        ("raw_expr", raw_expr |> option(Stmt.encode)),
        ("cooked_expr", cooked_expr |> option(string)),
        ("generated_when", generated_when |> option(string)),
        ("keys", keys |> option(array(Stmt.encode))),
        ("including", including |> option(array(Stmt.encode))),
        ("exclusions", exclusions |> option(array(Stmt.encode))),
        ("options", options |> option(array(Stmt.encode))),
        ("indexname", indexname |> option(string)),
        ("indexspace", indexspace |> option(string)),
        ("reset_default_tblspc", reset_default_tblspc |> option(bool)),
        ("access_method", access_method |> option(string)),
        ("where_clause", where_clause |> option(Stmt.encode)),
        ("pktable", pktable |> option(RangeVar.encode)),
        ("fk_attrs", fk_attrs |> option(array(Stmt.encode))),
        ("pk_attrs", pk_attrs |> option(array(Stmt.encode))),
        ("fk_matchtype", fk_matchtype |> option(string)),
        ("fk_upd_action", fk_upd_action |> option(string)),
        ("fk_del_action", fk_del_action |> option(string)),
        ("old_conpfeqop", old_conpfeqop |> option(array(Stmt.encode))),
        ("old_pktable_oid", old_pktable_oid |> option(int)),
        ("skip_validation", skip_validation |> option(bool)),
        ("initially_valid", initially_valid |> option(bool)),
      ])
    );
}

and ConstraintsSetStmt: AstType = {
  type t = {
    constraints: option(array(Stmt.t)),
    deferred: option(bool),
  };

  let decode =
    DecodeParsed.(
      ((constraints, deferred) => {constraints, deferred})
      <$> optionalField("constraints", array(Stmt.decode))
      <*> optionalField("deferred", boolean)
    );

  let encode = ({constraints, deferred}) =>
    Encode.(
      obj([
        ("constraints", constraints |> option(array(Stmt.encode))),
        ("deferred", deferred |> option(bool)),
      ])
    );
}

and ConvertRowtypeExpr: AstType = {
  type t = {
    xpr: option(Stmt.t),
    arg: option(Stmt.t),
    resulttype: option(int),
    convertformat: option(Js.Json.t),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (xpr, arg, resulttype, convertformat, location) => {
          xpr,
          arg,
          resulttype,
          convertformat,
          location,
        }
      )
      <$> optionalField("xpr", Stmt.decode)
      <*> optionalField("arg", Stmt.decode)
      <*> optionalField("resulttype", intFromNumber)
      <*> optionalField("convertformat", okJson)
      <*> optionalField("location", intFromNumber)
    );

  let encode = ({xpr, arg, resulttype, convertformat, location}) =>
    Encode.(
      obj([
        ("xpr", xpr |> option(Stmt.encode)),
        ("arg", arg |> option(Stmt.encode)),
        ("resulttype", resulttype |> option(int)),
        ("convertformat", convertformat |> option(id)),
        ("location", location |> option(int)),
      ])
    );
}

and CopyStmt: AstType = {
  type t = {
    relation: option(RangeVar.t),
    query: option(Stmt.t),
    attlist: option(array(Stmt.t)),
    is_from: option(bool),
    is_program: option(bool),
    filename: option(string),
    options: option(array(Stmt.t)),
    whereClause: option(Stmt.t),
  };

  let decode =
    DecodeParsed.(
      (
        (
          relation,
          query,
          attlist,
          is_from,
          is_program,
          filename,
          options,
          whereClause,
        ) => {
          relation,
          query,
          attlist,
          is_from,
          is_program,
          filename,
          options,
          whereClause,
        }
      )
      <$> optionalField("relation", RangeVar.decode)
      <*> optionalField("query", Stmt.decode)
      <*> optionalField("attlist", array(Stmt.decode))
      <*> optionalField("is_from", boolean)
      <*> optionalField("is_program", boolean)
      <*> optionalField("filename", string)
      <*> optionalField("options", array(Stmt.decode))
      <*> optionalField("whereClause", Stmt.decode)
    );

  let encode =
      (
        {
          relation,
          query,
          attlist,
          is_from,
          is_program,
          filename,
          options,
          whereClause,
        },
      ) =>
    Encode.(
      obj([
        ("relation", relation |> option(RangeVar.encode)),
        ("query", query |> option(Stmt.encode)),
        ("attlist", attlist |> option(array(Stmt.encode))),
        ("is_from", is_from |> option(bool)),
        ("is_program", is_program |> option(bool)),
        ("filename", filename |> option(string)),
        ("options", options |> option(array(Stmt.encode))),
        ("whereClause", whereClause |> option(Stmt.encode)),
      ])
    );
}

and CreateAmStmt: AstType = {
  type t = {
    amname: option(string),
    handler_name: option(array(Stmt.t)),
    amtype: option(string),
  };

  let decode =
    DecodeParsed.(
      ((amname, handler_name, amtype) => {amname, handler_name, amtype})
      <$> optionalField("amname", string)
      <*> optionalField("handler_name", array(Stmt.decode))
      <*> optionalField("amtype", string)
    );

  let encode = ({amname, handler_name, amtype}) =>
    Encode.(
      obj([
        ("amname", amname |> option(string)),
        ("handler_name", handler_name |> option(array(Stmt.encode))),
        ("amtype", amtype |> option(string)),
      ])
    );
}

and CreateCastStmt: AstType = {
  type t = {
    sourcetype: option(TypeName.t),
    targettype: option(TypeName.t),
    func: option(ObjectWithArgs.t),
    context: option(Js.Json.t),
    inout: option(bool),
  };

  let decode =
    DecodeParsed.(
      (
        (sourcetype, targettype, func, context, inout) => {
          sourcetype,
          targettype,
          func,
          context,
          inout,
        }
      )
      <$> optionalField("sourcetype", TypeName.decode)
      <*> optionalField("targettype", TypeName.decode)
      <*> optionalField("func", ObjectWithArgs.decode)
      <*> optionalField("context", okJson)
      <*> optionalField("inout", boolean)
    );

  let encode = ({sourcetype, targettype, func, context, inout}) =>
    Encode.(
      obj([
        ("sourcetype", sourcetype |> option(TypeName.encode)),
        ("targettype", targettype |> option(TypeName.encode)),
        ("func", func |> option(ObjectWithArgs.encode)),
        ("context", context |> option(id)),
        ("inout", inout |> option(bool)),
      ])
    );
}

and CreateConversionStmt: AstType = {
  type t = {
    conversion_name: option(array(Stmt.t)),
    for_encoding_name: option(string),
    to_encoding_name: option(string),
    func_name: option(array(Stmt.t)),
    def: option(bool),
  };

  let decode =
    DecodeParsed.(
      (
        (conversion_name, for_encoding_name, to_encoding_name, func_name, def) => {
          conversion_name,
          for_encoding_name,
          to_encoding_name,
          func_name,
          def,
        }
      )
      <$> optionalField("conversion_name", array(Stmt.decode))
      <*> optionalField("for_encoding_name", string)
      <*> optionalField("to_encoding_name", string)
      <*> optionalField("func_name", array(Stmt.decode))
      <*> optionalField("def", boolean)
    );

  let encode =
      (
        {conversion_name, for_encoding_name, to_encoding_name, func_name, def},
      ) =>
    Encode.(
      obj([
        ("conversion_name", conversion_name |> option(array(Stmt.encode))),
        ("for_encoding_name", for_encoding_name |> option(string)),
        ("to_encoding_name", to_encoding_name |> option(string)),
        ("func_name", func_name |> option(array(Stmt.encode))),
        ("def", def |> option(bool)),
      ])
    );
}

and CreateDomainStmt: AstType = {
  type t = {
    domainname: option(array(Stmt.t)),
    typeName: option(TypeName.t),
    collClause: option(CollateClause.t),
    constraints: option(array(Stmt.t)),
  };

  let decode =
    DecodeParsed.(
      (
        (domainname, typeName, collClause, constraints) => {
          domainname,
          typeName,
          collClause,
          constraints,
        }
      )
      <$> optionalField("domainname", array(Stmt.decode))
      <*> optionalField("typeName", TypeName.decode)
      <*> optionalField("collClause", CollateClause.decode)
      <*> optionalField("constraints", array(Stmt.decode))
    );

  let encode = ({domainname, typeName, collClause, constraints}) =>
    Encode.(
      obj([
        ("domainname", domainname |> option(array(Stmt.encode))),
        ("typeName", typeName |> option(TypeName.encode)),
        ("collClause", collClause |> option(CollateClause.encode)),
        ("constraints", constraints |> option(array(Stmt.encode))),
      ])
    );
}

and CreateEnumStmt: AstType = {
  type t = {
    typeName: option(array(Stmt.t)),
    vals: option(array(Stmt.t)),
  };

  let decode =
    DecodeParsed.(
      ((typeName, vals) => {typeName, vals})
      <$> optionalField("typeName", array(Stmt.decode))
      <*> optionalField("vals", array(Stmt.decode))
    );

  let encode = ({typeName, vals}) =>
    Encode.(
      obj([
        ("typeName", typeName |> option(array(Stmt.encode))),
        ("vals", vals |> option(array(Stmt.encode))),
      ])
    );
}

and CreateEventTrigStmt: AstType = {
  type t = {
    trigname: option(string),
    eventname: option(string),
    whenclause: option(array(Stmt.t)),
    funcname: option(array(Stmt.t)),
  };

  let decode =
    DecodeParsed.(
      (
        (trigname, eventname, whenclause, funcname) => {
          trigname,
          eventname,
          whenclause,
          funcname,
        }
      )
      <$> optionalField("trigname", string)
      <*> optionalField("eventname", string)
      <*> optionalField("whenclause", array(Stmt.decode))
      <*> optionalField("funcname", array(Stmt.decode))
    );

  let encode = ({trigname, eventname, whenclause, funcname}) =>
    Encode.(
      obj([
        ("trigname", trigname |> option(string)),
        ("eventname", eventname |> option(string)),
        ("whenclause", whenclause |> option(array(Stmt.encode))),
        ("funcname", funcname |> option(array(Stmt.encode))),
      ])
    );
}

and CreateExtensionStmt: AstType = {
  type t = {
    extname: option(string),
    if_not_exists: option(bool),
    options: option(array(Stmt.t)),
  };

  let decode =
    DecodeParsed.(
      (
        (extname, if_not_exists, options) => {extname, if_not_exists, options}
      )
      <$> optionalField("extname", string)
      <*> optionalField("if_not_exists", boolean)
      <*> optionalField("options", array(Stmt.decode))
    );

  let encode = ({extname, if_not_exists, options}) =>
    Encode.(
      obj([
        ("extname", extname |> option(string)),
        ("if_not_exists", if_not_exists |> option(bool)),
        ("options", options |> option(array(Stmt.encode))),
      ])
    );
}

and CreateFdwStmt: AstType = {
  type t = {
    fdwname: option(string),
    func_options: option(array(Stmt.t)),
    options: option(array(Stmt.t)),
  };

  let decode =
    DecodeParsed.(
      ((fdwname, func_options, options) => {fdwname, func_options, options})
      <$> optionalField("fdwname", string)
      <*> optionalField("func_options", array(Stmt.decode))
      <*> optionalField("options", array(Stmt.decode))
    );

  let encode = ({fdwname, func_options, options}) =>
    Encode.(
      obj([
        ("fdwname", fdwname |> option(string)),
        ("func_options", func_options |> option(array(Stmt.encode))),
        ("options", options |> option(array(Stmt.encode))),
      ])
    );
}

and CreateForeignServerStmt: AstType = {
  type t = {
    servername: option(string),
    servertype: option(string),
    version: option(string),
    fdwname: option(string),
    if_not_exists: option(bool),
    options: option(array(Stmt.t)),
  };

  let decode =
    DecodeParsed.(
      (
        (servername, servertype, version, fdwname, if_not_exists, options) => {
          servername,
          servertype,
          version,
          fdwname,
          if_not_exists,
          options,
        }
      )
      <$> optionalField("servername", string)
      <*> optionalField("servertype", string)
      <*> optionalField("version", string)
      <*> optionalField("fdwname", string)
      <*> optionalField("if_not_exists", boolean)
      <*> optionalField("options", array(Stmt.decode))
    );

  let encode =
      ({servername, servertype, version, fdwname, if_not_exists, options}) =>
    Encode.(
      obj([
        ("servername", servername |> option(string)),
        ("servertype", servertype |> option(string)),
        ("version", version |> option(string)),
        ("fdwname", fdwname |> option(string)),
        ("if_not_exists", if_not_exists |> option(bool)),
        ("options", options |> option(array(Stmt.encode))),
      ])
    );
}

and CreateForeignTableStmt: AstType = {
  type t = {
    base: option(CreateStmt.t),
    servername: option(string),
    options: option(array(Stmt.t)),
  };

  let decode =
    DecodeParsed.(
      ((base, servername, options) => {base, servername, options})
      <$> optionalField("base", CreateStmt.decode)
      <*> optionalField("servername", string)
      <*> optionalField("options", array(Stmt.decode))
    );

  let encode = ({base, servername, options}) =>
    Encode.(
      obj([
        ("base", base |> option(CreateStmt.encode)),
        ("servername", servername |> option(string)),
        ("options", options |> option(array(Stmt.encode))),
      ])
    );
}

and CreateFunctionStmt: AstType = {
  type t = {
    is_procedure: option(bool),
    replace: option(bool),
    funcname: option(array(Stmt.t)),
    parameters: option(array(Stmt.t)),
    returnType: option(TypeName.t),
    options: option(array(Stmt.t)),
  };

  let decode =
    DecodeParsed.(
      (
        (is_procedure, replace, funcname, parameters, returnType, options) => {
          is_procedure,
          replace,
          funcname,
          parameters,
          returnType,
          options,
        }
      )
      <$> optionalField("is_procedure", boolean)
      <*> optionalField("replace", boolean)
      <*> optionalField("funcname", array(Stmt.decode))
      <*> optionalField("parameters", array(Stmt.decode))
      <*> optionalField("returnType", TypeName.decode)
      <*> optionalField("options", array(Stmt.decode))
    );

  let encode =
      ({is_procedure, replace, funcname, parameters, returnType, options}) =>
    Encode.(
      obj([
        ("is_procedure", is_procedure |> option(bool)),
        ("replace", replace |> option(bool)),
        ("funcname", funcname |> option(array(Stmt.encode))),
        ("parameters", parameters |> option(array(Stmt.encode))),
        ("returnType", returnType |> option(TypeName.encode)),
        ("options", options |> option(array(Stmt.encode))),
      ])
    );
}

and CreateOpClassItem: AstType = {
  type t = {
    itemtype: option(int),
    name: option(array(Stmt.t)),
    number: option(int),
    order_family: option(array(Stmt.t)),
    class_args: option(array(Stmt.t)),
    storedtype: option(TypeName.t),
  };

  let decode =
    DecodeParsed.(
      (
        (itemtype, name, number, order_family, class_args, storedtype) => {
          itemtype,
          name,
          number,
          order_family,
          class_args,
          storedtype,
        }
      )
      <$> optionalField("itemtype", intFromNumber)
      <*> optionalField("name", array(Stmt.decode))
      <*> optionalField("number", intFromNumber)
      <*> optionalField("order_family", array(Stmt.decode))
      <*> optionalField("class_args", array(Stmt.decode))
      <*> optionalField("storedtype", TypeName.decode)
    );

  let encode =
      ({itemtype, name, number, order_family, class_args, storedtype}) =>
    Encode.(
      obj([
        ("itemtype", itemtype |> option(int)),
        ("name", name |> option(array(Stmt.encode))),
        ("number", number |> option(int)),
        ("order_family", order_family |> option(array(Stmt.encode))),
        ("class_args", class_args |> option(array(Stmt.encode))),
        ("storedtype", storedtype |> option(TypeName.encode)),
      ])
    );
}

and CreateOpClassStmt: AstType = {
  type t = {
    opclassname: option(array(Stmt.t)),
    opfamilyname: option(array(Stmt.t)),
    amname: option(string),
    datatype: option(TypeName.t),
    items: option(array(Stmt.t)),
    isDefault: option(bool),
  };

  let decode =
    DecodeParsed.(
      (
        (opclassname, opfamilyname, amname, datatype, items, isDefault) => {
          opclassname,
          opfamilyname,
          amname,
          datatype,
          items,
          isDefault,
        }
      )
      <$> optionalField("opclassname", array(Stmt.decode))
      <*> optionalField("opfamilyname", array(Stmt.decode))
      <*> optionalField("amname", string)
      <*> optionalField("datatype", TypeName.decode)
      <*> optionalField("items", array(Stmt.decode))
      <*> optionalField("isDefault", boolean)
    );

  let encode =
      ({opclassname, opfamilyname, amname, datatype, items, isDefault}) =>
    Encode.(
      obj([
        ("opclassname", opclassname |> option(array(Stmt.encode))),
        ("opfamilyname", opfamilyname |> option(array(Stmt.encode))),
        ("amname", amname |> option(string)),
        ("datatype", datatype |> option(TypeName.encode)),
        ("items", items |> option(array(Stmt.encode))),
        ("isDefault", isDefault |> option(bool)),
      ])
    );
}

and CreateOpFamilyStmt: AstType = {
  type t = {
    opfamilyname: option(array(Stmt.t)),
    amname: option(string),
  };

  let decode =
    DecodeParsed.(
      ((opfamilyname, amname) => {opfamilyname, amname})
      <$> optionalField("opfamilyname", array(Stmt.decode))
      <*> optionalField("amname", string)
    );

  let encode = ({opfamilyname, amname}) =>
    Encode.(
      obj([
        ("opfamilyname", opfamilyname |> option(array(Stmt.encode))),
        ("amname", amname |> option(string)),
      ])
    );
}

and CreatePLangStmt: AstType = {
  type t = {
    replace: option(bool),
    plname: option(string),
    plhandler: option(array(Stmt.t)),
    plinline: option(array(Stmt.t)),
    plvalidator: option(array(Stmt.t)),
    pltrusted: option(bool),
  };

  let decode =
    DecodeParsed.(
      (
        (replace, plname, plhandler, plinline, plvalidator, pltrusted) => {
          replace,
          plname,
          plhandler,
          plinline,
          plvalidator,
          pltrusted,
        }
      )
      <$> optionalField("replace", boolean)
      <*> optionalField("plname", string)
      <*> optionalField("plhandler", array(Stmt.decode))
      <*> optionalField("plinline", array(Stmt.decode))
      <*> optionalField("plvalidator", array(Stmt.decode))
      <*> optionalField("pltrusted", boolean)
    );

  let encode =
      ({replace, plname, plhandler, plinline, plvalidator, pltrusted}) =>
    Encode.(
      obj([
        ("replace", replace |> option(bool)),
        ("plname", plname |> option(string)),
        ("plhandler", plhandler |> option(array(Stmt.encode))),
        ("plinline", plinline |> option(array(Stmt.encode))),
        ("plvalidator", plvalidator |> option(array(Stmt.encode))),
        ("pltrusted", pltrusted |> option(bool)),
      ])
    );
}

and CreatePolicyStmt: AstType = {
  type t = {
    policy_name: option(string),
    table: option(RangeVar.t),
    cmd_name: option(string),
    permissive: option(bool),
    roles: option(array(Stmt.t)),
    qual: option(Stmt.t),
    with_check: option(Stmt.t),
  };

  let decode =
    DecodeParsed.(
      (
        (policy_name, table, cmd_name, permissive, roles, qual, with_check) => {
          policy_name,
          table,
          cmd_name,
          permissive,
          roles,
          qual,
          with_check,
        }
      )
      <$> optionalField("policy_name", string)
      <*> optionalField("table", RangeVar.decode)
      <*> optionalField("cmd_name", string)
      <*> optionalField("permissive", boolean)
      <*> optionalField("roles", array(Stmt.decode))
      <*> optionalField("qual", Stmt.decode)
      <*> optionalField("with_check", Stmt.decode)
    );

  let encode =
      ({policy_name, table, cmd_name, permissive, roles, qual, with_check}) =>
    Encode.(
      obj([
        ("policy_name", policy_name |> option(string)),
        ("table", table |> option(RangeVar.encode)),
        ("cmd_name", cmd_name |> option(string)),
        ("permissive", permissive |> option(bool)),
        ("roles", roles |> option(array(Stmt.encode))),
        ("qual", qual |> option(Stmt.encode)),
        ("with_check", with_check |> option(Stmt.encode)),
      ])
    );
}

and CreatePublicationStmt: AstType = {
  type t = {
    pubname: option(string),
    options: option(array(Stmt.t)),
    tables: option(array(Stmt.t)),
    for_all_tables: option(bool),
  };

  let decode =
    DecodeParsed.(
      (
        (pubname, options, tables, for_all_tables) => {
          pubname,
          options,
          tables,
          for_all_tables,
        }
      )
      <$> optionalField("pubname", string)
      <*> optionalField("options", array(Stmt.decode))
      <*> optionalField("tables", array(Stmt.decode))
      <*> optionalField("for_all_tables", boolean)
    );

  let encode = ({pubname, options, tables, for_all_tables}) =>
    Encode.(
      obj([
        ("pubname", pubname |> option(string)),
        ("options", options |> option(array(Stmt.encode))),
        ("tables", tables |> option(array(Stmt.encode))),
        ("for_all_tables", for_all_tables |> option(bool)),
      ])
    );
}

and CreateRangeStmt: AstType = {
  type t = {
    typeName: option(array(Stmt.t)),
    params: option(array(Stmt.t)),
  };

  let decode =
    DecodeParsed.(
      ((typeName, params) => {typeName, params})
      <$> optionalField("typeName", array(Stmt.decode))
      <*> optionalField("params", array(Stmt.decode))
    );

  let encode = ({typeName, params}) =>
    Encode.(
      obj([
        ("typeName", typeName |> option(array(Stmt.encode))),
        ("params", params |> option(array(Stmt.encode))),
      ])
    );
}

and CreateRoleStmt: AstType = {
  type t = {
    stmt_type: option(Js.Json.t),
    role: option(string),
    options: option(array(Stmt.t)),
  };

  let decode =
    DecodeParsed.(
      ((stmt_type, role, options) => {stmt_type, role, options})
      <$> optionalField("stmt_type", okJson)
      <*> optionalField("role", string)
      <*> optionalField("options", array(Stmt.decode))
    );

  let encode = ({stmt_type, role, options}) =>
    Encode.(
      obj([
        ("stmt_type", stmt_type |> option(id)),
        ("role", role |> option(string)),
        ("options", options |> option(array(Stmt.encode))),
      ])
    );
}

and CreateSchemaStmt: AstType = {
  type t = {
    schemaname: option(string),
    authrole: option(Stmt.t),
    schemaElts: option(array(Stmt.t)),
    if_not_exists: option(bool),
  };

  let decode =
    DecodeParsed.(
      (
        (schemaname, authrole, schemaElts, if_not_exists) => {
          schemaname,
          authrole,
          schemaElts,
          if_not_exists,
        }
      )
      <$> optionalField("schemaname", string)
      <*> optionalField("authrole", Stmt.decode)
      <*> optionalField("schemaElts", array(Stmt.decode))
      <*> optionalField("if_not_exists", boolean)
    );

  let encode = ({schemaname, authrole, schemaElts, if_not_exists}) =>
    Encode.(
      obj([
        ("schemaname", schemaname |> option(string)),
        ("authrole", authrole |> option(Stmt.encode)),
        ("schemaElts", schemaElts |> option(array(Stmt.encode))),
        ("if_not_exists", if_not_exists |> option(bool)),
      ])
    );
}

and CreateSeqStmt: AstType = {
  type t = {
    sequence: option(Stmt.t),
    options: option(array(Stmt.t)),
    ownerId: option(int),
    for_identity: option(bool),
    if_not_exists: option(bool),
  };

  let decode =
    DecodeParsed.(
      (
        (sequence, options, ownerId, for_identity, if_not_exists) => {
          sequence,
          options,
          ownerId,
          for_identity,
          if_not_exists,
        }
      )
      <$> optionalField("sequence", Stmt.decode)
      <*> optionalField("options", array(Stmt.decode))
      <*> optionalField("ownerId", intFromNumber)
      <*> optionalField("for_identity", boolean)
      <*> optionalField("if_not_exists", boolean)
    );

  let encode = ({sequence, options, ownerId, for_identity, if_not_exists}) =>
    Encode.(
      obj([
        ("sequence", sequence |> option(Stmt.encode)),
        ("options", options |> option(array(Stmt.encode))),
        ("ownerId", ownerId |> option(int)),
        ("for_identity", for_identity |> option(bool)),
        ("if_not_exists", if_not_exists |> option(bool)),
      ])
    );
}

and CreateStatsStmt: AstType = {
  type t = {
    defnames: option(array(Stmt.t)),
    stat_types: option(array(Stmt.t)),
    exprs: option(array(Stmt.t)),
    relations: option(array(Stmt.t)),
    stxcomment: option(string),
    if_not_exists: option(bool),
  };

  let decode =
    DecodeParsed.(
      (
        (defnames, stat_types, exprs, relations, stxcomment, if_not_exists) => {
          defnames,
          stat_types,
          exprs,
          relations,
          stxcomment,
          if_not_exists,
        }
      )
      <$> optionalField("defnames", array(Stmt.decode))
      <*> optionalField("stat_types", array(Stmt.decode))
      <*> optionalField("exprs", array(Stmt.decode))
      <*> optionalField("relations", array(Stmt.decode))
      <*> optionalField("stxcomment", string)
      <*> optionalField("if_not_exists", boolean)
    );

  let encode =
      ({defnames, stat_types, exprs, relations, stxcomment, if_not_exists}) =>
    Encode.(
      obj([
        ("defnames", defnames |> option(array(Stmt.encode))),
        ("stat_types", stat_types |> option(array(Stmt.encode))),
        ("exprs", exprs |> option(array(Stmt.encode))),
        ("relations", relations |> option(array(Stmt.encode))),
        ("stxcomment", stxcomment |> option(string)),
        ("if_not_exists", if_not_exists |> option(bool)),
      ])
    );
}

and CreateStmt: AstType = {
  type t = {
    relation: option(RangeVar.t),
    tableElts: option(array(Stmt.t)),
    inhRelations: option(array(Stmt.t)),
    partbound: option(Stmt.t),
    partspec: option(Stmt.t),
    ofTypename: option(TypeName.t),
    constraints: option(array(Stmt.t)),
    options: option(array(Stmt.t)),
    oncommit: option(Js.Json.t),
    tablespacename: option(string),
    accessMethod: option(string),
    if_not_exists: option(bool),
  };

  let decode =
    DecodeParsed.(
      (
        (
          relation,
          tableElts,
          inhRelations,
          partbound,
          partspec,
          ofTypename,
          constraints,
          options,
          oncommit,
          tablespacename,
          accessMethod,
          if_not_exists,
        ) => {
          relation,
          tableElts,
          inhRelations,
          partbound,
          partspec,
          ofTypename,
          constraints,
          options,
          oncommit,
          tablespacename,
          accessMethod,
          if_not_exists,
        }
      )
      <$> optionalField("relation", RangeVar.decode)
      <*> optionalField("tableElts", array(Stmt.decode))
      <*> optionalField("inhRelations", array(Stmt.decode))
      <*> optionalField("partbound", Stmt.decode)
      <*> optionalField("partspec", Stmt.decode)
      <*> optionalField("ofTypename", TypeName.decode)
      <*> optionalField("constraints", array(Stmt.decode))
      <*> optionalField("options", array(Stmt.decode))
      <*> optionalField("oncommit", okJson)
      <*> optionalField("tablespacename", string)
      <*> optionalField("accessMethod", string)
      <*> optionalField("if_not_exists", boolean)
    );

  let encode =
      (
        {
          relation,
          tableElts,
          inhRelations,
          partbound,
          partspec,
          ofTypename,
          constraints,
          options,
          oncommit,
          tablespacename,
          accessMethod,
          if_not_exists,
        },
      ) =>
    Encode.(
      obj([
        ("relation", relation |> option(RangeVar.encode)),
        ("tableElts", tableElts |> option(array(Stmt.encode))),
        ("inhRelations", inhRelations |> option(array(Stmt.encode))),
        ("partbound", partbound |> option(Stmt.encode)),
        ("partspec", partspec |> option(Stmt.encode)),
        ("ofTypename", ofTypename |> option(TypeName.encode)),
        ("constraints", constraints |> option(array(Stmt.encode))),
        ("options", options |> option(array(Stmt.encode))),
        ("oncommit", oncommit |> option(id)),
        ("tablespacename", tablespacename |> option(string)),
        ("accessMethod", accessMethod |> option(string)),
        ("if_not_exists", if_not_exists |> option(bool)),
      ])
    );
}

and CreateSubscriptionStmt: AstType = {
  type t = {
    subname: option(string),
    conninfo: option(string),
    publication: option(array(Stmt.t)),
    options: option(array(Stmt.t)),
  };

  let decode =
    DecodeParsed.(
      (
        (subname, conninfo, publication, options) => {
          subname,
          conninfo,
          publication,
          options,
        }
      )
      <$> optionalField("subname", string)
      <*> optionalField("conninfo", string)
      <*> optionalField("publication", array(Stmt.decode))
      <*> optionalField("options", array(Stmt.decode))
    );

  let encode = ({subname, conninfo, publication, options}) =>
    Encode.(
      obj([
        ("subname", subname |> option(string)),
        ("conninfo", conninfo |> option(string)),
        ("publication", publication |> option(array(Stmt.encode))),
        ("options", options |> option(array(Stmt.encode))),
      ])
    );
}

and CreateTableAsStmt: AstType = {
  type t = {
    query: option(Stmt.t),
    into: option(Stmt.t),
    relkind: option(string),
    is_select_into: option(bool),
    if_not_exists: option(bool),
  };

  let decode =
    DecodeParsed.(
      (
        (query, into, relkind, is_select_into, if_not_exists) => {
          query,
          into,
          relkind,
          is_select_into,
          if_not_exists,
        }
      )
      <$> optionalField("query", Stmt.decode)
      <*> optionalField("into", Stmt.decode)
      <*> optionalField("relkind", string)
      <*> optionalField("is_select_into", boolean)
      <*> optionalField("if_not_exists", boolean)
    );

  let encode = ({query, into, relkind, is_select_into, if_not_exists}) =>
    Encode.(
      obj([
        ("query", query |> option(Stmt.encode)),
        ("into", into |> option(Stmt.encode)),
        ("relkind", relkind |> option(string)),
        ("is_select_into", is_select_into |> option(bool)),
        ("if_not_exists", if_not_exists |> option(bool)),
      ])
    );
}

and CreateTableSpaceStmt: AstType = {
  type t = {
    tablespacename: option(string),
    owner: option(Stmt.t),
    location: option(string),
    options: option(array(Stmt.t)),
  };

  let decode =
    DecodeParsed.(
      (
        (tablespacename, owner, location, options) => {
          tablespacename,
          owner,
          location,
          options,
        }
      )
      <$> optionalField("tablespacename", string)
      <*> optionalField("owner", Stmt.decode)
      <*> optionalField("location", string)
      <*> optionalField("options", array(Stmt.decode))
    );

  let encode = ({tablespacename, owner, location, options}) =>
    Encode.(
      obj([
        ("tablespacename", tablespacename |> option(string)),
        ("owner", owner |> option(Stmt.encode)),
        ("location", location |> option(string)),
        ("options", options |> option(array(Stmt.encode))),
      ])
    );
}

and CreateTrigStmt: AstType = {
  type t = {
    trigname: option(string),
    relation: option(RangeVar.t),
    funcname: option(array(Stmt.t)),
    args: option(array(Stmt.t)),
    row: option(bool),
    timing: option(int),
    events: option(int),
    columns: option(array(Stmt.t)),
    whenclause: option(Stmt.t),
    isconstraint: option(bool),
    transitionRels: option(array(Stmt.t)),
    deferrable: option(bool),
    initdeferred: option(bool),
    constrrel: option(RangeVar.t),
  };

  let decode =
    DecodeParsed.(
      (
        (
          trigname,
          relation,
          funcname,
          args,
          row,
          timing,
          events,
          columns,
          whenclause,
          isconstraint,
          transitionRels,
          deferrable,
          initdeferred,
          constrrel,
        ) => {
          trigname,
          relation,
          funcname,
          args,
          row,
          timing,
          events,
          columns,
          whenclause,
          isconstraint,
          transitionRels,
          deferrable,
          initdeferred,
          constrrel,
        }
      )
      <$> optionalField("trigname", string)
      <*> optionalField("relation", RangeVar.decode)
      <*> optionalField("funcname", array(Stmt.decode))
      <*> optionalField("args", array(Stmt.decode))
      <*> optionalField("row", boolean)
      <*> optionalField("timing", intFromNumber)
      <*> optionalField("events", intFromNumber)
      <*> optionalField("columns", array(Stmt.decode))
      <*> optionalField("whenclause", Stmt.decode)
      <*> optionalField("isconstraint", boolean)
      <*> optionalField("transitionRels", array(Stmt.decode))
      <*> optionalField("deferrable", boolean)
      <*> optionalField("initdeferred", boolean)
      <*> optionalField("constrrel", RangeVar.decode)
    );

  let encode =
      (
        {
          trigname,
          relation,
          funcname,
          args,
          row,
          timing,
          events,
          columns,
          whenclause,
          isconstraint,
          transitionRels,
          deferrable,
          initdeferred,
          constrrel,
        },
      ) =>
    Encode.(
      obj([
        ("trigname", trigname |> option(string)),
        ("relation", relation |> option(RangeVar.encode)),
        ("funcname", funcname |> option(array(Stmt.encode))),
        ("args", args |> option(array(Stmt.encode))),
        ("row", row |> option(bool)),
        ("timing", timing |> option(int)),
        ("events", events |> option(int)),
        ("columns", columns |> option(array(Stmt.encode))),
        ("whenclause", whenclause |> option(Stmt.encode)),
        ("isconstraint", isconstraint |> option(bool)),
        ("transitionRels", transitionRels |> option(array(Stmt.encode))),
        ("deferrable", deferrable |> option(bool)),
        ("initdeferred", initdeferred |> option(bool)),
        ("constrrel", constrrel |> option(RangeVar.encode)),
      ])
    );
}

and CreateTransformStmt: AstType = {
  type t = {
    replace: option(bool),
    typeName: option(array(TypeName.t)),
    lang: option(string),
    fromsql: option(ObjectWithArgs.t),
    tosql: option(ObjectWithArgs.t),
  };

  let decode =
    DecodeParsed.(
      (
        (replace, typeName, lang, fromsql, tosql) => {
          replace,
          typeName,
          lang,
          fromsql,
          tosql,
        }
      )
      <$> optionalField("replace", boolean)
      <*> optionalField("typeName", array(TypeName.decode))
      <*> optionalField("lang", string)
      <*> optionalField("fromsql", ObjectWithArgs.decode)
      <*> optionalField("tosql", ObjectWithArgs.decode)
    );

  let encode = ({replace, typeName, lang, fromsql, tosql}) =>
    Encode.(
      obj([
        ("replace", replace |> option(bool)),
        ("typeName", typeName |> option(array(TypeName.encode))),
        ("lang", lang |> option(string)),
        ("fromsql", fromsql |> option(ObjectWithArgs.encode)),
        ("tosql", tosql |> option(ObjectWithArgs.encode)),
      ])
    );
}

and CreateUserMappingStmt: AstType = {
  type t = {
    user: option(RoleSpec.t),
    servername: option(string),
    if_not_exists: option(bool),
    options: option(array(Stmt.t)),
  };

  let decode =
    DecodeParsed.(
      (
        (user, servername, if_not_exists, options) => {
          user,
          servername,
          if_not_exists,
          options,
        }
      )
      <$> optionalField("user", RoleSpec.decode)
      <*> optionalField("servername", string)
      <*> optionalField("if_not_exists", boolean)
      <*> optionalField("options", array(Stmt.decode))
    );

  let encode = ({user, servername, if_not_exists, options}) =>
    Encode.(
      obj([
        ("user", user |> option(RoleSpec.encode)),
        ("servername", servername |> option(string)),
        ("if_not_exists", if_not_exists |> option(bool)),
        ("options", options |> option(array(Stmt.encode))),
      ])
    );
}

and CreatedbStmt: AstType = {
  type t = {
    dbname: option(string),
    options: option(array(Stmt.t)),
  };

  let decode =
    DecodeParsed.(
      ((dbname, options) => {dbname, options})
      <$> optionalField("dbname", string)
      <*> optionalField("options", array(Stmt.decode))
    );

  let encode = ({dbname, options}) =>
    Encode.(
      obj([
        ("dbname", dbname |> option(string)),
        ("options", options |> option(array(Stmt.encode))),
      ])
    );
}

and CurrentOfExpr: AstType = {
  type t = {
    cvarno: option(Js.Json.t),
    cursor_name: option(string),
    cursor_param: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (cvarno, cursor_name, cursor_param) => {
          cvarno,
          cursor_name,
          cursor_param,
        }
      )
      <$> optionalField("cvarno", okJson)
      <*> optionalField("cursor_name", string)
      <*> optionalField("cursor_param", intFromNumber)
    );

  let encode = ({cvarno, cursor_name, cursor_param}) =>
    Encode.(
      obj([
        ("cvarno", cvarno |> option(id)),
        ("cursor_name", cursor_name |> option(string)),
        ("cursor_param", cursor_param |> option(int)),
      ])
    );
}

and DeallocateStmt: AstType = {
  type t = {name: option(string)};

  let decode =
    DecodeParsed.((name => {name: name}) <$> optionalField("name", string));

  let encode = ({name}) =>
    Encode.(obj([("name", name |> option(string))]));
}

and DeclareCursorStmt: AstType = {
  type t = {
    portalname: option(string),
    options: option(int),
    query: option(Stmt.t),
  };

  let decode =
    DecodeParsed.(
      ((portalname, options, query) => {portalname, options, query})
      <$> optionalField("portalname", string)
      <*> optionalField("options", intFromNumber)
      <*> optionalField("query", Stmt.decode)
    );

  let encode = ({portalname, options, query}) =>
    Encode.(
      obj([
        ("portalname", portalname |> option(string)),
        ("options", options |> option(int)),
        ("query", query |> option(Stmt.encode)),
      ])
    );
}

and DefElem: AstType = {
  type t = {
    defnamespace: option(string),
    defname: option(string),
    arg: option(Stmt.t),
    defaction: option(Js.Json.t),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (defnamespace, defname, arg, defaction, location) => {
          defnamespace,
          defname,
          arg,
          defaction,
          location,
        }
      )
      <$> optionalField("defnamespace", string)
      <*> optionalField("defname", string)
      <*> optionalField("arg", Stmt.decode)
      <*> optionalField("defaction", okJson)
      <*> optionalField("location", intFromNumber)
    );

  let encode = ({defnamespace, defname, arg, defaction, location}) =>
    Encode.(
      obj([
        ("defnamespace", defnamespace |> option(string)),
        ("defname", defname |> option(string)),
        ("arg", arg |> option(Stmt.encode)),
        ("defaction", defaction |> option(id)),
        ("location", location |> option(int)),
      ])
    );
}

and DefineStmt: AstType = {
  type t = {
    kind: option(Js.Json.t),
    oldstyle: option(bool),
    defnames: option(array(Stmt.t)),
    args: option(array(Stmt.t)),
    definition: option(array(Stmt.t)),
    if_not_exists: option(bool),
    replace: option(bool),
  };

  let decode =
    DecodeParsed.(
      (
        (kind, oldstyle, defnames, args, definition, if_not_exists, replace) => {
          kind,
          oldstyle,
          defnames,
          args,
          definition,
          if_not_exists,
          replace,
        }
      )
      <$> optionalField("kind", okJson)
      <*> optionalField("oldstyle", boolean)
      <*> optionalField("defnames", array(Stmt.decode))
      <*> optionalField("args", array(Stmt.decode))
      <*> optionalField("definition", array(Stmt.decode))
      <*> optionalField("if_not_exists", boolean)
      <*> optionalField("replace", boolean)
    );

  let encode =
      ({kind, oldstyle, defnames, args, definition, if_not_exists, replace}) =>
    Encode.(
      obj([
        ("kind", kind |> option(id)),
        ("oldstyle", oldstyle |> option(bool)),
        ("defnames", defnames |> option(array(Stmt.encode))),
        ("args", args |> option(array(Stmt.encode))),
        ("definition", definition |> option(array(Stmt.encode))),
        ("if_not_exists", if_not_exists |> option(bool)),
        ("replace", replace |> option(bool)),
      ])
    );
}

and DeleteStmt: AstType = {
  type t = {
    relation: option(RangeVar.t),
    usingClause: option(array(Stmt.t)),
    whereClause: option(Stmt.t),
    returningList: option(array(Stmt.t)),
    withClause: option(WithClause.t),
  };

  let decode =
    DecodeParsed.(
      (
        (relation, usingClause, whereClause, returningList, withClause) => {
          relation,
          usingClause,
          whereClause,
          returningList,
          withClause,
        }
      )
      <$> optionalField("relation", RangeVar.decode)
      <*> optionalField("usingClause", array(Stmt.decode))
      <*> optionalField("whereClause", Stmt.decode)
      <*> optionalField("returningList", array(Stmt.decode))
      <*> optionalField("withClause", WithClause.decode)
    );

  let encode =
      ({relation, usingClause, whereClause, returningList, withClause}) =>
    Encode.(
      obj([
        ("relation", relation |> option(RangeVar.encode)),
        ("usingClause", usingClause |> option(array(Stmt.encode))),
        ("whereClause", whereClause |> option(Stmt.encode)),
        ("returningList", returningList |> option(array(Stmt.encode))),
        ("withClause", withClause |> option(WithClause.encode)),
      ])
    );
}

and DiscardStmt: AstType = {
  type t = {target: option(Js.Json.t)};

  let decode =
    DecodeParsed.(
      (target => {target: target}) <$> optionalField("target", okJson)
    );

  let encode = ({target}) =>
    Encode.(obj([("target", target |> option(id))]));
}

and DoStmt: AstType = {
  type t = {args: option(array(Stmt.t))};

  let decode =
    DecodeParsed.(
      (args => {args: args}) <$> optionalField("args", array(Stmt.decode))
    );

  let encode = ({args}) =>
    Encode.(obj([("args", args |> option(array(Stmt.encode)))]));
}

and DropOwnedStmt: AstType = {
  type t = {
    roles: option(array(Stmt.t)),
    behavior: option(Js.Json.t),
  };

  let decode =
    DecodeParsed.(
      ((roles, behavior) => {roles, behavior})
      <$> optionalField("roles", array(Stmt.decode))
      <*> optionalField("behavior", okJson)
    );

  let encode = ({roles, behavior}) =>
    Encode.(
      obj([
        ("roles", roles |> option(array(Stmt.encode))),
        ("behavior", behavior |> option(id)),
      ])
    );
}

and DropRoleStmt: AstType = {
  type t = {
    roles: option(array(Stmt.t)),
    missing_ok: option(bool),
  };

  let decode =
    DecodeParsed.(
      ((roles, missing_ok) => {roles, missing_ok})
      <$> optionalField("roles", array(Stmt.decode))
      <*> optionalField("missing_ok", boolean)
    );

  let encode = ({roles, missing_ok}) =>
    Encode.(
      obj([
        ("roles", roles |> option(array(Stmt.encode))),
        ("missing_ok", missing_ok |> option(bool)),
      ])
    );
}

and DropStmt: AstType = {
  type t = {
    objects: option(array(Stmt.t)),
    removeType: option(Js.Json.t),
    behavior: option(Js.Json.t),
    missing_ok: option(bool),
    concurrent: option(bool),
  };

  let decode =
    DecodeParsed.(
      (
        (objects, removeType, behavior, missing_ok, concurrent) => {
          objects,
          removeType,
          behavior,
          missing_ok,
          concurrent,
        }
      )
      <$> optionalField("objects", array(Stmt.decode))
      <*> optionalField("removeType", okJson)
      <*> optionalField("behavior", okJson)
      <*> optionalField("missing_ok", boolean)
      <*> optionalField("concurrent", boolean)
    );

  let encode = ({objects, removeType, behavior, missing_ok, concurrent}) =>
    Encode.(
      obj([
        ("objects", objects |> option(array(Stmt.encode))),
        ("removeType", removeType |> option(id)),
        ("behavior", behavior |> option(id)),
        ("missing_ok", missing_ok |> option(bool)),
        ("concurrent", concurrent |> option(bool)),
      ])
    );
}

and DropSubscriptionStmt: AstType = {
  type t = {
    subname: option(string),
    missing_ok: option(bool),
    behavior: option(Js.Json.t),
  };

  let decode =
    DecodeParsed.(
      ((subname, missing_ok, behavior) => {subname, missing_ok, behavior})
      <$> optionalField("subname", string)
      <*> optionalField("missing_ok", boolean)
      <*> optionalField("behavior", okJson)
    );

  let encode = ({subname, missing_ok, behavior}) =>
    Encode.(
      obj([
        ("subname", subname |> option(string)),
        ("missing_ok", missing_ok |> option(bool)),
        ("behavior", behavior |> option(id)),
      ])
    );
}

and DropTableSpaceStmt: AstType = {
  type t = {
    tablespacename: option(string),
    missing_ok: option(bool),
  };

  let decode =
    DecodeParsed.(
      ((tablespacename, missing_ok) => {tablespacename, missing_ok})
      <$> optionalField("tablespacename", string)
      <*> optionalField("missing_ok", boolean)
    );

  let encode = ({tablespacename, missing_ok}) =>
    Encode.(
      obj([
        ("tablespacename", tablespacename |> option(string)),
        ("missing_ok", missing_ok |> option(bool)),
      ])
    );
}

and DropUserMappingStmt: AstType = {
  type t = {
    user: option(RoleSpec.t),
    servername: option(string),
    missing_ok: option(bool),
  };

  let decode =
    DecodeParsed.(
      ((user, servername, missing_ok) => {user, servername, missing_ok})
      <$> optionalField("user", RoleSpec.decode)
      <*> optionalField("servername", string)
      <*> optionalField("missing_ok", boolean)
    );

  let encode = ({user, servername, missing_ok}) =>
    Encode.(
      obj([
        ("user", user |> option(RoleSpec.encode)),
        ("servername", servername |> option(string)),
        ("missing_ok", missing_ok |> option(bool)),
      ])
    );
}

and DropdbStmt: AstType = {
  type t = {
    dbname: option(string),
    missing_ok: option(bool),
  };

  let decode =
    DecodeParsed.(
      ((dbname, missing_ok) => {dbname, missing_ok})
      <$> optionalField("dbname", string)
      <*> optionalField("missing_ok", boolean)
    );

  let encode = ({dbname, missing_ok}) =>
    Encode.(
      obj([
        ("dbname", dbname |> option(string)),
        ("missing_ok", missing_ok |> option(bool)),
      ])
    );
}

and ExecuteStmt: AstType = {
  type t = {
    name: option(string),
    params: option(array(Stmt.t)),
  };

  let decode =
    DecodeParsed.(
      ((name, params) => {name, params})
      <$> optionalField("name", string)
      <*> optionalField("params", array(Stmt.decode))
    );

  let encode = ({name, params}) =>
    Encode.(
      obj([
        ("name", name |> option(string)),
        ("params", params |> option(array(Stmt.encode))),
      ])
    );
}

and ExplainStmt: AstType = {
  type t = {
    query: option(Stmt.t),
    options: option(array(Stmt.t)),
  };

  let decode =
    DecodeParsed.(
      ((query, options) => {query, options})
      <$> optionalField("query", Stmt.decode)
      <*> optionalField("options", array(Stmt.decode))
    );

  let encode = ({query, options}) =>
    Encode.(
      obj([
        ("query", query |> option(Stmt.encode)),
        ("options", options |> option(array(Stmt.encode))),
      ])
    );
}

and FetchStmt: AstType = {
  type t = {
    direction: option(Js.Json.t),
    howMany: option(int),
    portalname: option(string),
    ismove: option(bool),
  };

  let decode =
    DecodeParsed.(
      (
        (direction, howMany, portalname, ismove) => {
          direction,
          howMany,
          portalname,
          ismove,
        }
      )
      <$> optionalField("direction", okJson)
      <*> optionalField("howMany", intFromNumber)
      <*> optionalField("portalname", string)
      <*> optionalField("ismove", boolean)
    );

  let encode = ({direction, howMany, portalname, ismove}) =>
    Encode.(
      obj([
        ("direction", direction |> option(id)),
        ("howMany", howMany |> option(int)),
        ("portalname", portalname |> option(string)),
        ("ismove", ismove |> option(bool)),
      ])
    );
}

and FieldSelect: AstType = {
  type t = {
    arg: option(Stmt.t),
    fieldnum: option(Js.Json.t),
    resulttype: option(int),
    resulttypmod: option(int),
    resultcollid: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (arg, fieldnum, resulttype, resulttypmod, resultcollid) => {
          arg,
          fieldnum,
          resulttype,
          resulttypmod,
          resultcollid,
        }
      )
      <$> optionalField("arg", Stmt.decode)
      <*> optionalField("fieldnum", okJson)
      <*> optionalField("resulttype", intFromNumber)
      <*> optionalField("resulttypmod", intFromNumber)
      <*> optionalField("resultcollid", intFromNumber)
    );

  let encode = ({arg, fieldnum, resulttype, resulttypmod, resultcollid}) =>
    Encode.(
      obj([
        ("arg", arg |> option(Stmt.encode)),
        ("fieldnum", fieldnum |> option(id)),
        ("resulttype", resulttype |> option(int)),
        ("resulttypmod", resulttypmod |> option(int)),
        ("resultcollid", resultcollid |> option(int)),
      ])
    );
}

and FieldStore: AstType = {
  type t = {
    arg: option(Stmt.t),
    newvals: option(array(Stmt.t)),
    fieldnums: option(array(Js.Json.t)),
    resulttype: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (arg, newvals, fieldnums, resulttype) => {
          arg,
          newvals,
          fieldnums,
          resulttype,
        }
      )
      <$> optionalField("arg", Stmt.decode)
      <*> optionalField("newvals", array(Stmt.decode))
      <*> optionalField("fieldnums", array(okJson))
      <*> optionalField("resulttype", intFromNumber)
    );

  let encode = ({arg, newvals, fieldnums, resulttype}) =>
    Encode.(
      obj([
        ("arg", arg |> option(Stmt.encode)),
        ("newvals", newvals |> option(array(Stmt.encode))),
        ("fieldnums", fieldnums |> option(array(id))),
        ("resulttype", resulttype |> option(int)),
      ])
    );
}

and FromExpr: AstType = {
  type t = {
    fromlist: option(array(Stmt.t)),
    quals: option(Stmt.t),
  };

  let decode =
    DecodeParsed.(
      ((fromlist, quals) => {fromlist, quals})
      <$> optionalField("fromlist", array(Stmt.decode))
      <*> optionalField("quals", Stmt.decode)
    );

  let encode = ({fromlist, quals}) =>
    Encode.(
      obj([
        ("fromlist", fromlist |> option(array(Stmt.encode))),
        ("quals", quals |> option(Stmt.encode)),
      ])
    );
}

and FuncCall: AstType = {
  type t = {
    funcname: option(array(Stmt.t)),
    args: option(array(Stmt.t)),
    agg_order: option(array(Stmt.t)),
    agg_filter: option(Stmt.t),
    agg_within_group: option(bool),
    agg_star: option(bool),
    agg_distinct: option(bool),
    func_variadic: option(bool),
    over: option(WindowDef.t),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (
          funcname,
          args,
          agg_order,
          agg_filter,
          agg_within_group,
          agg_star,
          agg_distinct,
          func_variadic,
          over,
          location,
        ) => {
          funcname,
          args,
          agg_order,
          agg_filter,
          agg_within_group,
          agg_star,
          agg_distinct,
          func_variadic,
          over,
          location,
        }
      )
      <$> optionalField("funcname", array(Stmt.decode))
      <*> optionalField("args", array(Stmt.decode))
      <*> optionalField("agg_order", array(Stmt.decode))
      <*> optionalField("agg_filter", Stmt.decode)
      <*> optionalField("agg_within_group", boolean)
      <*> optionalField("agg_star", boolean)
      <*> optionalField("agg_distinct", boolean)
      <*> optionalField("func_variadic", boolean)
      <*> optionalField("over", WindowDef.decode)
      <*> optionalField("location", intFromNumber)
    );

  let encode =
      (
        {
          funcname,
          args,
          agg_order,
          agg_filter,
          agg_within_group,
          agg_star,
          agg_distinct,
          func_variadic,
          over,
          location,
        },
      ) =>
    Encode.(
      obj([
        ("funcname", funcname |> option(array(Stmt.encode))),
        ("args", args |> option(array(Stmt.encode))),
        ("agg_order", agg_order |> option(array(Stmt.encode))),
        ("agg_filter", agg_filter |> option(Stmt.encode)),
        ("agg_within_group", agg_within_group |> option(bool)),
        ("agg_star", agg_star |> option(bool)),
        ("agg_distinct", agg_distinct |> option(bool)),
        ("func_variadic", func_variadic |> option(bool)),
        ("over", over |> option(WindowDef.encode)),
        ("location", location |> option(int)),
      ])
    );
}

and FuncExpr: AstType = {
  type t = {
    funcid: option(int),
    funcresulttype: option(int),
    funcretset: option(bool),
    funcvariadic: option(bool),
    funcformat: option(Js.Json.t),
    funccollid: option(int),
    inputcollid: option(int),
    args: option(array(Stmt.t)),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (
          funcid,
          funcresulttype,
          funcretset,
          funcvariadic,
          funcformat,
          funccollid,
          inputcollid,
          args,
          location,
        ) => {
          funcid,
          funcresulttype,
          funcretset,
          funcvariadic,
          funcformat,
          funccollid,
          inputcollid,
          args,
          location,
        }
      )
      <$> optionalField("funcid", intFromNumber)
      <*> optionalField("funcresulttype", intFromNumber)
      <*> optionalField("funcretset", boolean)
      <*> optionalField("funcvariadic", boolean)
      <*> optionalField("funcformat", okJson)
      <*> optionalField("funccollid", intFromNumber)
      <*> optionalField("inputcollid", intFromNumber)
      <*> optionalField("args", array(Stmt.decode))
      <*> optionalField("location", intFromNumber)
    );

  let encode =
      (
        {
          funcid,
          funcresulttype,
          funcretset,
          funcvariadic,
          funcformat,
          funccollid,
          inputcollid,
          args,
          location,
        },
      ) =>
    Encode.(
      obj([
        ("funcid", funcid |> option(int)),
        ("funcresulttype", funcresulttype |> option(int)),
        ("funcretset", funcretset |> option(bool)),
        ("funcvariadic", funcvariadic |> option(bool)),
        ("funcformat", funcformat |> option(id)),
        ("funccollid", funccollid |> option(int)),
        ("inputcollid", inputcollid |> option(int)),
        ("args", args |> option(array(Stmt.encode))),
        ("location", location |> option(int)),
      ])
    );
}

and FunctionParameter: AstType = {
  type t = {
    name: option(string),
    argType: option(TypeName.t),
    mode: option(Js.Json.t),
    defexpr: option(Stmt.t),
  };

  let decode =
    DecodeParsed.(
      ((name, argType, mode, defexpr) => {name, argType, mode, defexpr})
      <$> optionalField("name", string)
      <*> optionalField("argType", TypeName.decode)
      <*> optionalField("mode", okJson)
      <*> optionalField("defexpr", Stmt.decode)
    );

  let encode = ({name, argType, mode, defexpr}) =>
    Encode.(
      obj([
        ("name", name |> option(string)),
        ("argType", argType |> option(TypeName.encode)),
        ("mode", mode |> option(id)),
        ("defexpr", defexpr |> option(Stmt.encode)),
      ])
    );
}

and GrantRoleStmt: AstType = {
  type t = {
    granted_roles: option(array(Stmt.t)),
    grantee_roles: option(array(Stmt.t)),
    is_grant: option(bool),
    admin_opt: option(bool),
    grantor: option(RoleSpec.t),
    behavior: option(Js.Json.t),
  };

  let decode =
    DecodeParsed.(
      (
        (granted_roles, grantee_roles, is_grant, admin_opt, grantor, behavior) => {
          granted_roles,
          grantee_roles,
          is_grant,
          admin_opt,
          grantor,
          behavior,
        }
      )
      <$> optionalField("granted_roles", array(Stmt.decode))
      <*> optionalField("grantee_roles", array(Stmt.decode))
      <*> optionalField("is_grant", boolean)
      <*> optionalField("admin_opt", boolean)
      <*> optionalField("grantor", RoleSpec.decode)
      <*> optionalField("behavior", okJson)
    );

  let encode =
      (
        {granted_roles, grantee_roles, is_grant, admin_opt, grantor, behavior},
      ) =>
    Encode.(
      obj([
        ("granted_roles", granted_roles |> option(array(Stmt.encode))),
        ("grantee_roles", grantee_roles |> option(array(Stmt.encode))),
        ("is_grant", is_grant |> option(bool)),
        ("admin_opt", admin_opt |> option(bool)),
        ("grantor", grantor |> option(RoleSpec.encode)),
        ("behavior", behavior |> option(id)),
      ])
    );
}

and GrantStmt: AstType = {
  type t = {
    is_grant: bool,
    targtype: option(Js.Json.t),
    objtype: option(Js.Json.t),
    objects: option(array(Stmt.t)),
    privileges: option(array(Stmt.t)),
    grantees: option(array(Stmt.t)),
    grant_option: option(bool),
    grantor: option(RoleSpec.t),
    behavior: option(Js.Json.t),
  };

  let decode =
    DecodeParsed.(
      (
        (
          is_grant,
          targtype,
          objtype,
          objects,
          privileges,
          grantees,
          grant_option,
          grantor,
          behavior,
        ) => {
          is_grant,
          targtype,
          objtype,
          objects,
          privileges,
          grantees,
          grant_option,
          grantor,
          behavior,
        }
      )
      <$> field("is_grant", boolean)
      <*> optionalField("targtype", okJson)
      <*> optionalField("objtype", okJson)
      <*> optionalField("objects", array(Stmt.decode))
      <*> optionalField("privileges", array(Stmt.decode))
      <*> optionalField("grantees", array(Stmt.decode))
      <*> optionalField("grant_option", boolean)
      <*> optionalField("grantor", RoleSpec.decode)
      <*> optionalField("behavior", okJson)
    );

  let encode =
      (
        {
          is_grant,
          targtype,
          objtype,
          objects,
          privileges,
          grantees,
          grant_option,
          grantor,
          behavior,
        },
      ) =>
    Encode.(
      obj([
        ("is_grant", is_grant |> bool),
        ("targtype", targtype |> option(id)),
        ("objtype", objtype |> option(id)),
        ("objects", objects |> option(array(Stmt.encode))),
        ("privileges", privileges |> option(array(Stmt.encode))),
        ("grantees", grantees |> option(array(Stmt.encode))),
        ("grant_option", grant_option |> option(bool)),
        ("grantor", grantor |> option(RoleSpec.encode)),
        ("behavior", behavior |> option(id)),
      ])
    );
}

and GroupingFunc: AstType = {
  type t = {
    args: option(array(Stmt.t)),
    refs: option(array(Stmt.t)),
    cols: option(array(Stmt.t)),
    agglevelsup: option(Js.Json.t),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (args, refs, cols, agglevelsup, location) => {
          args,
          refs,
          cols,
          agglevelsup,
          location,
        }
      )
      <$> optionalField("args", array(Stmt.decode))
      <*> optionalField("refs", array(Stmt.decode))
      <*> optionalField("cols", array(Stmt.decode))
      <*> optionalField("agglevelsup", okJson)
      <*> optionalField("location", intFromNumber)
    );

  let encode = ({args, refs, cols, agglevelsup, location}) =>
    Encode.(
      obj([
        ("args", args |> option(array(Stmt.encode))),
        ("refs", refs |> option(array(Stmt.encode))),
        ("cols", cols |> option(array(Stmt.encode))),
        ("agglevelsup", agglevelsup |> option(id)),
        ("location", location |> option(int)),
      ])
    );
}

and GroupingSet: AstType = {
  type t = {
    kind: option(Js.Json.t),
    content: option(array(Stmt.t)),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      ((kind, content, location) => {kind, content, location})
      <$> optionalField("kind", okJson)
      <*> optionalField("content", array(Stmt.decode))
      <*> optionalField("location", intFromNumber)
    );

  let encode = ({kind, content, location}) =>
    Encode.(
      obj([
        ("kind", kind |> option(id)),
        ("content", content |> option(array(Stmt.encode))),
        ("location", location |> option(int)),
      ])
    );
}

and ImportForeignSchemaStmt: AstType = {
  type t = {
    server_name: option(string),
    remote_schema: option(string),
    local_schema: option(string),
    list_type: option(Js.Json.t),
    table_list: option(array(Stmt.t)),
    options: option(array(Stmt.t)),
  };

  let decode =
    DecodeParsed.(
      (
        (
          server_name,
          remote_schema,
          local_schema,
          list_type,
          table_list,
          options,
        ) => {
          server_name,
          remote_schema,
          local_schema,
          list_type,
          table_list,
          options,
        }
      )
      <$> optionalField("server_name", string)
      <*> optionalField("remote_schema", string)
      <*> optionalField("local_schema", string)
      <*> optionalField("list_type", okJson)
      <*> optionalField("table_list", array(Stmt.decode))
      <*> optionalField("options", array(Stmt.decode))
    );

  let encode =
      (
        {
          server_name,
          remote_schema,
          local_schema,
          list_type,
          table_list,
          options,
        },
      ) =>
    Encode.(
      obj([
        ("server_name", server_name |> option(string)),
        ("remote_schema", remote_schema |> option(string)),
        ("local_schema", local_schema |> option(string)),
        ("list_type", list_type |> option(id)),
        ("table_list", table_list |> option(array(Stmt.encode))),
        ("options", options |> option(array(Stmt.encode))),
      ])
    );
}

and IndexElem: AstType = {
  type t = {
    name: option(string),
    expr: option(Stmt.t),
    indexcolname: option(string),
    collation: option(array(Stmt.t)),
    opclass: option(array(Stmt.t)),
    ordering: option(Js.Json.t),
    nulls_ordering: option(Js.Json.t),
  };

  let decode =
    DecodeParsed.(
      (
        (
          name,
          expr,
          indexcolname,
          collation,
          opclass,
          ordering,
          nulls_ordering,
        ) => {
          name,
          expr,
          indexcolname,
          collation,
          opclass,
          ordering,
          nulls_ordering,
        }
      )
      <$> optionalField("name", string)
      <*> optionalField("expr", Stmt.decode)
      <*> optionalField("indexcolname", string)
      <*> optionalField("collation", array(Stmt.decode))
      <*> optionalField("opclass", array(Stmt.decode))
      <*> optionalField("ordering", okJson)
      <*> optionalField("nulls_ordering", okJson)
    );

  let encode =
      (
        {
          name,
          expr,
          indexcolname,
          collation,
          opclass,
          ordering,
          nulls_ordering,
        },
      ) =>
    Encode.(
      obj([
        ("name", name |> option(string)),
        ("expr", expr |> option(Stmt.encode)),
        ("indexcolname", indexcolname |> option(string)),
        ("collation", collation |> option(array(Stmt.encode))),
        ("opclass", opclass |> option(array(Stmt.encode))),
        ("ordering", ordering |> option(id)),
        ("nulls_ordering", nulls_ordering |> option(id)),
      ])
    );
}

and IndexStmt: AstType = {
  type t = {
    idxname: option(string),
    relation: option(RangeVar.t),
    accessMethod: option(string),
    tableSpace: option(string),
    indexParams: option(array(Stmt.t)),
    indexIncludingParams: option(array(Stmt.t)),
    options: option(array(Stmt.t)),
    whereClause: option(Stmt.t),
    excludeOpNames: option(array(Stmt.t)),
    idxcomment: option(string),
    indexOid: option(int),
    oldNode: option(int),
    unique: option(bool),
    primary: option(bool),
    isconstraint: option(bool),
    deferrable: option(bool),
    initdeferred: option(bool),
    transformed: option(bool),
    concurrent: option(bool),
    if_not_exists: option(bool),
  };

  let decode =
    DecodeParsed.(
      (
        (
          idxname,
          relation,
          accessMethod,
          tableSpace,
          indexParams,
          indexIncludingParams,
          options,
          whereClause,
          excludeOpNames,
          idxcomment,
          indexOid,
          oldNode,
          unique,
          primary,
          isconstraint,
          deferrable,
          initdeferred,
          transformed,
          concurrent,
          if_not_exists,
        ) => {
          idxname,
          relation,
          accessMethod,
          tableSpace,
          indexParams,
          indexIncludingParams,
          options,
          whereClause,
          excludeOpNames,
          idxcomment,
          indexOid,
          oldNode,
          unique,
          primary,
          isconstraint,
          deferrable,
          initdeferred,
          transformed,
          concurrent,
          if_not_exists,
        }
      )
      <$> optionalField("idxname", string)
      <*> optionalField("relation", RangeVar.decode)
      <*> optionalField("accessMethod", string)
      <*> optionalField("tableSpace", string)
      <*> optionalField("indexParams", array(Stmt.decode))
      <*> optionalField("indexIncludingParams", array(Stmt.decode))
      <*> optionalField("options", array(Stmt.decode))
      <*> optionalField("whereClause", Stmt.decode)
      <*> optionalField("excludeOpNames", array(Stmt.decode))
      <*> optionalField("idxcomment", string)
      <*> optionalField("indexOid", intFromNumber)
      <*> optionalField("oldNode", intFromNumber)
      <*> optionalField("unique", boolean)
      <*> optionalField("primary", boolean)
      <*> optionalField("isconstraint", boolean)
      <*> optionalField("deferrable", boolean)
      <*> optionalField("initdeferred", boolean)
      <*> optionalField("transformed", boolean)
      <*> optionalField("concurrent", boolean)
      <*> optionalField("if_not_exists", boolean)
    );

  let encode =
      (
        {
          idxname,
          relation,
          accessMethod,
          tableSpace,
          indexParams,
          indexIncludingParams,
          options,
          whereClause,
          excludeOpNames,
          idxcomment,
          indexOid,
          oldNode,
          unique,
          primary,
          isconstraint,
          deferrable,
          initdeferred,
          transformed,
          concurrent,
          if_not_exists,
        },
      ) =>
    Encode.(
      obj([
        ("idxname", idxname |> option(string)),
        ("relation", relation |> option(RangeVar.encode)),
        ("accessMethod", accessMethod |> option(string)),
        ("tableSpace", tableSpace |> option(string)),
        ("indexParams", indexParams |> option(array(Stmt.encode))),
        (
          "indexIncludingParams",
          indexIncludingParams |> option(array(Stmt.encode)),
        ),
        ("options", options |> option(array(Stmt.encode))),
        ("whereClause", whereClause |> option(Stmt.encode)),
        ("excludeOpNames", excludeOpNames |> option(array(Stmt.encode))),
        ("idxcomment", idxcomment |> option(string)),
        ("indexOid", indexOid |> option(int)),
        ("oldNode", oldNode |> option(int)),
        ("unique", unique |> option(bool)),
        ("primary", primary |> option(bool)),
        ("isconstraint", isconstraint |> option(bool)),
        ("deferrable", deferrable |> option(bool)),
        ("initdeferred", initdeferred |> option(bool)),
        ("transformed", transformed |> option(bool)),
        ("concurrent", concurrent |> option(bool)),
        ("if_not_exists", if_not_exists |> option(bool)),
      ])
    );
}

and InferClause: AstType = {
  type t = {
    indexElems: option(array(Stmt.t)),
    whereClause: option(Stmt.t),
    conname: option(string),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (indexElems, whereClause, conname, location) => {
          indexElems,
          whereClause,
          conname,
          location,
        }
      )
      <$> optionalField("indexElems", array(Stmt.decode))
      <*> optionalField("whereClause", Stmt.decode)
      <*> optionalField("conname", string)
      <*> optionalField("location", intFromNumber)
    );

  let encode = ({indexElems, whereClause, conname, location}) =>
    Encode.(
      obj([
        ("indexElems", indexElems |> option(array(Stmt.encode))),
        ("whereClause", whereClause |> option(Stmt.encode)),
        ("conname", conname |> option(string)),
        ("location", location |> option(int)),
      ])
    );
}

and InferenceElem: AstType = {
  type t = {
    expr: option(Stmt.t),
    infercollid: option(int),
    inferopclass: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (expr, infercollid, inferopclass) => {expr, infercollid, inferopclass}
      )
      <$> optionalField("expr", Stmt.decode)
      <*> optionalField("infercollid", intFromNumber)
      <*> optionalField("inferopclass", intFromNumber)
    );

  let encode = ({expr, infercollid, inferopclass}) =>
    Encode.(
      obj([
        ("expr", expr |> option(Stmt.encode)),
        ("infercollid", infercollid |> option(int)),
        ("inferopclass", inferopclass |> option(int)),
      ])
    );
}

and InlineCodeBlock: AstType = {
  type t = {
    source_text: option(string),
    langOid: option(int),
    langIsTrusted: option(bool),
    atomic: option(bool),
  };

  let decode =
    DecodeParsed.(
      (
        (source_text, langOid, langIsTrusted, atomic) => {
          source_text,
          langOid,
          langIsTrusted,
          atomic,
        }
      )
      <$> optionalField("source_text", string)
      <*> optionalField("langOid", intFromNumber)
      <*> optionalField("langIsTrusted", boolean)
      <*> optionalField("atomic", boolean)
    );

  let encode = ({source_text, langOid, langIsTrusted, atomic}) =>
    Encode.(
      obj([
        ("source_text", source_text |> option(string)),
        ("langOid", langOid |> option(int)),
        ("langIsTrusted", langIsTrusted |> option(bool)),
        ("atomic", atomic |> option(bool)),
      ])
    );
}

and InsertStmt: AstType = {
  type t = {
    relation: option(RangeVar.t),
    cols: option(array(Stmt.t)),
    selectStmt: option(Stmt.t),
    onConflictClause: option(OnConflictClause.t),
    returningList: option(array(Stmt.t)),
    withClause: option(WithClause.t),
    override: option(Js.Json.t),
  };

  let decode =
    DecodeParsed.(
      (
        (
          relation,
          cols,
          selectStmt,
          onConflictClause,
          returningList,
          withClause,
          override,
        ) => {
          relation,
          cols,
          selectStmt,
          onConflictClause,
          returningList,
          withClause,
          override,
        }
      )
      <$> optionalField("relation", RangeVar.decode)
      <*> optionalField("cols", array(Stmt.decode))
      <*> optionalField("selectStmt", Stmt.decode)
      <*> optionalField("onConflictClause", OnConflictClause.decode)
      <*> optionalField("returningList", array(Stmt.decode))
      <*> optionalField("withClause", WithClause.decode)
      <*> optionalField("override", okJson)
    );

  let encode =
      (
        {
          relation,
          cols,
          selectStmt,
          onConflictClause,
          returningList,
          withClause,
          override,
        },
      ) =>
    Encode.(
      obj([
        ("relation", relation |> option(RangeVar.encode)),
        ("cols", cols |> option(array(Stmt.encode))),
        ("selectStmt", selectStmt |> option(Stmt.encode)),
        (
          "onConflictClause",
          onConflictClause |> option(OnConflictClause.encode),
        ),
        ("returningList", returningList |> option(array(Stmt.encode))),
        ("withClause", withClause |> option(WithClause.encode)),
        ("override", override |> option(id)),
      ])
    );
}

and IntoClause: AstType = {
  type t = {
    rel: option(RangeVar.t),
    colNames: option(array(Stmt.t)),
    accessMethod: option(string),
    options: option(array(Stmt.t)),
    onCommit: option(Js.Json.t),
    tableSpaceName: option(string),
    viewQuery: option(Stmt.t),
    skipData: option(bool),
  };

  let decode =
    DecodeParsed.(
      (
        (
          rel,
          colNames,
          accessMethod,
          options,
          onCommit,
          tableSpaceName,
          viewQuery,
          skipData,
        ) => {
          rel,
          colNames,
          accessMethod,
          options,
          onCommit,
          tableSpaceName,
          viewQuery,
          skipData,
        }
      )
      <$> optionalField("rel", RangeVar.decode)
      <*> optionalField("colNames", array(Stmt.decode))
      <*> optionalField("accessMethod", string)
      <*> optionalField("options", array(Stmt.decode))
      <*> optionalField("onCommit", okJson)
      <*> optionalField("tableSpaceName", string)
      <*> optionalField("viewQuery", Stmt.decode)
      <*> optionalField("skipData", boolean)
    );

  let encode =
      (
        {
          rel,
          colNames,
          accessMethod,
          options,
          onCommit,
          tableSpaceName,
          viewQuery,
          skipData,
        },
      ) =>
    Encode.(
      obj([
        ("rel", rel |> option(RangeVar.encode)),
        ("colNames", colNames |> option(array(Stmt.encode))),
        ("accessMethod", accessMethod |> option(string)),
        ("options", options |> option(array(Stmt.encode))),
        ("onCommit", onCommit |> option(id)),
        ("tableSpaceName", tableSpaceName |> option(string)),
        ("viewQuery", viewQuery |> option(Stmt.encode)),
        ("skipData", skipData |> option(bool)),
      ])
    );
}

and JoinExpr: AstType = {
  type t = {
    jointype: option(Js.Json.t),
    isNatural: option(bool),
    larg: option(Stmt.t),
    rarg: option(Stmt.t),
    quals: option(Stmt.t),
    alias: option(Alias.t),
    rtindex: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (jointype, isNatural, larg, rarg, quals, alias, rtindex) => {
          jointype,
          isNatural,
          larg,
          rarg,
          quals,
          alias,
          rtindex,
        }
      )
      <$> optionalField("jointype", okJson)
      <*> optionalField("isNatural", boolean)
      <*> optionalField("larg", Stmt.decode)
      <*> optionalField("rarg", Stmt.decode)
      <*> optionalField("quals", Stmt.decode)
      <*> optionalField("alias", Alias.decode)
      <*> optionalField("rtindex", intFromNumber)
    );

  let encode = ({jointype, isNatural, larg, rarg, quals, alias, rtindex}) =>
    Encode.(
      obj([
        ("jointype", jointype |> option(id)),
        ("isNatural", isNatural |> option(bool)),
        ("larg", larg |> option(Stmt.encode)),
        ("rarg", rarg |> option(Stmt.encode)),
        ("quals", quals |> option(Stmt.encode)),
        ("alias", alias |> option(Alias.encode)),
        ("rtindex", rtindex |> option(int)),
      ])
    );
}

and ListenStmt: AstType = {
  type t = {conditionname: option(string)};

  let decode =
    DecodeParsed.(
      (conditionname => {conditionname: conditionname})
      <$> optionalField("conditionname", string)
    );

  let encode = ({conditionname}) =>
    Encode.(obj([("conditionname", conditionname |> option(string))]));
}

and LoadStmt: AstType = {
  type t = {filename: option(string)};

  let decode =
    DecodeParsed.(
      (filename => {filename: filename})
      <$> optionalField("filename", string)
    );

  let encode = ({filename}) =>
    Encode.(obj([("filename", filename |> option(string))]));
}

and LockStmt: AstType = {
  type t = {
    relations: option(array(Stmt.t)),
    mode: option(int),
    nowait: option(bool),
  };

  let decode =
    DecodeParsed.(
      ((relations, mode, nowait) => {relations, mode, nowait})
      <$> optionalField("relations", array(Stmt.decode))
      <*> optionalField("mode", intFromNumber)
      <*> optionalField("nowait", boolean)
    );

  let encode = ({relations, mode, nowait}) =>
    Encode.(
      obj([
        ("relations", relations |> option(array(Stmt.encode))),
        ("mode", mode |> option(int)),
        ("nowait", nowait |> option(bool)),
      ])
    );
}

and LockingClause: AstType = {
  type t = {
    lockedRels: option(array(Stmt.t)),
    strength: option(Js.Json.t),
    waitPolicy: option(Js.Json.t),
  };

  let decode =
    DecodeParsed.(
      (
        (lockedRels, strength, waitPolicy) => {
          lockedRels,
          strength,
          waitPolicy,
        }
      )
      <$> optionalField("lockedRels", array(Stmt.decode))
      <*> optionalField("strength", okJson)
      <*> optionalField("waitPolicy", okJson)
    );

  let encode = ({lockedRels, strength, waitPolicy}) =>
    Encode.(
      obj([
        ("lockedRels", lockedRels |> option(array(Stmt.encode))),
        ("strength", strength |> option(id)),
        ("waitPolicy", waitPolicy |> option(id)),
      ])
    );
}

and MinMaxExpr: AstType = {
  type t = {
    minmaxtype: option(int),
    minmaxcollid: option(int),
    inputcollid: option(int),
    op: option(Js.Json.t),
    args: option(array(Stmt.t)),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (minmaxtype, minmaxcollid, inputcollid, op, args, location) => {
          minmaxtype,
          minmaxcollid,
          inputcollid,
          op,
          args,
          location,
        }
      )
      <$> optionalField("minmaxtype", intFromNumber)
      <*> optionalField("minmaxcollid", intFromNumber)
      <*> optionalField("inputcollid", intFromNumber)
      <*> optionalField("op", okJson)
      <*> optionalField("args", array(Stmt.decode))
      <*> optionalField("location", intFromNumber)
    );

  let encode = ({minmaxtype, minmaxcollid, inputcollid, op, args, location}) =>
    Encode.(
      obj([
        ("minmaxtype", minmaxtype |> option(int)),
        ("minmaxcollid", minmaxcollid |> option(int)),
        ("inputcollid", inputcollid |> option(int)),
        ("op", op |> option(id)),
        ("args", args |> option(array(Stmt.encode))),
        ("location", location |> option(int)),
      ])
    );
}

and MultiAssignRef: AstType = {
  type t = {
    source: option(Stmt.t),
    colno: option(int),
    ncolumns: option(int),
  };

  let decode =
    DecodeParsed.(
      ((source, colno, ncolumns) => {source, colno, ncolumns})
      <$> optionalField("source", Stmt.decode)
      <*> optionalField("colno", intFromNumber)
      <*> optionalField("ncolumns", intFromNumber)
    );

  let encode = ({source, colno, ncolumns}) =>
    Encode.(
      obj([
        ("source", source |> option(Stmt.encode)),
        ("colno", colno |> option(int)),
        ("ncolumns", ncolumns |> option(int)),
      ])
    );
}

and NamedArgExpr: AstType = {
  type t = {
    arg: option(Stmt.t),
    name: option(string),
    argnumber: option(int),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      ((arg, name, argnumber, location) => {arg, name, argnumber, location})
      <$> optionalField("arg", Stmt.decode)
      <*> optionalField("name", string)
      <*> optionalField("argnumber", intFromNumber)
      <*> optionalField("location", intFromNumber)
    );

  let encode = ({arg, name, argnumber, location}) =>
    Encode.(
      obj([
        ("arg", arg |> option(Stmt.encode)),
        ("name", name |> option(string)),
        ("argnumber", argnumber |> option(int)),
        ("location", location |> option(int)),
      ])
    );
}

and NextValueExpr: AstType = {
  type t = {
    seqid: option(int),
    typeOid: option(int),
  };

  let decode =
    DecodeParsed.(
      ((seqid, typeOid) => {seqid, typeOid})
      <$> optionalField("seqid", intFromNumber)
      <*> optionalField("typeOid", intFromNumber)
    );

  let encode = ({seqid, typeOid}) =>
    Encode.(
      obj([
        ("seqid", seqid |> option(int)),
        ("typeOid", typeOid |> option(int)),
      ])
    );
}

and NotifyStmt: AstType = {
  type t = {
    conditionname: option(string),
    payload: option(string),
  };

  let decode =
    DecodeParsed.(
      ((conditionname, payload) => {conditionname, payload})
      <$> optionalField("conditionname", string)
      <*> optionalField("payload", string)
    );

  let encode = ({conditionname, payload}) =>
    Encode.(
      obj([
        ("conditionname", conditionname |> option(string)),
        ("payload", payload |> option(string)),
      ])
    );
}

and NullTest: AstType = {
  type t = {
    arg: option(Stmt.t),
    nulltesttype: option(Js.Json.t),
    argisrow: option(bool),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (arg, nulltesttype, argisrow, location) => {
          arg,
          nulltesttype,
          argisrow,
          location,
        }
      )
      <$> optionalField("arg", Stmt.decode)
      <*> optionalField("nulltesttype", okJson)
      <*> optionalField("argisrow", boolean)
      <*> optionalField("location", intFromNumber)
    );

  let encode = ({arg, nulltesttype, argisrow, location}) =>
    Encode.(
      obj([
        ("arg", arg |> option(Stmt.encode)),
        ("nulltesttype", nulltesttype |> option(id)),
        ("argisrow", argisrow |> option(bool)),
        ("location", location |> option(int)),
      ])
    );
}

and ObjectWithArgs: AstType = {
  type t = {
    objname: option(array(Stmt.t)),
    objargs: option(array(Stmt.t)),
    args_unspecified: option(bool),
  };

  let decode =
    DecodeParsed.(
      (
        (objname, objargs, args_unspecified) => {
          objname,
          objargs,
          args_unspecified,
        }
      )
      <$> optionalField("objname", array(Stmt.decode))
      <*> optionalField("objargs", array(Stmt.decode))
      <*> optionalField("args_unspecified", boolean)
    );

  let encode = ({objname, objargs, args_unspecified}) =>
    Encode.(
      obj([
        ("objname", objname |> option(array(Stmt.encode))),
        ("objargs", objargs |> option(array(Stmt.encode))),
        ("args_unspecified", args_unspecified |> option(bool)),
      ])
    );
}

and OnConflictClause: AstType = {
  type t = {
    action: option(Js.Json.t),
    infer: option(InferClause.t),
    targetList: option(array(Stmt.t)),
    whereClause: option(Stmt.t),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (action, infer, targetList, whereClause, location) => {
          action,
          infer,
          targetList,
          whereClause,
          location,
        }
      )
      <$> optionalField("action", okJson)
      <*> optionalField("infer", InferClause.decode)
      <*> optionalField("targetList", array(Stmt.decode))
      <*> optionalField("whereClause", Stmt.decode)
      <*> optionalField("location", intFromNumber)
    );

  let encode = ({action, infer, targetList, whereClause, location}) =>
    Encode.(
      obj([
        ("action", action |> option(id)),
        ("infer", infer |> option(InferClause.encode)),
        ("targetList", targetList |> option(array(Stmt.encode))),
        ("whereClause", whereClause |> option(Stmt.encode)),
        ("location", location |> option(int)),
      ])
    );
}

and OnConflictExpr: AstType = {
  type t = {
    action: option(Js.Json.t),
    arbiterElems: option(array(Stmt.t)),
    arbiterWhere: option(Stmt.t),
    constraint_: option(int),
    onConflictSet: option(array(Stmt.t)),
    onConflictWhere: option(Stmt.t),
    exclRelIndex: option(int),
    exclRelTlist: option(array(Stmt.t)),
  };

  let decode =
    DecodeParsed.(
      (
        (
          action,
          arbiterElems,
          arbiterWhere,
          constraint_,
          onConflictSet,
          onConflictWhere,
          exclRelIndex,
          exclRelTlist,
        ) => {
          action,
          arbiterElems,
          arbiterWhere,
          constraint_,
          onConflictSet,
          onConflictWhere,
          exclRelIndex,
          exclRelTlist,
        }
      )
      <$> optionalField("action", okJson)
      <*> optionalField("arbiterElems", array(Stmt.decode))
      <*> optionalField("arbiterWhere", Stmt.decode)
      <*> optionalField("constraint", intFromNumber)
      <*> optionalField("onConflictSet", array(Stmt.decode))
      <*> optionalField("onConflictWhere", Stmt.decode)
      <*> optionalField("exclRelIndex", intFromNumber)
      <*> optionalField("exclRelTlist", array(Stmt.decode))
    );

  let encode =
      (
        {
          action,
          arbiterElems,
          arbiterWhere,
          constraint_,
          onConflictSet,
          onConflictWhere,
          exclRelIndex,
          exclRelTlist,
        },
      ) =>
    Encode.(
      obj([
        ("action", action |> option(id)),
        ("arbiterElems", arbiterElems |> option(array(Stmt.encode))),
        ("arbiterWhere", arbiterWhere |> option(Stmt.encode)),
        ("constraint", constraint_ |> option(int)),
        ("onConflictSet", onConflictSet |> option(array(Stmt.encode))),
        ("onConflictWhere", onConflictWhere |> option(Stmt.encode)),
        ("exclRelIndex", exclRelIndex |> option(int)),
        ("exclRelTlist", exclRelTlist |> option(array(Stmt.encode))),
      ])
    );
}

and OpExpr: AstType = {
  type t = {
    opno: option(int),
    opfuncid: option(int),
    opresulttype: option(int),
    opretset: option(bool),
    opcollid: option(int),
    inputcollid: option(int),
    args: option(array(Stmt.t)),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (
          opno,
          opfuncid,
          opresulttype,
          opretset,
          opcollid,
          inputcollid,
          args,
          location,
        ) => {
          opno,
          opfuncid,
          opresulttype,
          opretset,
          opcollid,
          inputcollid,
          args,
          location,
        }
      )
      <$> optionalField("opno", intFromNumber)
      <*> optionalField("opfuncid", intFromNumber)
      <*> optionalField("opresulttype", intFromNumber)
      <*> optionalField("opretset", boolean)
      <*> optionalField("opcollid", intFromNumber)
      <*> optionalField("inputcollid", intFromNumber)
      <*> optionalField("args", array(Stmt.decode))
      <*> optionalField("location", intFromNumber)
    );

  let encode =
      (
        {
          opno,
          opfuncid,
          opresulttype,
          opretset,
          opcollid,
          inputcollid,
          args,
          location,
        },
      ) =>
    Encode.(
      obj([
        ("opno", opno |> option(int)),
        ("opfuncid", opfuncid |> option(int)),
        ("opresulttype", opresulttype |> option(int)),
        ("opretset", opretset |> option(bool)),
        ("opcollid", opcollid |> option(int)),
        ("inputcollid", inputcollid |> option(int)),
        ("args", args |> option(array(Stmt.encode))),
        ("location", location |> option(int)),
      ])
    );
}

and Param: AstType = {
  type t = {
    paramkind: option(Js.Json.t),
    paramid: option(int),
    paramtype: option(int),
    paramtypmod: option(int),
    paramcollid: option(int),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (paramkind, paramid, paramtype, paramtypmod, paramcollid, location) => {
          paramkind,
          paramid,
          paramtype,
          paramtypmod,
          paramcollid,
          location,
        }
      )
      <$> optionalField("paramkind", okJson)
      <*> optionalField("paramid", intFromNumber)
      <*> optionalField("paramtype", intFromNumber)
      <*> optionalField("paramtypmod", intFromNumber)
      <*> optionalField("paramcollid", intFromNumber)
      <*> optionalField("location", intFromNumber)
    );

  let encode =
      ({paramkind, paramid, paramtype, paramtypmod, paramcollid, location}) =>
    Encode.(
      obj([
        ("paramkind", paramkind |> option(id)),
        ("paramid", paramid |> option(int)),
        ("paramtype", paramtype |> option(int)),
        ("paramtypmod", paramtypmod |> option(int)),
        ("paramcollid", paramcollid |> option(int)),
        ("location", location |> option(int)),
      ])
    );
}

and ParamRef: AstType = {
  type t = {
    number: option(int),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      ((number, location) => {number, location})
      <$> optionalField("number", intFromNumber)
      <*> optionalField("location", intFromNumber)
    );

  let encode = ({number, location}) =>
    Encode.(
      obj([
        ("number", number |> option(int)),
        ("location", location |> option(int)),
      ])
    );
}

and PartitionBoundSpec: AstType = {
  type t = {
    strategy: option(string),
    is_default: option(bool),
    modulus: option(int),
    remainder: option(int),
    listdatums: option(array(Stmt.t)),
    lowerdatums: option(array(Stmt.t)),
    upperdatums: option(array(Stmt.t)),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (
          strategy,
          is_default,
          modulus,
          remainder,
          listdatums,
          lowerdatums,
          upperdatums,
          location,
        ) => {
          strategy,
          is_default,
          modulus,
          remainder,
          listdatums,
          lowerdatums,
          upperdatums,
          location,
        }
      )
      <$> optionalField("strategy", string)
      <*> optionalField("is_default", boolean)
      <*> optionalField("modulus", intFromNumber)
      <*> optionalField("remainder", intFromNumber)
      <*> optionalField("listdatums", array(Stmt.decode))
      <*> optionalField("lowerdatums", array(Stmt.decode))
      <*> optionalField("upperdatums", array(Stmt.decode))
      <*> optionalField("location", intFromNumber)
    );

  let encode =
      (
        {
          strategy,
          is_default,
          modulus,
          remainder,
          listdatums,
          lowerdatums,
          upperdatums,
          location,
        },
      ) =>
    Encode.(
      obj([
        ("strategy", strategy |> option(string)),
        ("is_default", is_default |> option(bool)),
        ("modulus", modulus |> option(int)),
        ("remainder", remainder |> option(int)),
        ("listdatums", listdatums |> option(array(Stmt.encode))),
        ("lowerdatums", lowerdatums |> option(array(Stmt.encode))),
        ("upperdatums", upperdatums |> option(array(Stmt.encode))),
        ("location", location |> option(int)),
      ])
    );
}

and PartitionCmd: AstType = {
  type t = {
    name: option(RangeVar.t),
    bound: option(PartitionBoundSpec.t),
  };

  let decode =
    DecodeParsed.(
      ((name, bound) => {name, bound})
      <$> optionalField("name", RangeVar.decode)
      <*> optionalField("bound", PartitionBoundSpec.decode)
    );

  let encode = ({name, bound}) =>
    Encode.(
      obj([
        ("name", name |> option(RangeVar.encode)),
        ("bound", bound |> option(PartitionBoundSpec.encode)),
      ])
    );
}

and PartitionElem: AstType = {
  type t = {
    name: option(string),
    expr: option(Stmt.t),
    collation: option(array(Stmt.t)),
    opclass: option(array(Stmt.t)),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (name, expr, collation, opclass, location) => {
          name,
          expr,
          collation,
          opclass,
          location,
        }
      )
      <$> optionalField("name", string)
      <*> optionalField("expr", Stmt.decode)
      <*> optionalField("collation", array(Stmt.decode))
      <*> optionalField("opclass", array(Stmt.decode))
      <*> optionalField("location", intFromNumber)
    );

  let encode = ({name, expr, collation, opclass, location}) =>
    Encode.(
      obj([
        ("name", name |> option(string)),
        ("expr", expr |> option(Stmt.encode)),
        ("collation", collation |> option(array(Stmt.encode))),
        ("opclass", opclass |> option(array(Stmt.encode))),
        ("location", location |> option(int)),
      ])
    );
}

and PartitionRangeDatum: AstType = {
  type t = {
    kind: option(Js.Json.t),
    value: option(Stmt.t),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      ((kind, value, location) => {kind, value, location})
      <$> optionalField("kind", okJson)
      <*> optionalField("value", Stmt.decode)
      <*> optionalField("location", intFromNumber)
    );

  let encode = ({kind, value, location}) =>
    Encode.(
      obj([
        ("kind", kind |> option(id)),
        ("value", value |> option(Stmt.encode)),
        ("location", location |> option(int)),
      ])
    );
}

and PartitionSpec: AstType = {
  type t = {
    strategy: option(string),
    partParams: option(array(Stmt.t)),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      ((strategy, partParams, location) => {strategy, partParams, location})
      <$> optionalField("strategy", string)
      <*> optionalField("partParams", array(Stmt.decode))
      <*> optionalField("location", intFromNumber)
    );

  let encode = ({strategy, partParams, location}) =>
    Encode.(
      obj([
        ("strategy", strategy |> option(string)),
        ("partParams", partParams |> option(array(Stmt.encode))),
        ("location", location |> option(int)),
      ])
    );
}

and PrepareStmt: AstType = {
  type t = {
    name: option(string),
    argtypes: option(array(Stmt.t)),
    query: option(Stmt.t),
  };

  let decode =
    DecodeParsed.(
      ((name, argtypes, query) => {name, argtypes, query})
      <$> optionalField("name", string)
      <*> optionalField("argtypes", array(Stmt.decode))
      <*> optionalField("query", Stmt.decode)
    );

  let encode = ({name, argtypes, query}) =>
    Encode.(
      obj([
        ("name", name |> option(string)),
        ("argtypes", argtypes |> option(array(Stmt.encode))),
        ("query", query |> option(Stmt.encode)),
      ])
    );
}

and RangeFunction: AstType = {
  type t = {
    lateral: option(bool),
    ordinality: option(bool),
    is_rowsfrom: option(bool),
    functions: option(array(Stmt.t)),
    alias: option(Alias.t),
    coldeflist: option(array(Stmt.t)),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (
          lateral,
          ordinality,
          is_rowsfrom,
          functions,
          alias,
          coldeflist,
          location,
        ) => {
          lateral,
          ordinality,
          is_rowsfrom,
          functions,
          alias,
          coldeflist,
          location,
        }
      )
      <$> optionalField("lateral", boolean)
      <*> optionalField("ordinality", boolean)
      <*> optionalField("is_rowsfrom", boolean)
      <*> optionalField("functions", array(Stmt.decode))
      <*> optionalField("alias", Alias.decode)
      <*> optionalField("coldeflist", array(Stmt.decode))
      <*> optionalField("location", intFromNumber)
    );

  let encode =
      (
        {
          lateral,
          ordinality,
          is_rowsfrom,
          functions,
          alias,
          coldeflist,
          location,
        },
      ) =>
    Encode.(
      obj([
        ("lateral", lateral |> option(bool)),
        ("ordinality", ordinality |> option(bool)),
        ("is_rowsfrom", is_rowsfrom |> option(bool)),
        ("functions", functions |> option(array(Stmt.encode))),
        ("alias", alias |> option(Alias.encode)),
        ("coldeflist", coldeflist |> option(array(Stmt.encode))),
        ("location", location |> option(int)),
      ])
    );
}

and RangeSubselect: AstType = {
  type t = {
    lateral: option(bool),
    subquery: option(Stmt.t),
    alias: option(Alias.t),
  };

  let decode =
    DecodeParsed.(
      ((lateral, subquery, alias) => {lateral, subquery, alias})
      <$> optionalField("lateral", boolean)
      <*> optionalField("subquery", Stmt.decode)
      <*> optionalField("alias", Alias.decode)
    );

  let encode = ({lateral, subquery, alias}) =>
    Encode.(
      obj([
        ("lateral", lateral |> option(bool)),
        ("subquery", subquery |> option(Stmt.encode)),
        ("alias", alias |> option(Alias.encode)),
      ])
    );
}

and RangeTableFunc: AstType = {
  type t = {
    lateral: option(bool),
    docexpr: option(Stmt.t),
    rowexpr: option(Stmt.t),
    namespaces: option(array(Stmt.t)),
    columns: option(array(Stmt.t)),
    alias: option(Alias.t),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (lateral, docexpr, rowexpr, namespaces, columns, alias, location) => {
          lateral,
          docexpr,
          rowexpr,
          namespaces,
          columns,
          alias,
          location,
        }
      )
      <$> optionalField("lateral", boolean)
      <*> optionalField("docexpr", Stmt.decode)
      <*> optionalField("rowexpr", Stmt.decode)
      <*> optionalField("namespaces", array(Stmt.decode))
      <*> optionalField("columns", array(Stmt.decode))
      <*> optionalField("alias", Alias.decode)
      <*> optionalField("location", intFromNumber)
    );

  let encode =
      ({lateral, docexpr, rowexpr, namespaces, columns, alias, location}) =>
    Encode.(
      obj([
        ("lateral", lateral |> option(bool)),
        ("docexpr", docexpr |> option(Stmt.encode)),
        ("rowexpr", rowexpr |> option(Stmt.encode)),
        ("namespaces", namespaces |> option(array(Stmt.encode))),
        ("columns", columns |> option(array(Stmt.encode))),
        ("alias", alias |> option(Alias.encode)),
        ("location", location |> option(int)),
      ])
    );
}

and RangeTableFuncCol: AstType = {
  type t = {
    colname: option(string),
    typeName: option(TypeName.t),
    for_ordinality: option(bool),
    is_not_null: option(bool),
    colexpr: option(Stmt.t),
    coldefexpr: option(Stmt.t),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (
          colname,
          typeName,
          for_ordinality,
          is_not_null,
          colexpr,
          coldefexpr,
          location,
        ) => {
          colname,
          typeName,
          for_ordinality,
          is_not_null,
          colexpr,
          coldefexpr,
          location,
        }
      )
      <$> optionalField("colname", string)
      <*> optionalField("typeName", TypeName.decode)
      <*> optionalField("for_ordinality", boolean)
      <*> optionalField("is_not_null", boolean)
      <*> optionalField("colexpr", Stmt.decode)
      <*> optionalField("coldefexpr", Stmt.decode)
      <*> optionalField("location", intFromNumber)
    );

  let encode =
      (
        {
          colname,
          typeName,
          for_ordinality,
          is_not_null,
          colexpr,
          coldefexpr,
          location,
        },
      ) =>
    Encode.(
      obj([
        ("colname", colname |> option(string)),
        ("typeName", typeName |> option(TypeName.encode)),
        ("for_ordinality", for_ordinality |> option(bool)),
        ("is_not_null", is_not_null |> option(bool)),
        ("colexpr", colexpr |> option(Stmt.encode)),
        ("coldefexpr", coldefexpr |> option(Stmt.encode)),
        ("location", location |> option(int)),
      ])
    );
}

and RangeTableSample: AstType = {
  type t = {
    relation: option(Stmt.t),
    method_: option(array(Stmt.t)),
    args: option(array(Stmt.t)),
    repeatable: option(Stmt.t),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (relation, method_, args, repeatable, location) => {
          relation,
          method_,
          args,
          repeatable,
          location,
        }
      )
      <$> optionalField("relation", Stmt.decode)
      <*> optionalField("method", array(Stmt.decode))
      <*> optionalField("args", array(Stmt.decode))
      <*> optionalField("repeatable", Stmt.decode)
      <*> optionalField("location", intFromNumber)
    );

  let encode = ({relation, method_, args, repeatable, location}) =>
    Encode.(
      obj([
        ("relation", relation |> option(Stmt.encode)),
        ("method", method_ |> option(array(Stmt.encode))),
        ("args", args |> option(array(Stmt.encode))),
        ("repeatable", repeatable |> option(Stmt.encode)),
        ("location", location |> option(int)),
      ])
    );
}

and RangeTblRef: AstType = {
  type t = {rtindex: option(int)};

  let decode =
    DecodeParsed.(
      (rtindex => {rtindex: rtindex})
      <$> optionalField("rtindex", intFromNumber)
    );

  let encode = ({rtindex}) =>
    Encode.(obj([("rtindex", rtindex |> option(int))]));
}

and RangeVar: AstType = {
  type t = {
    catalogname: option(string),
    schemaname: option(string),
    relname: option(string),
    inh: option(bool),
    relpersistence: option(string),
    alias: option(Alias.t),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (
          catalogname,
          schemaname,
          relname,
          inh,
          relpersistence,
          alias,
          location,
        ) => {
          catalogname,
          schemaname,
          relname,
          inh,
          relpersistence,
          alias,
          location,
        }
      )
      <$> optionalField("catalogname", string)
      <*> optionalField("schemaname", string)
      <*> optionalField("relname", string)
      <*> optionalField("inh", boolean)
      <*> optionalField("relpersistence", string)
      <*> optionalField("alias", Alias.decode)
      <*> optionalField("location", intFromNumber)
    );

  let encode =
      (
        {
          catalogname,
          schemaname,
          relname,
          inh,
          relpersistence,
          alias,
          location,
        },
      ) =>
    Encode.(
      obj([
        ("catalogname", catalogname |> option(string)),
        ("schemaname", schemaname |> option(string)),
        ("relname", relname |> option(string)),
        ("inh", inh |> option(bool)),
        ("relpersistence", relpersistence |> option(string)),
        ("alias", alias |> option(Alias.encode)),
        ("location", location |> option(int)),
      ])
    );
}

and RawStmt: AstType = {
  type t = {
    stmt: option(Stmt.t),
    stmt_len: option(int),
    stmt_location: option(int),
  };

  let decode =
    DecodeParsed.(
      ((stmt, stmt_len, stmt_location) => {stmt, stmt_len, stmt_location})
      <$> optionalField("stmt", Stmt.decode)
      <*> optionalField("stmt_len", intFromNumber)
      <*> optionalField("stmt_location", intFromNumber)
    );

  let encode = ({stmt, stmt_len, stmt_location}) =>
    Encode.(
      obj([
        ("stmt", stmt |> option(Stmt.encode)),
        ("stmt_len", stmt_len |> option(int)),
        ("stmt_location", stmt_location |> option(int)),
      ])
    );
}

and ReassignOwnedStmt: AstType = {
  type t = {
    roles: option(array(Stmt.t)),
    newrole: option(RoleSpec.t),
  };

  let decode =
    DecodeParsed.(
      ((roles, newrole) => {roles, newrole})
      <$> optionalField("roles", array(Stmt.decode))
      <*> optionalField("newrole", RoleSpec.decode)
    );

  let encode = ({roles, newrole}) =>
    Encode.(
      obj([
        ("roles", roles |> option(array(Stmt.encode))),
        ("newrole", newrole |> option(RoleSpec.encode)),
      ])
    );
}

and RefreshMatViewStmt: AstType = {
  type t = {
    relation: option(RangeVar.t),
    concurrent: option(bool),
    skipData: option(bool),
  };

  let decode =
    DecodeParsed.(
      ((relation, concurrent, skipData) => {relation, concurrent, skipData})
      <$> optionalField("relation", RangeVar.decode)
      <*> optionalField("concurrent", boolean)
      <*> optionalField("skipData", boolean)
    );

  let encode = ({relation, concurrent, skipData}) =>
    Encode.(
      obj([
        ("relation", relation |> option(RangeVar.encode)),
        ("concurrent", concurrent |> option(bool)),
        ("skipData", skipData |> option(bool)),
      ])
    );
}

and ReindexStmt: AstType = {
  type t = {
    kind: option(Js.Json.t),
    relation: option(RangeVar.t),
    name: option(string),
    options: option(int),
    concurrent: option(bool),
  };

  let decode =
    DecodeParsed.(
      (
        (kind, relation, name, options, concurrent) => {
          kind,
          relation,
          name,
          options,
          concurrent,
        }
      )
      <$> optionalField("kind", okJson)
      <*> optionalField("relation", RangeVar.decode)
      <*> optionalField("name", string)
      <*> optionalField("options", intFromNumber)
      <*> optionalField("concurrent", boolean)
    );

  let encode = ({kind, relation, name, options, concurrent}) =>
    Encode.(
      obj([
        ("kind", kind |> option(id)),
        ("relation", relation |> option(RangeVar.encode)),
        ("name", name |> option(string)),
        ("options", options |> option(int)),
        ("concurrent", concurrent |> option(bool)),
      ])
    );
}

and RelabelType: AstType = {
  type t = {
    arg: option(Stmt.t),
    resulttype: option(int),
    resulttypmod: option(int),
    resultcollid: option(int),
    relabelformat: option(Js.Json.t),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (arg, resulttype, resulttypmod, resultcollid, relabelformat, location) => {
          arg,
          resulttype,
          resulttypmod,
          resultcollid,
          relabelformat,
          location,
        }
      )
      <$> optionalField("arg", Stmt.decode)
      <*> optionalField("resulttype", intFromNumber)
      <*> optionalField("resulttypmod", intFromNumber)
      <*> optionalField("resultcollid", intFromNumber)
      <*> optionalField("relabelformat", okJson)
      <*> optionalField("location", intFromNumber)
    );

  let encode =
      (
        {arg, resulttype, resulttypmod, resultcollid, relabelformat, location},
      ) =>
    Encode.(
      obj([
        ("arg", arg |> option(Stmt.encode)),
        ("resulttype", resulttype |> option(int)),
        ("resulttypmod", resulttypmod |> option(int)),
        ("resultcollid", resultcollid |> option(int)),
        ("relabelformat", relabelformat |> option(id)),
        ("location", location |> option(int)),
      ])
    );
}

and RenameStmt: AstType = {
  type t = {
    renameType: option(Js.Json.t),
    relationType: option(Js.Json.t),
    relation: option(RangeVar.t),
    object_: option(Stmt.t),
    subname: option(string),
    newname: option(string),
    behavior: option(Js.Json.t),
    missing_ok: option(bool),
  };

  let decode =
    DecodeParsed.(
      (
        (
          renameType,
          relationType,
          relation,
          object_,
          subname,
          newname,
          behavior,
          missing_ok,
        ) => {
          renameType,
          relationType,
          relation,
          object_,
          subname,
          newname,
          behavior,
          missing_ok,
        }
      )
      <$> optionalField("renameType", okJson)
      <*> optionalField("relationType", okJson)
      <*> optionalField("relation", RangeVar.decode)
      <*> optionalField("object", Stmt.decode)
      <*> optionalField("subname", string)
      <*> optionalField("newname", string)
      <*> optionalField("behavior", okJson)
      <*> optionalField("missing_ok", boolean)
    );

  let encode =
      (
        {
          renameType,
          relationType,
          relation,
          object_,
          subname,
          newname,
          behavior,
          missing_ok,
        },
      ) =>
    Encode.(
      obj([
        ("renameType", renameType |> option(id)),
        ("relationType", relationType |> option(id)),
        ("relation", relation |> option(RangeVar.encode)),
        ("object", object_ |> option(Stmt.encode)),
        ("subname", subname |> option(string)),
        ("newname", newname |> option(string)),
        ("behavior", behavior |> option(id)),
        ("missing_ok", missing_ok |> option(bool)),
      ])
    );
}

and ReplicaIdentityStmt: AstType = {
  type t = {
    identity_type: option(string),
    name: option(string),
  };

  let decode =
    DecodeParsed.(
      ((identity_type, name) => {identity_type, name})
      <$> optionalField("identity_type", string)
      <*> optionalField("name", string)
    );

  let encode = ({identity_type, name}) =>
    Encode.(
      obj([
        ("identity_type", identity_type |> option(string)),
        ("name", name |> option(string)),
      ])
    );
}

and ResTarget: AstType = {
  type t = {
    name: option(string),
    indirection: option(array(Stmt.t)),
    val_: option(Stmt.t),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (name, indirection, val_, location) => {
          name,
          indirection,
          val_,
          location,
        }
      )
      <$> optionalField("name", string)
      <*> optionalField("indirection", array(Stmt.decode))
      <*> optionalField("val", Stmt.decode)
      <*> optionalField("location", intFromNumber)
    );

  let encode = ({name, indirection, val_, location}) =>
    Encode.(
      obj([
        ("name", name |> option(string)),
        ("indirection", indirection |> option(array(Stmt.encode))),
        ("val", val_ |> option(Stmt.encode)),
        ("location", location |> option(int)),
      ])
    );
}

and RoleSpec: AstType = {
  type t = {
    roletype: option(Js.Json.t),
    rolename: option(string),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      ((roletype, rolename, location) => {roletype, rolename, location})
      <$> optionalField("roletype", okJson)
      <*> optionalField("rolename", string)
      <*> optionalField("location", intFromNumber)
    );

  let encode = ({roletype, rolename, location}) =>
    Encode.(
      obj([
        ("roletype", roletype |> option(id)),
        ("rolename", rolename |> option(string)),
        ("location", location |> option(int)),
      ])
    );
}

and RowCompareExpr: AstType = {
  type t = {
    rctype: option(Js.Json.t),
    opnos: option(array(Stmt.t)),
    opfamilies: option(array(Stmt.t)),
    inputcollids: option(array(Stmt.t)),
    largs: option(array(Stmt.t)),
    rargs: option(array(Stmt.t)),
  };

  let decode =
    DecodeParsed.(
      (
        (rctype, opnos, opfamilies, inputcollids, largs, rargs) => {
          rctype,
          opnos,
          opfamilies,
          inputcollids,
          largs,
          rargs,
        }
      )
      <$> optionalField("rctype", okJson)
      <*> optionalField("opnos", array(Stmt.decode))
      <*> optionalField("opfamilies", array(Stmt.decode))
      <*> optionalField("inputcollids", array(Stmt.decode))
      <*> optionalField("largs", array(Stmt.decode))
      <*> optionalField("rargs", array(Stmt.decode))
    );

  let encode = ({rctype, opnos, opfamilies, inputcollids, largs, rargs}) =>
    Encode.(
      obj([
        ("rctype", rctype |> option(id)),
        ("opnos", opnos |> option(array(Stmt.encode))),
        ("opfamilies", opfamilies |> option(array(Stmt.encode))),
        ("inputcollids", inputcollids |> option(array(Stmt.encode))),
        ("largs", largs |> option(array(Stmt.encode))),
        ("rargs", rargs |> option(array(Stmt.encode))),
      ])
    );
}

and RowExpr: AstType = {
  type t = {
    args: option(array(Stmt.t)),
    row_typeid: option(int),
    row_format: option(Js.Json.t),
    colnames: option(array(string)),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (args, row_typeid, row_format, colnames, location) => {
          args,
          row_typeid,
          row_format,
          colnames,
          location,
        }
      )
      <$> optionalField("args", array(Stmt.decode))
      <*> optionalField("row_typeid", intFromNumber)
      <*> optionalField("row_format", okJson)
      <*> optionalField("colnames", array(string))
      <*> optionalField("location", intFromNumber)
    );

  let encode = ({args, row_typeid, row_format, colnames, location}) =>
    Encode.(
      obj([
        ("args", args |> option(array(Stmt.encode))),
        ("row_typeid", row_typeid |> option(int)),
        ("row_format", row_format |> option(id)),
        ("colnames", colnames |> option(array(string))),
        ("location", location |> option(int)),
      ])
    );
}

and RowMarkClause: AstType = {
  type t = {
    rti: option(int),
    strength: option(Js.Json.t),
    waitPolicy: option(Js.Json.t),
    pushedDown: option(bool),
  };

  let decode =
    DecodeParsed.(
      (
        (rti, strength, waitPolicy, pushedDown) => {
          rti,
          strength,
          waitPolicy,
          pushedDown,
        }
      )
      <$> optionalField("rti", intFromNumber)
      <*> optionalField("strength", okJson)
      <*> optionalField("waitPolicy", okJson)
      <*> optionalField("pushedDown", boolean)
    );

  let encode = ({rti, strength, waitPolicy, pushedDown}) =>
    Encode.(
      obj([
        ("rti", rti |> option(int)),
        ("strength", strength |> option(id)),
        ("waitPolicy", waitPolicy |> option(id)),
        ("pushedDown", pushedDown |> option(bool)),
      ])
    );
}

and RuleStmt: AstType = {
  type t = {
    relation: option(RangeVar.t),
    rulename: option(string),
    whereClause: option(Stmt.t),
    event: option(Js.Json.t),
    instead: option(bool),
    actions: option(array(Stmt.t)),
    replace: option(bool),
  };

  let decode =
    DecodeParsed.(
      (
        (relation, rulename, whereClause, event, instead, actions, replace) => {
          relation,
          rulename,
          whereClause,
          event,
          instead,
          actions,
          replace,
        }
      )
      <$> optionalField("relation", RangeVar.decode)
      <*> optionalField("rulename", string)
      <*> optionalField("whereClause", Stmt.decode)
      <*> optionalField("event", okJson)
      <*> optionalField("instead", boolean)
      <*> optionalField("actions", array(Stmt.decode))
      <*> optionalField("replace", boolean)
    );

  let encode =
      ({relation, rulename, whereClause, event, instead, actions, replace}) =>
    Encode.(
      obj([
        ("relation", relation |> option(RangeVar.encode)),
        ("rulename", rulename |> option(string)),
        ("whereClause", whereClause |> option(Stmt.encode)),
        ("event", event |> option(id)),
        ("instead", instead |> option(bool)),
        ("actions", actions |> option(array(Stmt.encode))),
        ("replace", replace |> option(bool)),
      ])
    );
}

and SQLValueFunction: AstType = {
  type t = {
    op: option(Js.Json.t),
    typmod: option(int),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      ((op, typmod, location) => {op, typmod, location})
      <$> optionalField("op", okJson)
      <*> optionalField("typmod", intFromNumber)
      <*> optionalField("location", intFromNumber)
    );

  let encode = ({op, typmod, location}) =>
    Encode.(
      obj([
        ("op", op |> option(id)),
        ("typmod", typmod |> option(int)),
        ("location", location |> option(int)),
      ])
    );
}

and ScalarArrayOpExpr: AstType = {
  type t = {
    opno: option(int),
    opfuncid: option(int),
    useOr: option(bool),
    inputcollid: option(int),
    args: option(array(Stmt.t)),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (opno, opfuncid, useOr, inputcollid, args, location) => {
          opno,
          opfuncid,
          useOr,
          inputcollid,
          args,
          location,
        }
      )
      <$> optionalField("opno", intFromNumber)
      <*> optionalField("opfuncid", intFromNumber)
      <*> optionalField("useOr", boolean)
      <*> optionalField("inputcollid", intFromNumber)
      <*> optionalField("args", array(Stmt.decode))
      <*> optionalField("location", intFromNumber)
    );

  let encode = ({opno, opfuncid, useOr, inputcollid, args, location}) =>
    Encode.(
      obj([
        ("opno", opno |> option(int)),
        ("opfuncid", opfuncid |> option(int)),
        ("useOr", useOr |> option(bool)),
        ("inputcollid", inputcollid |> option(int)),
        ("args", args |> option(array(Stmt.encode))),
        ("location", location |> option(int)),
      ])
    );
}

and SecLabelStmt: AstType = {
  type t = {
    objtype: option(Js.Json.t),
    object_: option(Stmt.t),
    provider: option(string),
    label: option(string),
  };

  let decode =
    DecodeParsed.(
      (
        (objtype, object_, provider, label) => {
          objtype,
          object_,
          provider,
          label,
        }
      )
      <$> optionalField("objtype", okJson)
      <*> optionalField("object", Stmt.decode)
      <*> optionalField("provider", string)
      <*> optionalField("label", string)
    );

  let encode = ({objtype, object_, provider, label}) =>
    Encode.(
      obj([
        ("objtype", objtype |> option(id)),
        ("object", object_ |> option(Stmt.encode)),
        ("provider", provider |> option(string)),
        ("label", label |> option(string)),
      ])
    );
}

and SelectStmt: AstType = {
  type t = {
    distinctClause: option(array(Stmt.t)),
    intoClause: option(IntoClause.t),
    targetList: option(array(Stmt.t)),
    fromClause: option(array(Stmt.t)),
    whereClause: option(Stmt.t),
    groupClause: option(array(Stmt.t)),
    havingClause: option(Stmt.t),
    windowClause: option(array(Stmt.t)),
    valuesLists: option(array(Stmt.t)),
    sortClause: option(array(Stmt.t)),
    limitOffset: option(Stmt.t),
    limitCount: option(Stmt.t),
    lockingClause: option(array(Stmt.t)),
    withClause: option(WithClause.t),
    op: option(Js.Json.t),
    all: option(bool),
    larg: option(Stmt.t),
    rarg: option(Stmt.t),
  };

  let decode =
    DecodeParsed.(
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
      <$> optionalField("distinctClause", array(Stmt.decode))
      <*> optionalField("intoClause", IntoClause.decode)
      <*> optionalField("targetList", array(Stmt.decode))
      <*> optionalField("fromClause", array(Stmt.decode))
      <*> optionalField("whereClause", Stmt.decode)
      <*> optionalField("groupClause", array(Stmt.decode))
      <*> optionalField("havingClause", Stmt.decode)
      <*> optionalField("windowClause", array(Stmt.decode))
      <*> optionalField("valuesLists", array(Stmt.decode))
      <*> optionalField("sortClause", array(Stmt.decode))
      <*> optionalField("limitOffset", Stmt.decode)
      <*> optionalField("limitCount", Stmt.decode)
      <*> optionalField("lockingClause", array(Stmt.decode))
      <*> optionalField("withClause", WithClause.decode)
      <*> optionalField("op", okJson)
      <*> optionalField("all", boolean)
      <*> optionalField("larg", Stmt.decode)
      <*> optionalField("rarg", Stmt.decode)
    );

  let encode =
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
        ("distinctClause", distinctClause |> option(array(Stmt.encode))),
        ("intoClause", intoClause |> option(IntoClause.encode)),
        ("targetList", targetList |> option(array(Stmt.encode))),
        ("fromClause", fromClause |> option(array(Stmt.encode))),
        ("whereClause", whereClause |> option(Stmt.encode)),
        ("groupClause", groupClause |> option(array(Stmt.encode))),
        ("havingClause", havingClause |> option(Stmt.encode)),
        ("windowClause", windowClause |> option(array(Stmt.encode))),
        ("valuesLists", valuesLists |> option(array(Stmt.encode))),
        ("sortClause", sortClause |> option(array(Stmt.encode))),
        ("limitOffset", limitOffset |> option(Stmt.encode)),
        ("limitCount", limitCount |> option(Stmt.encode)),
        ("lockingClause", lockingClause |> option(array(Stmt.encode))),
        ("withClause", withClause |> option(WithClause.encode)),
        ("op", op |> option(id)),
        ("all", all |> option(bool)),
        ("larg", larg |> option(Stmt.encode)),
        ("rarg", rarg |> option(Stmt.encode)),
      ])
    );
}

and SetOperationStmt: AstType = {
  type t = {
    op: option(Js.Json.t),
    all: option(bool),
    larg: option(Stmt.t),
    rarg: option(Stmt.t),
    colTypes: option(array(Stmt.t)),
    colTypmods: option(array(Stmt.t)),
    colCollations: option(array(Stmt.t)),
    groupClauses: option(array(Stmt.t)),
  };

  let decode =
    DecodeParsed.(
      (
        (
          op,
          all,
          larg,
          rarg,
          colTypes,
          colTypmods,
          colCollations,
          groupClauses,
        ) => {
          op,
          all,
          larg,
          rarg,
          colTypes,
          colTypmods,
          colCollations,
          groupClauses,
        }
      )
      <$> optionalField("op", okJson)
      <*> optionalField("all", boolean)
      <*> optionalField("larg", Stmt.decode)
      <*> optionalField("rarg", Stmt.decode)
      <*> optionalField("colTypes", array(Stmt.decode))
      <*> optionalField("colTypmods", array(Stmt.decode))
      <*> optionalField("colCollations", array(Stmt.decode))
      <*> optionalField("groupClauses", array(Stmt.decode))
    );

  let encode =
      (
        {
          op,
          all,
          larg,
          rarg,
          colTypes,
          colTypmods,
          colCollations,
          groupClauses,
        },
      ) =>
    Encode.(
      obj([
        ("op", op |> option(id)),
        ("all", all |> option(bool)),
        ("larg", larg |> option(Stmt.encode)),
        ("rarg", rarg |> option(Stmt.encode)),
        ("colTypes", colTypes |> option(array(Stmt.encode))),
        ("colTypmods", colTypmods |> option(array(Stmt.encode))),
        ("colCollations", colCollations |> option(array(Stmt.encode))),
        ("groupClauses", groupClauses |> option(array(Stmt.encode))),
      ])
    );
}

and SetToDefault: AstType = {
  type t = {
    typeId: option(int),
    typeMod: option(int),
    collation: option(int),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (typeId, typeMod, collation, location) => {
          typeId,
          typeMod,
          collation,
          location,
        }
      )
      <$> optionalField("typeId", intFromNumber)
      <*> optionalField("typeMod", intFromNumber)
      <*> optionalField("collation", intFromNumber)
      <*> optionalField("location", intFromNumber)
    );

  let encode = ({typeId, typeMod, collation, location}) =>
    Encode.(
      obj([
        ("typeId", typeId |> option(int)),
        ("typeMod", typeMod |> option(int)),
        ("collation", collation |> option(int)),
        ("location", location |> option(int)),
      ])
    );
}

and SortBy: AstType = {
  type t = {
    node: option(Stmt.t),
    sortby_dir: option(Js.Json.t),
    sortby_nulls: option(Js.Json.t),
    useOp: option(array(Stmt.t)),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (node, sortby_dir, sortby_nulls, useOp, location) => {
          node,
          sortby_dir,
          sortby_nulls,
          useOp,
          location,
        }
      )
      <$> optionalField("node", Stmt.decode)
      <*> optionalField("sortby_dir", okJson)
      <*> optionalField("sortby_nulls", okJson)
      <*> optionalField("useOp", array(Stmt.decode))
      <*> optionalField("location", intFromNumber)
    );

  let encode = ({node, sortby_dir, sortby_nulls, useOp, location}) =>
    Encode.(
      obj([
        ("node", node |> option(Stmt.encode)),
        ("sortby_dir", sortby_dir |> option(id)),
        ("sortby_nulls", sortby_nulls |> option(id)),
        ("useOp", useOp |> option(array(Stmt.encode))),
        ("location", location |> option(int)),
      ])
    );
}

and SortGroupClause: AstType = {
  type t = {
    tleSortGroupRef: option(int),
    eqop: option(int),
    sortop: option(int),
    nulls_first: option(bool),
    hashable: option(bool),
  };

  let decode =
    DecodeParsed.(
      (
        (tleSortGroupRef, eqop, sortop, nulls_first, hashable) => {
          tleSortGroupRef,
          eqop,
          sortop,
          nulls_first,
          hashable,
        }
      )
      <$> optionalField("tleSortGroupRef", intFromNumber)
      <*> optionalField("eqop", intFromNumber)
      <*> optionalField("sortop", intFromNumber)
      <*> optionalField("nulls_first", boolean)
      <*> optionalField("hashable", boolean)
    );

  let encode = ({tleSortGroupRef, eqop, sortop, nulls_first, hashable}) =>
    Encode.(
      obj([
        ("tleSortGroupRef", tleSortGroupRef |> option(int)),
        ("eqop", eqop |> option(int)),
        ("sortop", sortop |> option(int)),
        ("nulls_first", nulls_first |> option(bool)),
        ("hashable", hashable |> option(bool)),
      ])
    );
}

and SubLink: AstType = {
  type t = {
    subLinkType: option(Js.Json.t),
    subLinkId: option(int),
    testexpr: option(Stmt.t),
    operName: option(array(Stmt.t)),
    subselect: option(Stmt.t),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (subLinkType, subLinkId, testexpr, operName, subselect, location) => {
          subLinkType,
          subLinkId,
          testexpr,
          operName,
          subselect,
          location,
        }
      )
      <$> optionalField("subLinkType", okJson)
      <*> optionalField("subLinkId", intFromNumber)
      <*> optionalField("testexpr", Stmt.decode)
      <*> optionalField("operName", array(Stmt.decode))
      <*> optionalField("subselect", Stmt.decode)
      <*> optionalField("location", intFromNumber)
    );

  let encode =
      ({subLinkType, subLinkId, testexpr, operName, subselect, location}) =>
    Encode.(
      obj([
        ("subLinkType", subLinkType |> option(id)),
        ("subLinkId", subLinkId |> option(int)),
        ("testexpr", testexpr |> option(Stmt.encode)),
        ("operName", operName |> option(array(Stmt.encode))),
        ("subselect", subselect |> option(Stmt.encode)),
        ("location", location |> option(int)),
      ])
    );
}

and SubscriptingRef: AstType = {
  type t = {
    refcontainertype: option(int),
    refelemtype: option(int),
    reftypmod: option(int),
    refcollid: option(int),
    refupperindexpr: option(array(Stmt.t)),
    reflowerindexpr: option(array(Stmt.t)),
    refexpr: option(Stmt.t),
    refassgnexpr: option(Stmt.t),
  };

  let decode =
    DecodeParsed.(
      (
        (
          refcontainertype,
          refelemtype,
          reftypmod,
          refcollid,
          refupperindexpr,
          reflowerindexpr,
          refexpr,
          refassgnexpr,
        ) => {
          refcontainertype,
          refelemtype,
          reftypmod,
          refcollid,
          refupperindexpr,
          reflowerindexpr,
          refexpr,
          refassgnexpr,
        }
      )
      <$> optionalField("refcontainertype", intFromNumber)
      <*> optionalField("refelemtype", intFromNumber)
      <*> optionalField("reftypmod", intFromNumber)
      <*> optionalField("refcollid", intFromNumber)
      <*> optionalField("refupperindexpr", array(Stmt.decode))
      <*> optionalField("reflowerindexpr", array(Stmt.decode))
      <*> optionalField("refexpr", Stmt.decode)
      <*> optionalField("refassgnexpr", Stmt.decode)
    );

  let encode =
      (
        {
          refcontainertype,
          refelemtype,
          reftypmod,
          refcollid,
          refupperindexpr,
          reflowerindexpr,
          refexpr,
          refassgnexpr,
        },
      ) =>
    Encode.(
      obj([
        ("refcontainertype", refcontainertype |> option(int)),
        ("refelemtype", refelemtype |> option(int)),
        ("reftypmod", reftypmod |> option(int)),
        ("refcollid", refcollid |> option(int)),
        ("refupperindexpr", refupperindexpr |> option(array(Stmt.encode))),
        ("reflowerindexpr", reflowerindexpr |> option(array(Stmt.encode))),
        ("refexpr", refexpr |> option(Stmt.encode)),
        ("refassgnexpr", refassgnexpr |> option(Stmt.encode)),
      ])
    );
}

and TableFunc: AstType = {
  type t = {
    ns_uris: option(array(Stmt.t)),
    ns_names: option(array(Stmt.t)),
    docexpr: option(Stmt.t),
    rowexpr: option(Stmt.t),
    colnames: option(array(string)),
    coltypes: option(array(Stmt.t)),
    coltypmods: option(array(Stmt.t)),
    colcollations: option(array(Stmt.t)),
    colexprs: option(array(Stmt.t)),
    coldefexprs: option(array(Stmt.t)),
    notnulls: option(int),
    ordinalitycol: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (
          ns_uris,
          ns_names,
          docexpr,
          rowexpr,
          colnames,
          coltypes,
          coltypmods,
          colcollations,
          colexprs,
          coldefexprs,
          notnulls,
          ordinalitycol,
        ) => {
          ns_uris,
          ns_names,
          docexpr,
          rowexpr,
          colnames,
          coltypes,
          coltypmods,
          colcollations,
          colexprs,
          coldefexprs,
          notnulls,
          ordinalitycol,
        }
      )
      <$> optionalField("ns_uris", array(Stmt.decode))
      <*> optionalField("ns_names", array(Stmt.decode))
      <*> optionalField("docexpr", Stmt.decode)
      <*> optionalField("rowexpr", Stmt.decode)
      <*> optionalField("colnames", array(string))
      <*> optionalField("coltypes", array(Stmt.decode))
      <*> optionalField("coltypmods", array(Stmt.decode))
      <*> optionalField("colcollations", array(Stmt.decode))
      <*> optionalField("colexprs", array(Stmt.decode))
      <*> optionalField("coldefexprs", array(Stmt.decode))
      <*> optionalField("notnulls", intFromNumber)
      <*> optionalField("ordinalitycol", intFromNumber)
    );

  let encode =
      (
        {
          ns_uris,
          ns_names,
          docexpr,
          rowexpr,
          colnames,
          coltypes,
          coltypmods,
          colcollations,
          colexprs,
          coldefexprs,
          notnulls,
          ordinalitycol,
        },
      ) =>
    Encode.(
      obj([
        ("ns_uris", ns_uris |> option(array(Stmt.encode))),
        ("ns_names", ns_names |> option(array(Stmt.encode))),
        ("docexpr", docexpr |> option(Stmt.encode)),
        ("rowexpr", rowexpr |> option(Stmt.encode)),
        ("colnames", colnames |> option(array(string))),
        ("coltypes", coltypes |> option(array(Stmt.encode))),
        ("coltypmods", coltypmods |> option(array(Stmt.encode))),
        ("colcollations", colcollations |> option(array(Stmt.encode))),
        ("colexprs", colexprs |> option(array(Stmt.encode))),
        ("coldefexprs", coldefexprs |> option(array(Stmt.encode))),
        ("notnulls", notnulls |> option(int)),
        ("ordinalitycol", ordinalitycol |> option(int)),
      ])
    );
}

and TableLikeClause: AstType = {
  type t = {
    relation: option(RangeVar.t),
    options: option(Js.Json.t),
  };

  let decode =
    DecodeParsed.(
      ((relation, options) => {relation, options})
      <$> optionalField("relation", RangeVar.decode)
      <*> optionalField("options", okJson)
    );

  let encode = ({relation, options}) =>
    Encode.(
      obj([
        ("relation", relation |> option(RangeVar.encode)),
        ("options", options |> option(id)),
      ])
    );
}

and TableSampleClause: AstType = {
  type t = {
    tsmhandler: option(int),
    args: option(array(Stmt.t)),
    repeatable: option(Stmt.t),
  };

  let decode =
    DecodeParsed.(
      ((tsmhandler, args, repeatable) => {tsmhandler, args, repeatable})
      <$> optionalField("tsmhandler", intFromNumber)
      <*> optionalField("args", array(Stmt.decode))
      <*> optionalField("repeatable", Stmt.decode)
    );

  let encode = ({tsmhandler, args, repeatable}) =>
    Encode.(
      obj([
        ("tsmhandler", tsmhandler |> option(int)),
        ("args", args |> option(array(Stmt.encode))),
        ("repeatable", repeatable |> option(Stmt.encode)),
      ])
    );
}

and TargetEntry: AstType = {
  type t = {
    expr: option(Stmt.t),
    resno: option(Js.Json.t),
    resname: option(string),
    ressortgroupref: option(Js.Json.t),
    resorigtbl: option(int),
    resorigcol: option(Js.Json.t),
    resjunk: option(bool),
  };

  let decode =
    DecodeParsed.(
      (
        (
          expr,
          resno,
          resname,
          ressortgroupref,
          resorigtbl,
          resorigcol,
          resjunk,
        ) => {
          expr,
          resno,
          resname,
          ressortgroupref,
          resorigtbl,
          resorigcol,
          resjunk,
        }
      )
      <$> optionalField("expr", Stmt.decode)
      <*> optionalField("resno", okJson)
      <*> optionalField("resname", string)
      <*> optionalField("ressortgroupref", okJson)
      <*> optionalField("resorigtbl", intFromNumber)
      <*> optionalField("resorigcol", okJson)
      <*> optionalField("resjunk", boolean)
    );

  let encode =
      (
        {
          expr,
          resno,
          resname,
          ressortgroupref,
          resorigtbl,
          resorigcol,
          resjunk,
        },
      ) =>
    Encode.(
      obj([
        ("expr", expr |> option(Stmt.encode)),
        ("resno", resno |> option(id)),
        ("resname", resname |> option(string)),
        ("ressortgroupref", ressortgroupref |> option(id)),
        ("resorigtbl", resorigtbl |> option(int)),
        ("resorigcol", resorigcol |> option(id)),
        ("resjunk", resjunk |> option(bool)),
      ])
    );
}

and TransactionStmt: AstType = {
  type t = {
    kind: option(Js.Json.t),
    options: option(array(Stmt.t)),
    savepoint_name: option(string),
    gid: option(string),
    chain: option(bool),
  };

  let decode =
    DecodeParsed.(
      (
        (kind, options, savepoint_name, gid, chain) => {
          kind,
          options,
          savepoint_name,
          gid,
          chain,
        }
      )
      <$> optionalField("kind", okJson)
      <*> optionalField("options", array(Stmt.decode))
      <*> optionalField("savepoint_name", string)
      <*> optionalField("gid", string)
      <*> optionalField("chain", boolean)
    );

  let encode = ({kind, options, savepoint_name, gid, chain}) =>
    Encode.(
      obj([
        ("kind", kind |> option(id)),
        ("options", options |> option(array(Stmt.encode))),
        ("savepoint_name", savepoint_name |> option(string)),
        ("gid", gid |> option(string)),
        ("chain", chain |> option(bool)),
      ])
    );
}

and TriggerTransition: AstType = {
  type t = {
    name: option(string),
    isNew: option(bool),
    isTable: option(bool),
  };

  let decode =
    DecodeParsed.(
      ((name, isNew, isTable) => {name, isNew, isTable})
      <$> optionalField("name", string)
      <*> optionalField("isNew", boolean)
      <*> optionalField("isTable", boolean)
    );

  let encode = ({name, isNew, isTable}) =>
    Encode.(
      obj([
        ("name", name |> option(string)),
        ("isNew", isNew |> option(bool)),
        ("isTable", isTable |> option(bool)),
      ])
    );
}

and TruncateStmt: AstType = {
  type t = {
    relations: option(array(Stmt.t)),
    restart_seqs: option(bool),
    behavior: option(Js.Json.t),
  };

  let decode =
    DecodeParsed.(
      (
        (relations, restart_seqs, behavior) => {
          relations,
          restart_seqs,
          behavior,
        }
      )
      <$> optionalField("relations", array(Stmt.decode))
      <*> optionalField("restart_seqs", boolean)
      <*> optionalField("behavior", okJson)
    );

  let encode = ({relations, restart_seqs, behavior}) =>
    Encode.(
      obj([
        ("relations", relations |> option(array(Stmt.encode))),
        ("restart_seqs", restart_seqs |> option(bool)),
        ("behavior", behavior |> option(id)),
      ])
    );
}

and TypeCast: AstType = {
  type t = {
    arg: option(Stmt.t),
    typeName: option(TypeName.t),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      ((arg, typeName, location) => {arg, typeName, location})
      <$> optionalField("arg", Stmt.decode)
      <*> optionalField("typeName", TypeName.decode)
      <*> optionalField("location", intFromNumber)
    );

  let encode = ({arg, typeName, location}) =>
    Encode.(
      obj([
        ("arg", arg |> option(Stmt.encode)),
        ("typeName", typeName |> option(TypeName.encode)),
        ("location", location |> option(int)),
      ])
    );
}

and TypeName: AstType = {
  type t = {
    names: option(array(Stmt.t)),
    typmods: option(array(Stmt.t)),
    typemod: option(int),
    location: option(int),
    arrayBounds: option(array(Stmt.t)),
    setof: option(bool),
    pct_type: option(bool),
    typeOid: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (
          names,
          typmods,
          typemod,
          location,
          arrayBounds,
          setof,
          pct_type,
          typeOid,
        ) => {
          names,
          typmods,
          typemod,
          location,
          arrayBounds,
          setof,
          pct_type,
          typeOid,
        }
      )
      <$> optionalField("names", array(Stmt.decode))
      <*> optionalField("typmods", array(Stmt.decode))
      <*> optionalField("typemod", intFromNumber)
      <*> optionalField("location", intFromNumber)
      <*> optionalField("arrayBounds", array(Stmt.decode))
      <*> optionalField("setof", boolean)
      <*> optionalField("pct_type", boolean)
      <*> optionalField("typeOid", intFromNumber)
    );

  let encode =
      (
        {
          names,
          typmods,
          typemod,
          location,
          arrayBounds,
          setof,
          pct_type,
          typeOid,
        },
      ) =>
    Encode.(
      obj([
        ("names", names |> option(array(Stmt.encode))),
        ("typmods", typmods |> option(array(Stmt.encode))),
        ("typemod", typemod |> option(int)),
        ("location", location |> option(int)),
        ("arrayBounds", arrayBounds |> option(array(Stmt.encode))),
        ("setof", setof |> option(bool)),
        ("pct_type", pct_type |> option(bool)),
        ("typeOid", typeOid |> option(int)),
      ])
    );
}

and UnlistenStmt: AstType = {
  type t = {conditionname: option(string)};

  let decode =
    DecodeParsed.(
      (conditionname => {conditionname: conditionname})
      <$> optionalField("conditionname", string)
    );

  let encode = ({conditionname}) =>
    Encode.(obj([("conditionname", conditionname |> option(string))]));
}

and UpdateStmt: AstType = {
  type t = {
    relation: option(RangeVar.t),
    targetList: option(array(Stmt.t)),
    whereClause: option(Stmt.t),
    fromClause: option(array(Stmt.t)),
    returningList: option(array(Stmt.t)),
    withClause: option(WithClause.t),
  };

  let decode =
    DecodeParsed.(
      (
        (
          relation,
          targetList,
          whereClause,
          fromClause,
          returningList,
          withClause,
        ) => {
          relation,
          targetList,
          whereClause,
          fromClause,
          returningList,
          withClause,
        }
      )
      <$> optionalField("relation", RangeVar.decode)
      <*> optionalField("targetList", array(Stmt.decode))
      <*> optionalField("whereClause", Stmt.decode)
      <*> optionalField("fromClause", array(Stmt.decode))
      <*> optionalField("returningList", array(Stmt.decode))
      <*> optionalField("withClause", WithClause.decode)
    );

  let encode =
      (
        {
          relation,
          targetList,
          whereClause,
          fromClause,
          returningList,
          withClause,
        },
      ) =>
    Encode.(
      obj([
        ("relation", relation |> option(RangeVar.encode)),
        ("targetList", targetList |> option(array(Stmt.encode))),
        ("whereClause", whereClause |> option(Stmt.encode)),
        ("fromClause", fromClause |> option(array(Stmt.encode))),
        ("returningList", returningList |> option(array(Stmt.encode))),
        ("withClause", withClause |> option(WithClause.encode)),
      ])
    );
}

and VacuumRelation: AstType = {
  type t = {
    relation: option(RangeVar.t),
    oid: option(int),
    va_cols: option(array(Stmt.t)),
  };

  let decode =
    DecodeParsed.(
      ((relation, oid, va_cols) => {relation, oid, va_cols})
      <$> optionalField("relation", RangeVar.decode)
      <*> optionalField("oid", intFromNumber)
      <*> optionalField("va_cols", array(Stmt.decode))
    );

  let encode = ({relation, oid, va_cols}) =>
    Encode.(
      obj([
        ("relation", relation |> option(RangeVar.encode)),
        ("oid", oid |> option(int)),
        ("va_cols", va_cols |> option(array(Stmt.encode))),
      ])
    );
}

and VacuumStmt: AstType = {
  type t = {
    options: option(array(Stmt.t)),
    rels: option(array(Stmt.t)),
    is_vacuumcmd: option(bool),
  };

  let decode =
    DecodeParsed.(
      ((options, rels, is_vacuumcmd) => {options, rels, is_vacuumcmd})
      <$> optionalField("options", array(Stmt.decode))
      <*> optionalField("rels", array(Stmt.decode))
      <*> optionalField("is_vacuumcmd", boolean)
    );

  let encode = ({options, rels, is_vacuumcmd}) =>
    Encode.(
      obj([
        ("options", options |> option(array(Stmt.encode))),
        ("rels", rels |> option(array(Stmt.encode))),
        ("is_vacuumcmd", is_vacuumcmd |> option(bool)),
      ])
    );
}

and Value: AstType = {
  type t =
    | String(Js.Json.t)
    | Int(Js.Json.t)
    | Float(Js.Json.t)
    | BitString(Js.Json.t)
    | Null;

  let decode =
    DecodeParsed.(
      oneOf(
        field("String", okJson) |> map(x => String(x)),
        [
          field("Int", okJson) |> map(x => Int(x)),
          field("Float", okJson) |> map(x => Float(x)),
          field("BitString", okJson) |> map(x => BitString(x)),
          field("Null", okJson) |> map(_ => Null),
        ],
      )
    );

  let encode = value =>
    Encode.(
      obj([
        switch (value) {
        | String(x) => ("String", x |> id)
        | Int(x) => ("Int", x |> id)
        | Float(x) => ("Float", x |> id)
        | BitString(x) => ("BitString", x |> id)
        | Null => ("Null", null)
        },
      ])
    );
}

and Var: AstType = {
  type t = {
    varno: option(Js.Json.t),
    varattno: option(Js.Json.t),
    vartype: option(int),
    vartypmod: option(int),
    varcollid: option(int),
    varlevelsup: option(Js.Json.t),
    varnoold: option(Js.Json.t),
    varoattno: option(Js.Json.t),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (
          varno,
          varattno,
          vartype,
          vartypmod,
          varcollid,
          varlevelsup,
          varnoold,
          varoattno,
          location,
        ) => {
          varno,
          varattno,
          vartype,
          vartypmod,
          varcollid,
          varlevelsup,
          varnoold,
          varoattno,
          location,
        }
      )
      <$> optionalField("varno", okJson)
      <*> optionalField("varattno", okJson)
      <*> optionalField("vartype", intFromNumber)
      <*> optionalField("vartypmod", intFromNumber)
      <*> optionalField("varcollid", intFromNumber)
      <*> optionalField("varlevelsup", okJson)
      <*> optionalField("varnoold", okJson)
      <*> optionalField("varoattno", okJson)
      <*> optionalField("location", intFromNumber)
    );

  let encode =
      (
        {
          varno,
          varattno,
          vartype,
          vartypmod,
          varcollid,
          varlevelsup,
          varnoold,
          varoattno,
          location,
        },
      ) =>
    Encode.(
      obj([
        ("varno", varno |> option(id)),
        ("varattno", varattno |> option(id)),
        ("vartype", vartype |> option(int)),
        ("vartypmod", vartypmod |> option(int)),
        ("varcollid", varcollid |> option(int)),
        ("varlevelsup", varlevelsup |> option(id)),
        ("varnoold", varnoold |> option(id)),
        ("varoattno", varoattno |> option(id)),
        ("location", location |> option(int)),
      ])
    );
}

and VariableSetStmt: AstType = {
  type t = {
    kind: option(Js.Json.t),
    name: option(string),
    args: option(array(Stmt.t)),
    is_local: option(bool),
  };

  let decode =
    DecodeParsed.(
      ((kind, name, args, is_local) => {kind, name, args, is_local})
      <$> optionalField("kind", okJson)
      <*> optionalField("name", string)
      <*> optionalField("args", array(Stmt.decode))
      <*> optionalField("is_local", boolean)
    );

  let encode = ({kind, name, args, is_local}) =>
    Encode.(
      obj([
        ("kind", kind |> option(id)),
        ("name", name |> option(string)),
        ("args", args |> option(array(Stmt.encode))),
        ("is_local", is_local |> option(bool)),
      ])
    );
}

and VariableShowStmt: AstType = {
  type t = {name: option(string)};

  let decode =
    DecodeParsed.((name => {name: name}) <$> optionalField("name", string));

  let encode = ({name}) =>
    Encode.(obj([("name", name |> option(string))]));
}

and ViewStmt: AstType = {
  type t = {
    view: option(RangeVar.t),
    aliases: option(array(Stmt.t)),
    query: option(Stmt.t),
    replace: option(bool),
    options: option(array(Stmt.t)),
    withCheckOption: option(Js.Json.t),
  };

  let decode =
    DecodeParsed.(
      (
        (view, aliases, query, replace, options, withCheckOption) => {
          view,
          aliases,
          query,
          replace,
          options,
          withCheckOption,
        }
      )
      <$> optionalField("view", RangeVar.decode)
      <*> optionalField("aliases", array(Stmt.decode))
      <*> optionalField("query", Stmt.decode)
      <*> optionalField("replace", boolean)
      <*> optionalField("options", array(Stmt.decode))
      <*> optionalField("withCheckOption", okJson)
    );

  let encode = ({view, aliases, query, replace, options, withCheckOption}) =>
    Encode.(
      obj([
        ("view", view |> option(RangeVar.encode)),
        ("aliases", aliases |> option(array(Stmt.encode))),
        ("query", query |> option(Stmt.encode)),
        ("replace", replace |> option(bool)),
        ("options", options |> option(array(Stmt.encode))),
        ("withCheckOption", withCheckOption |> option(id)),
      ])
    );
}

and WithClause: AstType = {
  type t = {
    ctes: option(array(Stmt.t)),
    recursive: option(bool),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      ((ctes, recursive, location) => {ctes, recursive, location})
      <$> optionalField("ctes", array(Stmt.decode))
      <*> optionalField("recursive", boolean)
      <*> optionalField("location", intFromNumber)
    );

  let encode = ({ctes, recursive, location}) =>
    Encode.(
      obj([
        ("ctes", ctes |> option(array(Stmt.encode))),
        ("recursive", recursive |> option(bool)),
        ("location", location |> option(int)),
      ])
    );
}

and WindowClause: AstType = {
  type t = {
    name: option(string),
    refname: option(string),
    partitionClause: option(array(Stmt.t)),
    orderClause: option(array(Stmt.t)),
    frameOptions: option(int),
    startOffset: option(Stmt.t),
    endOffset: option(Stmt.t),
    startInRangeFunc: option(int),
    endInRangeFunc: option(int),
    inRangeColl: option(int),
    inRangeAsc: option(bool),
    inRangeNullsFirst: option(bool),
    winref: option(Js.Json.t),
    copystart: option(bool),
  };

  let decode =
    DecodeParsed.(
      (
        (
          name,
          refname,
          partitionClause,
          orderClause,
          frameOptions,
          startOffset,
          endOffset,
          startInRangeFunc,
          endInRangeFunc,
          inRangeColl,
          inRangeAsc,
          inRangeNullsFirst,
          winref,
          copystart,
        ) => {
          name,
          refname,
          partitionClause,
          orderClause,
          frameOptions,
          startOffset,
          endOffset,
          startInRangeFunc,
          endInRangeFunc,
          inRangeColl,
          inRangeAsc,
          inRangeNullsFirst,
          winref,
          copystart,
        }
      )
      <$> optionalField("name", string)
      <*> optionalField("refname", string)
      <*> optionalField("partitionClause", array(Stmt.decode))
      <*> optionalField("orderClause", array(Stmt.decode))
      <*> optionalField("frameOptions", intFromNumber)
      <*> optionalField("startOffset", Stmt.decode)
      <*> optionalField("endOffset", Stmt.decode)
      <*> optionalField("startInRangeFunc", intFromNumber)
      <*> optionalField("endInRangeFunc", intFromNumber)
      <*> optionalField("inRangeColl", intFromNumber)
      <*> optionalField("inRangeAsc", boolean)
      <*> optionalField("inRangeNullsFirst", boolean)
      <*> optionalField("winref", okJson)
      <*> optionalField("copystart", boolean)
    );

  let encode =
      (
        {
          name,
          refname,
          partitionClause,
          orderClause,
          frameOptions,
          startOffset,
          endOffset,
          startInRangeFunc,
          endInRangeFunc,
          inRangeColl,
          inRangeAsc,
          inRangeNullsFirst,
          winref,
          copystart,
        },
      ) =>
    Encode.(
      obj([
        ("name", name |> option(string)),
        ("refname", refname |> option(string)),
        ("partitionClause", partitionClause |> option(array(Stmt.encode))),
        ("orderClause", orderClause |> option(array(Stmt.encode))),
        ("frameOptions", frameOptions |> option(int)),
        ("startOffset", startOffset |> option(Stmt.encode)),
        ("endOffset", endOffset |> option(Stmt.encode)),
        ("startInRangeFunc", startInRangeFunc |> option(int)),
        ("endInRangeFunc", endInRangeFunc |> option(int)),
        ("inRangeColl", inRangeColl |> option(int)),
        ("inRangeAsc", inRangeAsc |> option(bool)),
        ("inRangeNullsFirst", inRangeNullsFirst |> option(bool)),
        ("winref", winref |> option(id)),
        ("copystart", copystart |> option(bool)),
      ])
    );
}

and WindowDef: AstType = {
  type t = {
    name: option(string),
    refname: option(string),
    partitionClause: option(array(Stmt.t)),
    orderClause: option(array(Stmt.t)),
    frameOptions: option(int),
    startOffset: option(Stmt.t),
    endOffset: option(Stmt.t),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (
          name,
          refname,
          partitionClause,
          orderClause,
          frameOptions,
          startOffset,
          endOffset,
          location,
        ) => {
          name,
          refname,
          partitionClause,
          orderClause,
          frameOptions,
          startOffset,
          endOffset,
          location,
        }
      )
      <$> optionalField("name", string)
      <*> optionalField("refname", string)
      <*> optionalField("partitionClause", array(Stmt.decode))
      <*> optionalField("orderClause", array(Stmt.decode))
      <*> optionalField("frameOptions", intFromNumber)
      <*> optionalField("startOffset", Stmt.decode)
      <*> optionalField("endOffset", Stmt.decode)
      <*> optionalField("location", intFromNumber)
    );

  let encode =
      (
        {
          name,
          refname,
          partitionClause,
          orderClause,
          frameOptions,
          startOffset,
          endOffset,
          location,
        },
      ) =>
    Encode.(
      obj([
        ("name", name |> option(string)),
        ("refname", refname |> option(string)),
        ("partitionClause", partitionClause |> option(array(Stmt.encode))),
        ("orderClause", orderClause |> option(array(Stmt.encode))),
        ("frameOptions", frameOptions |> option(int)),
        ("startOffset", startOffset |> option(Stmt.encode)),
        ("endOffset", endOffset |> option(Stmt.encode)),
        ("location", location |> option(int)),
      ])
    );
}

and WindowFunc: AstType = {
  type t = {
    winfnoid: option(int),
    wintype: option(int),
    wincollid: option(int),
    inputcollid: option(int),
    args: option(array(Stmt.t)),
    aggfilter: option(Stmt.t),
    winref: option(Js.Json.t),
    winstar: option(bool),
    winagg: option(bool),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (
          winfnoid,
          wintype,
          wincollid,
          inputcollid,
          args,
          aggfilter,
          winref,
          winstar,
          winagg,
          location,
        ) => {
          winfnoid,
          wintype,
          wincollid,
          inputcollid,
          args,
          aggfilter,
          winref,
          winstar,
          winagg,
          location,
        }
      )
      <$> optionalField("winfnoid", intFromNumber)
      <*> optionalField("wintype", intFromNumber)
      <*> optionalField("wincollid", intFromNumber)
      <*> optionalField("inputcollid", intFromNumber)
      <*> optionalField("args", array(Stmt.decode))
      <*> optionalField("aggfilter", Stmt.decode)
      <*> optionalField("winref", okJson)
      <*> optionalField("winstar", boolean)
      <*> optionalField("winagg", boolean)
      <*> optionalField("location", intFromNumber)
    );

  let encode =
      (
        {
          winfnoid,
          wintype,
          wincollid,
          inputcollid,
          args,
          aggfilter,
          winref,
          winstar,
          winagg,
          location,
        },
      ) =>
    Encode.(
      obj([
        ("winfnoid", winfnoid |> option(int)),
        ("wintype", wintype |> option(int)),
        ("wincollid", wincollid |> option(int)),
        ("inputcollid", inputcollid |> option(int)),
        ("args", args |> option(array(Stmt.encode))),
        ("aggfilter", aggfilter |> option(Stmt.encode)),
        ("winref", winref |> option(id)),
        ("winstar", winstar |> option(bool)),
        ("winagg", winagg |> option(bool)),
        ("location", location |> option(int)),
      ])
    );
}

and WithCheckOption: AstType = {
  type t = {
    kind: option(Js.Json.t),
    relname: option(string),
    polname: option(string),
    qual: option(Stmt.t),
    cascaded: option(bool),
  };

  let decode =
    DecodeParsed.(
      (
        (kind, relname, polname, qual, cascaded) => {
          kind,
          relname,
          polname,
          qual,
          cascaded,
        }
      )
      <$> optionalField("kind", okJson)
      <*> optionalField("relname", string)
      <*> optionalField("polname", string)
      <*> optionalField("qual", Stmt.decode)
      <*> optionalField("cascaded", boolean)
    );

  let encode = ({kind, relname, polname, qual, cascaded}) =>
    Encode.(
      obj([
        ("kind", kind |> option(id)),
        ("relname", relname |> option(string)),
        ("polname", polname |> option(string)),
        ("qual", qual |> option(Stmt.encode)),
        ("cascaded", cascaded |> option(bool)),
      ])
    );
}

and XmlExpr: AstType = {
  type t = {
    xpr: option(Stmt.t),
    op: option(Js.Json.t),
    name: option(string),
    named_args: option(array(Stmt.t)),
    arg_names: option(array(Stmt.t)),
    args: option(array(Stmt.t)),
    xmloption: option(int),
    typmod: option(int),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (
          xpr,
          op,
          name,
          named_args,
          arg_names,
          args,
          xmloption,
          typmod,
          location,
        ) => {
          xpr,
          op,
          name,
          named_args,
          arg_names,
          args,
          xmloption,
          typmod,
          location,
        }
      )
      <$> optionalField("xpr", Stmt.decode)
      <*> optionalField("op", okJson)
      <*> optionalField("name", string)
      <*> optionalField("named_args", array(Stmt.decode))
      <*> optionalField("arg_names", array(Stmt.decode))
      <*> optionalField("args", array(Stmt.decode))
      <*> optionalField("xmloption", intFromNumber)
      <*> optionalField("typmod", intFromNumber)
      <*> optionalField("location", intFromNumber)
    );

  let encode =
      (
        {
          xpr,
          op,
          name,
          named_args,
          arg_names,
          args,
          xmloption,
          typmod,
          location,
        },
      ) =>
    Encode.(
      obj([
        ("xpr", xpr |> option(Stmt.encode)),
        ("op", op |> option(id)),
        ("name", name |> option(string)),
        ("named_args", named_args |> option(array(Stmt.encode))),
        ("arg_names", arg_names |> option(array(Stmt.encode))),
        ("args", args |> option(array(Stmt.encode))),
        ("xmloption", xmloption |> option(int)),
        ("typmod", typmod |> option(int)),
        ("location", location |> option(int)),
      ])
    );
}

and XmlSerialize: AstType = {
  type t = {
    xmloption: option(Js.Json.t),
    expr: option(Stmt.t),
    typeName: option(TypeName.t),
    location: option(int),
  };

  let decode =
    DecodeParsed.(
      (
        (xmloption, expr, typeName, location) => {
          xmloption,
          expr,
          typeName,
          location,
        }
      )
      <$> optionalField("xmloption", okJson)
      <*> optionalField("expr", Stmt.decode)
      <*> optionalField("typeName", TypeName.decode)
      <*> optionalField("location", intFromNumber)
    );

  let encode = ({xmloption, expr, typeName, location}) =>
    Encode.(
      obj([
        ("xmloption", xmloption |> option(id)),
        ("expr", expr |> option(Stmt.encode)),
        ("typeName", typeName |> option(TypeName.encode)),
        ("location", location |> option(int)),
      ])
    );
}

and Stmt: AstType = {
  type t =
    | A_ArrayExpr(A_ArrayExpr.t)
    | A_Const(A_Const.t)
    | A_Expr(A_Expr.t)
    | A_Indices(A_Indices.t)
    | A_Indirection(A_Indirection.t)
    | A_Star
    | AccessPriv(AccessPriv.t)
    | Aggref(Aggref.t)
    | Alias(Alias.t)
    | AlterCollationStmt(AlterCollationStmt.t)
    | AlterDatabaseSetStmt(AlterDatabaseSetStmt.t)
    | AlterDatabaseStmt(AlterDatabaseStmt.t)
    | AlterDefaultPrivilegesStmt(AlterDefaultPrivilegesStmt.t)
    | AlterDomainStmt(AlterDomainStmt.t)
    | AlterEnumStmt(AlterEnumStmt.t)
    | AlterEventTrigStmt(AlterEventTrigStmt.t)
    | AlterExtensionContentsStmt(AlterExtensionContentsStmt.t)
    | AlterExtensionStmt(AlterExtensionStmt.t)
    | AlterFdwStmt(AlterFdwStmt.t)
    | AlterForeignServerStmt(AlterForeignServerStmt.t)
    | AlterFunctionStmt(AlterFunctionStmt.t)
    | AlterObjectDependsStmt(AlterObjectDependsStmt.t)
    | AlterObjectSchemaStmt(AlterObjectSchemaStmt.t)
    | AlterOpFamilyStmt(AlterOpFamilyStmt.t)
    | AlterOperatorStmt(AlterOperatorStmt.t)
    | AlterOwnerStmt(AlterOwnerStmt.t)
    | AlterPolicyStmt(AlterPolicyStmt.t)
    | AlterPublicationStmt(AlterPublicationStmt.t)
    | AlterRoleSetStmt(AlterRoleSetStmt.t)
    | AlterRoleStmt(AlterRoleStmt.t)
    | AlterSeqStmt(AlterSeqStmt.t)
    | AlterSubscriptionStmt(AlterSubscriptionStmt.t)
    | AlterSystemStmt(AlterSystemStmt.t)
    | AlterTSConfigurationStmt(AlterTSConfigurationStmt.t)
    | AlterTSDictionaryStmt(AlterTSDictionaryStmt.t)
    | AlterTableCmd(AlterTableCmd.t)
    | AlterTableMoveAllStmt(AlterTableMoveAllStmt.t)
    | AlterTableSpaceOptionsStmt(AlterTableSpaceOptionsStmt.t)
    | AlterTableStmt(AlterTableStmt.t)
    | AlterUserMappingStmt(AlterUserMappingStmt.t)
    | AlternativeSubPlan(AlternativeSubPlan.t)
    | ArrayCoerceExpr(ArrayCoerceExpr.t)
    | ArrayExpr(ArrayExpr.t)
    | BoolExpr(BoolExpr.t)
    | BooleanTest(BooleanTest.t)
    | CallContext(CallContext.t)
    | CallStmt(CallStmt.t)
    | CaseExpr(CaseExpr.t)
    | CaseTestExpr(CaseTestExpr.t)
    | CaseWhen(CaseWhen.t)
    | CheckPointStmt(CheckPointStmt.t)
    | ClosePortalStmt(ClosePortalStmt.t)
    | ClusterStmt(ClusterStmt.t)
    | CoalesceExpr(CoalesceExpr.t)
    | CoerceToDomain(CoerceToDomain.t)
    | CoerceToDomainValue(CoerceToDomainValue.t)
    | CoerceViaIO(CoerceViaIO.t)
    | CollateClause(CollateClause.t)
    | CollateExpr(CollateExpr.t)
    | ColumnDef(ColumnDef.t)
    | ColumnRef(ColumnRef.t)
    | CommentStmt(CommentStmt.t)
    | CommonTableExpr(CommonTableExpr.t)
    | CompositeTypeStmt(CompositeTypeStmt.t)
    | Const(Const.t)
    | Constraint(Constraint.t)
    | ConstraintsSetStmt(ConstraintsSetStmt.t)
    | ConvertRowtypeExpr(ConvertRowtypeExpr.t)
    | CopyStmt(CopyStmt.t)
    | CreateAmStmt(CreateAmStmt.t)
    | CreateCastStmt(CreateCastStmt.t)
    | CreateConversionStmt(CreateConversionStmt.t)
    | CreateDomainStmt(CreateDomainStmt.t)
    | CreateEnumStmt(CreateEnumStmt.t)
    | CreateEventTrigStmt(CreateEventTrigStmt.t)
    | CreateExtensionStmt(CreateExtensionStmt.t)
    | CreateFdwStmt(CreateFdwStmt.t)
    | CreateForeignServerStmt(CreateForeignServerStmt.t)
    | CreateForeignTableStmt(CreateForeignTableStmt.t)
    | CreateFunctionStmt(CreateFunctionStmt.t)
    | CreateOpClassItem(CreateOpClassItem.t)
    | CreateOpClassStmt(CreateOpClassStmt.t)
    | CreateOpFamilyStmt(CreateOpFamilyStmt.t)
    | CreatePLangStmt(CreatePLangStmt.t)
    | CreatePolicyStmt(CreatePolicyStmt.t)
    | CreatePublicationStmt(CreatePublicationStmt.t)
    | CreateRangeStmt(CreateRangeStmt.t)
    | CreateRoleStmt(CreateRoleStmt.t)
    | CreateSchemaStmt(CreateSchemaStmt.t)
    | CreateSeqStmt(CreateSeqStmt.t)
    | CreateStatsStmt(CreateStatsStmt.t)
    | CreateStmt(CreateStmt.t)
    | CreateSubscriptionStmt(CreateSubscriptionStmt.t)
    | CreateTableAsStmt(CreateTableAsStmt.t)
    | CreateTableSpaceStmt(CreateTableSpaceStmt.t)
    | CreateTransformStmt(CreateTransformStmt.t)
    | CreateTrigStmt(CreateTrigStmt.t)
    | CreateUserMappingStmt(CreateUserMappingStmt.t)
    | CreatedbStmt(CreatedbStmt.t)
    | CurrentOfExpr(CurrentOfExpr.t)
    | DeallocateStmt(DeallocateStmt.t)
    | DeclareCursorStmt(DeclareCursorStmt.t)
    | DefElem(DefElem.t)
    | DefineStmt(DefineStmt.t)
    | DeleteStmt(DeleteStmt.t)
    | DiscardStmt(DiscardStmt.t)
    | DoStmt(DoStmt.t)
    | DropOwnedStmt(DropOwnedStmt.t)
    | DropRoleStmt(DropRoleStmt.t)
    | DropStmt(DropStmt.t)
    | DropSubscriptionStmt(DropSubscriptionStmt.t)
    | DropTableSpaceStmt(DropTableSpaceStmt.t)
    | DropUserMappingStmt(DropUserMappingStmt.t)
    | DropdbStmt(DropdbStmt.t)
    | ExecuteStmt(ExecuteStmt.t)
    | ExplainStmt(ExplainStmt.t)
    | FetchStmt(FetchStmt.t)
    | FieldSelect(FieldSelect.t)
    | FieldStore(FieldStore.t)
    | FromExpr(FromExpr.t)
    | FuncCall(FuncCall.t)
    | FuncExpr(FuncExpr.t)
    | FunctionParameter(FunctionParameter.t)
    | GrantRoleStmt(GrantRoleStmt.t)
    | GrantStmt(GrantStmt.t)
    | GroupingFunc(GroupingFunc.t)
    | GroupingSet(GroupingSet.t)
    | ImportForeignSchemaStmt(ImportForeignSchemaStmt.t)
    | IndexElem(IndexElem.t)
    | IndexStmt(IndexStmt.t)
    | InferClause(InferClause.t)
    | InferenceElem(InferenceElem.t)
    | InlineCodeBlock(InlineCodeBlock.t)
    | InsertStmt(InsertStmt.t)
    | IntoClause(IntoClause.t)
    | JoinExpr(JoinExpr.t)
    | ListenStmt(ListenStmt.t)
    | LoadStmt(LoadStmt.t)
    | LockStmt(LockStmt.t)
    | LockingClause(LockingClause.t)
    | MinMaxExpr(MinMaxExpr.t)
    | MultiAssignRef(MultiAssignRef.t)
    | NamedArgExpr(NamedArgExpr.t)
    | NextValueExpr(NextValueExpr.t)
    | NotifyStmt(NotifyStmt.t)
    | NullTest(NullTest.t)
    | ObjectWithArgs(ObjectWithArgs.t)
    | OnConflictClause(OnConflictClause.t)
    | OnConflictExpr(OnConflictExpr.t)
    | OpExpr(OpExpr.t)
    | Param(Param.t)
    | ParamRef(ParamRef.t)
    | PartitionBoundSpec(PartitionBoundSpec.t)
    | PartitionCmd(PartitionCmd.t)
    | PartitionElem(PartitionElem.t)
    | PartitionRangeDatum(PartitionRangeDatum.t)
    | PartitionSpec(PartitionSpec.t)
    | PrepareStmt(PrepareStmt.t)
    | RangeFunction(RangeFunction.t)
    | RangeSubselect(RangeSubselect.t)
    | RangeTableFunc(RangeTableFunc.t)
    | RangeTableFuncCol(RangeTableFuncCol.t)
    | RangeTableSample(RangeTableSample.t)
    | RangeTblRef(RangeTblRef.t)
    | RangeVar(RangeVar.t)
    | RawStmt(RawStmt.t)
    | ReassignOwnedStmt(ReassignOwnedStmt.t)
    | RefreshMatViewStmt(RefreshMatViewStmt.t)
    | ReindexStmt(ReindexStmt.t)
    | RenameStmt(RenameStmt.t)
    | ReplicaIdentityStmt(ReplicaIdentityStmt.t)
    | ResTarget(ResTarget.t)
    | RoleSpec(RoleSpec.t)
    | RowCompareExpr(RowCompareExpr.t)
    | RowExpr(RowExpr.t)
    | RowMarkClause(RowMarkClause.t)
    | RuleStmt(RuleStmt.t)
    | SQLValueFunction(SQLValueFunction.t)
    | ScalarArrayOpExpr(ScalarArrayOpExpr.t)
    | SecLabelStmt(SecLabelStmt.t)
    | SelectStmt(SelectStmt.t)
    | SetOperationStmt(SetOperationStmt.t)
    | SetToDefault(SetToDefault.t)
    | SortBy(SortBy.t)
    | SortGroupClause(SortGroupClause.t)
    | SubLink(SubLink.t)
    | SubscriptingRef(SubscriptingRef.t)
    | TableFunc(TableFunc.t)
    | TableLikeClause(TableLikeClause.t)
    | TableSampleClause(TableSampleClause.t)
    | TargetEntry(TargetEntry.t)
    | TransactionStmt(TransactionStmt.t)
    | TypeCast(TypeCast.t)
    | TypeName(TypeName.t)
    | UnlistenStmt(UnlistenStmt.t)
    | UpdateStmt(UpdateStmt.t)
    | VacuumRelation(VacuumRelation.t)
    | VacuumStmt(VacuumStmt.t)
    | Value(Value.t)
    | Var(Var.t)
    | VariableSetStmt(VariableSetStmt.t)
    | VariableShowStmt(VariableShowStmt.t)
    | ViewStmt(ViewStmt.t)
    | WindowClause(WindowClause.t)
    | WindowDef(WindowDef.t)
    | WindowFunc(WindowFunc.t)
    | WithCheckOption(WithCheckOption.t)
    | WithClause(WithClause.t)
    | XmlExpr(XmlExpr.t)
    | XmlSerialize(XmlSerialize.t);

  let decode =
    DecodeParsed.(
      oneOf(
        field("A_ArrayExpr", A_ArrayExpr.decode) |> map(x => A_ArrayExpr(x)),
        [
          field("A_Const", A_Const.decode) |> map(x => A_Const(x)),
          field("A_Expr", A_Expr.decode) |> map(x => A_Expr(x)),
          field("A_Indices", A_Indices.decode) |> map(x => A_Indices(x)),
          field("A_Indirection", A_Indirection.decode)
          |> map(x => A_Indirection(x)),
          field("A_Star", okJson) |> map(_ => A_Star),
          field("AccessPriv", AccessPriv.decode) |> map(x => AccessPriv(x)),
          field("Aggref", Aggref.decode) |> map(x => Aggref(x)),
          field("Alias", Alias.decode) |> map(x => Alias(x)),
          field("AlterCollationStmt", AlterCollationStmt.decode)
          |> map(x => AlterCollationStmt(x)),
          field("AlterDatabaseSetStmt", AlterDatabaseSetStmt.decode)
          |> map(x => AlterDatabaseSetStmt(x)),
          field("AlterDatabaseStmt", AlterDatabaseStmt.decode)
          |> map(x => AlterDatabaseStmt(x)),
          field(
            "AlterDefaultPrivilegesStmt",
            AlterDefaultPrivilegesStmt.decode,
          )
          |> map(x => AlterDefaultPrivilegesStmt(x)),
          field("AlterDomainStmt", AlterDomainStmt.decode)
          |> map(x => AlterDomainStmt(x)),
          field("AlterEnumStmt", AlterEnumStmt.decode)
          |> map(x => AlterEnumStmt(x)),
          field("AlterEventTrigStmt", AlterEventTrigStmt.decode)
          |> map(x => AlterEventTrigStmt(x)),
          field(
            "AlterExtensionContentsStmt",
            AlterExtensionContentsStmt.decode,
          )
          |> map(x => AlterExtensionContentsStmt(x)),
          field("AlterExtensionStmt", AlterExtensionStmt.decode)
          |> map(x => AlterExtensionStmt(x)),
          field("AlterFdwStmt", AlterFdwStmt.decode)
          |> map(x => AlterFdwStmt(x)),
          field("AlterForeignServerStmt", AlterForeignServerStmt.decode)
          |> map(x => AlterForeignServerStmt(x)),
          field("AlterFunctionStmt", AlterFunctionStmt.decode)
          |> map(x => AlterFunctionStmt(x)),
          field("AlterObjectDependsStmt", AlterObjectDependsStmt.decode)
          |> map(x => AlterObjectDependsStmt(x)),
          field("AlterObjectSchemaStmt", AlterObjectSchemaStmt.decode)
          |> map(x => AlterObjectSchemaStmt(x)),
          field("AlterOpFamilyStmt", AlterOpFamilyStmt.decode)
          |> map(x => AlterOpFamilyStmt(x)),
          field("AlterOperatorStmt", AlterOperatorStmt.decode)
          |> map(x => AlterOperatorStmt(x)),
          field("AlterOwnerStmt", AlterOwnerStmt.decode)
          |> map(x => AlterOwnerStmt(x)),
          field("AlterPolicyStmt", AlterPolicyStmt.decode)
          |> map(x => AlterPolicyStmt(x)),
          field("AlterPublicationStmt", AlterPublicationStmt.decode)
          |> map(x => AlterPublicationStmt(x)),
          field("AlterRoleSetStmt", AlterRoleSetStmt.decode)
          |> map(x => AlterRoleSetStmt(x)),
          field("AlterRoleStmt", AlterRoleStmt.decode)
          |> map(x => AlterRoleStmt(x)),
          field("AlterSeqStmt", AlterSeqStmt.decode)
          |> map(x => AlterSeqStmt(x)),
          field("AlterSubscriptionStmt", AlterSubscriptionStmt.decode)
          |> map(x => AlterSubscriptionStmt(x)),
          field("AlterSystemStmt", AlterSystemStmt.decode)
          |> map(x => AlterSystemStmt(x)),
          field("AlterTSConfigurationStmt", AlterTSConfigurationStmt.decode)
          |> map(x => AlterTSConfigurationStmt(x)),
          field("AlterTSDictionaryStmt", AlterTSDictionaryStmt.decode)
          |> map(x => AlterTSDictionaryStmt(x)),
          field("AlterTableCmd", AlterTableCmd.decode)
          |> map(x => AlterTableCmd(x)),
          field("AlterTableMoveAllStmt", AlterTableMoveAllStmt.decode)
          |> map(x => AlterTableMoveAllStmt(x)),
          field(
            "AlterTableSpaceOptionsStmt",
            AlterTableSpaceOptionsStmt.decode,
          )
          |> map(x => AlterTableSpaceOptionsStmt(x)),
          field("AlterTableStmt", AlterTableStmt.decode)
          |> map(x => AlterTableStmt(x)),
          field("AlterUserMappingStmt", AlterUserMappingStmt.decode)
          |> map(x => AlterUserMappingStmt(x)),
          field("AlternativeSubPlan", AlternativeSubPlan.decode)
          |> map(x => AlternativeSubPlan(x)),
          field("ArrayCoerceExpr", ArrayCoerceExpr.decode)
          |> map(x => ArrayCoerceExpr(x)),
          field("ArrayExpr", ArrayExpr.decode) |> map(x => ArrayExpr(x)),
          field("BoolExpr", BoolExpr.decode) |> map(x => BoolExpr(x)),
          field("BooleanTest", BooleanTest.decode)
          |> map(x => BooleanTest(x)),
          field("CallContext", CallContext.decode)
          |> map(x => CallContext(x)),
          field("CallStmt", CallStmt.decode) |> map(x => CallStmt(x)),
          field("CaseExpr", CaseExpr.decode) |> map(x => CaseExpr(x)),
          field("CaseTestExpr", CaseTestExpr.decode)
          |> map(x => CaseTestExpr(x)),
          field("CaseWhen", CaseWhen.decode) |> map(x => CaseWhen(x)),
          field("CheckPointStmt", CheckPointStmt.decode)
          |> map(x => CheckPointStmt(x)),
          field("ClosePortalStmt", ClosePortalStmt.decode)
          |> map(x => ClosePortalStmt(x)),
          field("ClusterStmt", ClusterStmt.decode)
          |> map(x => ClusterStmt(x)),
          field("CoalesceExpr", CoalesceExpr.decode)
          |> map(x => CoalesceExpr(x)),
          field("CoerceToDomain", CoerceToDomain.decode)
          |> map(x => CoerceToDomain(x)),
          field("CoerceToDomainValue", CoerceToDomainValue.decode)
          |> map(x => CoerceToDomainValue(x)),
          field("CoerceViaIO", CoerceViaIO.decode)
          |> map(x => CoerceViaIO(x)),
          field("CollateClause", CollateClause.decode)
          |> map(x => CollateClause(x)),
          field("CollateExpr", CollateExpr.decode)
          |> map(x => CollateExpr(x)),
          field("ColumnDef", ColumnDef.decode) |> map(x => ColumnDef(x)),
          field("ColumnRef", ColumnRef.decode) |> map(x => ColumnRef(x)),
          field("CommentStmt", CommentStmt.decode)
          |> map(x => CommentStmt(x)),
          field("CommonTableExpr", CommonTableExpr.decode)
          |> map(x => CommonTableExpr(x)),
          field("CompositeTypeStmt", CompositeTypeStmt.decode)
          |> map(x => CompositeTypeStmt(x)),
          field("Const", Const.decode) |> map(x => Const(x)),
          field("Constraint", Constraint.decode) |> map(x => Constraint(x)),
          field("ConstraintsSetStmt", ConstraintsSetStmt.decode)
          |> map(x => ConstraintsSetStmt(x)),
          field("ConvertRowtypeExpr", ConvertRowtypeExpr.decode)
          |> map(x => ConvertRowtypeExpr(x)),
          field("CopyStmt", CopyStmt.decode) |> map(x => CopyStmt(x)),
          field("CreateAmStmt", CreateAmStmt.decode)
          |> map(x => CreateAmStmt(x)),
          field("CreateCastStmt", CreateCastStmt.decode)
          |> map(x => CreateCastStmt(x)),
          field("CreateConversionStmt", CreateConversionStmt.decode)
          |> map(x => CreateConversionStmt(x)),
          field("CreateDomainStmt", CreateDomainStmt.decode)
          |> map(x => CreateDomainStmt(x)),
          field("CreateEnumStmt", CreateEnumStmt.decode)
          |> map(x => CreateEnumStmt(x)),
          field("CreateEventTrigStmt", CreateEventTrigStmt.decode)
          |> map(x => CreateEventTrigStmt(x)),
          field("CreateExtensionStmt", CreateExtensionStmt.decode)
          |> map(x => CreateExtensionStmt(x)),
          field("CreateFdwStmt", CreateFdwStmt.decode)
          |> map(x => CreateFdwStmt(x)),
          field("CreateForeignServerStmt", CreateForeignServerStmt.decode)
          |> map(x => CreateForeignServerStmt(x)),
          field("CreateForeignTableStmt", CreateForeignTableStmt.decode)
          |> map(x => CreateForeignTableStmt(x)),
          field("CreateFunctionStmt", CreateFunctionStmt.decode)
          |> map(x => CreateFunctionStmt(x)),
          field("CreateOpClassItem", CreateOpClassItem.decode)
          |> map(x => CreateOpClassItem(x)),
          field("CreateOpClassStmt", CreateOpClassStmt.decode)
          |> map(x => CreateOpClassStmt(x)),
          field("CreateOpFamilyStmt", CreateOpFamilyStmt.decode)
          |> map(x => CreateOpFamilyStmt(x)),
          field("CreatePLangStmt", CreatePLangStmt.decode)
          |> map(x => CreatePLangStmt(x)),
          field("CreatePolicyStmt", CreatePolicyStmt.decode)
          |> map(x => CreatePolicyStmt(x)),
          field("CreatePublicationStmt", CreatePublicationStmt.decode)
          |> map(x => CreatePublicationStmt(x)),
          field("CreateRangeStmt", CreateRangeStmt.decode)
          |> map(x => CreateRangeStmt(x)),
          field("CreateRoleStmt", CreateRoleStmt.decode)
          |> map(x => CreateRoleStmt(x)),
          field("CreateSchemaStmt", CreateSchemaStmt.decode)
          |> map(x => CreateSchemaStmt(x)),
          field("CreateSeqStmt", CreateSeqStmt.decode)
          |> map(x => CreateSeqStmt(x)),
          field("CreateStatsStmt", CreateStatsStmt.decode)
          |> map(x => CreateStatsStmt(x)),
          field("CreateStmt", CreateStmt.decode) |> map(x => CreateStmt(x)),
          field("CreateSubscriptionStmt", CreateSubscriptionStmt.decode)
          |> map(x => CreateSubscriptionStmt(x)),
          field("CreateTableAsStmt", CreateTableAsStmt.decode)
          |> map(x => CreateTableAsStmt(x)),
          field("CreateTableSpaceStmt", CreateTableSpaceStmt.decode)
          |> map(x => CreateTableSpaceStmt(x)),
          field("CreateTransformStmt", CreateTransformStmt.decode)
          |> map(x => CreateTransformStmt(x)),
          field("CreateTrigStmt", CreateTrigStmt.decode)
          |> map(x => CreateTrigStmt(x)),
          field("CreateUserMappingStmt", CreateUserMappingStmt.decode)
          |> map(x => CreateUserMappingStmt(x)),
          field("CreatedbStmt", CreatedbStmt.decode)
          |> map(x => CreatedbStmt(x)),
          field("CurrentOfExpr", CurrentOfExpr.decode)
          |> map(x => CurrentOfExpr(x)),
          field("DeallocateStmt", DeallocateStmt.decode)
          |> map(x => DeallocateStmt(x)),
          field("DeclareCursorStmt", DeclareCursorStmt.decode)
          |> map(x => DeclareCursorStmt(x)),
          field("DefElem", DefElem.decode) |> map(x => DefElem(x)),
          field("DefineStmt", DefineStmt.decode) |> map(x => DefineStmt(x)),
          field("DeleteStmt", DeleteStmt.decode) |> map(x => DeleteStmt(x)),
          field("DiscardStmt", DiscardStmt.decode)
          |> map(x => DiscardStmt(x)),
          field("DoStmt", DoStmt.decode) |> map(x => DoStmt(x)),
          field("DropOwnedStmt", DropOwnedStmt.decode)
          |> map(x => DropOwnedStmt(x)),
          field("DropRoleStmt", DropRoleStmt.decode)
          |> map(x => DropRoleStmt(x)),
          field("DropStmt", DropStmt.decode) |> map(x => DropStmt(x)),
          field("DropSubscriptionStmt", DropSubscriptionStmt.decode)
          |> map(x => DropSubscriptionStmt(x)),
          field("DropTableSpaceStmt", DropTableSpaceStmt.decode)
          |> map(x => DropTableSpaceStmt(x)),
          field("DropUserMappingStmt", DropUserMappingStmt.decode)
          |> map(x => DropUserMappingStmt(x)),
          field("DropdbStmt", DropdbStmt.decode) |> map(x => DropdbStmt(x)),
          field("ExecuteStmt", ExecuteStmt.decode)
          |> map(x => ExecuteStmt(x)),
          field("ExplainStmt", ExplainStmt.decode)
          |> map(x => ExplainStmt(x)),
          field("FetchStmt", FetchStmt.decode) |> map(x => FetchStmt(x)),
          field("FieldSelect", FieldSelect.decode)
          |> map(x => FieldSelect(x)),
          field("FieldStore", FieldStore.decode) |> map(x => FieldStore(x)),
          field("FromExpr", FromExpr.decode) |> map(x => FromExpr(x)),
          field("FuncCall", FuncCall.decode) |> map(x => FuncCall(x)),
          field("FuncExpr", FuncExpr.decode) |> map(x => FuncExpr(x)),
          field("FunctionParameter", FunctionParameter.decode)
          |> map(x => FunctionParameter(x)),
          field("GrantRoleStmt", GrantRoleStmt.decode)
          |> map(x => GrantRoleStmt(x)),
          field("GrantStmt", GrantStmt.decode) |> map(x => GrantStmt(x)),
          field("GroupingFunc", GroupingFunc.decode)
          |> map(x => GroupingFunc(x)),
          field("GroupingSet", GroupingSet.decode)
          |> map(x => GroupingSet(x)),
          field("ImportForeignSchemaStmt", ImportForeignSchemaStmt.decode)
          |> map(x => ImportForeignSchemaStmt(x)),
          field("IndexElem", IndexElem.decode) |> map(x => IndexElem(x)),
          field("IndexStmt", IndexStmt.decode) |> map(x => IndexStmt(x)),
          field("InferClause", InferClause.decode)
          |> map(x => InferClause(x)),
          field("InferenceElem", InferenceElem.decode)
          |> map(x => InferenceElem(x)),
          field("InlineCodeBlock", InlineCodeBlock.decode)
          |> map(x => InlineCodeBlock(x)),
          field("InsertStmt", InsertStmt.decode) |> map(x => InsertStmt(x)),
          field("IntoClause", IntoClause.decode) |> map(x => IntoClause(x)),
          field("JoinExpr", JoinExpr.decode) |> map(x => JoinExpr(x)),
          field("ListenStmt", ListenStmt.decode) |> map(x => ListenStmt(x)),
          field("LoadStmt", LoadStmt.decode) |> map(x => LoadStmt(x)),
          field("LockStmt", LockStmt.decode) |> map(x => LockStmt(x)),
          field("LockingClause", LockingClause.decode)
          |> map(x => LockingClause(x)),
          field("MinMaxExpr", MinMaxExpr.decode) |> map(x => MinMaxExpr(x)),
          field("MultiAssignRef", MultiAssignRef.decode)
          |> map(x => MultiAssignRef(x)),
          field("NamedArgExpr", NamedArgExpr.decode)
          |> map(x => NamedArgExpr(x)),
          field("NextValueExpr", NextValueExpr.decode)
          |> map(x => NextValueExpr(x)),
          field("NotifyStmt", NotifyStmt.decode) |> map(x => NotifyStmt(x)),
          field("NullTest", NullTest.decode) |> map(x => NullTest(x)),
          field("ObjectWithArgs", ObjectWithArgs.decode)
          |> map(x => ObjectWithArgs(x)),
          field("OnConflictClause", OnConflictClause.decode)
          |> map(x => OnConflictClause(x)),
          field("OnConflictExpr", OnConflictExpr.decode)
          |> map(x => OnConflictExpr(x)),
          field("OpExpr", OpExpr.decode) |> map(x => OpExpr(x)),
          field("Param", Param.decode) |> map(x => Param(x)),
          field("ParamRef", ParamRef.decode) |> map(x => ParamRef(x)),
          field("PartitionBoundSpec", PartitionBoundSpec.decode)
          |> map(x => PartitionBoundSpec(x)),
          field("PartitionCmd", PartitionCmd.decode)
          |> map(x => PartitionCmd(x)),
          field("PartitionElem", PartitionElem.decode)
          |> map(x => PartitionElem(x)),
          field("PartitionRangeDatum", PartitionRangeDatum.decode)
          |> map(x => PartitionRangeDatum(x)),
          field("PartitionSpec", PartitionSpec.decode)
          |> map(x => PartitionSpec(x)),
          field("PrepareStmt", PrepareStmt.decode)
          |> map(x => PrepareStmt(x)),
          field("RangeFunction", RangeFunction.decode)
          |> map(x => RangeFunction(x)),
          field("RangeSubselect", RangeSubselect.decode)
          |> map(x => RangeSubselect(x)),
          field("RangeTableFunc", RangeTableFunc.decode)
          |> map(x => RangeTableFunc(x)),
          field("RangeTableFuncCol", RangeTableFuncCol.decode)
          |> map(x => RangeTableFuncCol(x)),
          field("RangeTableSample", RangeTableSample.decode)
          |> map(x => RangeTableSample(x)),
          field("RangeTblRef", RangeTblRef.decode)
          |> map(x => RangeTblRef(x)),
          field("RangeVar", RangeVar.decode) |> map(x => RangeVar(x)),
          field("RawStmt", RawStmt.decode) |> map(x => RawStmt(x)),
          field("ReassignOwnedStmt", ReassignOwnedStmt.decode)
          |> map(x => ReassignOwnedStmt(x)),
          field("RefreshMatViewStmt", RefreshMatViewStmt.decode)
          |> map(x => RefreshMatViewStmt(x)),
          field("ReindexStmt", ReindexStmt.decode)
          |> map(x => ReindexStmt(x)),
          field("RenameStmt", RenameStmt.decode) |> map(x => RenameStmt(x)),
          field("ReplicaIdentityStmt", ReplicaIdentityStmt.decode)
          |> map(x => ReplicaIdentityStmt(x)),
          field("ResTarget", ResTarget.decode) |> map(x => ResTarget(x)),
          field("RoleSpec", RoleSpec.decode) |> map(x => RoleSpec(x)),
          field("RowCompareExpr", RowCompareExpr.decode)
          |> map(x => RowCompareExpr(x)),
          field("RowExpr", RowExpr.decode) |> map(x => RowExpr(x)),
          field("RowMarkClause", RowMarkClause.decode)
          |> map(x => RowMarkClause(x)),
          field("RuleStmt", RuleStmt.decode) |> map(x => RuleStmt(x)),
          field("SQLValueFunction", SQLValueFunction.decode)
          |> map(x => SQLValueFunction(x)),
          field("ScalarArrayOpExpr", ScalarArrayOpExpr.decode)
          |> map(x => ScalarArrayOpExpr(x)),
          field("SecLabelStmt", SecLabelStmt.decode)
          |> map(x => SecLabelStmt(x)),
          field("SelectStmt", SelectStmt.decode) |> map(x => SelectStmt(x)),
          field("SetOperationStmt", SetOperationStmt.decode)
          |> map(x => SetOperationStmt(x)),
          field("SetToDefault", SetToDefault.decode)
          |> map(x => SetToDefault(x)),
          field("SortBy", SortBy.decode) |> map(x => SortBy(x)),
          field("SortGroupClause", SortGroupClause.decode)
          |> map(x => SortGroupClause(x)),
          field("SubLink", SubLink.decode) |> map(x => SubLink(x)),
          field("SubscriptingRef", SubscriptingRef.decode)
          |> map(x => SubscriptingRef(x)),
          field("TableFunc", TableFunc.decode) |> map(x => TableFunc(x)),
          field("TableLikeClause", TableLikeClause.decode)
          |> map(x => TableLikeClause(x)),
          field("TableSampleClause", TableSampleClause.decode)
          |> map(x => TableSampleClause(x)),
          field("TargetEntry", TargetEntry.decode)
          |> map(x => TargetEntry(x)),
          field("TransactionStmt", TransactionStmt.decode)
          |> map(x => TransactionStmt(x)),
          field("TypeCast", TypeCast.decode) |> map(x => TypeCast(x)),
          field("TypeName", TypeName.decode) |> map(x => TypeName(x)),
          field("UnlistenStmt", UnlistenStmt.decode)
          |> map(x => UnlistenStmt(x)),
          field("UpdateStmt", UpdateStmt.decode) |> map(x => UpdateStmt(x)),
          field("VacuumRelation", VacuumRelation.decode)
          |> map(x => VacuumRelation(x)),
          field("VacuumStmt", VacuumStmt.decode) |> map(x => VacuumStmt(x)),
          field("Value", Value.decode) |> map(x => Value(x)),
          field("Var", Var.decode) |> map(x => Var(x)),
          field("VariableSetStmt", VariableSetStmt.decode)
          |> map(x => VariableSetStmt(x)),
          field("VariableShowStmt", VariableShowStmt.decode)
          |> map(x => VariableShowStmt(x)),
          field("ViewStmt", ViewStmt.decode) |> map(x => ViewStmt(x)),
          field("WindowClause", WindowClause.decode)
          |> map(x => WindowClause(x)),
          field("WindowDef", WindowDef.decode) |> map(x => WindowDef(x)),
          field("WindowFunc", WindowFunc.decode) |> map(x => WindowFunc(x)),
          field("WithCheckOption", WithCheckOption.decode)
          |> map(x => WithCheckOption(x)),
          field("WithClause", WithClause.decode) |> map(x => WithClause(x)),
          field("XmlExpr", XmlExpr.decode) |> map(x => XmlExpr(x)),
          field("XmlSerialize", XmlSerialize.decode)
          |> map(x => XmlSerialize(x)),
        ],
      )
    );

  // | A_Expr(x) => ("A_Expr", x |> A_Expr.encode)
  // | A_Star => ("A_Star", null)

  let encode = stmt =>
    Encode.(
      obj([
        switch (stmt) {
        | A_ArrayExpr(x) => ("A_ArrayExpr", x |> A_ArrayExpr.encode)
        | A_Const(x) => ("A_Const", x |> A_Const.encode)
        | A_Expr(x) => ("A_Expr", x |> A_Expr.encode)
        | A_Indices(x) => ("A_Indices", x |> A_Indices.encode)
        | A_Indirection(x) => ("A_Indirection", x |> A_Indirection.encode)
        | A_Star => ("A_Star", null)
        | AccessPriv(x) => ("AccessPriv", x |> AccessPriv.encode)
        | Aggref(x) => ("Aggref", x |> Aggref.encode)
        | Alias(x) => ("Alias", x |> Alias.encode)
        | AlterCollationStmt(x) => (
            "AlterCollationStmt",
            x |> AlterCollationStmt.encode,
          )
        | AlterDatabaseSetStmt(x) => (
            "AlterDatabaseSetStmt",
            x |> AlterDatabaseSetStmt.encode,
          )
        | AlterDatabaseStmt(x) => (
            "AlterDatabaseStmt",
            x |> AlterDatabaseStmt.encode,
          )
        | AlterDefaultPrivilegesStmt(x) => (
            "AlterDefaultPrivilegesStmt",
            x |> AlterDefaultPrivilegesStmt.encode,
          )
        | AlterDomainStmt(x) => (
            "AlterDomainStmt",
            x |> AlterDomainStmt.encode,
          )
        | AlterEnumStmt(x) => ("AlterEnumStmt", x |> AlterEnumStmt.encode)
        | AlterEventTrigStmt(x) => (
            "AlterEventTrigStmt",
            x |> AlterEventTrigStmt.encode,
          )
        | AlterExtensionContentsStmt(x) => (
            "AlterExtensionContentsStmt",
            x |> AlterExtensionContentsStmt.encode,
          )
        | AlterExtensionStmt(x) => (
            "AlterExtensionStmt",
            x |> AlterExtensionStmt.encode,
          )
        | AlterFdwStmt(x) => ("AlterFdwStmt", x |> AlterFdwStmt.encode)
        | AlterForeignServerStmt(x) => (
            "AlterForeignServerStmt",
            x |> AlterForeignServerStmt.encode,
          )
        | AlterFunctionStmt(x) => (
            "AlterFunctionStmt",
            x |> AlterFunctionStmt.encode,
          )
        | AlterObjectDependsStmt(x) => (
            "AlterObjectDependsStmt",
            x |> AlterObjectDependsStmt.encode,
          )
        | AlterObjectSchemaStmt(x) => (
            "AlterObjectSchemaStmt",
            x |> AlterObjectSchemaStmt.encode,
          )
        | AlterOpFamilyStmt(x) => (
            "AlterOpFamilyStmt",
            x |> AlterOpFamilyStmt.encode,
          )
        | AlterOperatorStmt(x) => (
            "AlterOperatorStmt",
            x |> AlterOperatorStmt.encode,
          )
        | AlterOwnerStmt(x) => ("AlterOwnerStmt", x |> AlterOwnerStmt.encode)
        | AlterPolicyStmt(x) => (
            "AlterPolicyStmt",
            x |> AlterPolicyStmt.encode,
          )
        | AlterPublicationStmt(x) => (
            "AlterPublicationStmt",
            x |> AlterPublicationStmt.encode,
          )
        | AlterRoleSetStmt(x) => (
            "AlterRoleSetStmt",
            x |> AlterRoleSetStmt.encode,
          )
        | AlterRoleStmt(x) => ("AlterRoleStmt", x |> AlterRoleStmt.encode)
        | AlterSeqStmt(x) => ("AlterSeqStmt", x |> AlterSeqStmt.encode)
        | AlterSubscriptionStmt(x) => (
            "AlterSubscriptionStmt",
            x |> AlterSubscriptionStmt.encode,
          )
        | AlterSystemStmt(x) => (
            "AlterSystemStmt",
            x |> AlterSystemStmt.encode,
          )
        | AlterTSConfigurationStmt(x) => (
            "AlterTSConfigurationStmt",
            x |> AlterTSConfigurationStmt.encode,
          )
        | AlterTSDictionaryStmt(x) => (
            "AlterTSDictionaryStmt",
            x |> AlterTSDictionaryStmt.encode,
          )
        | AlterTableCmd(x) => ("AlterTableCmd", x |> AlterTableCmd.encode)
        | AlterTableMoveAllStmt(x) => (
            "AlterTableMoveAllStmt",
            x |> AlterTableMoveAllStmt.encode,
          )
        | AlterTableSpaceOptionsStmt(x) => (
            "AlterTableSpaceOptionsStmt",
            x |> AlterTableSpaceOptionsStmt.encode,
          )
        | AlterTableStmt(x) => ("AlterTableStmt", x |> AlterTableStmt.encode)
        | AlterUserMappingStmt(x) => (
            "AlterUserMappingStmt",
            x |> AlterUserMappingStmt.encode,
          )
        | AlternativeSubPlan(x) => (
            "AlternativeSubPlan",
            x |> AlternativeSubPlan.encode,
          )
        | ArrayCoerceExpr(x) => (
            "ArrayCoerceExpr",
            x |> ArrayCoerceExpr.encode,
          )
        | ArrayExpr(x) => ("ArrayExpr", x |> ArrayExpr.encode)
        | BoolExpr(x) => ("BoolExpr", x |> BoolExpr.encode)
        | BooleanTest(x) => ("BooleanTest", x |> BooleanTest.encode)
        | CallContext(x) => ("CallContext", x |> CallContext.encode)
        | CallStmt(x) => ("CallStmt", x |> CallStmt.encode)
        | CaseExpr(x) => ("CaseExpr", x |> CaseExpr.encode)
        | CaseTestExpr(x) => ("CaseTestExpr", x |> CaseTestExpr.encode)
        | CaseWhen(x) => ("CaseWhen", x |> CaseWhen.encode)
        | CheckPointStmt(x) => ("CheckPointStmt", x |> CheckPointStmt.encode)
        | ClosePortalStmt(x) => (
            "ClosePortalStmt",
            x |> ClosePortalStmt.encode,
          )
        | ClusterStmt(x) => ("ClusterStmt", x |> ClusterStmt.encode)
        | CoalesceExpr(x) => ("CoalesceExpr", x |> CoalesceExpr.encode)
        | CoerceToDomain(x) => ("CoerceToDomain", x |> CoerceToDomain.encode)
        | CoerceToDomainValue(x) => (
            "CoerceToDomainValue",
            x |> CoerceToDomainValue.encode,
          )
        | CoerceViaIO(x) => ("CoerceViaIO", x |> CoerceViaIO.encode)
        | CollateClause(x) => ("CollateClause", x |> CollateClause.encode)
        | CollateExpr(x) => ("CollateExpr", x |> CollateExpr.encode)
        | ColumnDef(x) => ("ColumnDef", x |> ColumnDef.encode)
        | ColumnRef(x) => ("ColumnRef", x |> ColumnRef.encode)
        | CommentStmt(x) => ("CommentStmt", x |> CommentStmt.encode)
        | CommonTableExpr(x) => (
            "CommonTableExpr",
            x |> CommonTableExpr.encode,
          )
        | CompositeTypeStmt(x) => (
            "CompositeTypeStmt",
            x |> CompositeTypeStmt.encode,
          )
        | Const(x) => ("Const", x |> Const.encode)
        | Constraint(x) => ("Constraint", x |> Constraint.encode)
        | ConstraintsSetStmt(x) => (
            "ConstraintsSetStmt",
            x |> ConstraintsSetStmt.encode,
          )
        | ConvertRowtypeExpr(x) => (
            "ConvertRowtypeExpr",
            x |> ConvertRowtypeExpr.encode,
          )
        | CopyStmt(x) => ("CopyStmt", x |> CopyStmt.encode)
        | CreateAmStmt(x) => ("CreateAmStmt", x |> CreateAmStmt.encode)
        | CreateCastStmt(x) => ("CreateCastStmt", x |> CreateCastStmt.encode)
        | CreateConversionStmt(x) => (
            "CreateConversionStmt",
            x |> CreateConversionStmt.encode,
          )
        | CreateDomainStmt(x) => (
            "CreateDomainStmt",
            x |> CreateDomainStmt.encode,
          )
        | CreateEnumStmt(x) => ("CreateEnumStmt", x |> CreateEnumStmt.encode)
        | CreateEventTrigStmt(x) => (
            "CreateEventTrigStmt",
            x |> CreateEventTrigStmt.encode,
          )
        | CreateExtensionStmt(x) => (
            "CreateExtensionStmt",
            x |> CreateExtensionStmt.encode,
          )
        | CreateFdwStmt(x) => ("CreateFdwStmt", x |> CreateFdwStmt.encode)
        | CreateForeignServerStmt(x) => (
            "CreateForeignServerStmt",
            x |> CreateForeignServerStmt.encode,
          )
        | CreateForeignTableStmt(x) => (
            "CreateForeignTableStmt",
            x |> CreateForeignTableStmt.encode,
          )
        | CreateFunctionStmt(x) => (
            "CreateFunctionStmt",
            x |> CreateFunctionStmt.encode,
          )
        | CreateOpClassItem(x) => (
            "CreateOpClassItem",
            x |> CreateOpClassItem.encode,
          )
        | CreateOpClassStmt(x) => (
            "CreateOpClassStmt",
            x |> CreateOpClassStmt.encode,
          )
        | CreateOpFamilyStmt(x) => (
            "CreateOpFamilyStmt",
            x |> CreateOpFamilyStmt.encode,
          )
        | CreatePLangStmt(x) => (
            "CreatePLangStmt",
            x |> CreatePLangStmt.encode,
          )
        | CreatePolicyStmt(x) => (
            "CreatePolicyStmt",
            x |> CreatePolicyStmt.encode,
          )
        | CreatePublicationStmt(x) => (
            "CreatePublicationStmt",
            x |> CreatePublicationStmt.encode,
          )
        | CreateRangeStmt(x) => (
            "CreateRangeStmt",
            x |> CreateRangeStmt.encode,
          )
        | CreateRoleStmt(x) => ("CreateRoleStmt", x |> CreateRoleStmt.encode)
        | CreateSchemaStmt(x) => (
            "CreateSchemaStmt",
            x |> CreateSchemaStmt.encode,
          )
        | CreateSeqStmt(x) => ("CreateSeqStmt", x |> CreateSeqStmt.encode)
        | CreateStatsStmt(x) => (
            "CreateStatsStmt",
            x |> CreateStatsStmt.encode,
          )
        | CreateStmt(x) => ("CreateStmt", x |> CreateStmt.encode)
        | CreateSubscriptionStmt(x) => (
            "CreateSubscriptionStmt",
            x |> CreateSubscriptionStmt.encode,
          )
        | CreateTableAsStmt(x) => (
            "CreateTableAsStmt",
            x |> CreateTableAsStmt.encode,
          )
        | CreateTableSpaceStmt(x) => (
            "CreateTableSpaceStmt",
            x |> CreateTableSpaceStmt.encode,
          )
        | CreateTransformStmt(x) => (
            "CreateTransformStmt",
            x |> CreateTransformStmt.encode,
          )
        | CreateTrigStmt(x) => ("CreateTrigStmt", x |> CreateTrigStmt.encode)
        | CreateUserMappingStmt(x) => (
            "CreateUserMappingStmt",
            x |> CreateUserMappingStmt.encode,
          )
        | CreatedbStmt(x) => ("CreatedbStmt", x |> CreatedbStmt.encode)
        | CurrentOfExpr(x) => ("CurrentOfExpr", x |> CurrentOfExpr.encode)
        | DeallocateStmt(x) => ("DeallocateStmt", x |> DeallocateStmt.encode)
        | DeclareCursorStmt(x) => (
            "DeclareCursorStmt",
            x |> DeclareCursorStmt.encode,
          )
        | DefElem(x) => ("DefElem", x |> DefElem.encode)
        | DefineStmt(x) => ("DefineStmt", x |> DefineStmt.encode)
        | DeleteStmt(x) => ("DeleteStmt", x |> DeleteStmt.encode)
        | DiscardStmt(x) => ("DiscardStmt", x |> DiscardStmt.encode)
        | DoStmt(x) => ("DoStmt", x |> DoStmt.encode)
        | DropOwnedStmt(x) => ("DropOwnedStmt", x |> DropOwnedStmt.encode)
        | DropRoleStmt(x) => ("DropRoleStmt", x |> DropRoleStmt.encode)
        | DropStmt(x) => ("DropStmt", x |> DropStmt.encode)
        | DropSubscriptionStmt(x) => (
            "DropSubscriptionStmt",
            x |> DropSubscriptionStmt.encode,
          )
        | DropTableSpaceStmt(x) => (
            "DropTableSpaceStmt",
            x |> DropTableSpaceStmt.encode,
          )
        | DropUserMappingStmt(x) => (
            "DropUserMappingStmt",
            x |> DropUserMappingStmt.encode,
          )
        | DropdbStmt(x) => ("DropdbStmt", x |> DropdbStmt.encode)
        | ExecuteStmt(x) => ("ExecuteStmt", x |> ExecuteStmt.encode)
        | ExplainStmt(x) => ("ExplainStmt", x |> ExplainStmt.encode)
        | FetchStmt(x) => ("FetchStmt", x |> FetchStmt.encode)
        | FieldSelect(x) => ("FieldSelect", x |> FieldSelect.encode)
        | FieldStore(x) => ("FieldStore", x |> FieldStore.encode)
        | FromExpr(x) => ("FromExpr", x |> FromExpr.encode)
        | FuncCall(x) => ("FuncCall", x |> FuncCall.encode)
        | FuncExpr(x) => ("FuncExpr", x |> FuncExpr.encode)
        | FunctionParameter(x) => (
            "FunctionParameter",
            x |> FunctionParameter.encode,
          )
        | GrantRoleStmt(x) => ("GrantRoleStmt", x |> GrantRoleStmt.encode)
        | GrantStmt(x) => ("GrantStmt", x |> GrantStmt.encode)
        | GroupingFunc(x) => ("GroupingFunc", x |> GroupingFunc.encode)
        | GroupingSet(x) => ("GroupingSet", x |> GroupingSet.encode)
        | ImportForeignSchemaStmt(x) => (
            "ImportForeignSchemaStmt",
            x |> ImportForeignSchemaStmt.encode,
          )
        | IndexElem(x) => ("IndexElem", x |> IndexElem.encode)
        | IndexStmt(x) => ("IndexStmt", x |> IndexStmt.encode)
        | InferClause(x) => ("InferClause", x |> InferClause.encode)
        | InferenceElem(x) => ("InferenceElem", x |> InferenceElem.encode)
        | InlineCodeBlock(x) => (
            "InlineCodeBlock",
            x |> InlineCodeBlock.encode,
          )
        | InsertStmt(x) => ("InsertStmt", x |> InsertStmt.encode)
        | IntoClause(x) => ("IntoClause", x |> IntoClause.encode)
        | JoinExpr(x) => ("JoinExpr", x |> JoinExpr.encode)
        | ListenStmt(x) => ("ListenStmt", x |> ListenStmt.encode)
        | LoadStmt(x) => ("LoadStmt", x |> LoadStmt.encode)
        | LockStmt(x) => ("LockStmt", x |> LockStmt.encode)
        | LockingClause(x) => ("LockingClause", x |> LockingClause.encode)
        | MinMaxExpr(x) => ("MinMaxExpr", x |> MinMaxExpr.encode)
        | MultiAssignRef(x) => ("MultiAssignRef", x |> MultiAssignRef.encode)
        | NamedArgExpr(x) => ("NamedArgExpr", x |> NamedArgExpr.encode)
        | NextValueExpr(x) => ("NextValueExpr", x |> NextValueExpr.encode)
        | NotifyStmt(x) => ("NotifyStmt", x |> NotifyStmt.encode)
        | NullTest(x) => ("NullTest", x |> NullTest.encode)
        | ObjectWithArgs(x) => ("ObjectWithArgs", x |> ObjectWithArgs.encode)
        | OnConflictClause(x) => (
            "OnConflictClause",
            x |> OnConflictClause.encode,
          )
        | OnConflictExpr(x) => ("OnConflictExpr", x |> OnConflictExpr.encode)
        | OpExpr(x) => ("OpExpr", x |> OpExpr.encode)
        | Param(x) => ("Param", x |> Param.encode)
        | ParamRef(x) => ("ParamRef", x |> ParamRef.encode)
        | PartitionBoundSpec(x) => (
            "PartitionBoundSpec",
            x |> PartitionBoundSpec.encode,
          )
        | PartitionCmd(x) => ("PartitionCmd", x |> PartitionCmd.encode)
        | PartitionElem(x) => ("PartitionElem", x |> PartitionElem.encode)
        | PartitionRangeDatum(x) => (
            "PartitionRangeDatum",
            x |> PartitionRangeDatum.encode,
          )
        | PartitionSpec(x) => ("PartitionSpec", x |> PartitionSpec.encode)
        | PrepareStmt(x) => ("PrepareStmt", x |> PrepareStmt.encode)
        | RangeFunction(x) => ("RangeFunction", x |> RangeFunction.encode)
        | RangeSubselect(x) => ("RangeSubselect", x |> RangeSubselect.encode)
        | RangeTableFunc(x) => ("RangeTableFunc", x |> RangeTableFunc.encode)
        | RangeTableFuncCol(x) => (
            "RangeTableFuncCol",
            x |> RangeTableFuncCol.encode,
          )
        | RangeTableSample(x) => (
            "RangeTableSample",
            x |> RangeTableSample.encode,
          )
        | RangeTblRef(x) => ("RangeTblRef", x |> RangeTblRef.encode)
        | RangeVar(x) => ("RangeVar", x |> RangeVar.encode)
        | RawStmt(x) => ("RawStmt", x |> RawStmt.encode)
        | ReassignOwnedStmt(x) => (
            "ReassignOwnedStmt",
            x |> ReassignOwnedStmt.encode,
          )
        | RefreshMatViewStmt(x) => (
            "RefreshMatViewStmt",
            x |> RefreshMatViewStmt.encode,
          )
        | ReindexStmt(x) => ("ReindexStmt", x |> ReindexStmt.encode)
        | RenameStmt(x) => ("RenameStmt", x |> RenameStmt.encode)
        | ReplicaIdentityStmt(x) => (
            "ReplicaIdentityStmt",
            x |> ReplicaIdentityStmt.encode,
          )
        | ResTarget(x) => ("ResTarget", x |> ResTarget.encode)
        | RoleSpec(x) => ("RoleSpec", x |> RoleSpec.encode)
        | RowCompareExpr(x) => ("RowCompareExpr", x |> RowCompareExpr.encode)
        | RowExpr(x) => ("RowExpr", x |> RowExpr.encode)
        | RowMarkClause(x) => ("RowMarkClause", x |> RowMarkClause.encode)
        | RuleStmt(x) => ("RuleStmt", x |> RuleStmt.encode)
        | SQLValueFunction(x) => (
            "SQLValueFunction",
            x |> SQLValueFunction.encode,
          )
        | ScalarArrayOpExpr(x) => (
            "ScalarArrayOpExpr",
            x |> ScalarArrayOpExpr.encode,
          )
        | SecLabelStmt(x) => ("SecLabelStmt", x |> SecLabelStmt.encode)
        | SelectStmt(x) => ("SelectStmt", x |> SelectStmt.encode)
        | SetOperationStmt(x) => (
            "SetOperationStmt",
            x |> SetOperationStmt.encode,
          )
        | SetToDefault(x) => ("SetToDefault", x |> SetToDefault.encode)
        | SortBy(x) => ("SortBy", x |> SortBy.encode)
        | SortGroupClause(x) => (
            "SortGroupClause",
            x |> SortGroupClause.encode,
          )
        | SubLink(x) => ("SubLink", x |> SubLink.encode)
        | SubscriptingRef(x) => (
            "SubscriptingRef",
            x |> SubscriptingRef.encode,
          )
        | TableFunc(x) => ("TableFunc", x |> TableFunc.encode)
        | TableLikeClause(x) => (
            "TableLikeClause",
            x |> TableLikeClause.encode,
          )
        | TableSampleClause(x) => (
            "TableSampleClause",
            x |> TableSampleClause.encode,
          )
        | TargetEntry(x) => ("TargetEntry", x |> TargetEntry.encode)
        | TransactionStmt(x) => (
            "TransactionStmt",
            x |> TransactionStmt.encode,
          )

        // TODO: Why don't these work?
        // | TriggerTransition(x) => (
        //     "TriggerTransition",
        //     x |> TriggerTransition.encode,
        //   )
        // | TruncateStmt(x) => ("TruncateStmt", x |> TruncateStmt.encode)

        | TypeCast(x) => ("TypeCast", x |> TypeCast.encode)
        | TypeName(x) => ("TypeName", x |> TypeName.encode)
        | UnlistenStmt(x) => ("UnlistenStmt", x |> UnlistenStmt.encode)
        | UpdateStmt(x) => ("UpdateStmt", x |> UpdateStmt.encode)
        | VacuumRelation(x) => ("VacuumRelation", x |> VacuumRelation.encode)
        | VacuumStmt(x) => ("VacuumStmt", x |> VacuumStmt.encode)
        | Value(x) => ("Value", x |> Value.encode)
        | Var(x) => ("Var", x |> Var.encode)
        | VariableSetStmt(x) => (
            "VariableSetStmt",
            x |> VariableSetStmt.encode,
          )
        | VariableShowStmt(x) => (
            "VariableShowStmt",
            x |> VariableShowStmt.encode,
          )
        | ViewStmt(x) => ("ViewStmt", x |> ViewStmt.encode)
        | WindowClause(x) => ("WindowClause", x |> WindowClause.encode)
        | WindowDef(x) => ("WindowDef", x |> WindowDef.encode)
        | WindowFunc(x) => ("WindowFunc", x |> WindowFunc.encode)
        | WithCheckOption(x) => (
            "WithCheckOption",
            x |> WithCheckOption.encode,
          )
        | WithClause(x) => ("WithClause", x |> WithClause.encode)
        | XmlExpr(x) => ("XmlExpr", x |> XmlExpr.encode)
        | XmlSerialize(x) => ("XmlSerialize", x |> XmlSerialize.encode)
        },
      ])
    );
};
