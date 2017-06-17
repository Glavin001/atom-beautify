defmodule Lexmag3Naming5OneLetterVar do
  @moduledoc """
  Source: [one-letter-var](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#one-letter-var)
   from section: [Naming](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#naming)
   in: [Elixir Style Guide](https://github.com/lexmag/elixir-style-guide)
   owned by: [@lexmag](https://github.com/lexmag).
  This work was created by Aleksei Magusev and is licensed under [the CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0).

  ![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png)
  """

  @doc """
  Avoid using one-letter variable names.
  """
  @spec test() :: any
  def test() do
    _o = :ok # NOTE: beautifier info to change variable name
  end
end
