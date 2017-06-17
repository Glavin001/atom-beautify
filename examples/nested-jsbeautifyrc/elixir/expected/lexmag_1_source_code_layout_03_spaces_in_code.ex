defmodule Lexmag1SourceCodeLayout03SpacesInCode do
  @moduledoc """
  Source: [spaces-in-code](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#spaces-in-code)
   from section: [Source Code Layout](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#source-code-layout)
   in: [Elixir Style Guide](https://github.com/lexmag/elixir-style-guide)
   owned by: [@lexmag](https://github.com/lexmag).
  This work was created by Aleksei Magusev and is licensed under [the CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0).

  ![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png)
  """

  @doc """
  Use spaces around binary operators, after commas `,`, colons `:` and semicolons `;`. Do not put spaces around matched pairs like brackets `[]`, braces `{}`, etc. Whitespace might be (mostly) irrelevant to the Elixir compiler, but its proper use is the key to writing easily readable code.

      sum = 1 + 2
      [first | rest] = 'three'
      {a1, a2} = {2, 3}
      Enum.join(["one", <<"two">>, sum])
  """
  @spec test() :: any
  def test() do
    sum = 1 + 2
    [_first | _rest] = ~c[three]
    {_a1, _a2} = {2, 3}
    Enum.join(["one", <<"two">>, sum])
  end
end
