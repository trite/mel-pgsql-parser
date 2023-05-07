module.exports = {
  'nodes/parsenodes': {
    Query: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          comment: ''
        },
        {
          name: 'commandType',
          c_type: 'CmdType',
          comment: '/* select|insert|update|delete|utility */'
        },
        {
          comment: ''
        },
        {
          name: 'querySource',
          c_type: 'QuerySource',
          comment: '/* where did I come from? */'
        },
        {
          comment: ''
        },
        {
          name: 'queryId',
          c_type: 'uint64',
          comment: '/* query identifier (can be set by plugins) */'
        },
        {
          comment: ''
        },
        {
          name: 'canSetTag',
          c_type: 'bool',
          comment: '/* do I set the command result tag? */'
        },
        {
          comment: ''
        },
        {
          name: 'utilityStmt',
          c_type: 'Node*',
          comment: '/* non-null if commandType == CMD_UTILITY */'
        },
        {
          comment: ''
        },
        {
          name: 'resultRelation',
          c_type: 'int',
          comment:
            '/* rtable index of target relation for\n\t\t\t\t\t\t\t\t * INSERT/UPDATE/DELETE; 0 for SELECT */\n'
        },
        {
          comment: ''
        },
        {
          name: 'hasAggs',
          c_type: 'bool',
          comment: '/* has aggregates in tlist or havingQual */'
        },
        {
          name: 'hasWindowFuncs',
          c_type: 'bool',
          comment: '/* has window functions in tlist */'
        },
        {
          name: 'hasTargetSRFs',
          c_type: 'bool',
          comment: '/* has set-returning functions in tlist */'
        },
        {
          name: 'hasSubLinks',
          c_type: 'bool',
          comment: '/* has subquery SubLink */'
        },
        {
          name: 'hasDistinctOn',
          c_type: 'bool',
          comment: '/* distinctClause is from DISTINCT ON */'
        },
        {
          name: 'hasRecursive',
          c_type: 'bool',
          comment: '/* WITH RECURSIVE was specified */'
        },
        {
          name: 'hasModifyingCTE',
          c_type: 'bool',
          comment: '/* has INSERT/UPDATE/DELETE in WITH */'
        },
        {
          name: 'hasForUpdate',
          c_type: 'bool',
          comment: '/* FOR [KEY] UPDATE/SHARE was specified */'
        },
        {
          name: 'hasRowSecurity',
          c_type: 'bool',
          comment: '/* rewriter has applied some RLS policy */'
        },
        {
          comment: ''
        },
        {
          name: 'cteList',
          c_type: 'List*',
          comment: "/* WITH list (of CommonTableExpr's) */"
        },
        {
          comment: ''
        },
        {
          name: 'rtable',
          c_type: 'List*',
          comment: '/* list of range table entries */'
        },
        {
          name: 'jointree',
          c_type: 'FromExpr*',
          comment: '/* table join tree (FROM and WHERE clauses) */'
        },
        {
          comment: ''
        },
        {
          name: 'targetList',
          c_type: 'List*',
          comment: '/* target list (of TargetEntry) */'
        },
        {
          comment: ''
        },
        {
          name: 'override',
          c_type: 'OverridingKind',
          comment: '/* OVERRIDING clause */'
        },
        {
          comment: ''
        },
        {
          name: 'onConflict',
          c_type: 'OnConflictExpr*',
          comment: '/* ON CONFLICT DO [NOTHING | UPDATE] */'
        },
        {
          comment: ''
        },
        {
          name: 'returningList',
          c_type: 'List*',
          comment: '/* return-values list (of TargetEntry) */'
        },
        {
          comment: ''
        },
        {
          name: 'groupClause',
          c_type: 'List*',
          comment: "/* a list of SortGroupClause's */"
        },
        {
          comment: ''
        },
        {
          name: 'groupingSets',
          c_type: 'List*',
          comment: "/* a list of GroupingSet's if present */"
        },
        {
          comment: ''
        },
        {
          name: 'havingQual',
          c_type: 'Node*',
          comment: '/* qualifications applied to groups */'
        },
        {
          comment: ''
        },
        {
          name: 'windowClause',
          c_type: 'List*',
          comment: "/* a list of WindowClause's */"
        },
        {
          comment: ''
        },
        {
          name: 'distinctClause',
          c_type: 'List*',
          comment: "/* a list of SortGroupClause's */"
        },
        {
          comment: ''
        },
        {
          name: 'sortClause',
          c_type: 'List*',
          comment: "/* a list of SortGroupClause's */"
        },
        {
          comment: ''
        },
        {
          name: 'limitOffset',
          c_type: 'Node*',
          comment: '/* # of result tuples to skip (int8 expr) */'
        },
        {
          name: 'limitCount',
          c_type: 'Node*',
          comment: '/* # of result tuples to return (int8 expr) */'
        },
        {
          name: 'limitOption',
          c_type: 'LimitOption',
          comment: '/* limit type */'
        },
        {
          comment: ''
        },
        {
          name: 'rowMarks',
          c_type: 'List*',
          comment: "/* a list of RowMarkClause's */"
        },
        {
          comment: ''
        },
        {
          name: 'setOperations',
          c_type: 'Node*',
          comment:
            '/* set-operation tree if this is top level of\n\t\t\t\t\t\t\t\t * a UNION/INTERSECT/EXCEPT query */\n'
        },
        {
          comment: ''
        },
        {
          name: 'constraintDeps',
          c_type: 'List*',
          comment:
            '/* a list of pg_constraint OIDs that the query\n\t\t\t\t\t\t\t\t * depends on to be semantically valid */\n'
        },
        {
          comment: ''
        },
        {
          name: 'withCheckOptions',
          c_type: 'List*',
          comment:
            "/* a list of WithCheckOption's (added\n\t\t\t\t\t\t\t\t\t * during rewrite) */\n"
        },
        {
          comment: ''
        },
        {
          comment:
            '\t/*\n\t * The following two fields identify the portion of the source text string\n\t * containing this query.  They are typically only populated in top-level\n\t * Queries, not in sub-queries.  When not set, they might both be zero, or\n\t * both be -1 meaning "unknown".\n\t */\n'
        },
        {
          name: 'stmt_location',
          c_type: 'int',
          comment: '/* start location, or -1 if unknown */'
        },
        {
          name: 'stmt_len',
          c_type: 'int',
          comment: '/* length in bytes; 0 means "rest of string" */'
        }
      ],
      comment:
        '/*\n * Query -\n *\t  Parse analysis turns all statements into a Query tree\n *\t  for further processing by the rewriter and planner.\n *\n *\t  Utility statements (i.e. non-optimizable statements) have the\n *\t  utilityStmt field set, and the rest of the Query is mostly dummy.\n *\n *\t  Planning converts a Query tree into a Plan tree headed by a PlannedStmt\n *\t  node --- the Query structure is not used by the executor.\n */\n'
    },
    TypeName: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'names',
          c_type: 'List*',
          comment: '/* qualified name (list of Value strings) */'
        },
        {
          name: 'typeOid',
          c_type: 'Oid',
          comment: '/* type identified by OID */'
        },
        {
          name: 'setof',
          c_type: 'bool',
          comment: '/* is a set? */'
        },
        {
          name: 'pct_type',
          c_type: 'bool',
          comment: '/* %TYPE specified? */'
        },
        {
          name: 'typmods',
          c_type: 'List*',
          comment: '/* type modifier expression(s) */'
        },
        {
          name: 'typemod',
          c_type: 'int32',
          comment: '/* prespecified type modifier */'
        },
        {
          name: 'arrayBounds',
          c_type: 'List*',
          comment: '/* array bounds */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment:
        '/*\n * TypeName - specifies a type in definitions\n *\n * For TypeName structures generated internally, it is often easier to\n * specify the type by OID than by name.  If "names" is NIL then the\n * actual type OID is given by typeOid, otherwise typeOid is unused.\n * Similarly, if "typmods" is NIL then the actual typmod is expected to\n * be prespecified in typemod, otherwise typemod is unused.\n *\n * If pct_type is true, then names is actually a field name and we look up\n * the type of that field.  Otherwise (the normal case), names is a type\n * name possibly qualified with schema and database name.\n */\n'
    },
    ColumnRef: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'fields',
          c_type: 'List*',
          comment: '/* field names (Value strings) or A_Star */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment:
        '/*\n * ColumnRef - specifies a reference to a column, or possibly a whole tuple\n *\n * The "fields" list must be nonempty.  It can contain string Value nodes\n * (representing names) and A_Star nodes (representing occurrence of a \'*\').\n * Currently, A_Star must appear only as the last list element --- the grammar\n * is responsible for enforcing this!\n *\n * Note: any container subscripting or selection of fields from composite columns\n * is represented by an A_Indirection node above the ColumnRef.  However,\n * for simplicity in the normal case, initial field selection from a table\n * name is represented within ColumnRef and not by adding A_Indirection.\n */\n'
    },
    ParamRef: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'number',
          c_type: 'int',
          comment: '/* the number of the parameter */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment: '/*\n * ParamRef - specifies a $n parameter reference\n */\n'
    },
    A_Expr: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'kind',
          c_type: 'A_Expr_Kind',
          comment: '/* see above */'
        },
        {
          name: 'name',
          c_type: 'List*',
          comment: '/* possibly-qualified name of operator */'
        },
        {
          name: 'lexpr',
          c_type: 'Node*',
          comment: '/* left argument, or NULL if none */'
        },
        {
          name: 'rexpr',
          c_type: 'Node*',
          comment: '/* right argument, or NULL if none */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment: '/*\n * A_Expr - infix, prefix, and postfix expressions\n */\n'
    },
    A_Const: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'val',
          c_type: 'Value',
          comment: '/* value (includes type info, see value.h) */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment: '/*\n * A_Const - a literal constant\n */\n'
    },
    TypeCast: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'arg',
          c_type: 'Node*',
          comment: '/* the expression being casted */'
        },
        {
          name: 'typeName',
          c_type: 'TypeName*',
          comment: '/* the target type */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment: '/*\n * TypeCast - a CAST expression\n */\n'
    },
    CollateClause: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'arg',
          c_type: 'Node*',
          comment: '/* input expression */'
        },
        {
          name: 'collname',
          c_type: 'List*',
          comment: '/* possibly-qualified collation name */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment: '/*\n * CollateClause - a COLLATE expression\n */\n'
    },
    RoleSpec: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'roletype',
          c_type: 'RoleSpecType',
          comment: '/* Type of this rolespec */'
        },
        {
          name: 'rolename',
          c_type: 'char*',
          comment: '/* filled only for ROLESPEC_CSTRING */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment: null
    },
    FuncCall: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'funcname',
          c_type: 'List*',
          comment: '/* qualified name of function */'
        },
        {
          name: 'args',
          c_type: 'List*',
          comment: '/* the arguments (list of exprs) */'
        },
        {
          name: 'agg_order',
          c_type: 'List*',
          comment: '/* ORDER BY (list of SortBy) */'
        },
        {
          name: 'agg_filter',
          c_type: 'Node*',
          comment: '/* FILTER clause, if any */'
        },
        {
          name: 'agg_within_group',
          c_type: 'bool',
          comment: '/* ORDER BY appeared in WITHIN GROUP */'
        },
        {
          name: 'agg_star',
          c_type: 'bool',
          comment: "/* argument was really '*' */"
        },
        {
          name: 'agg_distinct',
          c_type: 'bool',
          comment: '/* arguments were labeled DISTINCT */'
        },
        {
          name: 'func_variadic',
          c_type: 'bool',
          comment: '/* last argument was labeled VARIADIC */'
        },
        {
          name: 'over',
          c_type: 'WindowDef*',
          comment: '/* OVER clause, if any */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment:
        "/*\n * FuncCall - a function or aggregate invocation\n *\n * agg_order (if not NIL) indicates we saw 'foo(... ORDER BY ...)', or if\n * agg_within_group is true, it was 'foo(...) WITHIN GROUP (ORDER BY ...)'.\n * agg_star indicates we saw a 'foo(*)' construct, while agg_distinct\n * indicates we saw 'foo(DISTINCT ...)'.  In any of these cases, the\n * construct *must* be an aggregate call.  Otherwise, it might be either an\n * aggregate or some other kind of function.  However, if FILTER or OVER is\n * present it had better be an aggregate or window function.\n *\n * Normally, you'd initialize this via makeFuncCall() and then only change the\n * parts of the struct its defaults don't match afterwards, as needed.\n */\n"
    },
    A_Star: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        }
      ],
      comment:
        "/*\n * A_Star - '*' representing all columns of a table or compound field\n *\n * This can appear within ColumnRef.fields, A_Indirection.indirection, and\n * ResTarget.indirection lists.\n */\n"
    },
    A_Indices: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'is_slice',
          c_type: 'bool',
          comment: '/* true if slice (i.e., colon present) */'
        },
        {
          name: 'lidx',
          c_type: 'Node*',
          comment: '/* slice lower bound, if any */'
        },
        {
          name: 'uidx',
          c_type: 'Node*',
          comment: '/* subscript, or slice upper bound if any */'
        }
      ],
      comment:
        '/*\n * A_Indices - array subscript or slice bounds ([idx] or [lidx:uidx])\n *\n * In slice case, either or both of lidx and uidx can be NULL (omitted).\n * In non-slice case, uidx holds the single subscript and lidx is always NULL.\n */\n'
    },
    A_Indirection: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'arg',
          c_type: 'Node*',
          comment: '/* the thing being selected from */'
        },
        {
          name: 'indirection',
          c_type: 'List*',
          comment: '/* subscripts and/or field names and/or * */'
        }
      ],
      comment:
        '/*\n * A_Indirection - select a field and/or array element from an expression\n *\n * The indirection list can contain A_Indices nodes (representing\n * subscripting), string Value nodes (representing field selection --- the\n * string value is the name of the field to select), and A_Star nodes\n * (representing selection of all fields of a composite type).\n * For example, a complex selection operation like\n *\t\t\t\t(foo).field1[42][7].field2\n * would be represented with a single A_Indirection node having a 4-element\n * indirection list.\n *\n * Currently, A_Star must appear only as the last list element --- the grammar\n * is responsible for enforcing this!\n */\n'
    },
    A_ArrayExpr: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'elements',
          c_type: 'List*',
          comment: '/* array element expressions */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment: '/*\n * A_ArrayExpr - an ARRAY[] construct\n */\n'
    },
    ResTarget: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'name',
          c_type: 'char*',
          comment: '/* column name or NULL */'
        },
        {
          name: 'indirection',
          c_type: 'List*',
          comment: "/* subscripts, field names, and '*', or NIL */"
        },
        {
          name: 'val',
          c_type: 'Node*',
          comment: '/* the value expression to compute or assign */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment:
        "/*\n * ResTarget -\n *\t  result target (used in target list of pre-transformed parse trees)\n *\n * In a SELECT target list, 'name' is the column label from an\n * 'AS ColumnLabel' clause, or NULL if there was none, and 'val' is the\n * value expression itself.  The 'indirection' field is not used.\n *\n * INSERT uses ResTarget in its target-column-names list.  Here, 'name' is\n * the name of the destination column, 'indirection' stores any subscripts\n * attached to the destination, and 'val' is not used.\n *\n * In an UPDATE target list, 'name' is the name of the destination column,\n * 'indirection' stores any subscripts attached to the destination, and\n * 'val' is the expression to assign.\n *\n * See A_Indirection for more info about what can appear in 'indirection'.\n */\n"
    },
    MultiAssignRef: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'source',
          c_type: 'Node*',
          comment: '/* the row-valued expression */'
        },
        {
          name: 'colno',
          c_type: 'int',
          comment: '/* column number for this target (1..n) */'
        },
        {
          name: 'ncolumns',
          c_type: 'int',
          comment: '/* number of targets in the construct */'
        }
      ],
      comment:
        '/*\n * MultiAssignRef - element of a row source expression for UPDATE\n *\n * In an UPDATE target list, when we have SET (a,b,c) = row-valued-expression,\n * we generate separate ResTarget items for each of a,b,c.  Their "val" trees\n * are MultiAssignRef nodes numbered 1..n, linking to a common copy of the\n * row-valued-expression (which parse analysis will process only once, when\n * handling the MultiAssignRef with colno=1).\n */\n'
    },
    SortBy: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'node',
          c_type: 'Node*',
          comment: '/* expression to sort on */'
        },
        {
          name: 'sortby_dir',
          c_type: 'SortByDir',
          comment: '/* ASC/DESC/USING/default */'
        },
        {
          name: 'sortby_nulls',
          c_type: 'SortByNulls',
          comment: '/* NULLS FIRST/LAST */'
        },
        {
          name: 'useOp',
          c_type: 'List*',
          comment: '/* name of op to use, if SORTBY_USING */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* operator location, or -1 if none/unknown */'
        }
      ],
      comment: '/*\n * SortBy - for ORDER BY clause\n */\n'
    },
    WindowDef: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'name',
          c_type: 'char*',
          comment: "/* window's own name */"
        },
        {
          name: 'refname',
          c_type: 'char*',
          comment: '/* referenced window name, if any */'
        },
        {
          name: 'partitionClause',
          c_type: 'List*',
          comment: '/* PARTITION BY expression list */'
        },
        {
          name: 'orderClause',
          c_type: 'List*',
          comment: '/* ORDER BY (list of SortBy) */'
        },
        {
          name: 'frameOptions',
          c_type: 'int',
          comment: '/* frame_clause options, see below */'
        },
        {
          name: 'startOffset',
          c_type: 'Node*',
          comment: '/* expression for starting bound, if any */'
        },
        {
          name: 'endOffset',
          c_type: 'Node*',
          comment: '/* expression for ending bound, if any */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* parse location, or -1 if none/unknown */'
        }
      ],
      comment:
        '/*\n * WindowDef - raw representation of WINDOW and OVER clauses\n *\n * For entries in a WINDOW list, "name" is the window name being defined.\n * For OVER clauses, we use "name" for the "OVER window" syntax, or "refname"\n * for the "OVER (window)" syntax, which is subtly different --- the latter\n * implies overriding the window frame clause.\n */\n'
    },
    RangeSubselect: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'lateral',
          c_type: 'bool',
          comment: '/* does it have LATERAL prefix? */'
        },
        {
          name: 'subquery',
          c_type: 'Node*',
          comment: '/* the untransformed sub-select clause */'
        },
        {
          name: 'alias',
          c_type: 'Alias*',
          comment: '/* table alias & optional column aliases */'
        }
      ],
      comment:
        '/*\n * RangeSubselect - subquery appearing in a FROM clause\n */\n'
    },
    RangeFunction: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'lateral',
          c_type: 'bool',
          comment: '/* does it have LATERAL prefix? */'
        },
        {
          name: 'ordinality',
          c_type: 'bool',
          comment: '/* does it have WITH ORDINALITY suffix? */'
        },
        {
          name: 'is_rowsfrom',
          c_type: 'bool',
          comment: '/* is result of ROWS FROM() syntax? */'
        },
        {
          name: 'functions',
          c_type: 'List*',
          comment: '/* per-function information, see above */'
        },
        {
          name: 'alias',
          c_type: 'Alias*',
          comment: '/* table alias & optional column aliases */'
        },
        {
          name: 'coldeflist',
          c_type: 'List*',
          comment:
            '/* list of ColumnDef nodes to describe result\n\t\t\t\t\t\t\t\t * of function returning RECORD */\n'
        }
      ],
      comment:
        "/*\n * RangeFunction - function call appearing in a FROM clause\n *\n * functions is a List because we use this to represent the construct\n * ROWS FROM(func1(...), func2(...), ...).  Each element of this list is a\n * two-element sublist, the first element being the untransformed function\n * call tree, and the second element being a possibly-empty list of ColumnDef\n * nodes representing any columndef list attached to that function within the\n * ROWS FROM() syntax.\n *\n * alias and coldeflist represent any alias and/or columndef list attached\n * at the top level.  (We disallow coldeflist appearing both here and\n * per-function, but that's checked in parse analysis, not by the grammar.)\n */\n"
    },
    RangeTableFunc: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'lateral',
          c_type: 'bool',
          comment: '/* does it have LATERAL prefix? */'
        },
        {
          name: 'docexpr',
          c_type: 'Node*',
          comment: '/* document expression */'
        },
        {
          name: 'rowexpr',
          c_type: 'Node*',
          comment: '/* row generator expression */'
        },
        {
          name: 'namespaces',
          c_type: 'List*',
          comment: '/* list of namespaces as ResTarget */'
        },
        {
          name: 'columns',
          c_type: 'List*',
          comment: '/* list of RangeTableFuncCol */'
        },
        {
          name: 'alias',
          c_type: 'Alias*',
          comment: '/* table alias & optional column aliases */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment:
        '/*\n * RangeTableFunc - raw form of "table functions" such as XMLTABLE\n */\n'
    },
    RangeTableFuncCol: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'colname',
          c_type: 'char*',
          comment: '/* name of generated column */'
        },
        {
          name: 'typeName',
          c_type: 'TypeName*',
          comment: '/* type of generated column */'
        },
        {
          name: 'for_ordinality',
          c_type: 'bool',
          comment: '/* does it have FOR ORDINALITY? */'
        },
        {
          name: 'is_not_null',
          c_type: 'bool',
          comment: '/* does it have NOT NULL? */'
        },
        {
          name: 'colexpr',
          c_type: 'Node*',
          comment: '/* column filter expression */'
        },
        {
          name: 'coldefexpr',
          c_type: 'Node*',
          comment: '/* column default value expression */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment:
        '/*\n * RangeTableFuncCol - one column in a RangeTableFunc->columns\n *\n * If for_ordinality is true (FOR ORDINALITY), then the column is an int4\n * column and the rest of the fields are ignored.\n */\n'
    },
    RangeTableSample: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'relation',
          c_type: 'Node*',
          comment: '/* relation to be sampled */'
        },
        {
          name: 'method',
          c_type: 'List*',
          comment: '/* sampling method name (possibly qualified) */'
        },
        {
          name: 'args',
          c_type: 'List*',
          comment: '/* argument(s) for sampling method */'
        },
        {
          name: 'repeatable',
          c_type: 'Node*',
          comment: '/* REPEATABLE expression, or NULL if none */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* method name location, or -1 if unknown */'
        }
      ],
      comment:
        '/*\n * RangeTableSample - TABLESAMPLE appearing in a raw FROM clause\n *\n * This node, appearing only in raw parse trees, represents\n *\t\t<relation> TABLESAMPLE <method> (<params>) REPEATABLE (<num>)\n * Currently, the <relation> can only be a RangeVar, but we might in future\n * allow RangeSubselect and other options.  Note that the RangeTableSample\n * is wrapped around the node representing the <relation>, rather than being\n * a subfield of it.\n */\n'
    },
    ColumnDef: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'colname',
          c_type: 'char*',
          comment: '/* name of column */'
        },
        {
          name: 'typeName',
          c_type: 'TypeName*',
          comment: '/* type of column */'
        },
        {
          name: 'inhcount',
          c_type: 'int',
          comment: '/* number of times column is inherited */'
        },
        {
          name: 'is_local',
          c_type: 'bool',
          comment: "/* column has local (non-inherited) def'n */"
        },
        {
          name: 'is_not_null',
          c_type: 'bool',
          comment: '/* NOT NULL constraint specified? */'
        },
        {
          name: 'is_from_type',
          c_type: 'bool',
          comment: '/* column definition came from table type */'
        },
        {
          name: 'storage',
          c_type: 'char',
          comment: '/* attstorage setting, or 0 for default */'
        },
        {
          name: 'raw_default',
          c_type: 'Node*',
          comment: '/* default value (untransformed parse tree) */'
        },
        {
          name: 'cooked_default',
          c_type: 'Node*',
          comment: '/* default value (transformed expr tree) */'
        },
        {
          name: 'identity',
          c_type: 'char',
          comment: '/* attidentity setting */'
        },
        {
          name: 'identitySequence',
          c_type: 'RangeVar*',
          comment:
            '/* to store identity sequence name for\n\t\t\t\t\t\t\t\t\t * ALTER TABLE ... ADD COLUMN */\n'
        },
        {
          name: 'generated',
          c_type: 'char',
          comment: '/* attgenerated setting */'
        },
        {
          name: 'collClause',
          c_type: 'CollateClause*',
          comment: '/* untransformed COLLATE spec, if any */'
        },
        {
          name: 'collOid',
          c_type: 'Oid',
          comment: '/* collation OID (InvalidOid if not set) */'
        },
        {
          name: 'constraints',
          c_type: 'List*',
          comment: '/* other constraints on column */'
        },
        {
          name: 'fdwoptions',
          c_type: 'List*',
          comment: '/* per-column FDW options */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* parse location, or -1 if none/unknown */'
        }
      ],
      comment:
        '/*\n * ColumnDef - column definition (used in various creates)\n *\n * If the column has a default value, we may have the value expression\n * in either "raw" form (an untransformed parse tree) or "cooked" form\n * (a post-parse-analysis, executable expression tree), depending on\n * how this ColumnDef node was created (by parsing, or by inheritance\n * from an existing relation).  We should never have both in the same node!\n *\n * Similarly, we may have a COLLATE specification in either raw form\n * (represented as a CollateClause with arg==NULL) or cooked form\n * (the collation\'s OID).\n *\n * The constraints list may contain a CONSTR_DEFAULT item in a raw\n * parsetree produced by gram.y, but transformCreateStmt will remove\n * the item and set raw_default instead.  CONSTR_DEFAULT items\n * should not appear in any subsequent processing.\n */\n'
    },
    TableLikeClause: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'relation',
          c_type: 'RangeVar*',
          comment: null
        },
        {
          name: 'options',
          c_type: 'bits32',
          comment: '/* OR of TableLikeOption flags */'
        }
      ],
      comment:
        '/*\n * TableLikeClause - CREATE TABLE ( ... LIKE ... ) clause\n */\n'
    },
    IndexElem: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'name',
          c_type: 'char*',
          comment: '/* name of attribute to index, or NULL */'
        },
        {
          name: 'expr',
          c_type: 'Node*',
          comment: '/* expression to index, or NULL */'
        },
        {
          name: 'indexcolname',
          c_type: 'char*',
          comment: '/* name for index column; NULL = default */'
        },
        {
          name: 'collation',
          c_type: 'List*',
          comment: '/* name of collation; NIL = default */'
        },
        {
          name: 'opclass',
          c_type: 'List*',
          comment: '/* name of desired opclass; NIL = default */'
        },
        {
          name: 'opclassopts',
          c_type: 'List*',
          comment: '/* opclass-specific options, or NIL */'
        },
        {
          name: 'ordering',
          c_type: 'SortByDir',
          comment: '/* ASC/DESC/default */'
        },
        {
          name: 'nulls_ordering',
          c_type: 'SortByNulls',
          comment: '/* FIRST/LAST/default */'
        }
      ],
      comment:
        "/*\n * IndexElem - index parameters (used in CREATE INDEX, and in ON CONFLICT)\n *\n * For a plain index attribute, 'name' is the name of the table column to\n * index, and 'expr' is NULL.  For an index expression, 'name' is NULL and\n * 'expr' is the expression tree.\n */\n"
    },
    DefElem: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'defnamespace',
          c_type: 'char*',
          comment: '/* NULL if unqualified name */'
        },
        {
          name: 'defname',
          c_type: 'char*',
          comment: null
        },
        {
          name: 'arg',
          c_type: 'Node*',
          comment: '/* a (Value *) or a (TypeName *) */'
        },
        {
          name: 'defaction',
          c_type: 'DefElemAction',
          comment: '/* unspecified action, or SET/ADD/DROP */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment:
        '/*\n * DefElem - a generic "name = value" option definition\n *\n * In some contexts the name can be qualified.  Also, certain SQL commands\n * allow a SET/ADD/DROP action to be attached to option settings, so it\'s\n * convenient to carry a field for that too.  (Note: currently, it is our\n * practice that the grammar allows namespace and action only in statements\n * where they are relevant; C code can just ignore those fields in other\n * statements.)\n */\n'
    },
    LockingClause: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'lockedRels',
          c_type: 'List*',
          comment: '/* FOR [KEY] UPDATE/SHARE relations */'
        },
        {
          name: 'strength',
          c_type: 'LockClauseStrength',
          comment: null
        },
        {
          name: 'waitPolicy',
          c_type: 'LockWaitPolicy',
          comment: '/* NOWAIT and SKIP LOCKED */'
        }
      ],
      comment:
        '/*\n * LockingClause - raw representation of FOR [NO KEY] UPDATE/[KEY] SHARE\n *\t\toptions\n *\n * Note: lockedRels == NIL means "all relations in query".  Otherwise it\n * is a list of RangeVar nodes.  (We use RangeVar mainly because it carries\n * a location field --- currently, parse analysis insists on unqualified\n * names in LockingClause.)\n */\n'
    },
    XmlSerialize: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'xmloption',
          c_type: 'XmlOptionType',
          comment: '/* DOCUMENT or CONTENT */'
        },
        {
          name: 'expr',
          c_type: 'Node*',
          comment: null
        },
        {
          name: 'typeName',
          c_type: 'TypeName*',
          comment: null
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment: '/*\n * XMLSERIALIZE (in raw parse tree only)\n */\n'
    },
    PartitionElem: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'name',
          c_type: 'char*',
          comment: '/* name of column to partition on, or NULL */'
        },
        {
          name: 'expr',
          c_type: 'Node*',
          comment: '/* expression to partition on, or NULL */'
        },
        {
          name: 'collation',
          c_type: 'List*',
          comment: '/* name of collation; NIL = default */'
        },
        {
          name: 'opclass',
          c_type: 'List*',
          comment: '/* name of desired opclass; NIL = default */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment:
        "/*\n * PartitionElem - parse-time representation of a single partition key\n *\n * expr can be either a raw expression tree or a parse-analyzed expression.\n * We don't store these on-disk, though.\n */\n"
    },
    PartitionSpec: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'strategy',
          c_type: 'char*',
          comment:
            "/* partitioning strategy ('hash', 'list' or\n\t\t\t\t\t\t\t\t * 'range') */\n"
        },
        {
          name: 'partParams',
          c_type: 'List*',
          comment: '/* List of PartitionElems */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment:
        '/*\n * PartitionSpec - parse-time representation of a partition key specification\n *\n * This represents the key space we will be partitioning on.\n */\n'
    },
    PartitionBoundSpec: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          comment: ''
        },
        {
          name: 'strategy',
          c_type: 'char',
          comment: '/* see PARTITION_STRATEGY codes above */'
        },
        {
          name: 'is_default',
          c_type: 'bool',
          comment: '/* is it a default partition bound? */'
        },
        {
          comment: ''
        },
        {
          comment: '\t/* Partitioning info for HASH strategy: */\n'
        },
        {
          name: 'modulus',
          c_type: 'int',
          comment: null
        },
        {
          name: 'remainder',
          c_type: 'int',
          comment: null
        },
        {
          comment: ''
        },
        {
          comment: '\t/* Partitioning info for LIST strategy: */\n'
        },
        {
          name: 'listdatums',
          c_type: 'List*',
          comment: '/* List of Consts (or A_Consts in raw tree) */'
        },
        {
          comment: ''
        },
        {
          comment: '\t/* Partitioning info for RANGE strategy: */\n'
        },
        {
          name: 'lowerdatums',
          c_type: 'List*',
          comment: '/* List of PartitionRangeDatums */'
        },
        {
          name: 'upperdatums',
          c_type: 'List*',
          comment: '/* List of PartitionRangeDatums */'
        },
        {
          comment: ''
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment:
        '/*\n * PartitionBoundSpec - a partition bound specification\n *\n * This represents the portion of the partition key space assigned to a\n * particular partition.  These are stored on disk in pg_class.relpartbound.\n */\n'
    },
    PartitionRangeDatum: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          comment: ''
        },
        {
          name: 'kind',
          c_type: 'PartitionRangeDatumKind',
          comment: null
        },
        {
          name: 'value',
          c_type: 'Node*',
          comment:
            '/* Const (or A_Const in raw tree), if kind is\n\t\t\t\t\t\t\t\t * PARTITION_RANGE_DATUM_VALUE, else NULL */\n'
        },
        {
          comment: ''
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment: null
    },
    PartitionCmd: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'name',
          c_type: 'RangeVar*',
          comment: '/* name of partition to attach/detach */'
        },
        {
          name: 'bound',
          c_type: 'PartitionBoundSpec*',
          comment: '/* FOR VALUES, if attaching */'
        }
      ],
      comment:
        '/*\n * PartitionCmd - info for ALTER TABLE/INDEX ATTACH/DETACH PARTITION commands\n */\n'
    },
    RangeTblEntry: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          comment: ''
        },
        {
          name: 'rtekind',
          c_type: 'RTEKind',
          comment: '/* see above */'
        },
        {
          comment: ''
        },
        {
          comment:
            "\t/*\n\t * XXX the fields applicable to only some rte kinds should be merged into\n\t * a union.  I didn't do this yet because the diffs would impact a lot of\n\t * code that is being actively worked on.  FIXME someday.\n\t */\n"
        },
        {
          comment: ''
        },
        {
          comment:
            "\t/*\n\t * Fields valid for a plain relation RTE (else zero):\n\t *\n\t * As a special case, RTE_NAMEDTUPLESTORE can also set relid to indicate\n\t * that the tuple format of the tuplestore is the same as the referenced\n\t * relation.  This allows plans referencing AFTER trigger transition\n\t * tables to be invalidated if the underlying table is altered.\n\t *\n\t * rellockmode is really LOCKMODE, but it's declared int to avoid having\n\t * to include lock-related headers here.  It must be RowExclusiveLock if\n\t * the RTE is an INSERT/UPDATE/DELETE target, else RowShareLock if the RTE\n\t * is a SELECT FOR UPDATE/FOR SHARE target, else AccessShareLock.\n\t *\n\t * Note: in some cases, rule expansion may result in RTEs that are marked\n\t * with RowExclusiveLock even though they are not the target of the\n\t * current query; this happens if a DO ALSO rule simply scans the original\n\t * target table.  We leave such RTEs with their original lockmode so as to\n\t * avoid getting an additional, lesser lock.\n\t */\n"
        },
        {
          name: 'relid',
          c_type: 'Oid',
          comment: '/* OID of the relation */'
        },
        {
          name: 'relkind',
          c_type: 'char',
          comment: '/* relation kind (see pg_class.relkind) */'
        },
        {
          name: 'rellockmode',
          c_type: 'int',
          comment: '/* lock level that query requires on the rel */'
        },
        {
          name: 'tablesample',
          c_type: 'TableSampleClause*',
          comment: '/* sampling info, or NULL */'
        },
        {
          comment: ''
        },
        {
          comment:
            '\t/*\n\t * Fields valid for a subquery RTE (else NULL):\n\t */\n'
        },
        {
          name: 'subquery',
          c_type: 'Query*',
          comment: '/* the sub-query */'
        },
        {
          name: 'security_barrier',
          c_type: 'bool',
          comment: '/* is from security_barrier view? */'
        },
        {
          comment: ''
        },
        {
          comment:
            "\t/*\n\t * Fields valid for a join RTE (else NULL/zero):\n\t *\n\t * joinaliasvars is a list of (usually) Vars corresponding to the columns\n\t * of the join result.  An alias Var referencing column K of the join\n\t * result can be replaced by the K'th element of joinaliasvars --- but to\n\t * simplify the task of reverse-listing aliases correctly, we do not do\n\t * that until planning time.  In detail: an element of joinaliasvars can\n\t * be a Var of one of the join's input relations, or such a Var with an\n\t * implicit coercion to the join's output column type, or a COALESCE\n\t * expression containing the two input column Vars (possibly coerced).\n\t * Elements beyond the first joinmergedcols entries are always just Vars,\n\t * and are never referenced from elsewhere in the query (that is, join\n\t * alias Vars are generated only for merged columns).  We keep these\n\t * entries only because they're needed in expandRTE() and similar code.\n\t *\n\t * Within a Query loaded from a stored rule, it is possible for non-merged\n\t * joinaliasvars items to be null pointers, which are placeholders for\n\t * (necessarily unreferenced) columns dropped since the rule was made.\n\t * Also, once planning begins, joinaliasvars items can be almost anything,\n\t * as a result of subquery-flattening substitutions.\n\t *\n\t * joinleftcols is an integer list of physical column numbers of the left\n\t * join input rel that are included in the join; likewise joinrighttcols\n\t * for the right join input rel.  (Which rels those are can be determined\n\t * from the associated JoinExpr.)  If the join is USING/NATURAL, then the\n\t * first joinmergedcols entries in each list identify the merged columns.\n\t * The merged columns come first in the join output, then remaining\n\t * columns of the left input, then remaining columns of the right.\n\t *\n\t * Note that input columns could have been dropped after creation of a\n\t * stored rule, if they are not referenced in the query (in particular,\n\t * merged columns could not be dropped); this is not accounted for in\n\t * joinleftcols/joinrighttcols.\n\t */\n"
        },
        {
          name: 'jointype',
          c_type: 'JoinType',
          comment: '/* type of join */'
        },
        {
          name: 'joinmergedcols',
          c_type: 'int',
          comment: '/* number of merged (JOIN USING) columns */'
        },
        {
          name: 'joinaliasvars',
          c_type: 'List*',
          comment: '/* list of alias-var expansions */'
        },
        {
          name: 'joinleftcols',
          c_type: 'List*',
          comment: '/* left-side input column numbers */'
        },
        {
          name: 'joinrightcols',
          c_type: 'List*',
          comment: '/* right-side input column numbers */'
        },
        {
          comment: ''
        },
        {
          comment:
            '\t/*\n\t * Fields valid for a function RTE (else NIL/zero):\n\t *\n\t * When funcordinality is true, the eref->colnames list includes an alias\n\t * for the ordinality column.  The ordinality column is otherwise\n\t * implicit, and must be accounted for "by hand" in places such as\n\t * expandRTE().\n\t */\n'
        },
        {
          name: 'functions',
          c_type: 'List*',
          comment: '/* list of RangeTblFunction nodes */'
        },
        {
          name: 'funcordinality',
          c_type: 'bool',
          comment: '/* is this called WITH ORDINALITY? */'
        },
        {
          comment: ''
        },
        {
          comment:
            '\t/*\n\t * Fields valid for a TableFunc RTE (else NULL):\n\t */\n'
        },
        {
          name: 'tablefunc',
          c_type: 'TableFunc*',
          comment: null
        },
        {
          comment: ''
        },
        {
          comment:
            '\t/*\n\t * Fields valid for a values RTE (else NIL):\n\t */\n'
        },
        {
          name: 'values_lists',
          c_type: 'List*',
          comment: '/* list of expression lists */'
        },
        {
          comment: ''
        },
        {
          comment:
            '\t/*\n\t * Fields valid for a CTE RTE (else NULL/zero):\n\t */\n'
        },
        {
          name: 'ctename',
          c_type: 'char*',
          comment: '/* name of the WITH list item */'
        },
        {
          name: 'ctelevelsup',
          c_type: 'Index',
          comment: '/* number of query levels up */'
        },
        {
          name: 'self_reference',
          c_type: 'bool',
          comment: '/* is this a recursive self-reference? */'
        },
        {
          comment: ''
        },
        {
          comment:
            "\t/*\n\t * Fields valid for CTE, VALUES, ENR, and TableFunc RTEs (else NIL):\n\t *\n\t * We need these for CTE RTEs so that the types of self-referential\n\t * columns are well-defined.  For VALUES RTEs, storing these explicitly\n\t * saves having to re-determine the info by scanning the values_lists. For\n\t * ENRs, we store the types explicitly here (we could get the information\n\t * from the catalogs if 'relid' was supplied, but we'd still need these\n\t * for TupleDesc-based ENRs, so we might as well always store the type\n\t * info here).  For TableFuncs, these fields are redundant with data in\n\t * the TableFunc node, but keeping them here allows some code sharing with\n\t * the other cases.\n\t *\n\t * For ENRs only, we have to consider the possibility of dropped columns.\n\t * A dropped column is included in these lists, but it will have zeroes in\n\t * all three lists (as well as an empty-string entry in eref).  Testing\n\t * for zero coltype is the standard way to detect a dropped column.\n\t */\n"
        },
        {
          name: 'coltypes',
          c_type: 'List*',
          comment: '/* OID list of column type OIDs */'
        },
        {
          name: 'coltypmods',
          c_type: 'List*',
          comment: '/* integer list of column typmods */'
        },
        {
          name: 'colcollations',
          c_type: 'List*',
          comment: '/* OID list of column collation OIDs */'
        },
        {
          comment: ''
        },
        {
          comment:
            '\t/*\n\t * Fields valid for ENR RTEs (else NULL/zero):\n\t */\n'
        },
        {
          name: 'enrname',
          c_type: 'char*',
          comment: '/* name of ephemeral named relation */'
        },
        {
          name: 'enrtuples',
          c_type: 'double',
          comment: '/* estimated or actual from caller */'
        },
        {
          comment: ''
        },
        {
          comment: '\t/*\n\t * Fields valid in all RTEs:\n\t */\n'
        },
        {
          name: 'alias',
          c_type: 'Alias*',
          comment: '/* user-written alias clause, if any */'
        },
        {
          name: 'eref',
          c_type: 'Alias*',
          comment: '/* expanded reference names */'
        },
        {
          name: 'lateral',
          c_type: 'bool',
          comment: '/* subquery, function, or values is LATERAL? */'
        },
        {
          name: 'inh',
          c_type: 'bool',
          comment: '/* inheritance requested? */'
        },
        {
          name: 'inFromCl',
          c_type: 'bool',
          comment: '/* present in FROM clause? */'
        },
        {
          name: 'requiredPerms',
          c_type: 'AclMode',
          comment: '/* bitmask of required access permissions */'
        },
        {
          name: 'checkAsUser',
          c_type: 'Oid',
          comment: '/* if valid, check access as this role */'
        },
        {
          name: 'selectedCols',
          c_type: 'Bitmapset*',
          comment: '/* columns needing SELECT permission */'
        },
        {
          name: 'insertedCols',
          c_type: 'Bitmapset*',
          comment: '/* columns needing INSERT permission */'
        },
        {
          name: 'updatedCols',
          c_type: 'Bitmapset*',
          comment: '/* columns needing UPDATE permission */'
        },
        {
          name: 'extraUpdatedCols',
          c_type: 'Bitmapset*',
          comment: '/* generated columns being updated */'
        },
        {
          name: 'securityQuals',
          c_type: 'List*',
          comment: '/* security barrier quals to apply, if any */'
        }
      ],
      comment:
        "/*--------------------\n * RangeTblEntry -\n *\t  A range table is a List of RangeTblEntry nodes.\n *\n *\t  A range table entry may represent a plain relation, a sub-select in\n *\t  FROM, or the result of a JOIN clause.  (Only explicit JOIN syntax\n *\t  produces an RTE, not the implicit join resulting from multiple FROM\n *\t  items.  This is because we only need the RTE to deal with SQL features\n *\t  like outer joins and join-output-column aliasing.)  Other special\n *\t  RTE types also exist, as indicated by RTEKind.\n *\n *\t  Note that we consider RTE_RELATION to cover anything that has a pg_class\n *\t  entry.  relkind distinguishes the sub-cases.\n *\n *\t  alias is an Alias node representing the AS alias-clause attached to the\n *\t  FROM expression, or NULL if no clause.\n *\n *\t  eref is the table reference name and column reference names (either\n *\t  real or aliases).  Note that system columns (OID etc) are not included\n *\t  in the column list.\n *\t  eref->aliasname is required to be present, and should generally be used\n *\t  to identify the RTE for error messages etc.\n *\n *\t  In RELATION RTEs, the colnames in both alias and eref are indexed by\n *\t  physical attribute number; this means there must be colname entries for\n *\t  dropped columns.  When building an RTE we insert empty strings (\"\") for\n *\t  dropped columns.  Note however that a stored rule may have nonempty\n *\t  colnames for columns dropped since the rule was created (and for that\n *\t  matter the colnames might be out of date due to column renamings).\n *\t  The same comments apply to FUNCTION RTEs when a function's return type\n *\t  is a named composite type.\n *\n *\t  In JOIN RTEs, the colnames in both alias and eref are one-to-one with\n *\t  joinaliasvars entries.  A JOIN RTE will omit columns of its inputs when\n *\t  those columns are known to be dropped at parse time.  Again, however,\n *\t  a stored rule might contain entries for columns dropped since the rule\n *\t  was created.  (This is only possible for columns not actually referenced\n *\t  in the rule.)  When loading a stored rule, we replace the joinaliasvars\n *\t  items for any such columns with null pointers.  (We can't simply delete\n *\t  them from the joinaliasvars list, because that would affect the attnums\n *\t  of Vars referencing the rest of the list.)\n *\n *\t  inh is true for relation references that should be expanded to include\n *\t  inheritance children, if the rel has any.  This *must* be false for\n *\t  RTEs other than RTE_RELATION entries.\n *\n *\t  inFromCl marks those range variables that are listed in the FROM clause.\n *\t  It's false for RTEs that are added to a query behind the scenes, such\n *\t  as the NEW and OLD variables for a rule, or the subqueries of a UNION.\n *\t  This flag is not used anymore during parsing, since the parser now uses\n *\t  a separate \"namespace\" data structure to control visibility, but it is\n *\t  needed by ruleutils.c to determine whether RTEs should be shown in\n *\t  decompiled queries.\n *\n *\t  requiredPerms and checkAsUser specify run-time access permissions\n *\t  checks to be performed at query startup.  The user must have *all*\n *\t  of the permissions that are OR'd together in requiredPerms (zero\n *\t  indicates no permissions checking).  If checkAsUser is not zero,\n *\t  then do the permissions checks using the access rights of that user,\n *\t  not the current effective user ID.  (This allows rules to act as\n *\t  setuid gateways.)  Permissions checks only apply to RELATION RTEs.\n *\n *\t  For SELECT/INSERT/UPDATE permissions, if the user doesn't have\n *\t  table-wide permissions then it is sufficient to have the permissions\n *\t  on all columns identified in selectedCols (for SELECT) and/or\n *\t  insertedCols and/or updatedCols (INSERT with ON CONFLICT DO UPDATE may\n *\t  have all 3).  selectedCols, insertedCols and updatedCols are bitmapsets,\n *\t  which cannot have negative integer members, so we subtract\n *\t  FirstLowInvalidHeapAttributeNumber from column numbers before storing\n *\t  them in these fields.  A whole-row Var reference is represented by\n *\t  setting the bit for InvalidAttrNumber.\n *\n *\t  updatedCols is also used in some other places, for example, to determine\n *\t  which triggers to fire and in FDWs to know which changed columns they\n *\t  need to ship off.\n *\n *\t  Generated columns that are caused to be updated by an update to a base\n *\t  column are listed in extraUpdatedCols.  This is not considered for\n *\t  permission checking, but it is useful in those places that want to know\n *\t  the full set of columns being updated as opposed to only the ones the\n *\t  user explicitly mentioned in the query.  (There is currently no need for\n *\t  an extraInsertedCols, but it could exist.)  Note that extraUpdatedCols\n *\t  is populated during query rewrite, NOT in the parser, since generated\n *\t  columns could be added after a rule has been parsed and stored.\n *\n *\t  securityQuals is a list of security barrier quals (boolean expressions),\n *\t  to be tested in the listed order before returning a row from the\n *\t  relation.  It is always NIL in parser output.  Entries are added by the\n *\t  rewriter to implement security-barrier views and/or row-level security.\n *\t  Note that the planner turns each boolean expression into an implicitly\n *\t  AND'ed sublist, as is its usual habit with qualification expressions.\n *--------------------\n */\n"
    },
    RangeTblFunction: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          comment: ''
        },
        {
          name: 'funcexpr',
          c_type: 'Node*',
          comment: '/* expression tree for func call */'
        },
        {
          name: 'funccolcount',
          c_type: 'int',
          comment: '/* number of columns it contributes to RTE */'
        },
        {
          comment:
            '\t/* These fields record the contents of a column definition list, if any: */\n'
        },
        {
          name: 'funccolnames',
          c_type: 'List*',
          comment: '/* column names (list of String) */'
        },
        {
          name: 'funccoltypes',
          c_type: 'List*',
          comment: '/* OID list of column type OIDs */'
        },
        {
          name: 'funccoltypmods',
          c_type: 'List*',
          comment: '/* integer list of column typmods */'
        },
        {
          name: 'funccolcollations',
          c_type: 'List*',
          comment: '/* OID list of column collation OIDs */'
        },
        {
          comment:
            '\t/* This is set during planning for use by the executor: */\n'
        },
        {
          name: 'funcparams',
          c_type: 'Bitmapset*',
          comment: '/* PARAM_EXEC Param IDs affecting this func */'
        }
      ],
      comment:
        "/*\n * RangeTblFunction -\n *\t  RangeTblEntry subsidiary data for one function in a FUNCTION RTE.\n *\n * If the function had a column definition list (required for an\n * otherwise-unspecified RECORD result), funccolnames lists the names given\n * in the definition list, funccoltypes lists their declared column types,\n * funccoltypmods lists their typmods, funccolcollations their collations.\n * Otherwise, those fields are NIL.\n *\n * Notice we don't attempt to store info about the results of functions\n * returning named composite types, because those can change from time to\n * time.  We do however remember how many columns we thought the type had\n * (including dropped columns!), so that we can successfully ignore any\n * columns added after the query was parsed.\n */\n"
    },
    TableSampleClause: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'tsmhandler',
          c_type: 'Oid',
          comment: '/* OID of the tablesample handler function */'
        },
        {
          name: 'args',
          c_type: 'List*',
          comment: '/* tablesample argument expression(s) */'
        },
        {
          name: 'repeatable',
          c_type: 'Expr*',
          comment: '/* REPEATABLE expression, or NULL if none */'
        }
      ],
      comment:
        '/*\n * TableSampleClause - TABLESAMPLE appearing in a transformed FROM clause\n *\n * Unlike RangeTableSample, this is a subnode of the relevant RangeTblEntry.\n */\n'
    },
    WithCheckOption: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'kind',
          c_type: 'WCOKind',
          comment: '/* kind of WCO */'
        },
        {
          name: 'relname',
          c_type: 'char*',
          comment: '/* name of relation that specified the WCO */'
        },
        {
          name: 'polname',
          c_type: 'char*',
          comment: '/* name of RLS policy being checked */'
        },
        {
          name: 'qual',
          c_type: 'Node*',
          comment: '/* constraint qual to check */'
        },
        {
          name: 'cascaded',
          c_type: 'bool',
          comment: '/* true for a cascaded WCO on a view */'
        }
      ],
      comment: null
    },
    SortGroupClause: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'tleSortGroupRef',
          c_type: 'Index',
          comment: '/* reference into targetlist */'
        },
        {
          name: 'eqop',
          c_type: 'Oid',
          comment: "/* the equality operator ('=' op) */"
        },
        {
          name: 'sortop',
          c_type: 'Oid',
          comment: "/* the ordering operator ('<' op), or 0 */"
        },
        {
          name: 'nulls_first',
          c_type: 'bool',
          comment: '/* do NULLs come before normal values? */'
        },
        {
          name: 'hashable',
          c_type: 'bool',
          comment: '/* can eqop be implemented by hashing? */'
        }
      ],
      comment:
        "/*\n * SortGroupClause -\n *\t\trepresentation of ORDER BY, GROUP BY, PARTITION BY,\n *\t\tDISTINCT, DISTINCT ON items\n *\n * You might think that ORDER BY is only interested in defining ordering,\n * and GROUP/DISTINCT are only interested in defining equality.  However,\n * one way to implement grouping is to sort and then apply a \"uniq\"-like\n * filter.  So it's also interesting to keep track of possible sort operators\n * for GROUP/DISTINCT, and in particular to try to sort for the grouping\n * in a way that will also yield a requested ORDER BY ordering.  So we need\n * to be able to compare ORDER BY and GROUP/DISTINCT lists, which motivates\n * the decision to give them the same representation.\n *\n * tleSortGroupRef must match ressortgroupref of exactly one entry of the\n *\t\tquery's targetlist; that is the expression to be sorted or grouped by.\n * eqop is the OID of the equality operator.\n * sortop is the OID of the ordering operator (a \"<\" or \">\" operator),\n *\t\tor InvalidOid if not available.\n * nulls_first means about what you'd expect.  If sortop is InvalidOid\n *\t\tthen nulls_first is meaningless and should be set to false.\n * hashable is true if eqop is hashable (note this condition also depends\n *\t\ton the datatype of the input expression).\n *\n * In an ORDER BY item, all fields must be valid.  (The eqop isn't essential\n * here, but it's cheap to get it along with the sortop, and requiring it\n * to be valid eases comparisons to grouping items.)  Note that this isn't\n * actually enough information to determine an ordering: if the sortop is\n * collation-sensitive, a collation OID is needed too.  We don't store the\n * collation in SortGroupClause because it's not available at the time the\n * parser builds the SortGroupClause; instead, consult the exposed collation\n * of the referenced targetlist expression to find out what it is.\n *\n * In a grouping item, eqop must be valid.  If the eqop is a btree equality\n * operator, then sortop should be set to a compatible ordering operator.\n * We prefer to set eqop/sortop/nulls_first to match any ORDER BY item that\n * the query presents for the same tlist item.  If there is none, we just\n * use the default ordering op for the datatype.\n *\n * If the tlist item's type has a hash opclass but no btree opclass, then\n * we will set eqop to the hash equality operator, sortop to InvalidOid,\n * and nulls_first to false.  A grouping item of this kind can only be\n * implemented by hashing, and of course it'll never match an ORDER BY item.\n *\n * The hashable flag is provided since we generally have the requisite\n * information readily available when the SortGroupClause is constructed,\n * and it's relatively expensive to get it again later.  Note there is no\n * need for a \"sortable\" flag since OidIsValid(sortop) serves the purpose.\n *\n * A query might have both ORDER BY and DISTINCT (or DISTINCT ON) clauses.\n * In SELECT DISTINCT, the distinctClause list is as long or longer than the\n * sortClause list, while in SELECT DISTINCT ON it's typically shorter.\n * The two lists must match up to the end of the shorter one --- the parser\n * rearranges the distinctClause if necessary to make this true.  (This\n * restriction ensures that only one sort step is needed to both satisfy the\n * ORDER BY and set up for the Unique step.  This is semantically necessary\n * for DISTINCT ON, and presents no real drawback for DISTINCT.)\n */\n"
    },
    GroupingSet: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'kind',
          c_type: 'GroupingSetKind',
          comment: null
        },
        {
          name: 'content',
          c_type: 'List*',
          comment: null
        },
        {
          name: 'location',
          c_type: 'int',
          comment: null
        }
      ],
      comment: null
    },
    WindowClause: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'name',
          c_type: 'char*',
          comment: '/* window name (NULL in an OVER clause) */'
        },
        {
          name: 'refname',
          c_type: 'char*',
          comment: '/* referenced window name, if any */'
        },
        {
          name: 'partitionClause',
          c_type: 'List*',
          comment: '/* PARTITION BY list */'
        },
        {
          name: 'orderClause',
          c_type: 'List*',
          comment: '/* ORDER BY list */'
        },
        {
          name: 'frameOptions',
          c_type: 'int',
          comment: '/* frame_clause options, see WindowDef */'
        },
        {
          name: 'startOffset',
          c_type: 'Node*',
          comment: '/* expression for starting bound, if any */'
        },
        {
          name: 'endOffset',
          c_type: 'Node*',
          comment: '/* expression for ending bound, if any */'
        },
        {
          name: 'startInRangeFunc',
          c_type: 'Oid',
          comment: '/* in_range function for startOffset */'
        },
        {
          name: 'endInRangeFunc',
          c_type: 'Oid',
          comment: '/* in_range function for endOffset */'
        },
        {
          name: 'inRangeColl',
          c_type: 'Oid',
          comment: '/* collation for in_range tests */'
        },
        {
          name: 'inRangeAsc',
          c_type: 'bool',
          comment: '/* use ASC sort order for in_range tests? */'
        },
        {
          name: 'inRangeNullsFirst',
          c_type: 'bool',
          comment: '/* nulls sort first for in_range tests? */'
        },
        {
          name: 'winref',
          c_type: 'Index',
          comment: '/* ID referenced by window functions */'
        },
        {
          name: 'copiedOrder',
          c_type: 'bool',
          comment: '/* did we copy orderClause from refname? */'
        }
      ],
      comment:
        "/*\n * WindowClause -\n *\t\ttransformed representation of WINDOW and OVER clauses\n *\n * A parsed Query's windowClause list contains these structs.  \"name\" is set\n * if the clause originally came from WINDOW, and is NULL if it originally\n * was an OVER clause (but note that we collapse out duplicate OVERs).\n * partitionClause and orderClause are lists of SortGroupClause structs.\n * If we have RANGE with offset PRECEDING/FOLLOWING, the semantics of that are\n * specified by startInRangeFunc/inRangeColl/inRangeAsc/inRangeNullsFirst\n * for the start offset, or endInRangeFunc/inRange* for the end offset.\n * winref is an ID number referenced by WindowFunc nodes; it must be unique\n * among the members of a Query's windowClause list.\n * When refname isn't null, the partitionClause is always copied from there;\n * the orderClause might or might not be copied (see copiedOrder); the framing\n * options are never copied, per spec.\n */\n"
    },
    RowMarkClause: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'rti',
          c_type: 'Index',
          comment: '/* range table index of target relation */'
        },
        {
          name: 'strength',
          c_type: 'LockClauseStrength',
          comment: null
        },
        {
          name: 'waitPolicy',
          c_type: 'LockWaitPolicy',
          comment: '/* NOWAIT and SKIP LOCKED */'
        },
        {
          name: 'pushedDown',
          c_type: 'bool',
          comment: '/* pushed down from higher query level? */'
        }
      ],
      comment:
        '/*\n * RowMarkClause -\n *\t   parser output representation of FOR [KEY] UPDATE/SHARE clauses\n *\n * Query.rowMarks contains a separate RowMarkClause node for each relation\n * identified as a FOR [KEY] UPDATE/SHARE target.  If one of these clauses\n * is applied to a subquery, we generate RowMarkClauses for all normal and\n * subquery rels in the subquery, but they are marked pushedDown = true to\n * distinguish them from clauses that were explicitly written at this query\n * level.  Also, Query.hasForUpdate tells whether there were explicit FOR\n * UPDATE/SHARE/KEY SHARE clauses in the current query level.\n */\n'
    },
    WithClause: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'ctes',
          c_type: 'List*',
          comment: '/* list of CommonTableExprs */'
        },
        {
          name: 'recursive',
          c_type: 'bool',
          comment: '/* true = WITH RECURSIVE */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment:
        '/*\n * WithClause -\n *\t   representation of WITH clause\n *\n * Note: WithClause does not propagate into the Query representation;\n * but CommonTableExpr does.\n */\n'
    },
    InferClause: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'indexElems',
          c_type: 'List*',
          comment: '/* IndexElems to infer unique index */'
        },
        {
          name: 'whereClause',
          c_type: 'Node*',
          comment: '/* qualification (partial-index predicate) */'
        },
        {
          name: 'conname',
          c_type: 'char*',
          comment: '/* Constraint name, or NULL if unnamed */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment:
        '/*\n * InferClause -\n *\t\tON CONFLICT unique index inference clause\n *\n * Note: InferClause does not propagate into the Query representation.\n */\n'
    },
    OnConflictClause: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'action',
          c_type: 'OnConflictAction',
          comment: '/* DO NOTHING or UPDATE? */'
        },
        {
          name: 'infer',
          c_type: 'InferClause*',
          comment: '/* Optional index inference clause */'
        },
        {
          name: 'targetList',
          c_type: 'List*',
          comment: '/* the target list (of ResTarget) */'
        },
        {
          name: 'whereClause',
          c_type: 'Node*',
          comment: '/* qualifications */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment:
        '/*\n * OnConflictClause -\n *\t\trepresentation of ON CONFLICT clause\n *\n * Note: OnConflictClause does not propagate into the Query representation.\n */\n'
    },
    CommonTableExpr: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'ctename',
          c_type: 'char*',
          comment: '/* query name (never qualified) */'
        },
        {
          name: 'aliascolnames',
          c_type: 'List*',
          comment: '/* optional list of column names */'
        },
        {
          name: 'ctematerialized',
          c_type: 'CTEMaterialize',
          comment: '/* is this an optimization fence? */'
        },
        {
          comment:
            '\t/* SelectStmt/InsertStmt/etc before parse analysis, Query afterwards: */\n'
        },
        {
          name: 'ctequery',
          c_type: 'Node*',
          comment: "/* the CTE's subquery */"
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        },
        {
          comment: '\t/* These fields are set during parse analysis: */\n'
        },
        {
          name: 'cterecursive',
          c_type: 'bool',
          comment: '/* is this CTE actually recursive? */'
        },
        {
          name: 'cterefcount',
          c_type: 'int',
          comment:
            '/* number of RTEs referencing this CTE\n\t\t\t\t\t\t\t\t * (excluding internal self-references) */\n'
        },
        {
          name: 'ctecolnames',
          c_type: 'List*',
          comment: '/* list of output column names */'
        },
        {
          name: 'ctecoltypes',
          c_type: 'List*',
          comment: '/* OID list of output column type OIDs */'
        },
        {
          name: 'ctecoltypmods',
          c_type: 'List*',
          comment: '/* integer list of output column typmods */'
        },
        {
          name: 'ctecolcollations',
          c_type: 'List*',
          comment: '/* OID list of column collation OIDs */'
        }
      ],
      comment: null
    },
    TriggerTransition: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'name',
          c_type: 'char*',
          comment: null
        },
        {
          name: 'isNew',
          c_type: 'bool',
          comment: null
        },
        {
          name: 'isTable',
          c_type: 'bool',
          comment: null
        }
      ],
      comment:
        '/*\n * TriggerTransition -\n *\t   representation of transition row or table naming clause\n *\n * Only transition tables are initially supported in the syntax, and only for\n * AFTER triggers, but other permutations are accepted by the parser so we can\n * give a meaningful message from C code.\n */\n'
    },
    RawStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'stmt',
          c_type: 'Node*',
          comment: '/* raw parse tree */'
        },
        {
          name: 'stmt_location',
          c_type: 'int',
          comment: '/* start location, or -1 if unknown */'
        },
        {
          name: 'stmt_len',
          c_type: 'int',
          comment: '/* length in bytes; 0 means "rest of string" */'
        }
      ],
      comment:
        "/*\n *\t\tRawStmt --- container for any one statement's raw parse tree\n *\n * Parse analysis converts a raw parse tree headed by a RawStmt node into\n * an analyzed statement headed by a Query node.  For optimizable statements,\n * the conversion is complex.  For utility statements, the parser usually just\n * transfers the raw parse tree (sans RawStmt) into the utilityStmt field of\n * the Query node, and all the useful work happens at execution time.\n *\n * stmt_location/stmt_len identify the portion of the source text string\n * containing this raw statement (useful for multi-statement strings).\n */\n"
    },
    InsertStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'relation',
          c_type: 'RangeVar*',
          comment: '/* relation to insert into */'
        },
        {
          name: 'cols',
          c_type: 'List*',
          comment: '/* optional: names of the target columns */'
        },
        {
          name: 'selectStmt',
          c_type: 'Node*',
          comment: '/* the source SELECT/VALUES, or NULL */'
        },
        {
          name: 'onConflictClause',
          c_type: 'OnConflictClause*',
          comment: '/* ON CONFLICT clause */'
        },
        {
          name: 'returningList',
          c_type: 'List*',
          comment: '/* list of expressions to return */'
        },
        {
          name: 'withClause',
          c_type: 'WithClause*',
          comment: '/* WITH clause */'
        },
        {
          name: 'override',
          c_type: 'OverridingKind',
          comment: '/* OVERRIDING clause */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tInsert Statement\n *\n * The source expression is represented by SelectStmt for both the\n * SELECT and VALUES cases.  If selectStmt is NULL, then the query\n * is INSERT ... DEFAULT VALUES.\n * ----------------------\n */\n'
    },
    DeleteStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'relation',
          c_type: 'RangeVar*',
          comment: '/* relation to delete from */'
        },
        {
          name: 'usingClause',
          c_type: 'List*',
          comment: '/* optional using clause for more tables */'
        },
        {
          name: 'whereClause',
          c_type: 'Node*',
          comment: '/* qualifications */'
        },
        {
          name: 'returningList',
          c_type: 'List*',
          comment: '/* list of expressions to return */'
        },
        {
          name: 'withClause',
          c_type: 'WithClause*',
          comment: '/* WITH clause */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tDelete Statement\n * ----------------------\n */\n'
    },
    UpdateStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'relation',
          c_type: 'RangeVar*',
          comment: '/* relation to update */'
        },
        {
          name: 'targetList',
          c_type: 'List*',
          comment: '/* the target list (of ResTarget) */'
        },
        {
          name: 'whereClause',
          c_type: 'Node*',
          comment: '/* qualifications */'
        },
        {
          name: 'fromClause',
          c_type: 'List*',
          comment: '/* optional from clause for more tables */'
        },
        {
          name: 'returningList',
          c_type: 'List*',
          comment: '/* list of expressions to return */'
        },
        {
          name: 'withClause',
          c_type: 'WithClause*',
          comment: '/* WITH clause */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tUpdate Statement\n * ----------------------\n */\n'
    },
    SelectStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          comment: ''
        },
        {
          comment:
            '\t/*\n\t * These fields are used only in "leaf" SelectStmts.\n\t */\n'
        },
        {
          name: 'distinctClause',
          c_type: 'List*',
          comment:
            '/* NULL, list of DISTINCT ON exprs, or\n\t\t\t\t\t\t\t\t * lcons(NIL,NIL) for all (SELECT DISTINCT) */\n'
        },
        {
          name: 'intoClause',
          c_type: 'IntoClause*',
          comment: '/* target for SELECT INTO */'
        },
        {
          name: 'targetList',
          c_type: 'List*',
          comment: '/* the target list (of ResTarget) */'
        },
        {
          name: 'fromClause',
          c_type: 'List*',
          comment: '/* the FROM clause */'
        },
        {
          name: 'whereClause',
          c_type: 'Node*',
          comment: '/* WHERE qualification */'
        },
        {
          name: 'groupClause',
          c_type: 'List*',
          comment: '/* GROUP BY clauses */'
        },
        {
          name: 'havingClause',
          c_type: 'Node*',
          comment: '/* HAVING conditional-expression */'
        },
        {
          name: 'windowClause',
          c_type: 'List*',
          comment: '/* WINDOW window_name AS (...), ... */'
        },
        {
          comment: ''
        },
        {
          comment:
            '\t/*\n\t * In a "leaf" node representing a VALUES list, the above fields are all\n\t * null, and instead this field is set.  Note that the elements of the\n\t * sublists are just expressions, without ResTarget decoration. Also note\n\t * that a list element can be DEFAULT (represented as a SetToDefault\n\t * node), regardless of the context of the VALUES list. It\'s up to parse\n\t * analysis to reject that where not valid.\n\t */\n'
        },
        {
          name: 'valuesLists',
          c_type: 'List*',
          comment: '/* untransformed list of expression lists */'
        },
        {
          comment: ''
        },
        {
          comment:
            '\t/*\n\t * These fields are used in both "leaf" SelectStmts and upper-level\n\t * SelectStmts.\n\t */\n'
        },
        {
          name: 'sortClause',
          c_type: 'List*',
          comment: "/* sort clause (a list of SortBy's) */"
        },
        {
          name: 'limitOffset',
          c_type: 'Node*',
          comment: '/* # of result tuples to skip */'
        },
        {
          name: 'limitCount',
          c_type: 'Node*',
          comment: '/* # of result tuples to return */'
        },
        {
          name: 'limitOption',
          c_type: 'LimitOption',
          comment: '/* limit type */'
        },
        {
          name: 'lockingClause',
          c_type: 'List*',
          comment: "/* FOR UPDATE (list of LockingClause's) */"
        },
        {
          name: 'withClause',
          c_type: 'WithClause*',
          comment: '/* WITH clause */'
        },
        {
          comment: ''
        },
        {
          comment:
            '\t/*\n\t * These fields are used only in upper-level SelectStmts.\n\t */\n'
        },
        {
          name: 'op',
          c_type: 'SetOperation',
          comment: '/* type of set op */'
        },
        {
          name: 'all',
          c_type: 'bool',
          comment: '/* ALL specified? */'
        },
        {
          name: 'larg',
          c_type: 'SelectStmt*',
          comment: '/* left child */'
        },
        {
          name: 'rarg',
          c_type: 'SelectStmt*',
          comment: '/* right child */'
        },
        {
          comment: '\t/* Eventually add fields for CORRESPONDING spec here */\n'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tSelect Statement\n *\n * A "simple" SELECT is represented in the output of gram.y by a single\n * SelectStmt node; so is a VALUES construct.  A query containing set\n * operators (UNION, INTERSECT, EXCEPT) is represented by a tree of SelectStmt\n * nodes, in which the leaf nodes are component SELECTs and the internal nodes\n * represent UNION, INTERSECT, or EXCEPT operators.  Using the same node\n * type for both leaf and internal nodes allows gram.y to stick ORDER BY,\n * LIMIT, etc, clause values into a SELECT statement without worrying\n * whether it is a simple or compound SELECT.\n * ----------------------\n */\n'
    },
    SetOperationStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'op',
          c_type: 'SetOperation',
          comment: '/* type of set op */'
        },
        {
          name: 'all',
          c_type: 'bool',
          comment: '/* ALL specified? */'
        },
        {
          name: 'larg',
          c_type: 'Node*',
          comment: '/* left child */'
        },
        {
          name: 'rarg',
          c_type: 'Node*',
          comment: '/* right child */'
        },
        {
          comment: '\t/* Eventually add fields for CORRESPONDING spec here */\n'
        },
        {
          comment: ''
        },
        {
          comment: '\t/* Fields derived during parse analysis: */\n'
        },
        {
          name: 'colTypes',
          c_type: 'List*',
          comment: '/* OID list of output column type OIDs */'
        },
        {
          name: 'colTypmods',
          c_type: 'List*',
          comment: '/* integer list of output column typmods */'
        },
        {
          name: 'colCollations',
          c_type: 'List*',
          comment: '/* OID list of output column collation OIDs */'
        },
        {
          name: 'groupClauses',
          c_type: 'List*',
          comment: "/* a list of SortGroupClause's */"
        },
        {
          comment:
            '\t/* groupClauses is NIL if UNION ALL, but must be set otherwise */\n'
        }
      ],
      comment:
        "/* ----------------------\n *\t\tSet Operation node for post-analysis query trees\n *\n * After parse analysis, a SELECT with set operations is represented by a\n * top-level Query node containing the leaf SELECTs as subqueries in its\n * range table.  Its setOperations field shows the tree of set operations,\n * with leaf SelectStmt nodes replaced by RangeTblRef nodes, and internal\n * nodes replaced by SetOperationStmt nodes.  Information about the output\n * column types is added, too.  (Note that the child nodes do not necessarily\n * produce these types directly, but we've checked that their output types\n * can be coerced to the output column type.)  Also, if it's not UNION ALL,\n * information about the types' sort/group semantics is provided in the form\n * of a SortGroupClause list (same representation as, eg, DISTINCT).\n * The resolved common column collations are provided too; but note that if\n * it's not UNION ALL, it's okay for a column to not have a common collation,\n * so a member of the colCollations list could be InvalidOid even though the\n * column has a collatable type.\n * ----------------------\n */\n"
    },
    CreateSchemaStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'schemaname',
          c_type: 'char*',
          comment: '/* the name of the schema to create */'
        },
        {
          name: 'authrole',
          c_type: 'RoleSpec*',
          comment: '/* the owner of the created schema */'
        },
        {
          name: 'schemaElts',
          c_type: 'List*',
          comment: '/* schema components (list of parsenodes) */'
        },
        {
          name: 'if_not_exists',
          c_type: 'bool',
          comment: '/* just do nothing if schema already exists? */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tCreate Schema Statement\n *\n * NOTE: the schemaElts list contains raw parsetrees for component statements\n * of the schema, such as CREATE TABLE, GRANT, etc.  These are analyzed and\n * executed after the schema itself is created.\n * ----------------------\n */\n'
    },
    AlterTableStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'relation',
          c_type: 'RangeVar*',
          comment: '/* table to work on */'
        },
        {
          name: 'cmds',
          c_type: 'List*',
          comment: '/* list of subcommands */'
        },
        {
          name: 'relkind',
          c_type: 'ObjectType',
          comment: '/* type of object */'
        },
        {
          name: 'missing_ok',
          c_type: 'bool',
          comment: '/* skip error if table missing */'
        }
      ],
      comment:
        '/* ----------------------\n *\tAlter Table\n * ----------------------\n */\n'
    },
    ReplicaIdentityStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'identity_type',
          c_type: 'char',
          comment: null
        },
        {
          name: 'name',
          c_type: 'char*',
          comment: null
        }
      ],
      comment:
        '/* ----------------------\n *\tAlter Table\n * ----------------------\n */\n'
    },
    AlterTableCmd: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'subtype',
          c_type: 'AlterTableType',
          comment: '/* Type of table alteration to apply */'
        },
        {
          name: 'name',
          c_type: 'char*',
          comment:
            '/* column, constraint, or trigger to act on,\n\t\t\t\t\t\t\t\t * or tablespace */\n'
        },
        {
          name: 'num',
          c_type: 'int16',
          comment:
            '/* attribute number for columns referenced by\n\t\t\t\t\t\t\t\t * number */\n'
        },
        {
          name: 'newowner',
          c_type: 'RoleSpec*',
          comment: null
        },
        {
          name: 'def',
          c_type: 'Node*',
          comment:
            '/* definition of new column, index,\n\t\t\t\t\t\t\t\t * constraint, or parent table */\n'
        },
        {
          name: 'behavior',
          c_type: 'DropBehavior',
          comment: '/* RESTRICT or CASCADE for DROP cases */'
        },
        {
          name: 'missing_ok',
          c_type: 'bool',
          comment: '/* skip error if missing? */'
        }
      ],
      comment:
        '/* ----------------------\n *\tAlter Table\n * ----------------------\n */\n'
    },
    AlterCollationStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'collname',
          c_type: 'List*',
          comment: null
        }
      ],
      comment:
        '/* ----------------------\n * Alter Collation\n * ----------------------\n */\n'
    },
    AlterDomainStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'subtype',
          c_type: 'char',
          comment:
            '/*------------\n\t\t\t\t\t\t\t\t *\tT = alter column default\n\t\t\t\t\t\t\t\t *\tN = alter column drop not null\n\t\t\t\t\t\t\t\t *\tO = alter column set not null\n\t\t\t\t\t\t\t\t *\tC = add constraint\n\t\t\t\t\t\t\t\t *\tX = drop constraint\n\t\t\t\t\t\t\t\t *------------\n\t\t\t\t\t\t\t\t */\n'
        },
        {
          name: 'typeName',
          c_type: 'List*',
          comment: '/* domain to work on */'
        },
        {
          name: 'name',
          c_type: 'char*',
          comment: '/* column or constraint name to act on */'
        },
        {
          name: 'def',
          c_type: 'Node*',
          comment: '/* definition of default or constraint */'
        },
        {
          name: 'behavior',
          c_type: 'DropBehavior',
          comment: '/* RESTRICT or CASCADE for DROP cases */'
        },
        {
          name: 'missing_ok',
          c_type: 'bool',
          comment: '/* skip error if missing? */'
        }
      ],
      comment:
        '/* ----------------------\n *\tAlter Domain\n *\n * The fields are used in different ways by the different variants of\n * this command.\n * ----------------------\n */\n'
    },
    GrantStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'is_grant',
          c_type: 'bool',
          comment: '/* true = GRANT, false = REVOKE */'
        },
        {
          name: 'targtype',
          c_type: 'GrantTargetType',
          comment: '/* type of the grant target */'
        },
        {
          name: 'objtype',
          c_type: 'ObjectType',
          comment: '/* kind of object being operated on */'
        },
        {
          name: 'objects',
          c_type: 'List*',
          comment:
            '/* list of RangeVar nodes, ObjectWithArgs\n\t\t\t\t\t\t\t\t * nodes, or plain names (as Value strings) */\n'
        },
        {
          name: 'privileges',
          c_type: 'List*',
          comment: '/* list of AccessPriv nodes */'
        },
        {
          comment: '\t/* privileges == NIL denotes ALL PRIVILEGES */\n'
        },
        {
          name: 'grantees',
          c_type: 'List*',
          comment: '/* list of RoleSpec nodes */'
        },
        {
          name: 'grant_option',
          c_type: 'bool',
          comment: '/* grant or revoke grant option */'
        },
        {
          name: 'behavior',
          c_type: 'DropBehavior',
          comment: '/* drop behavior (for REVOKE) */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tGrant|Revoke Statement\n * ----------------------\n */\n'
    },
    ObjectWithArgs: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'objname',
          c_type: 'List*',
          comment: '/* qualified name of function/operator */'
        },
        {
          name: 'objargs',
          c_type: 'List*',
          comment: '/* list of Typename nodes */'
        },
        {
          name: 'args_unspecified',
          c_type: 'bool',
          comment:
            '/* argument list was omitted, so name must\n\t\t\t\t\t\t\t\t\t * be unique (note that objargs == NIL\n\t\t\t\t\t\t\t\t\t * means zero args) */\n'
        }
      ],
      comment:
        '/*\n * Note: ObjectWithArgs carries only the types of the input parameters of the\n * function.  So it is sufficient to identify an existing function, but it\n * is not enough info to define a function nor to call it.\n */\n'
    },
    AccessPriv: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'priv_name',
          c_type: 'char*',
          comment: '/* string name of privilege */'
        },
        {
          name: 'cols',
          c_type: 'List*',
          comment: '/* list of Value strings */'
        }
      ],
      comment:
        '/*\n * An access privilege, with optional list of column names\n * priv_name == NULL denotes ALL PRIVILEGES (only used with a column list)\n * cols == NIL denotes "all columns"\n * Note that simple "ALL PRIVILEGES" is represented as a NIL list, not\n * an AccessPriv with both fields null.\n */\n'
    },
    GrantRoleStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'granted_roles',
          c_type: 'List*',
          comment: '/* list of roles to be granted/revoked */'
        },
        {
          name: 'grantee_roles',
          c_type: 'List*',
          comment: '/* list of member roles to add/delete */'
        },
        {
          name: 'is_grant',
          c_type: 'bool',
          comment: '/* true = GRANT, false = REVOKE */'
        },
        {
          name: 'admin_opt',
          c_type: 'bool',
          comment: '/* with admin option */'
        },
        {
          name: 'grantor',
          c_type: 'RoleSpec*',
          comment: '/* set grantor to other than current role */'
        },
        {
          name: 'behavior',
          c_type: 'DropBehavior',
          comment: '/* drop behavior (for REVOKE) */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tGrant/Revoke Role Statement\n *\n * Note: because of the parsing ambiguity with the GRANT <privileges>\n * statement, granted_roles is a list of AccessPriv; the execution code\n * should complain if any column lists appear.  grantee_roles is a list\n * of role names, as Value strings.\n * ----------------------\n */\n'
    },
    AlterDefaultPrivilegesStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'options',
          c_type: 'List*',
          comment: '/* list of DefElem */'
        },
        {
          name: 'action',
          c_type: 'GrantStmt*',
          comment: '/* GRANT/REVOKE action (with objects=NIL) */'
        }
      ],
      comment:
        '/* ----------------------\n *\tAlter Default Privileges Statement\n * ----------------------\n */\n'
    },
    CopyStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'relation',
          c_type: 'RangeVar*',
          comment: '/* the relation to copy */'
        },
        {
          name: 'query',
          c_type: 'Node*',
          comment:
            '/* the query (SELECT or DML statement with\n\t\t\t\t\t\t\t\t * RETURNING) to copy, as a raw parse tree */\n'
        },
        {
          name: 'attlist',
          c_type: 'List*',
          comment:
            '/* List of column names (as Strings), or NIL\n\t\t\t\t\t\t\t\t * for all columns */\n'
        },
        {
          name: 'is_from',
          c_type: 'bool',
          comment: '/* TO or FROM */'
        },
        {
          name: 'is_program',
          c_type: 'bool',
          comment: "/* is 'filename' a program to popen? */"
        },
        {
          name: 'filename',
          c_type: 'char*',
          comment: '/* filename, or NULL for STDIN/STDOUT */'
        },
        {
          name: 'options',
          c_type: 'List*',
          comment: '/* List of DefElem nodes */'
        },
        {
          name: 'whereClause',
          c_type: 'Node*',
          comment: '/* WHERE condition (or NULL) */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tCopy Statement\n *\n * We support "COPY relation FROM file", "COPY relation TO file", and\n * "COPY (query) TO file".  In any given CopyStmt, exactly one of "relation"\n * and "query" must be non-NULL.\n * ----------------------\n */\n'
    },
    VariableSetStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'kind',
          c_type: 'VariableSetKind',
          comment: null
        },
        {
          name: 'name',
          c_type: 'char*',
          comment: '/* variable to be set */'
        },
        {
          name: 'args',
          c_type: 'List*',
          comment: '/* List of A_Const nodes */'
        },
        {
          name: 'is_local',
          c_type: 'bool',
          comment: '/* SET LOCAL? */'
        }
      ],
      comment: null
    },
    VariableShowStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'name',
          c_type: 'char*',
          comment: null
        }
      ],
      comment:
        '/* ----------------------\n * Show Statement\n * ----------------------\n */\n'
    },
    CreateStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'relation',
          c_type: 'RangeVar*',
          comment: '/* relation to create */'
        },
        {
          name: 'tableElts',
          c_type: 'List*',
          comment: '/* column definitions (list of ColumnDef) */'
        },
        {
          name: 'inhRelations',
          c_type: 'List*',
          comment:
            '/* relations to inherit from (list of\n\t\t\t\t\t\t\t\t * inhRelation) */\n'
        },
        {
          name: 'partbound',
          c_type: 'PartitionBoundSpec*',
          comment: '/* FOR VALUES clause */'
        },
        {
          name: 'partspec',
          c_type: 'PartitionSpec*',
          comment: '/* PARTITION BY clause */'
        },
        {
          name: 'ofTypename',
          c_type: 'TypeName*',
          comment: '/* OF typename */'
        },
        {
          name: 'constraints',
          c_type: 'List*',
          comment: '/* constraints (list of Constraint nodes) */'
        },
        {
          name: 'options',
          c_type: 'List*',
          comment: '/* options from WITH clause */'
        },
        {
          name: 'oncommit',
          c_type: 'OnCommitAction',
          comment: '/* what do we do at COMMIT? */'
        },
        {
          name: 'tablespacename',
          c_type: 'char*',
          comment: '/* table space to use, or NULL */'
        },
        {
          name: 'accessMethod',
          c_type: 'char*',
          comment: '/* table access method */'
        },
        {
          name: 'if_not_exists',
          c_type: 'bool',
          comment: '/* just do nothing if it already exists? */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tCreate Table Statement\n *\n * NOTE: in the raw gram.y output, ColumnDef and Constraint nodes are\n * intermixed in tableElts, and constraints is NIL.  After parse analysis,\n * tableElts contains just ColumnDefs, and constraints contains just\n * Constraint nodes (in fact, only CONSTR_CHECK nodes, in the present\n * implementation).\n * ----------------------\n */\n'
    },
    Constraint: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'contype',
          c_type: 'ConstrType',
          comment: '/* see above */'
        },
        {
          comment: ''
        },
        {
          comment: '\t/* Fields used for most/all constraint types: */\n'
        },
        {
          name: 'conname',
          c_type: 'char*',
          comment: '/* Constraint name, or NULL if unnamed */'
        },
        {
          name: 'deferrable',
          c_type: 'bool',
          comment: '/* DEFERRABLE? */'
        },
        {
          name: 'initdeferred',
          c_type: 'bool',
          comment: '/* INITIALLY DEFERRED? */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        },
        {
          comment: ''
        },
        {
          comment:
            '\t/* Fields used for constraints with expressions (CHECK and DEFAULT): */\n'
        },
        {
          name: 'is_no_inherit',
          c_type: 'bool',
          comment: '/* is constraint non-inheritable? */'
        },
        {
          name: 'raw_expr',
          c_type: 'Node*',
          comment: '/* expr, as untransformed parse tree */'
        },
        {
          name: 'cooked_expr',
          c_type: 'char*',
          comment: '/* expr, as nodeToString representation */'
        },
        {
          name: 'generated_when',
          c_type: 'char',
          comment: '/* ALWAYS or BY DEFAULT */'
        },
        {
          comment: ''
        },
        {
          comment:
            '\t/* Fields used for unique constraints (UNIQUE and PRIMARY KEY): */\n'
        },
        {
          name: 'keys',
          c_type: 'List*',
          comment:
            '/* String nodes naming referenced key\n\t\t\t\t\t\t\t\t * column(s) */\n'
        },
        {
          name: 'including',
          c_type: 'List*',
          comment:
            '/* String nodes naming referenced nonkey\n\t\t\t\t\t\t\t\t * column(s) */\n'
        },
        {
          comment: ''
        },
        {
          comment: '\t/* Fields used for EXCLUSION constraints: */\n'
        },
        {
          name: 'exclusions',
          c_type: 'List*',
          comment: '/* list of (IndexElem, operator name) pairs */'
        },
        {
          comment: ''
        },
        {
          comment:
            '\t/* Fields used for index constraints (UNIQUE, PRIMARY KEY, EXCLUSION): */\n'
        },
        {
          name: 'options',
          c_type: 'List*',
          comment: '/* options from WITH clause */'
        },
        {
          name: 'indexname',
          c_type: 'char*',
          comment: '/* existing index to use; otherwise NULL */'
        },
        {
          name: 'indexspace',
          c_type: 'char*',
          comment: '/* index tablespace; NULL for default */'
        },
        {
          name: 'reset_default_tblspc',
          c_type: 'bool',
          comment:
            '/* reset default_tablespace prior to\n\t\t\t\t\t\t\t\t\t\t * creating the index */\n'
        },
        {
          comment:
            '\t/* These could be, but currently are not, used for UNIQUE/PKEY: */\n'
        },
        {
          name: 'access_method',
          c_type: 'char*',
          comment: '/* index access method; NULL for default */'
        },
        {
          name: 'where_clause',
          c_type: 'Node*',
          comment: '/* partial index predicate */'
        },
        {
          comment: ''
        },
        {
          comment: '\t/* Fields used for FOREIGN KEY constraints: */\n'
        },
        {
          name: 'pktable',
          c_type: 'RangeVar*',
          comment: '/* Primary key table */'
        },
        {
          name: 'fk_attrs',
          c_type: 'List*',
          comment: '/* Attributes of foreign key */'
        },
        {
          name: 'pk_attrs',
          c_type: 'List*',
          comment: '/* Corresponding attrs in PK table */'
        },
        {
          name: 'fk_matchtype',
          c_type: 'char',
          comment: '/* FULL, PARTIAL, SIMPLE */'
        },
        {
          name: 'fk_upd_action',
          c_type: 'char',
          comment: '/* ON UPDATE action */'
        },
        {
          name: 'fk_del_action',
          c_type: 'char',
          comment: '/* ON DELETE action */'
        },
        {
          name: 'old_conpfeqop',
          c_type: 'List*',
          comment: '/* pg_constraint.conpfeqop of my former self */'
        },
        {
          name: 'old_pktable_oid',
          c_type: 'Oid',
          comment:
            '/* pg_constraint.confrelid of my former\n\t\t\t\t\t\t\t\t\t * self */\n'
        },
        {
          comment: ''
        },
        {
          comment:
            '\t/* Fields used for constraints that allow a NOT VALID specification */\n'
        },
        {
          name: 'skip_validation',
          c_type: 'bool',
          comment: '/* skip validation of existing rows? */'
        },
        {
          name: 'initially_valid',
          c_type: 'bool',
          comment: '/* mark the new constraint as valid? */'
        }
      ],
      comment: '/* Foreign key matchtype codes */\n'
    },
    CreateTableSpaceStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'tablespacename',
          c_type: 'char*',
          comment: null
        },
        {
          name: 'owner',
          c_type: 'RoleSpec*',
          comment: null
        },
        {
          name: 'location',
          c_type: 'char*',
          comment: null
        },
        {
          name: 'options',
          c_type: 'List*',
          comment: null
        }
      ],
      comment:
        '/* ----------------------\n *\t\tCreate/Drop Table Space Statements\n * ----------------------\n */\n'
    },
    DropTableSpaceStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'tablespacename',
          c_type: 'char*',
          comment: null
        },
        {
          name: 'missing_ok',
          c_type: 'bool',
          comment: '/* skip error if missing? */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tCreate/Drop Table Space Statements\n * ----------------------\n */\n'
    },
    AlterTableSpaceOptionsStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'tablespacename',
          c_type: 'char*',
          comment: null
        },
        {
          name: 'options',
          c_type: 'List*',
          comment: null
        },
        {
          name: 'isReset',
          c_type: 'bool',
          comment: null
        }
      ],
      comment: null
    },
    AlterTableMoveAllStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'orig_tablespacename',
          c_type: 'char*',
          comment: null
        },
        {
          name: 'objtype',
          c_type: 'ObjectType',
          comment: '/* Object type to move */'
        },
        {
          name: 'roles',
          c_type: 'List*',
          comment: '/* List of roles to move objects of */'
        },
        {
          name: 'new_tablespacename',
          c_type: 'char*',
          comment: null
        },
        {
          name: 'nowait',
          c_type: 'bool',
          comment: null
        }
      ],
      comment: null
    },
    CreateExtensionStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'extname',
          c_type: 'char*',
          comment: null
        },
        {
          name: 'if_not_exists',
          c_type: 'bool',
          comment: '/* just do nothing if it already exists? */'
        },
        {
          name: 'options',
          c_type: 'List*',
          comment: '/* List of DefElem nodes */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tCreate/Alter Extension Statements\n * ----------------------\n */\n'
    },
    AlterExtensionStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'extname',
          c_type: 'char*',
          comment: null
        },
        {
          name: 'options',
          c_type: 'List*',
          comment: '/* List of DefElem nodes */'
        }
      ],
      comment:
        '/* Only used for ALTER EXTENSION UPDATE; later might need an action field */\n'
    },
    AlterExtensionContentsStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'extname',
          c_type: 'char*',
          comment: "/* Extension's name */"
        },
        {
          name: 'action',
          c_type: 'int',
          comment: '/* +1 = add object, -1 = drop object */'
        },
        {
          name: 'objtype',
          c_type: 'ObjectType',
          comment: "/* Object's type */"
        },
        {
          name: 'object',
          c_type: 'Node*',
          comment: '/* Qualified name of the object */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tCreate/Alter Extension Statements\n * ----------------------\n */\n'
    },
    CreateFdwStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'fdwname',
          c_type: 'char*',
          comment: '/* foreign-data wrapper name */'
        },
        {
          name: 'func_options',
          c_type: 'List*',
          comment: '/* HANDLER/VALIDATOR options */'
        },
        {
          name: 'options',
          c_type: 'List*',
          comment: '/* generic options to FDW */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tCreate/Alter FOREIGN DATA WRAPPER Statements\n * ----------------------\n */\n'
    },
    AlterFdwStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'fdwname',
          c_type: 'char*',
          comment: '/* foreign-data wrapper name */'
        },
        {
          name: 'func_options',
          c_type: 'List*',
          comment: '/* HANDLER/VALIDATOR options */'
        },
        {
          name: 'options',
          c_type: 'List*',
          comment: '/* generic options to FDW */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tCreate/Alter FOREIGN DATA WRAPPER Statements\n * ----------------------\n */\n'
    },
    CreateForeignServerStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'servername',
          c_type: 'char*',
          comment: '/* server name */'
        },
        {
          name: 'servertype',
          c_type: 'char*',
          comment: '/* optional server type */'
        },
        {
          name: 'version',
          c_type: 'char*',
          comment: '/* optional server version */'
        },
        {
          name: 'fdwname',
          c_type: 'char*',
          comment: '/* FDW name */'
        },
        {
          name: 'if_not_exists',
          c_type: 'bool',
          comment: '/* just do nothing if it already exists? */'
        },
        {
          name: 'options',
          c_type: 'List*',
          comment: '/* generic options to server */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tCreate/Alter FOREIGN SERVER Statements\n * ----------------------\n */\n'
    },
    AlterForeignServerStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'servername',
          c_type: 'char*',
          comment: '/* server name */'
        },
        {
          name: 'version',
          c_type: 'char*',
          comment: '/* optional server version */'
        },
        {
          name: 'options',
          c_type: 'List*',
          comment: '/* generic options to server */'
        },
        {
          name: 'has_version',
          c_type: 'bool',
          comment: '/* version specified */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tCreate/Alter FOREIGN SERVER Statements\n * ----------------------\n */\n'
    },
    CreateForeignTableStmt: {
      fields: [
        {
          name: 'base',
          c_type: 'CreateStmt',
          comment: null
        },
        {
          name: 'servername',
          c_type: 'char*',
          comment: null
        },
        {
          name: 'options',
          c_type: 'List*',
          comment: null
        }
      ],
      comment:
        '/* ----------------------\n *\t\tCreate FOREIGN TABLE Statement\n * ----------------------\n */\n'
    },
    CreateUserMappingStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'user',
          c_type: 'RoleSpec*',
          comment: '/* user role */'
        },
        {
          name: 'servername',
          c_type: 'char*',
          comment: '/* server name */'
        },
        {
          name: 'if_not_exists',
          c_type: 'bool',
          comment: '/* just do nothing if it already exists? */'
        },
        {
          name: 'options',
          c_type: 'List*',
          comment: '/* generic options to server */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tCreate/Drop USER MAPPING Statements\n * ----------------------\n */\n'
    },
    AlterUserMappingStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'user',
          c_type: 'RoleSpec*',
          comment: '/* user role */'
        },
        {
          name: 'servername',
          c_type: 'char*',
          comment: '/* server name */'
        },
        {
          name: 'options',
          c_type: 'List*',
          comment: '/* generic options to server */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tCreate/Drop USER MAPPING Statements\n * ----------------------\n */\n'
    },
    DropUserMappingStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'user',
          c_type: 'RoleSpec*',
          comment: '/* user role */'
        },
        {
          name: 'servername',
          c_type: 'char*',
          comment: '/* server name */'
        },
        {
          name: 'missing_ok',
          c_type: 'bool',
          comment: '/* ignore missing mappings */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tCreate/Drop USER MAPPING Statements\n * ----------------------\n */\n'
    },
    ImportForeignSchemaStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'server_name',
          c_type: 'char*',
          comment: '/* FDW server name */'
        },
        {
          name: 'remote_schema',
          c_type: 'char*',
          comment: '/* remote schema name to query */'
        },
        {
          name: 'local_schema',
          c_type: 'char*',
          comment: '/* local schema to create objects in */'
        },
        {
          name: 'list_type',
          c_type: 'ImportForeignSchemaType',
          comment: '/* type of table list */'
        },
        {
          name: 'table_list',
          c_type: 'List*',
          comment: '/* List of RangeVar */'
        },
        {
          name: 'options',
          c_type: 'List*',
          comment: '/* list of options to pass to FDW */'
        }
      ],
      comment: null
    },
    CreatePolicyStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'policy_name',
          c_type: 'char*',
          comment: "/* Policy's name */"
        },
        {
          name: 'table',
          c_type: 'RangeVar*',
          comment: '/* the table name the policy applies to */'
        },
        {
          name: 'cmd_name',
          c_type: 'char*',
          comment: '/* the command name the policy applies to */'
        },
        {
          name: 'permissive',
          c_type: 'bool',
          comment: '/* restrictive or permissive policy */'
        },
        {
          name: 'roles',
          c_type: 'List*',
          comment: '/* the roles associated with the policy */'
        },
        {
          name: 'qual',
          c_type: 'Node*',
          comment: "/* the policy's condition */"
        },
        {
          name: 'with_check',
          c_type: 'Node*',
          comment: "/* the policy's WITH CHECK condition. */"
        }
      ],
      comment:
        '/*----------------------\n *\t\tCreate POLICY Statement\n *----------------------\n */\n'
    },
    AlterPolicyStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'policy_name',
          c_type: 'char*',
          comment: "/* Policy's name */"
        },
        {
          name: 'table',
          c_type: 'RangeVar*',
          comment: '/* the table name the policy applies to */'
        },
        {
          name: 'roles',
          c_type: 'List*',
          comment: '/* the roles associated with the policy */'
        },
        {
          name: 'qual',
          c_type: 'Node*',
          comment: "/* the policy's condition */"
        },
        {
          name: 'with_check',
          c_type: 'Node*',
          comment: "/* the policy's WITH CHECK condition. */"
        }
      ],
      comment:
        '/*----------------------\n *\t\tAlter POLICY Statement\n *----------------------\n */\n'
    },
    CreateAmStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'amname',
          c_type: 'char*',
          comment: '/* access method name */'
        },
        {
          name: 'handler_name',
          c_type: 'List*',
          comment: '/* handler function name */'
        },
        {
          name: 'amtype',
          c_type: 'char',
          comment: '/* type of access method */'
        }
      ],
      comment:
        '/*----------------------\n *\t\tCreate ACCESS METHOD Statement\n *----------------------\n */\n'
    },
    CreateTrigStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'trigname',
          c_type: 'char*',
          comment: "/* TRIGGER's name */"
        },
        {
          name: 'relation',
          c_type: 'RangeVar*',
          comment: '/* relation trigger is on */'
        },
        {
          name: 'funcname',
          c_type: 'List*',
          comment: '/* qual. name of function to call */'
        },
        {
          name: 'args',
          c_type: 'List*',
          comment: '/* list of (T_String) Values or NIL */'
        },
        {
          name: 'row',
          c_type: 'bool',
          comment: '/* ROW/STATEMENT */'
        },
        {
          comment:
            '\t/* timing uses the TRIGGER_TYPE bits defined in catalog/pg_trigger.h */\n'
        },
        {
          name: 'timing',
          c_type: 'int16',
          comment: '/* BEFORE, AFTER, or INSTEAD */'
        },
        {
          comment:
            '\t/* events uses the TRIGGER_TYPE bits defined in catalog/pg_trigger.h */\n'
        },
        {
          name: 'events',
          c_type: 'int16',
          comment: '/* "OR" of INSERT/UPDATE/DELETE/TRUNCATE */'
        },
        {
          name: 'columns',
          c_type: 'List*',
          comment: '/* column names, or NIL for all columns */'
        },
        {
          name: 'whenClause',
          c_type: 'Node*',
          comment: '/* qual expression, or NULL if none */'
        },
        {
          name: 'isconstraint',
          c_type: 'bool',
          comment: '/* This is a constraint trigger */'
        },
        {
          comment: '\t/* explicitly named transition data */\n'
        },
        {
          name: 'transitionRels',
          c_type: 'List*',
          comment: '/* TriggerTransition nodes, or NIL if none */'
        },
        {
          comment:
            '\t/* The remaining fields are only used for constraint triggers */\n'
        },
        {
          name: 'deferrable',
          c_type: 'bool',
          comment: '/* [NOT] DEFERRABLE */'
        },
        {
          name: 'initdeferred',
          c_type: 'bool',
          comment: '/* INITIALLY {DEFERRED|IMMEDIATE} */'
        },
        {
          name: 'constrrel',
          c_type: 'RangeVar*',
          comment: '/* opposite relation, if RI trigger */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tCreate TRIGGER Statement\n * ----------------------\n */\n'
    },
    CreateEventTrigStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'trigname',
          c_type: 'char*',
          comment: "/* TRIGGER's name */"
        },
        {
          name: 'eventname',
          c_type: 'char*',
          comment: "/* event's identifier */"
        },
        {
          name: 'whenclause',
          c_type: 'List*',
          comment: '/* list of DefElems indicating filtering */'
        },
        {
          name: 'funcname',
          c_type: 'List*',
          comment: '/* qual. name of function to call */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tCreate EVENT TRIGGER Statement\n * ----------------------\n */\n'
    },
    AlterEventTrigStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'trigname',
          c_type: 'char*',
          comment: "/* TRIGGER's name */"
        },
        {
          name: 'tgenabled',
          c_type: 'char',
          comment:
            "/* trigger's firing configuration WRT\n\t\t\t\t\t\t\t\t * session_replication_role */\n"
        }
      ],
      comment:
        '/* ----------------------\n *\t\tAlter EVENT TRIGGER Statement\n * ----------------------\n */\n'
    },
    CreatePLangStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'replace',
          c_type: 'bool',
          comment: '/* T => replace if already exists */'
        },
        {
          name: 'plname',
          c_type: 'char*',
          comment: '/* PL name */'
        },
        {
          name: 'plhandler',
          c_type: 'List*',
          comment: '/* PL call handler function (qual. name) */'
        },
        {
          name: 'plinline',
          c_type: 'List*',
          comment: '/* optional inline function (qual. name) */'
        },
        {
          name: 'plvalidator',
          c_type: 'List*',
          comment: '/* optional validator function (qual. name) */'
        },
        {
          name: 'pltrusted',
          c_type: 'bool',
          comment: '/* PL is trusted */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tCreate LANGUAGE Statements\n * ----------------------\n */\n'
    },
    CreateRoleStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'stmt_type',
          c_type: 'RoleStmtType',
          comment: '/* ROLE/USER/GROUP */'
        },
        {
          name: 'role',
          c_type: 'char*',
          comment: '/* role name */'
        },
        {
          name: 'options',
          c_type: 'List*',
          comment: '/* List of DefElem nodes */'
        }
      ],
      comment:
        "/* ----------------------\n *\tCreate/Alter/Drop Role Statements\n *\n * Note: these node types are also used for the backwards-compatible\n * Create/Alter/Drop User/Group statements.  In the ALTER and DROP cases\n * there's really no need to distinguish what the original spelling was,\n * but for CREATE we mark the type because the defaults vary.\n * ----------------------\n */\n"
    },
    AlterRoleStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'role',
          c_type: 'RoleSpec*',
          comment: '/* role */'
        },
        {
          name: 'options',
          c_type: 'List*',
          comment: '/* List of DefElem nodes */'
        },
        {
          name: 'action',
          c_type: 'int',
          comment: '/* +1 = add members, -1 = drop members */'
        }
      ],
      comment:
        "/* ----------------------\n *\tCreate/Alter/Drop Role Statements\n *\n * Note: these node types are also used for the backwards-compatible\n * Create/Alter/Drop User/Group statements.  In the ALTER and DROP cases\n * there's really no need to distinguish what the original spelling was,\n * but for CREATE we mark the type because the defaults vary.\n * ----------------------\n */\n"
    },
    AlterRoleSetStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'role',
          c_type: 'RoleSpec*',
          comment: '/* role */'
        },
        {
          name: 'database',
          c_type: 'char*',
          comment: '/* database name, or NULL */'
        },
        {
          name: 'setstmt',
          c_type: 'VariableSetStmt*',
          comment: '/* SET or RESET subcommand */'
        }
      ],
      comment:
        "/* ----------------------\n *\tCreate/Alter/Drop Role Statements\n *\n * Note: these node types are also used for the backwards-compatible\n * Create/Alter/Drop User/Group statements.  In the ALTER and DROP cases\n * there's really no need to distinguish what the original spelling was,\n * but for CREATE we mark the type because the defaults vary.\n * ----------------------\n */\n"
    },
    DropRoleStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'roles',
          c_type: 'List*',
          comment: '/* List of roles to remove */'
        },
        {
          name: 'missing_ok',
          c_type: 'bool',
          comment: '/* skip error if a role is missing? */'
        }
      ],
      comment:
        "/* ----------------------\n *\tCreate/Alter/Drop Role Statements\n *\n * Note: these node types are also used for the backwards-compatible\n * Create/Alter/Drop User/Group statements.  In the ALTER and DROP cases\n * there's really no need to distinguish what the original spelling was,\n * but for CREATE we mark the type because the defaults vary.\n * ----------------------\n */\n"
    },
    CreateSeqStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'sequence',
          c_type: 'RangeVar*',
          comment: '/* the sequence to create */'
        },
        {
          name: 'options',
          c_type: 'List*',
          comment: null
        },
        {
          name: 'ownerId',
          c_type: 'Oid',
          comment: '/* ID of owner, or InvalidOid for default */'
        },
        {
          name: 'for_identity',
          c_type: 'bool',
          comment: null
        },
        {
          name: 'if_not_exists',
          c_type: 'bool',
          comment: '/* just do nothing if it already exists? */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\t{Create|Alter} SEQUENCE Statement\n * ----------------------\n */\n'
    },
    AlterSeqStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'sequence',
          c_type: 'RangeVar*',
          comment: '/* the sequence to alter */'
        },
        {
          name: 'options',
          c_type: 'List*',
          comment: null
        },
        {
          name: 'for_identity',
          c_type: 'bool',
          comment: null
        },
        {
          name: 'missing_ok',
          c_type: 'bool',
          comment: '/* skip error if a role is missing? */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\t{Create|Alter} SEQUENCE Statement\n * ----------------------\n */\n'
    },
    DefineStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'kind',
          c_type: 'ObjectType',
          comment: '/* aggregate, operator, type */'
        },
        {
          name: 'oldstyle',
          c_type: 'bool',
          comment: '/* hack to signal old CREATE AGG syntax */'
        },
        {
          name: 'defnames',
          c_type: 'List*',
          comment: '/* qualified name (list of Value strings) */'
        },
        {
          name: 'args',
          c_type: 'List*',
          comment: '/* a list of TypeName (if needed) */'
        },
        {
          name: 'definition',
          c_type: 'List*',
          comment: '/* a list of DefElem */'
        },
        {
          name: 'if_not_exists',
          c_type: 'bool',
          comment: '/* just do nothing if it already exists? */'
        },
        {
          name: 'replace',
          c_type: 'bool',
          comment: '/* replace if already exists? */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tCreate {Aggregate|Operator|Type} Statement\n * ----------------------\n */\n'
    },
    CreateDomainStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'domainname',
          c_type: 'List*',
          comment: '/* qualified name (list of Value strings) */'
        },
        {
          name: 'typeName',
          c_type: 'TypeName*',
          comment: '/* the base type */'
        },
        {
          name: 'collClause',
          c_type: 'CollateClause*',
          comment: '/* untransformed COLLATE spec, if any */'
        },
        {
          name: 'constraints',
          c_type: 'List*',
          comment: '/* constraints (list of Constraint nodes) */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tCreate Domain Statement\n * ----------------------\n */\n'
    },
    CreateOpClassStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'opclassname',
          c_type: 'List*',
          comment: '/* qualified name (list of Value strings) */'
        },
        {
          name: 'opfamilyname',
          c_type: 'List*',
          comment: '/* qualified name (ditto); NIL if omitted */'
        },
        {
          name: 'amname',
          c_type: 'char*',
          comment: '/* name of index AM opclass is for */'
        },
        {
          name: 'datatype',
          c_type: 'TypeName*',
          comment: '/* datatype of indexed column */'
        },
        {
          name: 'items',
          c_type: 'List*',
          comment: '/* List of CreateOpClassItem nodes */'
        },
        {
          name: 'isDefault',
          c_type: 'bool',
          comment: '/* Should be marked as default for type? */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tCreate Operator Class Statement\n * ----------------------\n */\n'
    },
    CreateOpClassItem: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'itemtype',
          c_type: 'int',
          comment: '/* see codes above */'
        },
        {
          name: 'name',
          c_type: 'ObjectWithArgs*',
          comment: '/* operator or function name and args */'
        },
        {
          name: 'number',
          c_type: 'int',
          comment: '/* strategy num or support proc num */'
        },
        {
          name: 'order_family',
          c_type: 'List*',
          comment: '/* only used for ordering operators */'
        },
        {
          name: 'class_args',
          c_type: 'List*',
          comment:
            '/* amproclefttype/amprocrighttype or\n\t\t\t\t\t\t\t\t * amoplefttype/amoprighttype */\n'
        },
        {
          comment: '\t/* fields used for a storagetype item: */\n'
        },
        {
          name: 'storedtype',
          c_type: 'TypeName*',
          comment: '/* datatype stored in index */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tCreate Operator Class Statement\n * ----------------------\n */\n'
    },
    CreateOpFamilyStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'opfamilyname',
          c_type: 'List*',
          comment: '/* qualified name (list of Value strings) */'
        },
        {
          name: 'amname',
          c_type: 'char*',
          comment: '/* name of index AM opfamily is for */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tCreate Operator Family Statement\n * ----------------------\n */\n'
    },
    AlterOpFamilyStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'opfamilyname',
          c_type: 'List*',
          comment: '/* qualified name (list of Value strings) */'
        },
        {
          name: 'amname',
          c_type: 'char*',
          comment: '/* name of index AM opfamily is for */'
        },
        {
          name: 'isDrop',
          c_type: 'bool',
          comment: '/* ADD or DROP the items? */'
        },
        {
          name: 'items',
          c_type: 'List*',
          comment: '/* List of CreateOpClassItem nodes */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tAlter Operator Family Statement\n * ----------------------\n */\n'
    },
    DropStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'objects',
          c_type: 'List*',
          comment: '/* list of names */'
        },
        {
          name: 'removeType',
          c_type: 'ObjectType',
          comment: '/* object type */'
        },
        {
          name: 'behavior',
          c_type: 'DropBehavior',
          comment: '/* RESTRICT or CASCADE behavior */'
        },
        {
          name: 'missing_ok',
          c_type: 'bool',
          comment: '/* skip error if object is missing? */'
        },
        {
          name: 'concurrent',
          c_type: 'bool',
          comment: '/* drop index concurrently? */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tDrop Table|Sequence|View|Index|Type|Domain|Conversion|Schema Statement\n * ----------------------\n */\n'
    },
    TruncateStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'relations',
          c_type: 'List*',
          comment: '/* relations (RangeVars) to be truncated */'
        },
        {
          name: 'restart_seqs',
          c_type: 'bool',
          comment: '/* restart owned sequences? */'
        },
        {
          name: 'behavior',
          c_type: 'DropBehavior',
          comment: '/* RESTRICT or CASCADE behavior */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\t\t\tTruncate Table Statement\n * ----------------------\n */\n'
    },
    CommentStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'objtype',
          c_type: 'ObjectType',
          comment: "/* Object's type */"
        },
        {
          name: 'object',
          c_type: 'Node*',
          comment: '/* Qualified name of the object */'
        },
        {
          name: 'comment',
          c_type: 'char*',
          comment: '/* Comment to insert, or NULL to remove */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\t\t\tComment On Statement\n * ----------------------\n */\n'
    },
    SecLabelStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'objtype',
          c_type: 'ObjectType',
          comment: "/* Object's type */"
        },
        {
          name: 'object',
          c_type: 'Node*',
          comment: '/* Qualified name of the object */'
        },
        {
          name: 'provider',
          c_type: 'char*',
          comment: '/* Label provider (or NULL) */'
        },
        {
          name: 'label',
          c_type: 'char*',
          comment: '/* New security label to be assigned */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\t\t\tSECURITY LABEL Statement\n * ----------------------\n */\n'
    },
    DeclareCursorStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'portalname',
          c_type: 'char*',
          comment: '/* name of the portal (cursor) */'
        },
        {
          name: 'options',
          c_type: 'int',
          comment: '/* bitmask of options (see above) */'
        },
        {
          name: 'query',
          c_type: 'Node*',
          comment: '/* the query (see comments above) */'
        }
      ],
      comment:
        '/* these planner-control flags do not correspond to any SQL grammar: */\n'
    },
    ClosePortalStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'portalname',
          c_type: 'char*',
          comment: '/* name of the portal (cursor) */'
        },
        {
          comment: '\t/* NULL means CLOSE ALL */\n'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tClose Portal Statement\n * ----------------------\n */\n'
    },
    FetchStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'direction',
          c_type: 'FetchDirection',
          comment: '/* see above */'
        },
        {
          name: 'howMany',
          c_type: 'long',
          comment: '/* number of rows, or position argument */'
        },
        {
          name: 'portalname',
          c_type: 'char*',
          comment: '/* name of portal (cursor) */'
        },
        {
          name: 'ismove',
          c_type: 'bool',
          comment: '/* true if MOVE */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tFetch Statement (also Move)\n * ----------------------\n */\n'
    },
    IndexStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'idxname',
          c_type: 'char*',
          comment: '/* name of new index, or NULL for default */'
        },
        {
          name: 'relation',
          c_type: 'RangeVar*',
          comment: '/* relation to build index on */'
        },
        {
          name: 'accessMethod',
          c_type: 'char*',
          comment: '/* name of access method (eg. btree) */'
        },
        {
          name: 'tableSpace',
          c_type: 'char*',
          comment: '/* tablespace, or NULL for default */'
        },
        {
          name: 'indexParams',
          c_type: 'List*',
          comment: '/* columns to index: a list of IndexElem */'
        },
        {
          name: 'indexIncludingParams',
          c_type: 'List*',
          comment:
            '/* additional columns to index: a list\n\t\t\t\t\t\t\t\t\t\t * of IndexElem */\n'
        },
        {
          name: 'options',
          c_type: 'List*',
          comment: '/* WITH clause options: a list of DefElem */'
        },
        {
          name: 'whereClause',
          c_type: 'Node*',
          comment: '/* qualification (partial-index predicate) */'
        },
        {
          name: 'excludeOpNames',
          c_type: 'List*',
          comment: '/* exclusion operator names, or NIL if none */'
        },
        {
          name: 'idxcomment',
          c_type: 'char*',
          comment: '/* comment to apply to index, or NULL */'
        },
        {
          name: 'indexOid',
          c_type: 'Oid',
          comment: '/* OID of an existing index, if any */'
        },
        {
          name: 'oldNode',
          c_type: 'Oid',
          comment: '/* relfilenode of existing storage, if any */'
        },
        {
          name: 'oldCreateSubid',
          c_type: 'SubTransactionId',
          comment: '/* rd_createSubid of oldNode */'
        },
        {
          name: 'oldFirstRelfilenodeSubid',
          c_type: 'SubTransactionId',
          comment:
            '/* rd_firstRelfilenodeSubid of\n\t\t\t\t\t\t\t\t\t\t\t\t * oldNode */\n'
        },
        {
          name: 'unique',
          c_type: 'bool',
          comment: '/* is index unique? */'
        },
        {
          name: 'primary',
          c_type: 'bool',
          comment: '/* is index a primary key? */'
        },
        {
          name: 'isconstraint',
          c_type: 'bool',
          comment: '/* is it for a pkey/unique constraint? */'
        },
        {
          name: 'deferrable',
          c_type: 'bool',
          comment: '/* is the constraint DEFERRABLE? */'
        },
        {
          name: 'initdeferred',
          c_type: 'bool',
          comment: '/* is the constraint INITIALLY DEFERRED? */'
        },
        {
          name: 'transformed',
          c_type: 'bool',
          comment: '/* true when transformIndexStmt is finished */'
        },
        {
          name: 'concurrent',
          c_type: 'bool',
          comment: '/* should this be a concurrent index build? */'
        },
        {
          name: 'if_not_exists',
          c_type: 'bool',
          comment: '/* just do nothing if index already exists? */'
        },
        {
          name: 'reset_default_tblspc',
          c_type: 'bool',
          comment:
            '/* reset default_tablespace prior to\n\t\t\t\t\t\t\t\t\t\t * executing */\n'
        }
      ],
      comment:
        "/* ----------------------\n *\t\tCreate Index Statement\n *\n * This represents creation of an index and/or an associated constraint.\n * If isconstraint is true, we should create a pg_constraint entry along\n * with the index.  But if indexOid isn't InvalidOid, we are not creating an\n * index, just a UNIQUE/PKEY constraint using an existing index.  isconstraint\n * must always be true in this case, and the fields describing the index\n * properties are empty.\n * ----------------------\n */\n"
    },
    CreateStatsStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'defnames',
          c_type: 'List*',
          comment: '/* qualified name (list of Value strings) */'
        },
        {
          name: 'stat_types',
          c_type: 'List*',
          comment: '/* stat types (list of Value strings) */'
        },
        {
          name: 'exprs',
          c_type: 'List*',
          comment: '/* expressions to build statistics on */'
        },
        {
          name: 'relations',
          c_type: 'List*',
          comment: '/* rels to build stats on (list of RangeVar) */'
        },
        {
          name: 'stxcomment',
          c_type: 'char*',
          comment: '/* comment to apply to stats, or NULL */'
        },
        {
          name: 'if_not_exists',
          c_type: 'bool',
          comment: '/* do nothing if stats name already exists */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tCreate Statistics Statement\n * ----------------------\n */\n'
    },
    AlterStatsStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'defnames',
          c_type: 'List*',
          comment: '/* qualified name (list of Value strings) */'
        },
        {
          name: 'stxstattarget',
          c_type: 'int',
          comment: '/* statistics target */'
        },
        {
          name: 'missing_ok',
          c_type: 'bool',
          comment: '/* skip error if statistics object is missing */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tAlter Statistics Statement\n * ----------------------\n */\n'
    },
    CreateFunctionStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'is_procedure',
          c_type: 'bool',
          comment: "/* it's really CREATE PROCEDURE */"
        },
        {
          name: 'replace',
          c_type: 'bool',
          comment: '/* T => replace if already exists */'
        },
        {
          name: 'funcname',
          c_type: 'List*',
          comment: '/* qualified name of function to create */'
        },
        {
          name: 'parameters',
          c_type: 'List*',
          comment: '/* a list of FunctionParameter */'
        },
        {
          name: 'returnType',
          c_type: 'TypeName*',
          comment: '/* the return type */'
        },
        {
          name: 'options',
          c_type: 'List*',
          comment: '/* a list of DefElem */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tCreate Function Statement\n * ----------------------\n */\n'
    },
    FunctionParameter: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'name',
          c_type: 'char*',
          comment: '/* parameter name, or NULL if not given */'
        },
        {
          name: 'argType',
          c_type: 'TypeName*',
          comment: '/* TypeName for parameter type */'
        },
        {
          name: 'mode',
          c_type: 'FunctionParameterMode',
          comment: '/* IN/OUT/etc */'
        },
        {
          name: 'defexpr',
          c_type: 'Node*',
          comment: '/* raw default expr, or NULL if not given */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tCreate Function Statement\n * ----------------------\n */\n'
    },
    AlterFunctionStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'objtype',
          c_type: 'ObjectType',
          comment: null
        },
        {
          name: 'func',
          c_type: 'ObjectWithArgs*',
          comment: '/* name and args of function */'
        },
        {
          name: 'actions',
          c_type: 'List*',
          comment: '/* list of DefElem */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tCreate Function Statement\n * ----------------------\n */\n'
    },
    DoStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'args',
          c_type: 'List*',
          comment: '/* List of DefElem nodes */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tDO Statement\n *\n * DoStmt is the raw parser output, InlineCodeBlock is the execution-time API\n * ----------------------\n */\n'
    },
    InlineCodeBlock: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'source_text',
          c_type: 'char*',
          comment: '/* source text of anonymous code block */'
        },
        {
          name: 'langOid',
          c_type: 'Oid',
          comment: '/* OID of selected language */'
        },
        {
          name: 'langIsTrusted',
          c_type: 'bool',
          comment: '/* trusted property of the language */'
        },
        {
          name: 'atomic',
          c_type: 'bool',
          comment: '/* atomic execution context */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tDO Statement\n *\n * DoStmt is the raw parser output, InlineCodeBlock is the execution-time API\n * ----------------------\n */\n'
    },
    CallStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'funccall',
          c_type: 'FuncCall*',
          comment: '/* from the parser */'
        },
        {
          name: 'funcexpr',
          c_type: 'FuncExpr*',
          comment: '/* transformed */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tCALL statement\n * ----------------------\n */\n'
    },
    CallContext: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'atomic',
          c_type: 'bool',
          comment: null
        }
      ],
      comment: null
    },
    RenameStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'renameType',
          c_type: 'ObjectType',
          comment: '/* OBJECT_TABLE, OBJECT_COLUMN, etc */'
        },
        {
          name: 'relationType',
          c_type: 'ObjectType',
          comment: '/* if column name, associated relation type */'
        },
        {
          name: 'relation',
          c_type: 'RangeVar*',
          comment: "/* in case it's a table */"
        },
        {
          name: 'object',
          c_type: 'Node*',
          comment: "/* in case it's some other object */"
        },
        {
          name: 'subname',
          c_type: 'char*',
          comment:
            '/* name of contained object (column, rule,\n\t\t\t\t\t\t\t\t * trigger, etc) */\n'
        },
        {
          name: 'newname',
          c_type: 'char*',
          comment: '/* the new name */'
        },
        {
          name: 'behavior',
          c_type: 'DropBehavior',
          comment: '/* RESTRICT or CASCADE behavior */'
        },
        {
          name: 'missing_ok',
          c_type: 'bool',
          comment: '/* skip error if missing? */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tAlter Object Rename Statement\n * ----------------------\n */\n'
    },
    AlterObjectDependsStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'objectType',
          c_type: 'ObjectType',
          comment: '/* OBJECT_FUNCTION, OBJECT_TRIGGER, etc */'
        },
        {
          name: 'relation',
          c_type: 'RangeVar*',
          comment: '/* in case a table is involved */'
        },
        {
          name: 'object',
          c_type: 'Node*',
          comment: '/* name of the object */'
        },
        {
          name: 'extname',
          c_type: 'Value*',
          comment: '/* extension name */'
        },
        {
          name: 'remove',
          c_type: 'bool',
          comment: '/* set true to remove dep rather than add */'
        }
      ],
      comment:
        '/* ----------------------\n * ALTER object DEPENDS ON EXTENSION extname\n * ----------------------\n */\n'
    },
    AlterObjectSchemaStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'objectType',
          c_type: 'ObjectType',
          comment: '/* OBJECT_TABLE, OBJECT_TYPE, etc */'
        },
        {
          name: 'relation',
          c_type: 'RangeVar*',
          comment: "/* in case it's a table */"
        },
        {
          name: 'object',
          c_type: 'Node*',
          comment: "/* in case it's some other object */"
        },
        {
          name: 'newschema',
          c_type: 'char*',
          comment: '/* the new schema */'
        },
        {
          name: 'missing_ok',
          c_type: 'bool',
          comment: '/* skip error if missing? */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tALTER object SET SCHEMA Statement\n * ----------------------\n */\n'
    },
    AlterOwnerStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'objectType',
          c_type: 'ObjectType',
          comment: '/* OBJECT_TABLE, OBJECT_TYPE, etc */'
        },
        {
          name: 'relation',
          c_type: 'RangeVar*',
          comment: "/* in case it's a table */"
        },
        {
          name: 'object',
          c_type: 'Node*',
          comment: "/* in case it's some other object */"
        },
        {
          name: 'newowner',
          c_type: 'RoleSpec*',
          comment: '/* the new owner */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tAlter Object Owner Statement\n * ----------------------\n */\n'
    },
    AlterOperatorStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'opername',
          c_type: 'ObjectWithArgs*',
          comment: '/* operator name and argument types */'
        },
        {
          name: 'options',
          c_type: 'List*',
          comment: '/* List of DefElem nodes */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tAlter Operator Set ( this-n-that )\n * ----------------------\n */\n'
    },
    AlterTypeStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'typeName',
          c_type: 'List*',
          comment: '/* type name (possibly qualified) */'
        },
        {
          name: 'options',
          c_type: 'List*',
          comment: '/* List of DefElem nodes */'
        }
      ],
      comment:
        '/* ------------------------\n *\t\tAlter Type Set ( this-n-that )\n * ------------------------\n */\n'
    },
    RuleStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'relation',
          c_type: 'RangeVar*',
          comment: '/* relation the rule is for */'
        },
        {
          name: 'rulename',
          c_type: 'char*',
          comment: '/* name of the rule */'
        },
        {
          name: 'whereClause',
          c_type: 'Node*',
          comment: '/* qualifications */'
        },
        {
          name: 'event',
          c_type: 'CmdType',
          comment: '/* SELECT, INSERT, etc */'
        },
        {
          name: 'instead',
          c_type: 'bool',
          comment: "/* is a 'do instead'? */"
        },
        {
          name: 'actions',
          c_type: 'List*',
          comment: '/* the action statements */'
        },
        {
          name: 'replace',
          c_type: 'bool',
          comment: '/* OR REPLACE */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tCreate Rule Statement\n * ----------------------\n */\n'
    },
    NotifyStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'conditionname',
          c_type: 'char*',
          comment: '/* condition name to notify */'
        },
        {
          name: 'payload',
          c_type: 'char*',
          comment: '/* the payload string, or NULL if none */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tNotify Statement\n * ----------------------\n */\n'
    },
    ListenStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'conditionname',
          c_type: 'char*',
          comment: '/* condition name to listen on */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tListen Statement\n * ----------------------\n */\n'
    },
    UnlistenStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'conditionname',
          c_type: 'char*',
          comment: '/* name to unlisten on, or NULL for all */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tUnlisten Statement\n * ----------------------\n */\n'
    },
    TransactionStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'kind',
          c_type: 'TransactionStmtKind',
          comment: '/* see above */'
        },
        {
          name: 'options',
          c_type: 'List*',
          comment: '/* for BEGIN/START commands */'
        },
        {
          name: 'savepoint_name',
          c_type: 'char*',
          comment: '/* for savepoint commands */'
        },
        {
          name: 'gid',
          c_type: 'char*',
          comment: '/* for two-phase-commit related commands */'
        },
        {
          name: 'chain',
          c_type: 'bool',
          comment: '/* AND CHAIN option */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\t{Begin|Commit|Rollback} Transaction Statement\n * ----------------------\n */\n'
    },
    CompositeTypeStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'typevar',
          c_type: 'RangeVar*',
          comment: '/* the composite type to be created */'
        },
        {
          name: 'coldeflist',
          c_type: 'List*',
          comment: '/* list of ColumnDef nodes */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tCreate Type Statement, composite types\n * ----------------------\n */\n'
    },
    CreateEnumStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'typeName',
          c_type: 'List*',
          comment: '/* qualified name (list of Value strings) */'
        },
        {
          name: 'vals',
          c_type: 'List*',
          comment: '/* enum values (list of Value strings) */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tCreate Type Statement, enum types\n * ----------------------\n */\n'
    },
    CreateRangeStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'typeName',
          c_type: 'List*',
          comment: '/* qualified name (list of Value strings) */'
        },
        {
          name: 'params',
          c_type: 'List*',
          comment: '/* range parameters (list of DefElem) */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tCreate Type Statement, range types\n * ----------------------\n */\n'
    },
    AlterEnumStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'typeName',
          c_type: 'List*',
          comment: '/* qualified name (list of Value strings) */'
        },
        {
          name: 'oldVal',
          c_type: 'char*',
          comment: "/* old enum value's name, if renaming */"
        },
        {
          name: 'newVal',
          c_type: 'char*',
          comment: "/* new enum value's name */"
        },
        {
          name: 'newValNeighbor',
          c_type: 'char*',
          comment: '/* neighboring enum value, if specified */'
        },
        {
          name: 'newValIsAfter',
          c_type: 'bool',
          comment: '/* place new enum value after neighbor? */'
        },
        {
          name: 'skipIfNewValExists',
          c_type: 'bool',
          comment: '/* no error if new already exists? */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tAlter Type Statement, enum types\n * ----------------------\n */\n'
    },
    ViewStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'view',
          c_type: 'RangeVar*',
          comment: '/* the view to be created */'
        },
        {
          name: 'aliases',
          c_type: 'List*',
          comment: '/* target column names */'
        },
        {
          name: 'query',
          c_type: 'Node*',
          comment: '/* the SELECT query (as a raw parse tree) */'
        },
        {
          name: 'replace',
          c_type: 'bool',
          comment: '/* replace an existing view? */'
        },
        {
          name: 'options',
          c_type: 'List*',
          comment: '/* options from WITH clause */'
        },
        {
          name: 'withCheckOption',
          c_type: 'ViewCheckOption',
          comment: '/* WITH CHECK OPTION */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tCreate View Statement\n * ----------------------\n */\n'
    },
    LoadStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'filename',
          c_type: 'char*',
          comment: '/* file to load */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tLoad Statement\n * ----------------------\n */\n'
    },
    CreatedbStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'dbname',
          c_type: 'char*',
          comment: '/* name of database to create */'
        },
        {
          name: 'options',
          c_type: 'List*',
          comment: '/* List of DefElem nodes */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tCreatedb Statement\n * ----------------------\n */\n'
    },
    AlterDatabaseStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'dbname',
          c_type: 'char*',
          comment: '/* name of database to alter */'
        },
        {
          name: 'options',
          c_type: 'List*',
          comment: '/* List of DefElem nodes */'
        }
      ],
      comment:
        '/* ----------------------\n *\tAlter Database\n * ----------------------\n */\n'
    },
    AlterDatabaseSetStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'dbname',
          c_type: 'char*',
          comment: '/* database name */'
        },
        {
          name: 'setstmt',
          c_type: 'VariableSetStmt*',
          comment: '/* SET or RESET subcommand */'
        }
      ],
      comment:
        '/* ----------------------\n *\tAlter Database\n * ----------------------\n */\n'
    },
    DropdbStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'dbname',
          c_type: 'char*',
          comment: '/* database to drop */'
        },
        {
          name: 'missing_ok',
          c_type: 'bool',
          comment: '/* skip error if db is missing? */'
        },
        {
          name: 'options',
          c_type: 'List*',
          comment: '/* currently only FORCE is supported */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tDropdb Statement\n * ----------------------\n */\n'
    },
    AlterSystemStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'setstmt',
          c_type: 'VariableSetStmt*',
          comment: '/* SET subcommand */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tAlter System Statement\n * ----------------------\n */\n'
    },
    ClusterStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'relation',
          c_type: 'RangeVar*',
          comment: '/* relation being indexed, or NULL if all */'
        },
        {
          name: 'indexname',
          c_type: 'char*',
          comment: '/* original index defined */'
        },
        {
          name: 'options',
          c_type: 'int',
          comment: '/* OR of ClusterOption flags */'
        }
      ],
      comment: null
    },
    VacuumStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'options',
          c_type: 'List*',
          comment: '/* list of DefElem nodes */'
        },
        {
          name: 'rels',
          c_type: 'List*',
          comment: '/* list of VacuumRelation, or NIL for all */'
        },
        {
          name: 'is_vacuumcmd',
          c_type: 'bool',
          comment: '/* true for VACUUM, false for ANALYZE */'
        }
      ],
      comment:
        "/* ----------------------\n *\t\tVacuum and Analyze Statements\n *\n * Even though these are nominally two statements, it's convenient to use\n * just one node type for both.\n * ----------------------\n */\n"
    },
    VacuumRelation: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'relation',
          c_type: 'RangeVar*',
          comment: '/* table name to process, or NULL */'
        },
        {
          name: 'oid',
          c_type: 'Oid',
          comment: "/* table's OID; InvalidOid if not looked up */"
        },
        {
          name: 'va_cols',
          c_type: 'List*',
          comment: '/* list of column names, or NIL for all */'
        }
      ],
      comment:
        "/*\n * Info about a single target table of VACUUM/ANALYZE.\n *\n * If the OID field is set, it always identifies the table to process.\n * Then the relation field can be NULL; if it isn't, it's used only to report\n * failure to open/lock the relation.\n */\n"
    },
    ExplainStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'query',
          c_type: 'Node*',
          comment: '/* the query (see comments above) */'
        },
        {
          name: 'options',
          c_type: 'List*',
          comment: '/* list of DefElem nodes */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tExplain Statement\n *\n * The "query" field is initially a raw parse tree, and is converted to a\n * Query node during parse analysis.  Note that rewriting and planning\n * of the query are always postponed until execution.\n * ----------------------\n */\n'
    },
    CreateTableAsStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'query',
          c_type: 'Node*',
          comment: '/* the query (see comments above) */'
        },
        {
          name: 'into',
          c_type: 'IntoClause*',
          comment: '/* destination table */'
        },
        {
          name: 'relkind',
          c_type: 'ObjectType',
          comment: '/* OBJECT_TABLE or OBJECT_MATVIEW */'
        },
        {
          name: 'is_select_into',
          c_type: 'bool',
          comment: '/* it was written as SELECT INTO */'
        },
        {
          name: 'if_not_exists',
          c_type: 'bool',
          comment: '/* just do nothing if it already exists? */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tCREATE TABLE AS Statement (a/k/a SELECT INTO)\n *\n * A query written as CREATE TABLE AS will produce this node type natively.\n * A query written as SELECT ... INTO will be transformed to this form during\n * parse analysis.\n * A query written as CREATE MATERIALIZED view will produce this node type,\n * during parse analysis, since it needs all the same data.\n *\n * The "query" field is handled similarly to EXPLAIN, though note that it\n * can be a SELECT or an EXECUTE, but not other DML statements.\n * ----------------------\n */\n'
    },
    RefreshMatViewStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'concurrent',
          c_type: 'bool',
          comment: '/* allow concurrent access? */'
        },
        {
          name: 'skipData',
          c_type: 'bool',
          comment: '/* true for WITH NO DATA */'
        },
        {
          name: 'relation',
          c_type: 'RangeVar*',
          comment: '/* relation to insert into */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tREFRESH MATERIALIZED VIEW Statement\n * ----------------------\n */\n'
    },
    CheckPointStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        }
      ],
      comment:
        '/* ----------------------\n * Checkpoint Statement\n * ----------------------\n */\n'
    },
    DiscardStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'target',
          c_type: 'DiscardMode',
          comment: null
        }
      ],
      comment:
        '/* ----------------------\n * Discard Statement\n * ----------------------\n */\n'
    },
    LockStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'relations',
          c_type: 'List*',
          comment: '/* relations to lock */'
        },
        {
          name: 'mode',
          c_type: 'int',
          comment: '/* lock mode */'
        },
        {
          name: 'nowait',
          c_type: 'bool',
          comment: '/* no wait mode */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tLOCK Statement\n * ----------------------\n */\n'
    },
    ConstraintsSetStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'constraints',
          c_type: 'List*',
          comment: '/* List of names as RangeVars */'
        },
        {
          name: 'deferred',
          c_type: 'bool',
          comment: null
        }
      ],
      comment:
        '/* ----------------------\n *\t\tSET CONSTRAINTS Statement\n * ----------------------\n */\n'
    },
    ReindexStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'kind',
          c_type: 'ReindexObjectType',
          comment:
            '/* REINDEX_OBJECT_INDEX, REINDEX_OBJECT_TABLE,\n\t\t\t\t\t\t\t\t * etc. */\n'
        },
        {
          name: 'relation',
          c_type: 'RangeVar*',
          comment: '/* Table or index to reindex */'
        },
        {
          name: 'name',
          c_type: 'char*',
          comment: '/* name of database to reindex */'
        },
        {
          name: 'options',
          c_type: 'int',
          comment: '/* Reindex options flags */'
        },
        {
          name: 'concurrent',
          c_type: 'bool',
          comment: '/* reindex concurrently? */'
        }
      ],
      comment: null
    },
    CreateConversionStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'conversion_name',
          c_type: 'List*',
          comment: '/* Name of the conversion */'
        },
        {
          name: 'for_encoding_name',
          c_type: 'char*',
          comment: '/* source encoding name */'
        },
        {
          name: 'to_encoding_name',
          c_type: 'char*',
          comment: '/* destination encoding name */'
        },
        {
          name: 'func_name',
          c_type: 'List*',
          comment: '/* qualified conversion function name */'
        },
        {
          name: 'def',
          c_type: 'bool',
          comment: '/* is this a default conversion? */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tCREATE CONVERSION Statement\n * ----------------------\n */\n'
    },
    CreateCastStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'sourcetype',
          c_type: 'TypeName*',
          comment: null
        },
        {
          name: 'targettype',
          c_type: 'TypeName*',
          comment: null
        },
        {
          name: 'func',
          c_type: 'ObjectWithArgs*',
          comment: null
        },
        {
          name: 'context',
          c_type: 'CoercionContext',
          comment: null
        },
        {
          name: 'inout',
          c_type: 'bool',
          comment: null
        }
      ],
      comment:
        '/* ----------------------\n *\tCREATE CAST Statement\n * ----------------------\n */\n'
    },
    CreateTransformStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'replace',
          c_type: 'bool',
          comment: null
        },
        {
          name: 'type_name',
          c_type: 'TypeName*',
          comment: null
        },
        {
          name: 'lang',
          c_type: 'char*',
          comment: null
        },
        {
          name: 'fromsql',
          c_type: 'ObjectWithArgs*',
          comment: null
        },
        {
          name: 'tosql',
          c_type: 'ObjectWithArgs*',
          comment: null
        }
      ],
      comment:
        '/* ----------------------\n *\tCREATE TRANSFORM Statement\n * ----------------------\n */\n'
    },
    PrepareStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'name',
          c_type: 'char*',
          comment: '/* Name of plan, arbitrary */'
        },
        {
          name: 'argtypes',
          c_type: 'List*',
          comment: '/* Types of parameters (List of TypeName) */'
        },
        {
          name: 'query',
          c_type: 'Node*',
          comment: '/* The query itself (as a raw parsetree) */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tPREPARE Statement\n * ----------------------\n */\n'
    },
    ExecuteStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'name',
          c_type: 'char*',
          comment: '/* The name of the plan to execute */'
        },
        {
          name: 'params',
          c_type: 'List*',
          comment: '/* Values to assign to parameters */'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tEXECUTE Statement\n * ----------------------\n */\n'
    },
    DeallocateStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'name',
          c_type: 'char*',
          comment: '/* The name of the plan to remove */'
        },
        {
          comment: '\t/* NULL means DEALLOCATE ALL */\n'
        }
      ],
      comment:
        '/* ----------------------\n *\t\tDEALLOCATE Statement\n * ----------------------\n */\n'
    },
    DropOwnedStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'roles',
          c_type: 'List*',
          comment: null
        },
        {
          name: 'behavior',
          c_type: 'DropBehavior',
          comment: null
        }
      ],
      comment: '/*\n *\t\tDROP OWNED statement\n */\n'
    },
    ReassignOwnedStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'roles',
          c_type: 'List*',
          comment: null
        },
        {
          name: 'newrole',
          c_type: 'RoleSpec*',
          comment: null
        }
      ],
      comment: '/*\n *\t\tREASSIGN OWNED statement\n */\n'
    },
    AlterTSDictionaryStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'dictname',
          c_type: 'List*',
          comment: '/* qualified name (list of Value strings) */'
        },
        {
          name: 'options',
          c_type: 'List*',
          comment: '/* List of DefElem nodes */'
        }
      ],
      comment:
        '/*\n * TS Dictionary stmts: DefineStmt, RenameStmt and DropStmt are default\n */\n'
    },
    AlterTSConfigurationStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'kind',
          c_type: 'AlterTSConfigType',
          comment: '/* ALTER_TSCONFIG_ADD_MAPPING, etc */'
        },
        {
          name: 'cfgname',
          c_type: 'List*',
          comment: '/* qualified name (list of Value strings) */'
        },
        {
          comment: ''
        },
        {
          comment:
            "\t/*\n\t * dicts will be non-NIL if ADD/ALTER MAPPING was specified. If dicts is\n\t * NIL, but tokentype isn't, DROP MAPPING was specified.\n\t */\n"
        },
        {
          name: 'tokentype',
          c_type: 'List*',
          comment: '/* list of Value strings */'
        },
        {
          name: 'dicts',
          c_type: 'List*',
          comment: '/* list of list of Value strings */'
        },
        {
          name: 'override',
          c_type: 'bool',
          comment: '/* if true - remove old variant */'
        },
        {
          name: 'replace',
          c_type: 'bool',
          comment: '/* if true - replace dictionary by another */'
        },
        {
          name: 'missing_ok',
          c_type: 'bool',
          comment: '/* for DROP - skip error if missing? */'
        }
      ],
      comment: null
    },
    CreatePublicationStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'pubname',
          c_type: 'char*',
          comment: '/* Name of the publication */'
        },
        {
          name: 'options',
          c_type: 'List*',
          comment: '/* List of DefElem nodes */'
        },
        {
          name: 'tables',
          c_type: 'List*',
          comment: '/* Optional list of tables to add */'
        },
        {
          name: 'for_all_tables',
          c_type: 'bool',
          comment: '/* Special publication for all tables in db */'
        }
      ],
      comment: null
    },
    AlterPublicationStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'pubname',
          c_type: 'char*',
          comment: '/* Name of the publication */'
        },
        {
          comment: ''
        },
        {
          comment: '\t/* parameters used for ALTER PUBLICATION ... WITH */\n'
        },
        {
          name: 'options',
          c_type: 'List*',
          comment: '/* List of DefElem nodes */'
        },
        {
          comment: ''
        },
        {
          comment:
            '\t/* parameters used for ALTER PUBLICATION ... ADD/DROP TABLE */\n'
        },
        {
          name: 'tables',
          c_type: 'List*',
          comment: '/* List of tables to add/drop */'
        },
        {
          name: 'for_all_tables',
          c_type: 'bool',
          comment: '/* Special publication for all tables in db */'
        },
        {
          name: 'tableAction',
          c_type: 'DefElemAction',
          comment: '/* What action to perform with the tables */'
        }
      ],
      comment: null
    },
    CreateSubscriptionStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'subname',
          c_type: 'char*',
          comment: '/* Name of the subscription */'
        },
        {
          name: 'conninfo',
          c_type: 'char*',
          comment: '/* Connection string to publisher */'
        },
        {
          name: 'publication',
          c_type: 'List*',
          comment: '/* One or more publication to subscribe to */'
        },
        {
          name: 'options',
          c_type: 'List*',
          comment: '/* List of DefElem nodes */'
        }
      ],
      comment: null
    },
    AlterSubscriptionStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'kind',
          c_type: 'AlterSubscriptionType',
          comment: '/* ALTER_SUBSCRIPTION_OPTIONS, etc */'
        },
        {
          name: 'subname',
          c_type: 'char*',
          comment: '/* Name of the subscription */'
        },
        {
          name: 'conninfo',
          c_type: 'char*',
          comment: '/* Connection string to publisher */'
        },
        {
          name: 'publication',
          c_type: 'List*',
          comment: '/* One or more publication to subscribe to */'
        },
        {
          name: 'options',
          c_type: 'List*',
          comment: '/* List of DefElem nodes */'
        }
      ],
      comment: null
    },
    DropSubscriptionStmt: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'subname',
          c_type: 'char*',
          comment: '/* Name of the subscription */'
        },
        {
          name: 'missing_ok',
          c_type: 'bool',
          comment: '/* Skip error if missing? */'
        },
        {
          name: 'behavior',
          c_type: 'DropBehavior',
          comment: '/* RESTRICT or CASCADE behavior */'
        }
      ],
      comment: null
    }
  },
  'nodes/primnodes': {
    Alias: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'aliasname',
          c_type: 'char*',
          comment: '/* aliased rel name (never qualified) */'
        },
        {
          name: 'colnames',
          c_type: 'List*',
          comment: '/* optional list of column aliases */'
        }
      ],
      comment:
        '/*\n * Alias -\n *\t  specifies an alias for a range variable; the alias might also\n *\t  specify renaming of columns within the table.\n *\n * Note: colnames is a list of Value nodes (always strings).  In Alias structs\n * associated with RTEs, there may be entries corresponding to dropped\n * columns; these are normally empty strings ("").  See parsenodes.h for info.\n */\n'
    },
    RangeVar: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'catalogname',
          c_type: 'char*',
          comment: '/* the catalog (database) name, or NULL */'
        },
        {
          name: 'schemaname',
          c_type: 'char*',
          comment: '/* the schema name, or NULL */'
        },
        {
          name: 'relname',
          c_type: 'char*',
          comment: '/* the relation/sequence name */'
        },
        {
          name: 'inh',
          c_type: 'bool',
          comment:
            '/* expand rel by inheritance? recursively act\n\t\t\t\t\t\t\t\t * on children? */\n'
        },
        {
          name: 'relpersistence',
          c_type: 'char',
          comment: '/* see RELPERSISTENCE_* in pg_class.h */'
        },
        {
          name: 'alias',
          c_type: 'Alias*',
          comment: '/* table alias & optional column aliases */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment:
        '/*\n * RangeVar - range variable, used in FROM clauses\n *\n * Also used to represent table names in utility statements; there, the alias\n * field is not used, and inh tells whether to apply the operation\n * recursively to child tables.  In some contexts it is also useful to carry\n * a TEMP table indication here.\n */\n'
    },
    TableFunc: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'ns_uris',
          c_type: 'List*',
          comment: '/* list of namespace URI expressions */'
        },
        {
          name: 'ns_names',
          c_type: 'List*',
          comment: '/* list of namespace names or NULL */'
        },
        {
          name: 'docexpr',
          c_type: 'Node*',
          comment: '/* input document expression */'
        },
        {
          name: 'rowexpr',
          c_type: 'Node*',
          comment: '/* row filter expression */'
        },
        {
          name: 'colnames',
          c_type: 'List*',
          comment: '/* column names (list of String) */'
        },
        {
          name: 'coltypes',
          c_type: 'List*',
          comment: '/* OID list of column type OIDs */'
        },
        {
          name: 'coltypmods',
          c_type: 'List*',
          comment: '/* integer list of column typmods */'
        },
        {
          name: 'colcollations',
          c_type: 'List*',
          comment: '/* OID list of column collation OIDs */'
        },
        {
          name: 'colexprs',
          c_type: 'List*',
          comment: '/* list of column filter expressions */'
        },
        {
          name: 'coldefexprs',
          c_type: 'List*',
          comment: '/* list of column default expressions */'
        },
        {
          name: 'notnulls',
          c_type: 'Bitmapset*',
          comment: '/* nullability flag for each output column */'
        },
        {
          name: 'ordinalitycol',
          c_type: 'int',
          comment: '/* counts from 0; -1 if none specified */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment:
        '/*\n * TableFunc - node for a table function, such as XMLTABLE.\n *\n * Entries in the ns_names list are either string Value nodes containing\n * literal namespace names, or NULL pointers to represent DEFAULT.\n */\n'
    },
    IntoClause: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          comment: ''
        },
        {
          name: 'rel',
          c_type: 'RangeVar*',
          comment: '/* target relation name */'
        },
        {
          name: 'colNames',
          c_type: 'List*',
          comment: '/* column names to assign, or NIL */'
        },
        {
          name: 'accessMethod',
          c_type: 'char*',
          comment: '/* table access method */'
        },
        {
          name: 'options',
          c_type: 'List*',
          comment: '/* options from WITH clause */'
        },
        {
          name: 'onCommit',
          c_type: 'OnCommitAction',
          comment: '/* what do we do at COMMIT? */'
        },
        {
          name: 'tableSpaceName',
          c_type: 'char*',
          comment: '/* table space to use, or NULL */'
        },
        {
          name: 'viewQuery',
          c_type: 'Node*',
          comment: "/* materialized view's SELECT query */"
        },
        {
          name: 'skipData',
          c_type: 'bool',
          comment: '/* true for WITH NO DATA */'
        }
      ],
      comment:
        "/*\n * IntoClause - target information for SELECT INTO, CREATE TABLE AS, and\n * CREATE MATERIALIZED VIEW\n *\n * For CREATE MATERIALIZED VIEW, viewQuery is the parsed-but-not-rewritten\n * SELECT Query for the view; otherwise it's NULL.  (Although it's actually\n * Query*, we declare it as Node* to avoid a forward reference.)\n */\n"
    },
    Expr: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        }
      ],
      comment:
        '/*\n * Expr - generic superclass for executable-expression nodes\n *\n * All node types that are used in executable expression trees should derive\n * from Expr (that is, have Expr as their first field).  Since Expr only\n * contains NodeTag, this is a formality, but it is an easy form of\n * documentation.  See also the ExprState node types in execnodes.h.\n */\n'
    },
    Var: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'varno',
          c_type: 'Index',
          comment:
            "/* index of this var's relation in the range\n\t\t\t\t\t\t\t\t * table, or INNER_VAR/OUTER_VAR/INDEX_VAR */\n"
        },
        {
          name: 'varattno',
          c_type: 'AttrNumber',
          comment:
            '/* attribute number of this var, or zero for\n\t\t\t\t\t\t\t\t * all attrs ("whole-row Var") */\n'
        },
        {
          name: 'vartype',
          c_type: 'Oid',
          comment: '/* pg_type OID for the type of this var */'
        },
        {
          name: 'vartypmod',
          c_type: 'int32',
          comment: '/* pg_attribute typmod value */'
        },
        {
          name: 'varcollid',
          c_type: 'Oid',
          comment: '/* OID of collation, or InvalidOid if none */'
        },
        {
          name: 'varlevelsup',
          c_type: 'Index',
          comment:
            '/* for subquery variables referencing outer\n\t\t\t\t\t\t\t\t * relations; 0 in a normal var, >0 means N\n\t\t\t\t\t\t\t\t * levels up */\n'
        },
        {
          name: 'varnosyn',
          c_type: 'Index',
          comment: '/* syntactic relation index (0 if unknown) */'
        },
        {
          name: 'varattnosyn',
          c_type: 'AttrNumber',
          comment: '/* syntactic attribute number */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment:
        '/* Symbols for the indexes of the special RTE entries in rules */\n'
    },
    Const: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'consttype',
          c_type: 'Oid',
          comment: "/* pg_type OID of the constant's datatype */"
        },
        {
          name: 'consttypmod',
          c_type: 'int32',
          comment: '/* typmod value, if any */'
        },
        {
          name: 'constcollid',
          c_type: 'Oid',
          comment: '/* OID of collation, or InvalidOid if none */'
        },
        {
          name: 'constlen',
          c_type: 'int',
          comment: "/* typlen of the constant's datatype */"
        },
        {
          name: 'constvalue',
          c_type: 'Datum',
          comment: "/* the constant's value */"
        },
        {
          name: 'constisnull',
          c_type: 'bool',
          comment:
            '/* whether the constant is null (if true,\n\t\t\t\t\t\t\t\t * constvalue is undefined) */\n'
        },
        {
          name: 'constbyval',
          c_type: 'bool',
          comment:
            '/* whether this datatype is passed by value.\n\t\t\t\t\t\t\t\t * If true, then all the information is stored\n\t\t\t\t\t\t\t\t * in the Datum. If false, then the Datum\n\t\t\t\t\t\t\t\t * contains a pointer to the information. */\n'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment:
        "/*\n * Const\n *\n * Note: for varlena data types, we make a rule that a Const node's value\n * must be in non-extended form (4-byte header, no compression or external\n * references).  This ensures that the Const node is self-contained and makes\n * it more likely that equal() will see logically identical values as equal.\n */\n"
    },
    Param: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'paramkind',
          c_type: 'ParamKind',
          comment: '/* kind of parameter. See above */'
        },
        {
          name: 'paramid',
          c_type: 'int',
          comment: '/* numeric ID for parameter */'
        },
        {
          name: 'paramtype',
          c_type: 'Oid',
          comment: "/* pg_type OID of parameter's datatype */"
        },
        {
          name: 'paramtypmod',
          c_type: 'int32',
          comment: '/* typmod value, if known */'
        },
        {
          name: 'paramcollid',
          c_type: 'Oid',
          comment: '/* OID of collation, or InvalidOid if none */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment:
        "/*\n * Param\n *\n *\t\tparamkind specifies the kind of parameter. The possible values\n *\t\tfor this field are:\n *\n *\t\tPARAM_EXTERN:  The parameter value is supplied from outside the plan.\n *\t\t\t\tSuch parameters are numbered from 1 to n.\n *\n *\t\tPARAM_EXEC:  The parameter is an internal executor parameter, used\n *\t\t\t\tfor passing values into and out of sub-queries or from\n *\t\t\t\tnestloop joins to their inner scans.\n *\t\t\t\tFor historical reasons, such parameters are numbered from 0.\n *\t\t\t\tThese numbers are independent of PARAM_EXTERN numbers.\n *\n *\t\tPARAM_SUBLINK:\tThe parameter represents an output column of a SubLink\n *\t\t\t\tnode's sub-select.  The column number is contained in the\n *\t\t\t\t`paramid' field.  (This type of Param is converted to\n *\t\t\t\tPARAM_EXEC during planning.)\n *\n *\t\tPARAM_MULTIEXPR:  Like PARAM_SUBLINK, the parameter represents an\n *\t\t\t\toutput column of a SubLink node's sub-select, but here, the\n *\t\t\t\tSubLink is always a MULTIEXPR SubLink.  The high-order 16 bits\n *\t\t\t\tof the `paramid' field contain the SubLink's subLinkId, and\n *\t\t\t\tthe low-order 16 bits contain the column number.  (This type\n *\t\t\t\tof Param is also converted to PARAM_EXEC during planning.)\n */\n"
    },
    Aggref: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'aggfnoid',
          c_type: 'Oid',
          comment: '/* pg_proc Oid of the aggregate */'
        },
        {
          name: 'aggtype',
          c_type: 'Oid',
          comment: '/* type Oid of result of the aggregate */'
        },
        {
          name: 'aggcollid',
          c_type: 'Oid',
          comment: '/* OID of collation of result */'
        },
        {
          name: 'inputcollid',
          c_type: 'Oid',
          comment: '/* OID of collation that function should use */'
        },
        {
          name: 'aggtranstype',
          c_type: 'Oid',
          comment: "/* type Oid of aggregate's transition value */"
        },
        {
          name: 'aggargtypes',
          c_type: 'List*',
          comment: '/* type Oids of direct and aggregated args */'
        },
        {
          name: 'aggdirectargs',
          c_type: 'List*',
          comment: '/* direct arguments, if an ordered-set agg */'
        },
        {
          name: 'args',
          c_type: 'List*',
          comment: '/* aggregated arguments and sort expressions */'
        },
        {
          name: 'aggorder',
          c_type: 'List*',
          comment: '/* ORDER BY (list of SortGroupClause) */'
        },
        {
          name: 'aggdistinct',
          c_type: 'List*',
          comment: '/* DISTINCT (list of SortGroupClause) */'
        },
        {
          name: 'aggfilter',
          c_type: 'Expr*',
          comment: '/* FILTER expression, if any */'
        },
        {
          name: 'aggstar',
          c_type: 'bool',
          comment: "/* true if argument list was really '*' */"
        },
        {
          name: 'aggvariadic',
          c_type: 'bool',
          comment:
            '/* true if variadic arguments have been\n\t\t\t\t\t\t\t\t * combined into an array last argument */\n'
        },
        {
          name: 'aggkind',
          c_type: 'char',
          comment: '/* aggregate kind (see pg_aggregate.h) */'
        },
        {
          name: 'agglevelsup',
          c_type: 'Index',
          comment: '/* > 0 if agg belongs to outer query */'
        },
        {
          name: 'aggsplit',
          c_type: 'AggSplit',
          comment: '/* expected agg-splitting mode of parent Agg */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment:
        "/*\n * Aggref\n *\n * The aggregate's args list is a targetlist, ie, a list of TargetEntry nodes.\n *\n * For a normal (non-ordered-set) aggregate, the non-resjunk TargetEntries\n * represent the aggregate's regular arguments (if any) and resjunk TLEs can\n * be added at the end to represent ORDER BY expressions that are not also\n * arguments.  As in a top-level Query, the TLEs can be marked with\n * ressortgroupref indexes to let them be referenced by SortGroupClause\n * entries in the aggorder and/or aggdistinct lists.  This represents ORDER BY\n * and DISTINCT operations to be applied to the aggregate input rows before\n * they are passed to the transition function.  The grammar only allows a\n * simple \"DISTINCT\" specifier for the arguments, but we use the full\n * query-level representation to allow more code sharing.\n *\n * For an ordered-set aggregate, the args list represents the WITHIN GROUP\n * (aggregated) arguments, all of which will be listed in the aggorder list.\n * DISTINCT is not supported in this case, so aggdistinct will be NIL.\n * The direct arguments appear in aggdirectargs (as a list of plain\n * expressions, not TargetEntry nodes).\n *\n * aggtranstype is the data type of the state transition values for this\n * aggregate (resolved to an actual type, if agg's transtype is polymorphic).\n * This is determined during planning and is InvalidOid before that.\n *\n * aggargtypes is an OID list of the data types of the direct and regular\n * arguments.  Normally it's redundant with the aggdirectargs and args lists,\n * but in a combining aggregate, it's not because the args list has been\n * replaced with a single argument representing the partial-aggregate\n * transition values.\n *\n * aggsplit indicates the expected partial-aggregation mode for the Aggref's\n * parent plan node.  It's always set to AGGSPLIT_SIMPLE in the parser, but\n * the planner might change it to something else.  We use this mainly as\n * a crosscheck that the Aggrefs match the plan; but note that when aggsplit\n * indicates a non-final mode, aggtype reflects the transition data type\n * not the SQL-level output type of the aggregate.\n */\n"
    },
    GroupingFunc: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'args',
          c_type: 'List*',
          comment:
            '/* arguments, not evaluated but kept for\n\t\t\t\t\t\t\t\t * benefit of EXPLAIN etc. */\n'
        },
        {
          name: 'refs',
          c_type: 'List*',
          comment: '/* ressortgrouprefs of arguments */'
        },
        {
          name: 'cols',
          c_type: 'List*',
          comment: '/* actual column positions set by planner */'
        },
        {
          name: 'agglevelsup',
          c_type: 'Index',
          comment: '/* same as Aggref.agglevelsup */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location */'
        }
      ],
      comment:
        '/*\n * GroupingFunc\n *\n * A GroupingFunc is a GROUPING(...) expression, which behaves in many ways\n * like an aggregate function (e.g. it "belongs" to a specific query level,\n * which might not be the one immediately containing it), but also differs in\n * an important respect: it never evaluates its arguments, they merely\n * designate expressions from the GROUP BY clause of the query level to which\n * it belongs.\n *\n * The spec defines the evaluation of GROUPING() purely by syntactic\n * replacement, but we make it a real expression for optimization purposes so\n * that one Agg node can handle multiple grouping sets at once.  Evaluating the\n * result only needs the column positions to check against the grouping set\n * being projected.  However, for EXPLAIN to produce meaningful output, we have\n * to keep the original expressions around, since expression deparse does not\n * give us any feasible way to get at the GROUP BY clause.\n *\n * Also, we treat two GroupingFunc nodes as equal if they have equal arguments\n * lists and agglevelsup, without comparing the refs and cols annotations.\n *\n * In raw parse output we have only the args list; parse analysis fills in the\n * refs list, and the planner fills in the cols list.\n */\n'
    },
    WindowFunc: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'winfnoid',
          c_type: 'Oid',
          comment: '/* pg_proc Oid of the function */'
        },
        {
          name: 'wintype',
          c_type: 'Oid',
          comment: '/* type Oid of result of the window function */'
        },
        {
          name: 'wincollid',
          c_type: 'Oid',
          comment: '/* OID of collation of result */'
        },
        {
          name: 'inputcollid',
          c_type: 'Oid',
          comment: '/* OID of collation that function should use */'
        },
        {
          name: 'args',
          c_type: 'List*',
          comment: '/* arguments to the window function */'
        },
        {
          name: 'aggfilter',
          c_type: 'Expr*',
          comment: '/* FILTER expression, if any */'
        },
        {
          name: 'winref',
          c_type: 'Index',
          comment: '/* index of associated WindowClause */'
        },
        {
          name: 'winstar',
          c_type: 'bool',
          comment: "/* true if argument list was really '*' */"
        },
        {
          name: 'winagg',
          c_type: 'bool',
          comment: '/* is function a simple aggregate? */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment: '/*\n * WindowFunc\n */\n'
    },
    SubscriptingRef: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'refcontainertype',
          c_type: 'Oid',
          comment: '/* type of the container proper */'
        },
        {
          name: 'refelemtype',
          c_type: 'Oid',
          comment: '/* type of the container elements */'
        },
        {
          name: 'reftypmod',
          c_type: 'int32',
          comment: '/* typmod of the container (and elements too) */'
        },
        {
          name: 'refcollid',
          c_type: 'Oid',
          comment: '/* OID of collation, or InvalidOid if none */'
        },
        {
          name: 'refupperindexpr',
          c_type: 'List*',
          comment:
            '/* expressions that evaluate to upper\n\t\t\t\t\t\t\t\t\t * container indexes */\n'
        },
        {
          name: 'reflowerindexpr',
          c_type: 'List*',
          comment:
            '/* expressions that evaluate to lower\n\t\t\t\t\t\t\t\t\t * container indexes, or NIL for single\n\t\t\t\t\t\t\t\t\t * container element */\n'
        },
        {
          name: 'refexpr',
          c_type: 'Expr*',
          comment:
            '/* the expression that evaluates to a\n\t\t\t\t\t\t\t\t * container value */\n'
        },
        {
          comment: ''
        },
        {
          name: 'refassgnexpr',
          c_type: 'Expr*',
          comment:
            '/* expression for the source value, or NULL if\n\t\t\t\t\t\t\t\t * fetch */\n'
        }
      ],
      comment:
        '/* ----------------\n *\tSubscriptingRef: describes a subscripting operation over a container\n *\t\t\t(array, etc).\n *\n * A SubscriptingRef can describe fetching a single element from a container,\n * fetching a part of container (e.g. array slice), storing a single element into\n * a container, or storing a slice.  The "store" cases work with an\n * initial container value and a source value that is inserted into the\n * appropriate part of the container; the result of the operation is an\n * entire new modified container value.\n *\n * If reflowerindexpr = NIL, then we are fetching or storing a single container\n * element at the subscripts given by refupperindexpr. Otherwise we are\n * fetching or storing a container slice, that is a rectangular subcontainer\n * with lower and upper bounds given by the index expressions.\n * reflowerindexpr must be the same length as refupperindexpr when it\n * is not NIL.\n *\n * In the slice case, individual expressions in the subscript lists can be\n * NULL, meaning "substitute the array\'s current lower or upper bound".\n *\n * Note: the result datatype is the element type when fetching a single\n * element; but it is the array type when doing subarray fetch or either\n * type of store.\n *\n * Note: for the cases where a container is returned, if refexpr yields a R/W\n * expanded container, then the implementation is allowed to modify that object\n * in-place and return the same object.)\n * ----------------\n */\n'
    },
    FuncExpr: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'funcid',
          c_type: 'Oid',
          comment: '/* PG_PROC OID of the function */'
        },
        {
          name: 'funcresulttype',
          c_type: 'Oid',
          comment: '/* PG_TYPE OID of result value */'
        },
        {
          name: 'funcretset',
          c_type: 'bool',
          comment: '/* true if function returns set */'
        },
        {
          name: 'funcvariadic',
          c_type: 'bool',
          comment:
            '/* true if variadic arguments have been\n\t\t\t\t\t\t\t\t * combined into an array last argument */\n'
        },
        {
          name: 'funcformat',
          c_type: 'CoercionForm',
          comment: '/* how to display this function call */'
        },
        {
          name: 'funccollid',
          c_type: 'Oid',
          comment: '/* OID of collation of result */'
        },
        {
          name: 'inputcollid',
          c_type: 'Oid',
          comment: '/* OID of collation that function should use */'
        },
        {
          name: 'args',
          c_type: 'List*',
          comment: '/* arguments to the function */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment: '/*\n * FuncExpr - expression node for a function call\n */\n'
    },
    NamedArgExpr: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'arg',
          c_type: 'Expr*',
          comment: '/* the argument expression */'
        },
        {
          name: 'name',
          c_type: 'char*',
          comment: '/* the name */'
        },
        {
          name: 'argnumber',
          c_type: 'int',
          comment: "/* argument's number in positional notation */"
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* argument name location, or -1 if unknown */'
        }
      ],
      comment:
        "/*\n * NamedArgExpr - a named argument of a function\n *\n * This node type can only appear in the args list of a FuncCall or FuncExpr\n * node.  We support pure positional call notation (no named arguments),\n * named notation (all arguments are named), and mixed notation (unnamed\n * arguments followed by named ones).\n *\n * Parse analysis sets argnumber to the positional index of the argument,\n * but doesn't rearrange the argument list.\n *\n * The planner will convert argument lists to pure positional notation\n * during expression preprocessing, so execution never sees a NamedArgExpr.\n */\n"
    },
    OpExpr: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'opno',
          c_type: 'Oid',
          comment: '/* PG_OPERATOR OID of the operator */'
        },
        {
          name: 'opfuncid',
          c_type: 'Oid',
          comment: '/* PG_PROC OID of underlying function */'
        },
        {
          name: 'opresulttype',
          c_type: 'Oid',
          comment: '/* PG_TYPE OID of result value */'
        },
        {
          name: 'opretset',
          c_type: 'bool',
          comment: '/* true if operator returns set */'
        },
        {
          name: 'opcollid',
          c_type: 'Oid',
          comment: '/* OID of collation of result */'
        },
        {
          name: 'inputcollid',
          c_type: 'Oid',
          comment: '/* OID of collation that operator should use */'
        },
        {
          name: 'args',
          c_type: 'List*',
          comment: '/* arguments to the operator (1 or 2) */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment:
        '/*\n * OpExpr - expression node for an operator invocation\n *\n * Semantically, this is essentially the same as a function call.\n *\n * Note that opfuncid is not necessarily filled in immediately on creation\n * of the node.  The planner makes sure it is valid before passing the node\n * tree to the executor, but during parsing/planning opfuncid can be 0.\n */\n'
    },
    ScalarArrayOpExpr: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'opno',
          c_type: 'Oid',
          comment: '/* PG_OPERATOR OID of the operator */'
        },
        {
          name: 'opfuncid',
          c_type: 'Oid',
          comment: '/* PG_PROC OID of underlying function */'
        },
        {
          name: 'useOr',
          c_type: 'bool',
          comment: '/* true for ANY, false for ALL */'
        },
        {
          name: 'inputcollid',
          c_type: 'Oid',
          comment: '/* OID of collation that operator should use */'
        },
        {
          name: 'args',
          c_type: 'List*',
          comment: '/* the scalar and array operands */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment:
        '/*\n * ScalarArrayOpExpr - expression node for "scalar op ANY/ALL (array)"\n *\n * The operator must yield boolean.  It is applied to the left operand\n * and each element of the righthand array, and the results are combined\n * with OR or AND (for ANY or ALL respectively).  The node representation\n * is almost the same as for the underlying operator, but we need a useOr\n * flag to remember whether it\'s ANY or ALL, and we don\'t have to store\n * the result type (or the collation) because it must be boolean.\n */\n'
    },
    BoolExpr: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'boolop',
          c_type: 'BoolExprType',
          comment: null
        },
        {
          name: 'args',
          c_type: 'List*',
          comment: '/* arguments to this expression */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment: null
    },
    SubLink: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'subLinkType',
          c_type: 'SubLinkType',
          comment: '/* see above */'
        },
        {
          name: 'subLinkId',
          c_type: 'int',
          comment: '/* ID (1..n); 0 if not MULTIEXPR */'
        },
        {
          name: 'testexpr',
          c_type: 'Node*',
          comment: '/* outer-query test for ALL/ANY/ROWCOMPARE */'
        },
        {
          name: 'operName',
          c_type: 'List*',
          comment: '/* originally specified operator name */'
        },
        {
          name: 'subselect',
          c_type: 'Node*',
          comment: '/* subselect as Query* or raw parsetree */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment:
        "/*\n * SubLink\n *\n * A SubLink represents a subselect appearing in an expression, and in some\n * cases also the combining operator(s) just above it.  The subLinkType\n * indicates the form of the expression represented:\n *\tEXISTS_SUBLINK\t\tEXISTS(SELECT ...)\n *\tALL_SUBLINK\t\t\t(lefthand) op ALL (SELECT ...)\n *\tANY_SUBLINK\t\t\t(lefthand) op ANY (SELECT ...)\n *\tROWCOMPARE_SUBLINK\t(lefthand) op (SELECT ...)\n *\tEXPR_SUBLINK\t\t(SELECT with single targetlist item ...)\n *\tMULTIEXPR_SUBLINK\t(SELECT with multiple targetlist items ...)\n *\tARRAY_SUBLINK\t\tARRAY(SELECT with single targetlist item ...)\n *\tCTE_SUBLINK\t\t\tWITH query (never actually part of an expression)\n * For ALL, ANY, and ROWCOMPARE, the lefthand is a list of expressions of the\n * same length as the subselect's targetlist.  ROWCOMPARE will *always* have\n * a list with more than one entry; if the subselect has just one target\n * then the parser will create an EXPR_SUBLINK instead (and any operator\n * above the subselect will be represented separately).\n * ROWCOMPARE, EXPR, and MULTIEXPR require the subselect to deliver at most\n * one row (if it returns no rows, the result is NULL).\n * ALL, ANY, and ROWCOMPARE require the combining operators to deliver boolean\n * results.  ALL and ANY combine the per-row results using AND and OR\n * semantics respectively.\n * ARRAY requires just one target column, and creates an array of the target\n * column's type using any number of rows resulting from the subselect.\n *\n * SubLink is classed as an Expr node, but it is not actually executable;\n * it must be replaced in the expression tree by a SubPlan node during\n * planning.\n *\n * NOTE: in the raw output of gram.y, testexpr contains just the raw form\n * of the lefthand expression (if any), and operName is the String name of\n * the combining operator.  Also, subselect is a raw parsetree.  During parse\n * analysis, the parser transforms testexpr into a complete boolean expression\n * that compares the lefthand value(s) to PARAM_SUBLINK nodes representing the\n * output columns of the subselect.  And subselect is transformed to a Query.\n * This is the representation seen in saved rules and in the rewriter.\n *\n * In EXISTS, EXPR, MULTIEXPR, and ARRAY SubLinks, testexpr and operName\n * are unused and are always null.\n *\n * subLinkId is currently used only for MULTIEXPR SubLinks, and is zero in\n * other SubLinks.  This number identifies different multiple-assignment\n * subqueries within an UPDATE statement's SET list.  It is unique only\n * within a particular targetlist.  The output column(s) of the MULTIEXPR\n * are referenced by PARAM_MULTIEXPR Params appearing elsewhere in the tlist.\n *\n * The CTE_SUBLINK case never occurs in actual SubLink nodes, but it is used\n * in SubPlans generated for WITH subqueries.\n */\n"
    },
    SubPlan: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          comment: '\t/* Fields copied from original SubLink: */\n'
        },
        {
          name: 'subLinkType',
          c_type: 'SubLinkType',
          comment: '/* see above */'
        },
        {
          comment:
            '\t/* The combining operators, transformed to an executable expression: */\n'
        },
        {
          name: 'testexpr',
          c_type: 'Node*',
          comment: '/* OpExpr or RowCompareExpr expression tree */'
        },
        {
          name: 'paramIds',
          c_type: 'List*',
          comment: '/* IDs of Params embedded in the above */'
        },
        {
          comment: '\t/* Identification of the Plan tree to use: */\n'
        },
        {
          name: 'plan_id',
          c_type: 'int',
          comment: '/* Index (from 1) in PlannedStmt.subplans */'
        },
        {
          comment:
            '\t/* Identification of the SubPlan for EXPLAIN and debugging purposes: */\n'
        },
        {
          name: 'plan_name',
          c_type: 'char*',
          comment: '/* A name assigned during planning */'
        },
        {
          comment:
            "\t/* Extra data useful for determining subplan's output type: */\n"
        },
        {
          name: 'firstColType',
          c_type: 'Oid',
          comment: '/* Type of first column of subplan result */'
        },
        {
          name: 'firstColTypmod',
          c_type: 'int32',
          comment: '/* Typmod of first column of subplan result */'
        },
        {
          name: 'firstColCollation',
          c_type: 'Oid',
          comment:
            '/* Collation of first column of subplan\n\t\t\t\t\t\t\t\t\t * result */\n'
        },
        {
          comment: '\t/* Information about execution strategy: */\n'
        },
        {
          name: 'useHashTable',
          c_type: 'bool',
          comment:
            '/* true to store subselect output in a hash\n\t\t\t\t\t\t\t\t * table (implies we are doing "IN") */\n'
        },
        {
          name: 'unknownEqFalse',
          c_type: 'bool',
          comment:
            "/* true if it's okay to return FALSE when the\n\t\t\t\t\t\t\t\t * spec result is UNKNOWN; this allows much\n\t\t\t\t\t\t\t\t * simpler handling of null values */\n"
        },
        {
          name: 'parallel_safe',
          c_type: 'bool',
          comment: '/* is the subplan parallel-safe? */'
        },
        {
          comment:
            '\t/* Note: parallel_safe does not consider contents of testexpr or args */\n'
        },
        {
          comment:
            '\t/* Information for passing params into and out of the subselect: */\n'
        },
        {
          comment:
            '\t/* setParam and parParam are lists of integers (param IDs) */\n'
        },
        {
          name: 'setParam',
          c_type: 'List*',
          comment:
            '/* initplan subqueries have to set these\n\t\t\t\t\t\t\t\t * Params for parent plan */\n'
        },
        {
          name: 'parParam',
          c_type: 'List*',
          comment: '/* indices of input Params from parent plan */'
        },
        {
          name: 'args',
          c_type: 'List*',
          comment: '/* exprs to pass as parParam values */'
        },
        {
          comment: '\t/* Estimated execution costs: */\n'
        },
        {
          name: 'startup_cost',
          c_type: 'Cost',
          comment: '/* one-time setup cost */'
        },
        {
          name: 'per_call_cost',
          c_type: 'Cost',
          comment: '/* cost for each subplan evaluation */'
        }
      ],
      comment:
        '/*\n * SubPlan - executable expression node for a subplan (sub-SELECT)\n *\n * The planner replaces SubLink nodes in expression trees with SubPlan\n * nodes after it has finished planning the subquery.  SubPlan references\n * a sub-plantree stored in the subplans list of the toplevel PlannedStmt.\n * (We avoid a direct link to make it easier to copy expression trees\n * without causing multiple processing of the subplan.)\n *\n * In an ordinary subplan, testexpr points to an executable expression\n * (OpExpr, an AND/OR tree of OpExprs, or RowCompareExpr) for the combining\n * operator(s); the left-hand arguments are the original lefthand expressions,\n * and the right-hand arguments are PARAM_EXEC Param nodes representing the\n * outputs of the sub-select.  (NOTE: runtime coercion functions may be\n * inserted as well.)  This is just the same expression tree as testexpr in\n * the original SubLink node, but the PARAM_SUBLINK nodes are replaced by\n * suitably numbered PARAM_EXEC nodes.\n *\n * If the sub-select becomes an initplan rather than a subplan, the executable\n * expression is part of the outer plan\'s expression tree (and the SubPlan\n * node itself is not, but rather is found in the outer plan\'s initPlan\n * list).  In this case testexpr is NULL to avoid duplication.\n *\n * The planner also derives lists of the values that need to be passed into\n * and out of the subplan.  Input values are represented as a list "args" of\n * expressions to be evaluated in the outer-query context (currently these\n * args are always just Vars, but in principle they could be any expression).\n * The values are assigned to the global PARAM_EXEC params indexed by parParam\n * (the parParam and args lists must have the same ordering).  setParam is a\n * list of the PARAM_EXEC params that are computed by the sub-select, if it\n * is an initplan; they are listed in order by sub-select output column\n * position.  (parParam and setParam are integer Lists, not Bitmapsets,\n * because their ordering is significant.)\n *\n * Also, the planner computes startup and per-call costs for use of the\n * SubPlan.  Note that these include the cost of the subquery proper,\n * evaluation of the testexpr if any, and any hashtable management overhead.\n */\n'
    },
    AlternativeSubPlan: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'subplans',
          c_type: 'List*',
          comment: '/* SubPlan(s) with equivalent results */'
        }
      ],
      comment:
        "/*\n * AlternativeSubPlan - expression node for a choice among SubPlans\n *\n * The subplans are given as a List so that the node definition need not\n * change if there's ever more than two alternatives.  For the moment,\n * though, there are always exactly two; and the first one is the fast-start\n * plan.\n */\n"
    },
    FieldSelect: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'arg',
          c_type: 'Expr*',
          comment: '/* input expression */'
        },
        {
          name: 'fieldnum',
          c_type: 'AttrNumber',
          comment: '/* attribute number of field to extract */'
        },
        {
          name: 'resulttype',
          c_type: 'Oid',
          comment:
            '/* type of the field (result type of this\n\t\t\t\t\t\t\t\t * node) */\n'
        },
        {
          name: 'resulttypmod',
          c_type: 'int32',
          comment: '/* output typmod (usually -1) */'
        },
        {
          name: 'resultcollid',
          c_type: 'Oid',
          comment: '/* OID of collation of the field */'
        }
      ],
      comment:
        '/* ----------------\n * FieldSelect\n *\n * FieldSelect represents the operation of extracting one field from a tuple\n * value.  At runtime, the input expression is expected to yield a rowtype\n * Datum.  The specified field number is extracted and returned as a Datum.\n * ----------------\n */\n'
    },
    FieldStore: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'arg',
          c_type: 'Expr*',
          comment: '/* input tuple value */'
        },
        {
          name: 'newvals',
          c_type: 'List*',
          comment: '/* new value(s) for field(s) */'
        },
        {
          name: 'fieldnums',
          c_type: 'List*',
          comment: '/* integer list of field attnums */'
        },
        {
          name: 'resulttype',
          c_type: 'Oid',
          comment: '/* type of result (same as type of arg) */'
        },
        {
          comment:
            '\t/* Like RowExpr, we deliberately omit a typmod and collation here */\n'
        }
      ],
      comment:
        '/* ----------------\n * FieldStore\n *\n * FieldStore represents the operation of modifying one field in a tuple\n * value, yielding a new tuple value (the input is not touched!).  Like\n * the assign case of SubscriptingRef, this is used to implement UPDATE of a\n * portion of a column.\n *\n * resulttype is always a named composite type (not a domain).  To update\n * a composite domain value, apply CoerceToDomain to the FieldStore.\n *\n * A single FieldStore can actually represent updates of several different\n * fields.  The parser only generates FieldStores with single-element lists,\n * but the planner will collapse multiple updates of the same base column\n * into one FieldStore.\n * ----------------\n */\n'
    },
    RelabelType: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'arg',
          c_type: 'Expr*',
          comment: '/* input expression */'
        },
        {
          name: 'resulttype',
          c_type: 'Oid',
          comment: '/* output type of coercion expression */'
        },
        {
          name: 'resulttypmod',
          c_type: 'int32',
          comment: '/* output typmod (usually -1) */'
        },
        {
          name: 'resultcollid',
          c_type: 'Oid',
          comment: '/* OID of collation, or InvalidOid if none */'
        },
        {
          name: 'relabelformat',
          c_type: 'CoercionForm',
          comment: '/* how to display this node */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment:
        '/* ----------------\n * RelabelType\n *\n * RelabelType represents a "dummy" type coercion between two binary-\n * compatible datatypes, such as reinterpreting the result of an OID\n * expression as an int4.  It is a no-op at runtime; we only need it\n * to provide a place to store the correct type to be attributed to\n * the expression result during type resolution.  (We can\'t get away\n * with just overwriting the type field of the input expression node,\n * so we need a separate node to show the coercion\'s result type.)\n * ----------------\n */\n'
    },
    CoerceViaIO: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'arg',
          c_type: 'Expr*',
          comment: '/* input expression */'
        },
        {
          name: 'resulttype',
          c_type: 'Oid',
          comment: '/* output type of coercion */'
        },
        {
          comment: '\t/* output typmod is not stored, but is presumed -1 */\n'
        },
        {
          name: 'resultcollid',
          c_type: 'Oid',
          comment: '/* OID of collation, or InvalidOid if none */'
        },
        {
          name: 'coerceformat',
          c_type: 'CoercionForm',
          comment: '/* how to display this node */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment:
        "/* ----------------\n * CoerceViaIO\n *\n * CoerceViaIO represents a type coercion between two types whose textual\n * representations are compatible, implemented by invoking the source type's\n * typoutput function then the destination type's typinput function.\n * ----------------\n */\n"
    },
    ArrayCoerceExpr: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'arg',
          c_type: 'Expr*',
          comment: '/* input expression (yields an array) */'
        },
        {
          name: 'elemexpr',
          c_type: 'Expr*',
          comment: '/* expression representing per-element work */'
        },
        {
          name: 'resulttype',
          c_type: 'Oid',
          comment: '/* output type of coercion (an array type) */'
        },
        {
          name: 'resulttypmod',
          c_type: 'int32',
          comment: '/* output typmod (also element typmod) */'
        },
        {
          name: 'resultcollid',
          c_type: 'Oid',
          comment: '/* OID of collation, or InvalidOid if none */'
        },
        {
          name: 'coerceformat',
          c_type: 'CoercionForm',
          comment: '/* how to display this node */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment:
        '/* ----------------\n * ArrayCoerceExpr\n *\n * ArrayCoerceExpr represents a type coercion from one array type to another,\n * which is implemented by applying the per-element coercion expression\n * "elemexpr" to each element of the source array.  Within elemexpr, the\n * source element is represented by a CaseTestExpr node.  Note that even if\n * elemexpr is a no-op (that is, just CaseTestExpr + RelabelType), the\n * coercion still requires some effort: we have to fix the element type OID\n * stored in the array header.\n * ----------------\n */\n'
    },
    ConvertRowtypeExpr: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'arg',
          c_type: 'Expr*',
          comment: '/* input expression */'
        },
        {
          name: 'resulttype',
          c_type: 'Oid',
          comment: '/* output type (always a composite type) */'
        },
        {
          comment:
            '\t/* Like RowExpr, we deliberately omit a typmod and collation here */\n'
        },
        {
          name: 'convertformat',
          c_type: 'CoercionForm',
          comment: '/* how to display this node */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment:
        '/* ----------------\n * ConvertRowtypeExpr\n *\n * ConvertRowtypeExpr represents a type coercion from one composite type\n * to another, where the source type is guaranteed to contain all the columns\n * needed for the destination type plus possibly others; the columns need not\n * be in the same positions, but are matched up by name.  This is primarily\n * used to convert a whole-row value of an inheritance child table into a\n * valid whole-row value of its parent table\'s rowtype.  Both resulttype\n * and the exposed type of "arg" must be named composite types (not domains).\n * ----------------\n */\n'
    },
    CollateExpr: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'arg',
          c_type: 'Expr*',
          comment: '/* input expression */'
        },
        {
          name: 'collOid',
          c_type: 'Oid',
          comment: "/* collation's OID */"
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment:
        '/*----------\n * CollateExpr - COLLATE\n *\n * The planner replaces CollateExpr with RelabelType during expression\n * preprocessing, so execution never sees a CollateExpr.\n *----------\n */\n'
    },
    CaseExpr: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'casetype',
          c_type: 'Oid',
          comment: '/* type of expression result */'
        },
        {
          name: 'casecollid',
          c_type: 'Oid',
          comment: '/* OID of collation, or InvalidOid if none */'
        },
        {
          name: 'arg',
          c_type: 'Expr*',
          comment: '/* implicit equality comparison argument */'
        },
        {
          name: 'args',
          c_type: 'List*',
          comment: '/* the arguments (list of WHEN clauses) */'
        },
        {
          name: 'defresult',
          c_type: 'Expr*',
          comment: '/* the default result (ELSE clause) */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment:
        '/*----------\n * CaseExpr - a CASE expression\n *\n * We support two distinct forms of CASE expression:\n *\t\tCASE WHEN boolexpr THEN expr [ WHEN boolexpr THEN expr ... ]\n *\t\tCASE testexpr WHEN compexpr THEN expr [ WHEN compexpr THEN expr ... ]\n * These are distinguishable by the "arg" field being NULL in the first case\n * and the testexpr in the second case.\n *\n * In the raw grammar output for the second form, the condition expressions\n * of the WHEN clauses are just the comparison values.  Parse analysis\n * converts these to valid boolean expressions of the form\n *\t\tCaseTestExpr \'=\' compexpr\n * where the CaseTestExpr node is a placeholder that emits the correct\n * value at runtime.  This structure is used so that the testexpr need be\n * evaluated only once.  Note that after parse analysis, the condition\n * expressions always yield boolean.\n *\n * Note: we can test whether a CaseExpr has been through parse analysis\n * yet by checking whether casetype is InvalidOid or not.\n *----------\n */\n'
    },
    CaseWhen: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'expr',
          c_type: 'Expr*',
          comment: '/* condition expression */'
        },
        {
          name: 'result',
          c_type: 'Expr*',
          comment: '/* substitution result */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment: '/*\n * CaseWhen - one arm of a CASE expression\n */\n'
    },
    CaseTestExpr: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'typeId',
          c_type: 'Oid',
          comment: '/* type for substituted value */'
        },
        {
          name: 'typeMod',
          c_type: 'int32',
          comment: '/* typemod for substituted value */'
        },
        {
          name: 'collation',
          c_type: 'Oid',
          comment: '/* collation for the substituted value */'
        }
      ],
      comment:
        "/*\n * Placeholder node for the test value to be processed by a CASE expression.\n * This is effectively like a Param, but can be implemented more simply\n * since we need only one replacement value at a time.\n *\n * We also abuse this node type for some other purposes, including:\n *\t* Placeholder for the current array element value in ArrayCoerceExpr;\n *\t  see build_coercion_expression().\n *\t* Nested FieldStore/SubscriptingRef assignment expressions in INSERT/UPDATE;\n *\t  see transformAssignmentIndirection().\n *\n * The uses in CaseExpr and ArrayCoerceExpr are safe only to the extent that\n * there is not any other CaseExpr or ArrayCoerceExpr between the value source\n * node and its child CaseTestExpr(s).  This is true in the parse analysis\n * output, but the planner's function-inlining logic has to be careful not to\n * break it.\n *\n * The nested-assignment-expression case is safe because the only node types\n * that can be above such CaseTestExprs are FieldStore and SubscriptingRef.\n */\n"
    },
    ArrayExpr: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'array_typeid',
          c_type: 'Oid',
          comment: '/* type of expression result */'
        },
        {
          name: 'array_collid',
          c_type: 'Oid',
          comment: '/* OID of collation, or InvalidOid if none */'
        },
        {
          name: 'element_typeid',
          c_type: 'Oid',
          comment: '/* common type of array elements */'
        },
        {
          name: 'elements',
          c_type: 'List*',
          comment: '/* the array elements or sub-arrays */'
        },
        {
          name: 'multidims',
          c_type: 'bool',
          comment: '/* true if elements are sub-arrays */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment:
        '/*\n * ArrayExpr - an ARRAY[] expression\n *\n * Note: if multidims is false, the constituent expressions all yield the\n * scalar type identified by element_typeid.  If multidims is true, the\n * constituent expressions all yield arrays of element_typeid (ie, the same\n * type as array_typeid); at runtime we must check for compatible subscripts.\n */\n'
    },
    RowExpr: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'args',
          c_type: 'List*',
          comment: '/* the fields */'
        },
        {
          name: 'row_typeid',
          c_type: 'Oid',
          comment: "/* RECORDOID or a composite type's ID */"
        },
        {
          comment: ''
        },
        {
          comment:
            "\t/*\n\t * row_typeid cannot be a domain over composite, only plain composite.  To\n\t * create a composite domain value, apply CoerceToDomain to the RowExpr.\n\t *\n\t * Note: we deliberately do NOT store a typmod.  Although a typmod will be\n\t * associated with specific RECORD types at runtime, it will differ for\n\t * different backends, and so cannot safely be stored in stored\n\t * parsetrees.  We must assume typmod -1 for a RowExpr node.\n\t *\n\t * We don't need to store a collation either.  The result type is\n\t * necessarily composite, and composite types never have a collation.\n\t */\n"
        },
        {
          name: 'row_format',
          c_type: 'CoercionForm',
          comment: '/* how to display this node */'
        },
        {
          name: 'colnames',
          c_type: 'List*',
          comment: '/* list of String, or NIL */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment:
        "/*\n * RowExpr - a ROW() expression\n *\n * Note: the list of fields must have a one-for-one correspondence with\n * physical fields of the associated rowtype, although it is okay for it\n * to be shorter than the rowtype.  That is, the N'th list element must\n * match up with the N'th physical field.  When the N'th physical field\n * is a dropped column (attisdropped) then the N'th list element can just\n * be a NULL constant.  (This case can only occur for named composite types,\n * not RECORD types, since those are built from the RowExpr itself rather\n * than vice versa.)  It is important not to assume that length(args) is\n * the same as the number of columns logically present in the rowtype.\n *\n * colnames provides field names in cases where the names can't easily be\n * obtained otherwise.  Names *must* be provided if row_typeid is RECORDOID.\n * If row_typeid identifies a known composite type, colnames can be NIL to\n * indicate the type's cataloged field names apply.  Note that colnames can\n * be non-NIL even for a composite type, and typically is when the RowExpr\n * was created by expanding a whole-row Var.  This is so that we can retain\n * the column alias names of the RTE that the Var referenced (which would\n * otherwise be very difficult to extract from the parsetree).  Like the\n * args list, colnames is one-for-one with physical fields of the rowtype.\n */\n"
    },
    RowCompareExpr: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'rctype',
          c_type: 'RowCompareType',
          comment: '/* LT LE GE or GT, never EQ or NE */'
        },
        {
          name: 'opnos',
          c_type: 'List*',
          comment: '/* OID list of pairwise comparison ops */'
        },
        {
          name: 'opfamilies',
          c_type: 'List*',
          comment: '/* OID list of containing operator families */'
        },
        {
          name: 'inputcollids',
          c_type: 'List*',
          comment: '/* OID list of collations for comparisons */'
        },
        {
          name: 'largs',
          c_type: 'List*',
          comment: '/* the left-hand input arguments */'
        },
        {
          name: 'rargs',
          c_type: 'List*',
          comment: '/* the right-hand input arguments */'
        }
      ],
      comment:
        '/*\n * RowCompareExpr - row-wise comparison, such as (a, b) <= (1, 2)\n *\n * We support row comparison for any operator that can be determined to\n * act like =, <>, <, <=, >, or >= (we determine this by looking for the\n * operator in btree opfamilies).  Note that the same operator name might\n * map to a different operator for each pair of row elements, since the\n * element datatypes can vary.\n *\n * A RowCompareExpr node is only generated for the < <= > >= cases;\n * the = and <> cases are translated to simple AND or OR combinations\n * of the pairwise comparisons.  However, we include = and <> in the\n * RowCompareType enum for the convenience of parser logic.\n */\n'
    },
    CoalesceExpr: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'coalescetype',
          c_type: 'Oid',
          comment: '/* type of expression result */'
        },
        {
          name: 'coalescecollid',
          c_type: 'Oid',
          comment: '/* OID of collation, or InvalidOid if none */'
        },
        {
          name: 'args',
          c_type: 'List*',
          comment: '/* the arguments */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment: '/*\n * CoalesceExpr - a COALESCE expression\n */\n'
    },
    MinMaxExpr: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'minmaxtype',
          c_type: 'Oid',
          comment: '/* common type of arguments and result */'
        },
        {
          name: 'minmaxcollid',
          c_type: 'Oid',
          comment: '/* OID of collation of result */'
        },
        {
          name: 'inputcollid',
          c_type: 'Oid',
          comment: '/* OID of collation that function should use */'
        },
        {
          name: 'op',
          c_type: 'MinMaxOp',
          comment: '/* function to execute */'
        },
        {
          name: 'args',
          c_type: 'List*',
          comment: '/* the arguments */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment: '/*\n * MinMaxExpr - a GREATEST or LEAST function\n */\n'
    },
    SQLValueFunction: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'op',
          c_type: 'SQLValueFunctionOp',
          comment: '/* which function this is */'
        },
        {
          name: 'type',
          c_type: 'Oid',
          comment: '/* result type/typmod */'
        },
        {
          name: 'typmod',
          c_type: 'int32',
          comment: null
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment: null
    },
    XmlExpr: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'op',
          c_type: 'XmlExprOp',
          comment: '/* xml function ID */'
        },
        {
          name: 'name',
          c_type: 'char*',
          comment: '/* name in xml(NAME foo ...) syntaxes */'
        },
        {
          name: 'named_args',
          c_type: 'List*',
          comment: '/* non-XML expressions for xml_attributes */'
        },
        {
          name: 'arg_names',
          c_type: 'List*',
          comment: '/* parallel list of Value strings */'
        },
        {
          name: 'args',
          c_type: 'List*',
          comment: '/* list of expressions */'
        },
        {
          name: 'xmloption',
          c_type: 'XmlOptionType',
          comment: '/* DOCUMENT or CONTENT */'
        },
        {
          name: 'type',
          c_type: 'Oid',
          comment: '/* target type/typmod for XMLSERIALIZE */'
        },
        {
          name: 'typmod',
          c_type: 'int32',
          comment: null
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment: null
    },
    NullTest: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'arg',
          c_type: 'Expr*',
          comment: '/* input expression */'
        },
        {
          name: 'nulltesttype',
          c_type: 'NullTestType',
          comment: '/* IS NULL, IS NOT NULL */'
        },
        {
          name: 'argisrow',
          c_type: 'bool',
          comment: '/* T to perform field-by-field null checks */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment:
        '/* ----------------\n * NullTest\n *\n * NullTest represents the operation of testing a value for NULLness.\n * The appropriate test is performed and returned as a boolean Datum.\n *\n * When argisrow is false, this simply represents a test for the null value.\n *\n * When argisrow is true, the input expression must yield a rowtype, and\n * the node implements "row IS [NOT] NULL" per the SQL standard.  This\n * includes checking individual fields for NULLness when the row datum\n * itself isn\'t NULL.\n *\n * NOTE: the combination of a rowtype input and argisrow==false does NOT\n * correspond to the SQL notation "row IS [NOT] NULL"; instead, this case\n * represents the SQL notation "row IS [NOT] DISTINCT FROM NULL".\n * ----------------\n */\n'
    },
    BooleanTest: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'arg',
          c_type: 'Expr*',
          comment: '/* input expression */'
        },
        {
          name: 'booltesttype',
          c_type: 'BoolTestType',
          comment: '/* test type */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment:
        '/*\n * BooleanTest\n *\n * BooleanTest represents the operation of determining whether a boolean\n * is TRUE, FALSE, or UNKNOWN (ie, NULL).  All six meaningful combinations\n * are supported.  Note that a NULL input does *not* cause a NULL result.\n * The appropriate test is performed and returned as a boolean Datum.\n */\n'
    },
    CoerceToDomain: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'arg',
          c_type: 'Expr*',
          comment: '/* input expression */'
        },
        {
          name: 'resulttype',
          c_type: 'Oid',
          comment: '/* domain type ID (result type) */'
        },
        {
          name: 'resulttypmod',
          c_type: 'int32',
          comment: '/* output typmod (currently always -1) */'
        },
        {
          name: 'resultcollid',
          c_type: 'Oid',
          comment: '/* OID of collation, or InvalidOid if none */'
        },
        {
          name: 'coercionformat',
          c_type: 'CoercionForm',
          comment: '/* how to display this node */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment:
        '/*\n * CoerceToDomain\n *\n * CoerceToDomain represents the operation of coercing a value to a domain\n * type.  At runtime (and not before) the precise set of constraints to be\n * checked will be determined.  If the value passes, it is returned as the\n * result; if not, an error is raised.  Note that this is equivalent to\n * RelabelType in the scenario where no constraints are applied.\n */\n'
    },
    CoerceToDomainValue: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'typeId',
          c_type: 'Oid',
          comment: '/* type for substituted value */'
        },
        {
          name: 'typeMod',
          c_type: 'int32',
          comment: '/* typemod for substituted value */'
        },
        {
          name: 'collation',
          c_type: 'Oid',
          comment: '/* collation for the substituted value */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment:
        "/*\n * Placeholder node for the value to be processed by a domain's check\n * constraint.  This is effectively like a Param, but can be implemented more\n * simply since we need only one replacement value at a time.\n *\n * Note: the typeId/typeMod/collation will be set from the domain's base type,\n * not the domain itself.  This is because we shouldn't consider the value\n * to be a member of the domain if we haven't yet checked its constraints.\n */\n"
    },
    SetToDefault: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'typeId',
          c_type: 'Oid',
          comment: '/* type for substituted value */'
        },
        {
          name: 'typeMod',
          c_type: 'int32',
          comment: '/* typemod for substituted value */'
        },
        {
          name: 'collation',
          c_type: 'Oid',
          comment: '/* collation for the substituted value */'
        },
        {
          name: 'location',
          c_type: 'int',
          comment: '/* token location, or -1 if unknown */'
        }
      ],
      comment:
        '/*\n * Placeholder node for a DEFAULT marker in an INSERT or UPDATE command.\n *\n * This is not an executable expression: it must be replaced by the actual\n * column default expression during rewriting.  But it is convenient to\n * treat it as an expression node during parsing and rewriting.\n */\n'
    },
    CurrentOfExpr: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'cvarno',
          c_type: 'Index',
          comment: '/* RT index of target relation */'
        },
        {
          name: 'cursor_name',
          c_type: 'char*',
          comment: '/* name of referenced cursor, or NULL */'
        },
        {
          name: 'cursor_param',
          c_type: 'int',
          comment: '/* refcursor parameter number, or 0 */'
        }
      ],
      comment:
        '/*\n * Node representing [WHERE] CURRENT OF cursor_name\n *\n * CURRENT OF is a bit like a Var, in that it carries the rangetable index\n * of the target relation being constrained; this aids placing the expression\n * correctly during planning.  We can assume however that its "levelsup" is\n * always zero, due to the syntactic constraints on where it can appear.\n *\n * The referenced cursor can be represented either as a hardwired string\n * or as a reference to a run-time parameter of type REFCURSOR.  The latter\n * case is for the convenience of plpgsql.\n */\n'
    },
    NextValueExpr: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'seqid',
          c_type: 'Oid',
          comment: null
        },
        {
          name: 'typeId',
          c_type: 'Oid',
          comment: null
        }
      ],
      comment:
        '/*\n * NextValueExpr - get next value from sequence\n *\n * This has the same effect as calling the nextval() function, but it does not\n * check permissions on the sequence.  This is used for identity columns,\n * where the sequence is an implicit dependency without its own permissions.\n */\n'
    },
    InferenceElem: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'expr',
          c_type: 'Node*',
          comment: '/* expression to infer from, or NULL */'
        },
        {
          name: 'infercollid',
          c_type: 'Oid',
          comment: '/* OID of collation, or InvalidOid */'
        },
        {
          name: 'inferopclass',
          c_type: 'Oid',
          comment: '/* OID of att opclass, or InvalidOid */'
        }
      ],
      comment:
        '/*\n * InferenceElem - an element of a unique index inference specification\n *\n * This mostly matches the structure of IndexElems, but having a dedicated\n * primnode allows for a clean separation between the use of index parameters\n * by utility commands, and this node.\n */\n'
    },
    TargetEntry: {
      fields: [
        {
          name: 'xpr',
          c_type: 'Expr',
          comment: null
        },
        {
          name: 'expr',
          c_type: 'Expr*',
          comment: '/* expression to evaluate */'
        },
        {
          name: 'resno',
          c_type: 'AttrNumber',
          comment: '/* attribute number (see notes above) */'
        },
        {
          name: 'resname',
          c_type: 'char*',
          comment: '/* name of the column (could be NULL) */'
        },
        {
          name: 'ressortgroupref',
          c_type: 'Index',
          comment:
            '/* nonzero if referenced by a sort/group\n\t\t\t\t\t\t\t\t\t * clause */\n'
        },
        {
          name: 'resorigtbl',
          c_type: 'Oid',
          comment: "/* OID of column's source table */"
        },
        {
          name: 'resorigcol',
          c_type: 'AttrNumber',
          comment: "/* column's number in source table */"
        },
        {
          name: 'resjunk',
          c_type: 'bool',
          comment:
            '/* set to true to eliminate the attribute from\n\t\t\t\t\t\t\t\t * final target list */\n'
        }
      ],
      comment:
        "/*--------------------\n * TargetEntry -\n *\t   a target entry (used in query target lists)\n *\n * Strictly speaking, a TargetEntry isn't an expression node (since it can't\n * be evaluated by ExecEvalExpr).  But we treat it as one anyway, since in\n * very many places it's convenient to process a whole query targetlist as a\n * single expression tree.\n *\n * In a SELECT's targetlist, resno should always be equal to the item's\n * ordinal position (counting from 1).  However, in an INSERT or UPDATE\n * targetlist, resno represents the attribute number of the destination\n * column for the item; so there may be missing or out-of-order resnos.\n * It is even legal to have duplicated resnos; consider\n *\t\tUPDATE table SET arraycol[1] = ..., arraycol[2] = ..., ...\n * The two meanings come together in the executor, because the planner\n * transforms INSERT/UPDATE tlists into a normalized form with exactly\n * one entry for each column of the destination table.  Before that's\n * happened, however, it is risky to assume that resno == position.\n * Generally get_tle_by_resno() should be used rather than list_nth()\n * to fetch tlist entries by resno, and only in SELECT should you assume\n * that resno is a unique identifier.\n *\n * resname is required to represent the correct column name in non-resjunk\n * entries of top-level SELECT targetlists, since it will be used as the\n * column title sent to the frontend.  In most other contexts it is only\n * a debugging aid, and may be wrong or even NULL.  (In particular, it may\n * be wrong in a tlist from a stored rule, if the referenced column has been\n * renamed by ALTER TABLE since the rule was made.  Also, the planner tends\n * to store NULL rather than look up a valid name for tlist entries in\n * non-toplevel plan nodes.)  In resjunk entries, resname should be either\n * a specific system-generated name (such as \"ctid\") or NULL; anything else\n * risks confusing ExecGetJunkAttribute!\n *\n * ressortgroupref is used in the representation of ORDER BY, GROUP BY, and\n * DISTINCT items.  Targetlist entries with ressortgroupref=0 are not\n * sort/group items.  If ressortgroupref>0, then this item is an ORDER BY,\n * GROUP BY, and/or DISTINCT target value.  No two entries in a targetlist\n * may have the same nonzero ressortgroupref --- but there is no particular\n * meaning to the nonzero values, except as tags.  (For example, one must\n * not assume that lower ressortgroupref means a more significant sort key.)\n * The order of the associated SortGroupClause lists determine the semantics.\n *\n * resorigtbl/resorigcol identify the source of the column, if it is a\n * simple reference to a column of a base table (or view).  If it is not\n * a simple reference, these fields are zeroes.\n *\n * If resjunk is true then the column is a working column (such as a sort key)\n * that should be removed from the final output of the query.  Resjunk columns\n * must have resnos that cannot duplicate any regular column's resno.  Also\n * note that there are places that assume resjunk columns come after non-junk\n * columns.\n *--------------------\n */\n"
    },
    RangeTblRef: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'rtindex',
          c_type: 'int',
          comment: null
        }
      ],
      comment:
        "/*\n * RangeTblRef - reference to an entry in the query's rangetable\n *\n * We could use direct pointers to the RT entries and skip having these\n * nodes, but multiple pointers to the same node in a querytree cause\n * lots of headaches, so it seems better to store an index into the RT.\n */\n"
    },
    JoinExpr: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'jointype',
          c_type: 'JoinType',
          comment: '/* type of join */'
        },
        {
          name: 'isNatural',
          c_type: 'bool',
          comment: '/* Natural join? Will need to shape table */'
        },
        {
          name: 'larg',
          c_type: 'Node*',
          comment: '/* left subtree */'
        },
        {
          name: 'rarg',
          c_type: 'Node*',
          comment: '/* right subtree */'
        },
        {
          name: 'usingClause',
          c_type: 'List*',
          comment: '/* USING clause, if any (list of String) */'
        },
        {
          name: 'quals',
          c_type: 'Node*',
          comment: '/* qualifiers on join, if any */'
        },
        {
          name: 'alias',
          c_type: 'Alias*',
          comment: '/* user-written alias clause, if any */'
        },
        {
          name: 'rtindex',
          c_type: 'int',
          comment: '/* RT index assigned for join, or 0 */'
        }
      ],
      comment:
        '/*----------\n * JoinExpr - for SQL JOIN expressions\n *\n * isNatural, usingClause, and quals are interdependent.  The user can write\n * only one of NATURAL, USING(), or ON() (this is enforced by the grammar).\n * If he writes NATURAL then parse analysis generates the equivalent USING()\n * list, and from that fills in "quals" with the right equality comparisons.\n * If he writes USING() then "quals" is filled with equality comparisons.\n * If he writes ON() then only "quals" is set.  Note that NATURAL/USING\n * are not equivalent to ON() since they also affect the output column list.\n *\n * alias is an Alias node representing the AS alias-clause attached to the\n * join expression, or NULL if no clause.  NB: presence or absence of the\n * alias has a critical impact on semantics, because a join with an alias\n * restricts visibility of the tables/columns inside it.\n *\n * During parse analysis, an RTE is created for the Join, and its index\n * is filled into rtindex.  This RTE is present mainly so that Vars can\n * be created that refer to the outputs of the join.  The planner sometimes\n * generates JoinExprs internally; these can have rtindex = 0 if there are\n * no join alias variables referencing such joins.\n *----------\n */\n'
    },
    FromExpr: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'fromlist',
          c_type: 'List*',
          comment: '/* List of join subtrees */'
        },
        {
          name: 'quals',
          c_type: 'Node*',
          comment: '/* qualifiers on join, if any */'
        }
      ],
      comment:
        "/*----------\n * FromExpr - represents a FROM ... WHERE ... construct\n *\n * This is both more flexible than a JoinExpr (it can have any number of\n * children, including zero) and less so --- we don't need to deal with\n * aliases and so on.  The output column set is implicitly just the union\n * of the outputs of the children.\n *----------\n */\n"
    },
    OnConflictExpr: {
      fields: [
        {
          name: 'type',
          c_type: 'NodeTag',
          comment: null
        },
        {
          name: 'action',
          c_type: 'OnConflictAction',
          comment: '/* DO NOTHING or UPDATE? */'
        },
        {
          comment: ''
        },
        {
          comment: '\t/* Arbiter */\n'
        },
        {
          name: 'arbiterElems',
          c_type: 'List*',
          comment:
            "/* unique index arbiter list (of\n\t\t\t\t\t\t\t\t * InferenceElem's) */\n"
        },
        {
          name: 'arbiterWhere',
          c_type: 'Node*',
          comment: '/* unique index arbiter WHERE clause */'
        },
        {
          name: 'constraint',
          c_type: 'Oid',
          comment: '/* pg_constraint OID for arbiter */'
        },
        {
          comment: ''
        },
        {
          comment: '\t/* ON CONFLICT UPDATE */\n'
        },
        {
          name: 'onConflictSet',
          c_type: 'List*',
          comment: '/* List of ON CONFLICT SET TargetEntrys */'
        },
        {
          name: 'onConflictWhere',
          c_type: 'Node*',
          comment: '/* qualifiers to restrict UPDATE to */'
        },
        {
          name: 'exclRelIndex',
          c_type: 'int',
          comment: "/* RT index of 'excluded' relation */"
        },
        {
          name: 'exclRelTlist',
          c_type: 'List*',
          comment: '/* tlist of the EXCLUDED pseudo relation */'
        }
      ],
      comment:
        '/*----------\n * OnConflictExpr - represents an ON CONFLICT DO ... expression\n *\n * The optimizer requires a list of inference elements, and optionally a WHERE\n * clause to infer a unique index.  The unique index (or, occasionally,\n * indexes) inferred are used to arbitrate whether or not the alternative ON\n * CONFLICT path is taken.\n *----------\n */\n'
    }
  },
  'nodes/lockoptions': {},
  'nodes/nodes': {},
  'nodes/params': {
    ParamExternData: {
      fields: [
        {
          name: 'value',
          c_type: 'Datum',
          comment: '/* parameter value */'
        },
        {
          name: 'isnull',
          c_type: 'bool',
          comment: '/* is it NULL? */'
        },
        {
          name: 'pflags',
          c_type: 'uint16',
          comment: '/* flag bits, see above */'
        },
        {
          name: 'ptype',
          c_type: 'Oid',
          comment: "/* parameter's datatype, or 0 */"
        }
      ],
      comment:
        '/*\n *\t  ParamListInfo\n *\n *\t  ParamListInfo structures are used to pass parameters into the executor\n *\t  for parameterized plans.  We support two basic approaches to supplying\n *\t  parameter values, the "static" way and the "dynamic" way.\n *\n *\t  In the static approach, per-parameter data is stored in an array of\n *\t  ParamExternData structs appended to the ParamListInfo struct.\n *\t  Each entry in the array defines the value to be substituted for a\n *\t  PARAM_EXTERN parameter.  The "paramid" of a PARAM_EXTERN Param\n *\t  can range from 1 to numParams.\n *\n *\t  Although parameter numbers are normally consecutive, we allow\n *\t  ptype == InvalidOid to signal an unused array entry.\n *\n *\t  pflags is a flags field.  Currently the only used bit is:\n *\t  PARAM_FLAG_CONST signals the planner that it may treat this parameter\n *\t  as a constant (i.e., generate a plan that works only for this value\n *\t  of the parameter).\n *\n *\t  In the dynamic approach, all access to parameter values is done through\n *\t  hook functions found in the ParamListInfo struct.  In this case,\n *\t  the ParamExternData array is typically unused and not allocated;\n *\t  but the legal range of paramid is still 1 to numParams.\n *\n *\t  Although the data structure is really an array, not a list, we keep\n *\t  the old typedef name to avoid unnecessary code changes.\n *\n *\t  There are 3 hook functions that can be associated with a ParamListInfo\n *\t  structure:\n *\n *\t  If paramFetch isn\'t null, it is called to fetch the ParamExternData\n *\t  for a particular param ID, rather than accessing the relevant element\n *\t  of the ParamExternData array.  This supports the case where the array\n *\t  isn\'t there at all, as well as cases where the data in the array\n *\t  might be obsolete or lazily evaluated.  paramFetch must return the\n *\t  address of a ParamExternData struct describing the specified param ID;\n *\t  the convention above about ptype == InvalidOid signaling an invalid\n *\t  param ID still applies.  The returned struct can either be placed in\n *\t  the "workspace" supplied by the caller, or it can be in storage\n *\t  controlled by the paramFetch hook if that\'s more convenient.\n *\t  (In either case, the struct is not expected to be long-lived.)\n *\t  If "speculative" is true, the paramFetch hook should not risk errors\n *\t  in trying to fetch the parameter value, and should report an invalid\n *\t  parameter instead.\n *\n *\t  If paramCompile isn\'t null, then it controls what execExpr.c compiles\n *\t  for PARAM_EXTERN Param nodes --- typically, this hook would emit a\n *\t  EEOP_PARAM_CALLBACK step.  This allows unnecessary work to be\n *\t  optimized away in compiled expressions.\n *\n *\t  If parserSetup isn\'t null, then it is called to re-instantiate the\n *\t  original parsing hooks when a query needs to be re-parsed/planned.\n *\t  This is especially useful if the types of parameters might change\n *\t  from time to time, since it can replace the need to supply a fixed\n *\t  list of parameter types to the parser.\n *\n *\t  Notice that the paramFetch and paramCompile hooks are actually passed\n *\t  the ParamListInfo struct\'s address; they can therefore access all\n *\t  three of the "arg" fields, and the distinction between paramFetchArg\n *\t  and paramCompileArg is rather arbitrary.\n */\n'
    },
    ParamListInfoData: {
      fields: [
        {
          name: 'paramFetch',
          c_type: 'ParamFetchHook',
          comment: '/* parameter fetch hook */'
        },
        {
          name: 'paramFetchArg',
          c_type: 'void*',
          comment: null
        },
        {
          name: 'paramCompile',
          c_type: 'ParamCompileHook',
          comment: '/* parameter compile hook */'
        },
        {
          name: 'paramCompileArg',
          c_type: 'void*',
          comment: null
        },
        {
          name: 'parserSetup',
          c_type: 'ParserSetupHook',
          comment: '/* parser setup hook */'
        },
        {
          name: 'parserSetupArg',
          c_type: 'void*',
          comment: null
        },
        {
          name: 'paramValuesStr',
          c_type: 'char*',
          comment: '/* params as a single string for errors */'
        },
        {
          name: 'numParams',
          c_type: 'int',
          comment: '/* nominal/maximum # of Params represented */'
        },
        {
          comment: ''
        },
        {
          comment:
            '\t/*\n\t * params[] may be of length zero if paramFetch is supplied; otherwise it\n\t * must be of length numParams.\n\t */\n'
        }
      ],
      comment:
        '/*\n *\t  ParamListInfo\n *\n *\t  ParamListInfo structures are used to pass parameters into the executor\n *\t  for parameterized plans.  We support two basic approaches to supplying\n *\t  parameter values, the "static" way and the "dynamic" way.\n *\n *\t  In the static approach, per-parameter data is stored in an array of\n *\t  ParamExternData structs appended to the ParamListInfo struct.\n *\t  Each entry in the array defines the value to be substituted for a\n *\t  PARAM_EXTERN parameter.  The "paramid" of a PARAM_EXTERN Param\n *\t  can range from 1 to numParams.\n *\n *\t  Although parameter numbers are normally consecutive, we allow\n *\t  ptype == InvalidOid to signal an unused array entry.\n *\n *\t  pflags is a flags field.  Currently the only used bit is:\n *\t  PARAM_FLAG_CONST signals the planner that it may treat this parameter\n *\t  as a constant (i.e., generate a plan that works only for this value\n *\t  of the parameter).\n *\n *\t  In the dynamic approach, all access to parameter values is done through\n *\t  hook functions found in the ParamListInfo struct.  In this case,\n *\t  the ParamExternData array is typically unused and not allocated;\n *\t  but the legal range of paramid is still 1 to numParams.\n *\n *\t  Although the data structure is really an array, not a list, we keep\n *\t  the old typedef name to avoid unnecessary code changes.\n *\n *\t  There are 3 hook functions that can be associated with a ParamListInfo\n *\t  structure:\n *\n *\t  If paramFetch isn\'t null, it is called to fetch the ParamExternData\n *\t  for a particular param ID, rather than accessing the relevant element\n *\t  of the ParamExternData array.  This supports the case where the array\n *\t  isn\'t there at all, as well as cases where the data in the array\n *\t  might be obsolete or lazily evaluated.  paramFetch must return the\n *\t  address of a ParamExternData struct describing the specified param ID;\n *\t  the convention above about ptype == InvalidOid signaling an invalid\n *\t  param ID still applies.  The returned struct can either be placed in\n *\t  the "workspace" supplied by the caller, or it can be in storage\n *\t  controlled by the paramFetch hook if that\'s more convenient.\n *\t  (In either case, the struct is not expected to be long-lived.)\n *\t  If "speculative" is true, the paramFetch hook should not risk errors\n *\t  in trying to fetch the parameter value, and should report an invalid\n *\t  parameter instead.\n *\n *\t  If paramCompile isn\'t null, then it controls what execExpr.c compiles\n *\t  for PARAM_EXTERN Param nodes --- typically, this hook would emit a\n *\t  EEOP_PARAM_CALLBACK step.  This allows unnecessary work to be\n *\t  optimized away in compiled expressions.\n *\n *\t  If parserSetup isn\'t null, then it is called to re-instantiate the\n *\t  original parsing hooks when a query needs to be re-parsed/planned.\n *\t  This is especially useful if the types of parameters might change\n *\t  from time to time, since it can replace the need to supply a fixed\n *\t  list of parameter types to the parser.\n *\n *\t  Notice that the paramFetch and paramCompile hooks are actually passed\n *\t  the ParamListInfo struct\'s address; they can therefore access all\n *\t  three of the "arg" fields, and the distinction between paramFetchArg\n *\t  and paramCompileArg is rather arbitrary.\n */\n'
    },
    ParamExecData: {
      fields: [
        {
          name: 'execPlan',
          c_type: 'void*',
          comment: '/* should be "SubPlanState *" */'
        },
        {
          name: 'value',
          c_type: 'Datum',
          comment: null
        },
        {
          name: 'isnull',
          c_type: 'bool',
          comment: null
        }
      ],
      comment:
        "/* ----------------\n *\t  ParamExecData\n *\n *\t  ParamExecData entries are used for executor internal parameters\n *\t  (that is, values being passed into or out of a sub-query).  The\n *\t  paramid of a PARAM_EXEC Param is a (zero-based) index into an\n *\t  array of ParamExecData records, which is referenced through\n *\t  es_param_exec_vals or ecxt_param_exec_vals.\n *\n *\t  If execPlan is not NULL, it points to a SubPlanState node that needs\n *\t  to be executed to produce the value.  (This is done so that we can have\n *\t  lazy evaluation of InitPlans: they aren't executed until/unless a\n *\t  result value is needed.)\tOtherwise the value is assumed to be valid\n *\t  when needed.\n * ----------------\n */\n"
    },
    ParamsErrorCbData: {
      fields: [
        {
          name: 'portalName',
          c_type: 'char*',
          comment: null
        },
        {
          name: 'params',
          c_type: 'ParamListInfo',
          comment: null
        }
      ],
      comment: '/* type of argument for ParamsErrorCallback */\n'
    }
  },
  'access/attnum': {},
  c: {},
  postgres: {
    varatt_external: {
      fields: [
        {
          name: 'va_rawsize',
          c_type: 'int32',
          comment: '/* Original data size (includes header) */'
        },
        {
          name: 'va_extsize',
          c_type: 'int32',
          comment: "/* External saved size (doesn't) */"
        },
        {
          name: 'va_valueid',
          c_type: 'Oid',
          comment: '/* Unique ID of value within TOAST table */'
        },
        {
          name: 'va_toastrelid',
          c_type: 'Oid',
          comment: '/* RelID of TOAST table containing it */'
        }
      ],
      comment:
        '/*\n * struct varatt_external is a traditional "TOAST pointer", that is, the\n * information needed to fetch a Datum stored out-of-line in a TOAST table.\n * The data is compressed if and only if va_extsize < va_rawsize - VARHDRSZ.\n * This struct must not contain any padding, because we sometimes compare\n * these pointers using memcmp.\n *\n * Note that this information is stored unaligned within actual tuples, so\n * you need to memcpy from the tuple into a local struct variable before\n * you can look at these fields!  (The reason we use memcmp is to avoid\n * having to do that just to detect equality of two TOAST pointers...)\n */\n'
    },
    varatt_expanded: {
      fields: [
        {
          name: 'eohptr',
          c_type: 'ExpandedObjectHeader*',
          comment: null
        }
      ],
      comment: null
    },
    NullableDatum: {
      fields: [
        {
          name: 'value',
          c_type: 'Datum',
          comment: null
        },
        {
          comment: ''
        },
        {
          name: 'isnull',
          c_type: 'bool',
          comment: null
        },
        {
          comment:
            '\t/* due to alignment padding this could be used for flags for free */\n'
        }
      ],
      comment:
        '/*\n * A NullableDatum is used in places where both a Datum and its nullness needs\n * to be stored. This can be more efficient than storing datums and nullness\n * in separate arrays, due to better spatial locality, even if more space may\n * be wasted due to padding.\n */\n'
    }
  },
  postgres_ext: {},
  'commands/vacuum': {
    VacAttrStats: {
      fields: [
        {
          comment:
            '\t/*\n\t * These fields are set up by the main ANALYZE code before invoking the\n\t * type-specific typanalyze function.\n\t *\n\t * Note: do not assume that the data being analyzed has the same datatype\n\t * shown in attr, ie do not trust attr->atttypid, attlen, etc.  This is\n\t * because some index opclasses store a different type than the underlying\n\t * column/expression.  Instead use attrtypid, attrtypmod, and attrtype for\n\t * information about the datatype being fed to the typanalyze function.\n\t * Likewise, use attrcollid not attr->attcollation.\n\t */\n'
        },
        {
          name: 'attr',
          c_type: 'Form_pg_attribute',
          comment: '/* copy of pg_attribute row for column */'
        },
        {
          name: 'attrtypid',
          c_type: 'Oid',
          comment: '/* type of data being analyzed */'
        },
        {
          name: 'attrtypmod',
          c_type: 'int32',
          comment: '/* typmod of data being analyzed */'
        },
        {
          name: 'attrtype',
          c_type: 'Form_pg_type',
          comment: '/* copy of pg_type row for attrtypid */'
        },
        {
          name: 'attrcollid',
          c_type: 'Oid',
          comment: '/* collation of data being analyzed */'
        },
        {
          name: 'anl_context',
          c_type: 'MemoryContext',
          comment: '/* where to save long-lived data */'
        },
        {
          comment: ''
        },
        {
          comment:
            '\t/*\n\t * These fields must be filled in by the typanalyze routine, unless it\n\t * returns false.\n\t */\n'
        },
        {
          name: 'compute_stats',
          c_type: 'AnalyzeAttrComputeStatsFunc',
          comment: '/* function pointer */'
        },
        {
          name: 'minrows',
          c_type: 'int',
          comment: '/* Minimum # of rows wanted for stats */'
        },
        {
          name: 'extra_data',
          c_type: 'void*',
          comment: '/* for extra type-specific data */'
        },
        {
          comment: ''
        },
        {
          comment:
            '\t/*\n\t * These fields are to be filled in by the compute_stats routine. (They\n\t * are initialized to zero when the struct is created.)\n\t */\n'
        },
        {
          name: 'stats_valid',
          c_type: 'bool',
          comment: null
        },
        {
          name: 'stanullfrac',
          c_type: 'float4',
          comment: '/* fraction of entries that are NULL */'
        },
        {
          name: 'stawidth',
          c_type: 'int32',
          comment: '/* average width of column values */'
        },
        {
          name: 'stadistinct',
          c_type: 'float4',
          comment: '/* # distinct values */'
        },
        {
          name: 'stakind[STATISTIC_NUM_SLOTS]',
          c_type: 'int16',
          comment: null
        },
        {
          name: 'staop[STATISTIC_NUM_SLOTS]',
          c_type: 'Oid',
          comment: null
        },
        {
          name: 'stacoll[STATISTIC_NUM_SLOTS]',
          c_type: 'Oid',
          comment: null
        },
        {
          name: 'numnumbers[STATISTIC_NUM_SLOTS]',
          c_type: 'int',
          comment: null
        },
        {
          name: 'stanumbers[STATISTIC_NUM_SLOTS]',
          c_type: 'float4*',
          comment: null
        },
        {
          name: 'numvalues[STATISTIC_NUM_SLOTS]',
          c_type: 'int',
          comment: null
        },
        {
          name: 'stavalues[STATISTIC_NUM_SLOTS]',
          c_type: 'Datum*',
          comment: null
        },
        {
          comment: ''
        },
        {
          comment:
            "\t/*\n\t * These fields describe the stavalues[n] element types. They will be\n\t * initialized to match attrtypid, but a custom typanalyze function might\n\t * want to store an array of something other than the analyzed column's\n\t * elements. It should then overwrite these fields.\n\t */\n"
        },
        {
          name: 'statypid[STATISTIC_NUM_SLOTS]',
          c_type: 'Oid',
          comment: null
        },
        {
          name: 'statyplen[STATISTIC_NUM_SLOTS]',
          c_type: 'int16',
          comment: null
        },
        {
          name: 'statypbyval[STATISTIC_NUM_SLOTS]',
          c_type: 'bool',
          comment: null
        },
        {
          name: 'statypalign[STATISTIC_NUM_SLOTS]',
          c_type: 'char',
          comment: null
        },
        {
          comment: ''
        },
        {
          comment:
            '\t/*\n\t * These fields are private to the main ANALYZE code and should not be\n\t * looked at by type-specific functions.\n\t */\n'
        },
        {
          name: 'tupattnum',
          c_type: 'int',
          comment: '/* attribute number within tuples */'
        },
        {
          name: 'rows',
          c_type: 'HeapTuple*',
          comment: '/* access info for std fetch function */'
        },
        {
          name: 'tupDesc',
          c_type: 'TupleDesc',
          comment: null
        },
        {
          name: 'exprvals',
          c_type: 'Datum*',
          comment: '/* access info for index fetch function */'
        },
        {
          name: 'exprnulls',
          c_type: 'bool*',
          comment: null
        },
        {
          name: 'rowstride',
          c_type: 'int',
          comment: null
        }
      ],
      comment: null
    },
    VacuumParams: {
      fields: [
        {
          name: 'options',
          c_type: 'int',
          comment: '/* bitmask of VacuumOption */'
        },
        {
          name: 'freeze_min_age',
          c_type: 'int',
          comment: '/* min freeze age, -1 to use default */'
        },
        {
          name: 'freeze_table_age',
          c_type: 'int',
          comment: '/* age at which to scan whole table */'
        },
        {
          name: 'multixact_freeze_min_age',
          c_type: 'int',
          comment:
            '/* min multixact freeze age, -1 to\n\t\t\t\t\t\t\t\t\t\t\t * use default */\n'
        },
        {
          name: 'multixact_freeze_table_age',
          c_type: 'int',
          comment:
            '/* multixact age at which to scan\n\t\t\t\t\t\t\t\t\t\t\t * whole table */\n'
        },
        {
          name: 'is_wraparound',
          c_type: 'bool',
          comment: '/* force a for-wraparound vacuum */'
        },
        {
          name: 'log_min_duration',
          c_type: 'int',
          comment:
            '/* minimum execution threshold in ms at\n\t\t\t\t\t\t\t\t\t * which  verbose logs are activated, -1\n\t\t\t\t\t\t\t\t\t * to use default */\n'
        },
        {
          name: 'index_cleanup',
          c_type: 'VacOptTernaryValue',
          comment:
            '/* Do index vacuum and cleanup,\n\t\t\t\t\t\t\t\t\t\t * default value depends on reloptions */\n'
        },
        {
          name: 'truncate',
          c_type: 'VacOptTernaryValue',
          comment:
            '/* Truncate empty pages at the end,\n\t\t\t\t\t\t\t\t\t * default value depends on reloptions */\n'
        },
        {
          comment: ''
        },
        {
          comment:
            '\t/*\n\t * The number of parallel vacuum workers.  0 by default which means choose\n\t * based on the number of indexes.  -1 indicates parallel vacuum is\n\t * disabled.\n\t */\n'
        },
        {
          name: 'nworkers',
          c_type: 'int',
          comment: null
        }
      ],
      comment:
        '/*\n * Parameters customizing behavior of VACUUM and ANALYZE.\n *\n * Note that at least one of VACOPT_VACUUM and VACOPT_ANALYZE must be set\n * in options.\n */\n'
    }
  },
  'storage/block': {
    BlockIdData: {
      fields: [
        {
          name: 'bi_hi',
          c_type: 'uint16',
          comment: null
        },
        {
          name: 'bi_lo',
          c_type: 'uint16',
          comment: null
        }
      ],
      comment:
        "/*\n * BlockId:\n *\n * this is a storage type for BlockNumber.  in other words, this type\n * is used for on-disk structures (e.g., in HeapTupleData) whereas\n * BlockNumber is the type on which calculations are performed (e.g.,\n * in access method code).\n *\n * there doesn't appear to be any reason to have separate types except\n * for the fact that BlockIds can be SHORTALIGN'd (and therefore any\n * structures that contains them, such as ItemPointerData, can also be\n * SHORTALIGN'd).  this is an important consideration for reducing the\n * space requirements of the line pointer (ItemIdData) array on each\n * page and the header of each heap or index tuple, so it doesn't seem\n * wise to change this without good reason.\n */\n"
    }
  },
  'access/sdir': {},
  'mb/pg_wchar': {},
  '../backend/parser/gram': {
    YYLTYPE: {
      fields: [
        {
          name: 'first_line',
          c_type: 'int',
          comment: null
        },
        {
          name: 'first_column',
          c_type: 'int',
          comment: null
        },
        {
          name: 'last_line',
          c_type: 'int',
          comment: null
        },
        {
          name: 'last_column',
          c_type: 'int',
          comment: null
        }
      ],
      comment: '/* Line 1529 of yacc.c.  */\n'
    }
  },
  'nodes/value': {
    Integer: {
      fields: [
        {
          name: 'ival',
          c_type: 'long'
        }
      ]
    },
    Float: {
      fields: [
        {
          name: 'str',
          c_type: 'char*'
        }
      ]
    },
    String: {
      fields: [
        {
          name: 'str',
          c_type: 'char*'
        }
      ]
    },
    BitString: {
      fields: [
        {
          name: 'str',
          c_type: 'char*'
        }
      ]
    },
    Null: {
      fields: []
    }
  },
  'nodes/pg_list': {
    List: {
      fields: [
        {
          name: 'items',
          c_type: '[]Node'
        }
      ]
    }
  }
};
