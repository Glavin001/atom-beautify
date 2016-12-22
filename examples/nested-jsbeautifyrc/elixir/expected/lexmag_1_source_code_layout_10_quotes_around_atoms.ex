defmodule Lexmag1SourceCodeLayout10QuotesAroundAtoms do
  @moduledoc """
  Source: [quotes-around-atoms](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#quotes-around-atoms)
   from section: [Source Code Layout](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#source-code-layout)
   in: [Elixir Style Guide](https://github.com/lexmag/elixir-style-guide)
   owned by: [@lexmag](https://github.com/lexmag).
  This work was created by Aleksei Magusev and is licensed under [the CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0).

  ![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png)
  """

  @doc """
  When using atom literals that need to be quoted because they contain characters that are invalid in atoms (such as `:"foo-bar"`), use double quotes around the atom name:

      # Bad
      :'foo-bar'
      :'atom number \#{index}'

      # Good
      :"foo-bar"
      :"atom number \#{index}"
  """
  @spec test() :: any
  def test() do
    index = 5
    :"foo-bar"
    :"atom number #{index}"
  end
end
