defmodule Lexmag9Exunit1ExunitAssertionSide do
  @moduledoc """
  Source: [exunit-assertion-side](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#exunit-assertion-side)
   from section: [ExUnit](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#exunit)
   in: [Elixir Style Guide](https://github.com/lexmag/elixir-style-guide)
   owned by: [@lexmag](https://github.com/lexmag).
  This work was created by Aleksei Magusev and is licensed under [the CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0).

  ![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png)
  """

  @doc """
  When asserting (or refuting) something with comparison operators (such as `==`, `<`, `>=`, and similar), put the expression being tested on the left-hand side of the operator and the value you're testing against on the right-hand side.

  ```elixir
  # Bad
  assert "héllo" == Atom.to_string(:"héllo")

  # Good
  assert Atom.to_string(:"héllo") == "héllo"
  ```

  When using the match operator `=`, put the pattern on the left-hand side (as it won't work otherwise).

  ```elixir
  assert {:error, _reason} = File.stat("./non_existent_file")
  ```
  """
  @spec test() :: any
  def test() do
    # NOTE: we cannot validate this rule in some cases
  end
end
