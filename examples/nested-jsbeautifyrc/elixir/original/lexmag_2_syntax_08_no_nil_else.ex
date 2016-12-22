defmodule Lexmag2Syntax08NoNilElse do
  @moduledoc """
  Source: [no-nil-else](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#no-nil-else)
   from section: [Syntax](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#syntax)
   in: [Elixir Style Guide](https://github.com/lexmag/elixir-style-guide)
   owned by: [@lexmag](https://github.com/lexmag).
  This work was created by Aleksei Magusev and is licensed under [the CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0).

  ![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png)
  """

  @doc """
  Omit `else` option in `if` and `unless` clauses if it returns `nil`.

      # Bad
      if byte_size(data) > 0, do: data, else: nil

      # Good
      if byte_size(data) > 0, do: data
  """
  @spec test(data :: bitstring) :: any
  def test(data) do
    if byte_size(data) > 0, do: data, else: nil
  end
end
