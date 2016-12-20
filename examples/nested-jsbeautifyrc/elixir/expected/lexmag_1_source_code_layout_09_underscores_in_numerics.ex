defmodule Lexmag1SourceCodeLayout09UnderscoresInNumerics do
  @moduledoc """
  Source: [underscores-in-numerics](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#underscores-in-numerics)
   from section: [Source Code Layout](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#source-code-layout)
   in: [Elixir Style Guide](https://github.com/lexmag/elixir-style-guide)
   owned by: [@lexmag](https://github.com/lexmag).
  This work was created by Aleksei Magusev and is licensed under [the CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0).

  ![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png)
  """

  @doc """
  Add underscores to large numeric literals to improve their readability.

  ```elixir
  num = 1_000_000
  ```
  """
  @spec test() :: any
  def test() do
    _num = 1_000_000
  end
end
