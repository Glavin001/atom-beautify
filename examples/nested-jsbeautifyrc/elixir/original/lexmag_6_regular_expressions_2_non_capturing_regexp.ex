defmodule Lexmag6RegularExpressions2NonCapturingRegexp do
  @moduledoc """
  Source: [non-capturing-regexp](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#non-capturing-regexp)
   from section: [Regular Expressions](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#regular-expressions)
   in: [Elixir Style Guide](https://github.com/lexmag/elixir-style-guide)
   owned by: [@lexmag](https://github.com/lexmag).
  This work was created by Aleksei Magusev and is licensed under [the CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0).

  ![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png)
  """

  @doc """
  Use non-capturing groups when you don't use the captured result.

      ~r/(?:post|zip )code: (\d+)/
  """
  @spec test() :: any
  def test() do
    # NOTE: we cannot validate this rule
  end
end
