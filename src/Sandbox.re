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
