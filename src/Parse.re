[@bs.module "pgsql-parser"]
external parse: string => array(Js.Json.t) = "parse";

[@bs.module "pgsql-parser"]
external deparse: array(Js.Json.t) => string = "deparse";
