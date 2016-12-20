defmodule Lexmag1SourceCodeLayout05DefaultArguments do
  @moduledoc """
  Source: [default-arguments](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#default-arguments)
   from section: [Source Code Layout](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#source-code-layout)
   in: [Elixir Style Guide](https://github.com/lexmag/elixir-style-guide)
   owned by: [@lexmag](https://github.com/lexmag).
  This work was created by Aleksei Magusev and is licensed under [the CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0).

  ![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png)
  """

  @doc """
  Use spaces around default arguments `\\` definition.
  """
  @spec test(something :: any) :: any
  def test(_something\\nil) do
    # code here ...
  end
end
