defmodule Lexmag1SourceCodeLayout04NoSpacesInCode do
  @moduledoc """
  Source: [no-spaces-in-code](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#no-spaces-in-code)
   from section: [Source Code Layout](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#source-code-layout)
   in: [Elixir Style Guide](https://github.com/lexmag/elixir-style-guide)
   owned by: [@lexmag](https://github.com/lexmag).
  This work was created by Aleksei Magusev and is licensed under [the CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0).

  ![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png)
  """

  @doc """
  No spaces after unary operators and inside range literals, the only exception is the `not` operator.

  ```elixir
  angle = -45
  ^result = Float.parse("42.01")
  2 in 1..5
  not File.exists?(path)
  ```
  """
  @spec test() :: any
  def test() do
    _angle = - 45
    result = 42.01
    ^ result = Float.parse("42.01")
    _should_be_true = 2 in 1 .. 5
    not File.exists?("a_path_to_file_that_does_not_exists")
  end
end
