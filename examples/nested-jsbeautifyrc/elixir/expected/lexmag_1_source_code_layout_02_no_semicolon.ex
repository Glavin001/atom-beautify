defmodule Lexmag1SourceCodeLayout02NoSemicolon do
  @moduledoc """
  Source: [no-semicolon](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#no-semicolon)
   from section: [Source Code Layout](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#source-code-layout)
   in: [Elixir Style Guide](https://github.com/lexmag/elixir-style-guide)
   owned by: [@lexmag](https://github.com/lexmag).
  This work was created by Aleksei Magusev and is licensed under [the CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0).

  ![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png)
  """

  @doc """
  Use one expression per line, as a corollary - don't use semicolon `;` to separate statements and expressions.
  """
  @spec test() :: any
  def test() do
    value = 1 + 2
    value * 2
  end
end
