defmodule Lexmag2Syntax12HexLiterals do
  @moduledoc """
  Source: [hex-literals](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#hex-literals)
   from section: [Syntax](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#syntax)
   in: [Elixir Style Guide](https://github.com/lexmag/elixir-style-guide)
   owned by: [@lexmag](https://github.com/lexmag).
  This work was created by Aleksei Magusev and is licensed under [the CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0).

  ![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png)
  """

  @doc """
  Use uppercase in definition of hex literals.

      # Bad
      <<0xef, 0xbb, 0xbf>>

      # Good
      <<0xEF, 0xBB, 0xBF>>
  """
  @spec test() :: any
  def test() do
    <<0xef, 0xbb, 0xbf>>
  end
end
