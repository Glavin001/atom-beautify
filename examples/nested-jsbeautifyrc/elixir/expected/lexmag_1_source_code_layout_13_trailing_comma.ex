defmodule Lexmag1SourceCodeLayout13TrailingComma do
  @moduledoc """
  Source: [trailing-comma](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#trailing-comma)
   from section: [Source Code Layout](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#source-code-layout)
   in: [Elixir Style Guide](https://github.com/lexmag/elixir-style-guide)
   owned by: [@lexmag](https://github.com/lexmag).
  This work was created by Aleksei Magusev and is licensed under [the CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0).

  ![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png)
  """

  @doc """
  When dealing with lists, maps, structs, or tuples whose elements span over multiple lines and are on separate lines with regard to the enclosing brackets, it's advised to use a trailing comma even for the last element:

  ```elixir
  [
    :foo,
    :bar,
    :baz,
  ]
  ```
  """
  @spec test() :: any
  def test() do
    [
      :foo,
      :bar,
      :baz,
    ]
  end
end
