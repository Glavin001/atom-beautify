defmodule Lexmag2Syntax07NoElseWithUnless do
  @moduledoc """
  Source: [no-else-with-unless](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#no-else-with-unless)
   from section: [Syntax](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#syntax)
   in: [Elixir Style Guide](https://github.com/lexmag/elixir-style-guide)
   owned by: [@lexmag](https://github.com/lexmag).
  This work was created by Aleksei Magusev and is licensed under [the CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0).

  ![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png)
  """

  @doc """
  Never use `unless` with `else`. Rewrite these with the positive case first.

  ```elixir
  # Bad
  unless Enum.empty?(coll) do
    :ok
  else
    :error
  end

  # Good
  if Enum.empty?(coll) do
    :error
  else
    :ok
  end
  ```
  """
  @spec test() :: any
  def test() do
    unless Enum.empty?([]) do
      :ok
    else
      :error
    end
  end
end
