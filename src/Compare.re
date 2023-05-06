type changeRaw = {
  count: option(int),
  value: string,
  added: option(bool),
  removed: option(bool),
};

type countValue = {
  count: option(int),
  value: string,
};

type change =
  | Added(countValue)
  | Removed(countValue)
  | Unchanged(countValue);

let convertChange =
  Array.map(({count, value, added, removed}) => {
    let added = added |> Option.fold(false, id);

    let removed = removed |> Option.fold(false, id);

    let cv = {count, value};

    added ? Added(cv) : removed ? Removed(cv) : Unchanged(cv);
  });

[@bs.module "diff"]
external diffChars: (string, string) => array(changeRaw) = "diffChars";
let diffChars = (o, n) => diffChars(o, n) |> convertChange;

[@bs.module "diff"]
external diffWords: (string, string) => array(changeRaw) = "diffWords";
let diffWords = (o, n) => diffWords(o, n) |> convertChange;

[@bs.module "diff"]
external diffWordsWithSpace: (string, string) => array(changeRaw) =
  "diffWordsWithSpace";
let diffWordsWithSpace = (o, n) => diffWordsWithSpace(o, n) |> convertChange;

[@bs.module "diff"]
external diffLines: (string, string) => array(changeRaw) = "diffLines";
let diffLines = (o, n) => diffLines(o, n) |> convertChange;

[@bs.module "diff"]
external diffTrimmedLines: (string, string) => array(changeRaw) =
  "diffTrimmedLines";
let diffTrimmedLines = (o, n) => diffTrimmedLines(o, n) |> convertChange;

[@bs.module "diff"]
external diffJson: (string, string) => array(changeRaw) = "diffJson";
let diffJson = (o, n) => diffJson(o, n) |> convertChange;

[@bs.module "diff"]
external diffArrays: (string, string) => array(changeRaw) = "diffArrays";
let diffArrays = (o, n) => diffArrays(o, n) |> convertChange;

let applyColors =
  Array.map((change: change) =>
    switch (change) {
    | Added({count: _, value}) => Colors.green(value)
    | Removed({count: _, value}) => Colors.red(value)
    | Unchanged({count: _, value}) => Colors.grey(value)
    }
  );

let applyAndMerge = applyColors >> Array.String.join;
