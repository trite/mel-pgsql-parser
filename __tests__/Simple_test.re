open Jest;
open Expect;

describe("blah", () => {
  test("true = true should succeed", () =>
    expect(true) |> toEqual(true)
  )
});
