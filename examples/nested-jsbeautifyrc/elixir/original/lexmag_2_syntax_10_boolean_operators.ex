defmodule Lexmag2Syntax10BooleanOperators do
  @moduledoc """
  Source: [boolean-operators](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#boolean-operators)
   from section: [Syntax](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#syntax)
   in: [Elixir Style Guide](https://github.com/lexmag/elixir-style-guide)
   owned by: [@lexmag](https://github.com/lexmag).
  This work was created by Aleksei Magusev and is licensed under [the CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0).

  ![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png)
  """

  @doc """
  Never use `||`, `&&` and `!` for strictly boolean checks. Use these operators only if any of the arguments are non-boolean.

      # Bad
      is_atom(name) && name != nil
      is_binary(task) || is_atom(task)

      # Good
      is_atom(name) and name != nil
      is_binary(task) or is_atom(task)
      line && line != 0
      file || "sample.exs"
  """
  @spec test(name :: atom) :: any
  def test(name) do
    task = :spying
    !is_nil(name) && !is_boolean(name)
    is_binary(task) || is_atom(task)
  end
end
