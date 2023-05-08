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

and Stmt: AstType = {
  type t =
    | A_Expr(A_Expr.t)
    | A_Star;

  let decode =
    DecodeParsed.(
      oneOf(
        field("A_Expr", A_Expr.decode) |> map(x => A_Expr(x)),
        [field("A_Star", okJson) |> map(_ => A_Star)],
      )
    );

  let encode = stmt =>
    Encode.(
      obj([
        switch (stmt) {
        | A_Expr(x) => ("A_Expr", x |> A_Expr.encode)
        | A_Star => ("A_Star", null)
        },
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
};
