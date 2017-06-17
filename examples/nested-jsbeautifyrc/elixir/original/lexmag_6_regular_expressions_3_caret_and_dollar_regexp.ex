defmodule Lexmag6RegularExpressions3CaretAndDollarRegexp do
  @moduledoc """
  Source: [caret-and-dollar-regexp](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#caret-and-dollar-regexp)
   from section: [Regular Expressions](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#regular-expressions)
   in: [Elixir Style Guide](https://github.com/lexmag/elixir-style-guide)
   owned by: [@lexmag](https://github.com/lexmag).
  This work was created by Aleksei Magusev and is licensed under [the CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0).

  ![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png)
  """

  @doc """
  Be careful with `^` and `$` as they match start and end of the __line__ respectively. If you want to match the __whole__ string use: `\A` and `\z` (not to be confused with `\Z` which is the equivalent of `\n?\z`).
  """
  @spec test() :: any
  def test() do
    # NOTE: we cannot validate this rule
  end
end
