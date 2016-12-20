defmodule Lexmag1SourceCodeLayout08MultiLineExprAssignment do
  @moduledoc """
  Source: [multi-line-expr-assignment](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#multi-line-expr-assignment)
   from section: [Source Code Layout](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#source-code-layout)
   in: [Elixir Style Guide](https://github.com/lexmag/elixir-style-guide)
   owned by: [@lexmag](https://github.com/lexmag).
  This work was created by Aleksei Magusev and is licensed under [the CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0).

  ![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png)
  """

  @doc """
  When assigning the result of a multi-line expression, do not preserve alignment of its parts.

  ```elixir
  # Bad
  {found, not_found} = Enum.map(files, &Path.expand(&1, path))
                       |> Enum.partition(&File.exists?/1)

  prefix = case base do
             :binary -> "0b"
             :octal -> "0o"
             :hex -> "0x"
           end

  # Good
  {found, not_found} =
    Enum.map(files, &Path.expand(&1, path))
    |> Enum.partition(&File.exists?/1)

  prefix = case base do
    :binary -> "0b"
    :octal -> "0o"
    :hex -> "0x"
  end
  ```
  """
  @spec test() :: any
  def test() do
    files = []
    path = File.cwd!
    {_found, _not_found} =
      files
      |> Enum.map(&Path.expand(&1, path))
      |> Enum.partition(&File.exists?/1)
    base = :binary
    _prefix = case base do
      :binary -> "0b"
      :octal -> "0o"
      :hex -> "0x"
    end
  end
end
