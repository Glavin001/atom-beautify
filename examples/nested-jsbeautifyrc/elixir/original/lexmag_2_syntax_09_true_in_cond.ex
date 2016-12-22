defmodule Lexmag2Syntax09TrueInCond do
  @moduledoc """
  Source: [true-in-cond](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#true-in-cond)
   from section: [Syntax](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#syntax)
   in: [Elixir Style Guide](https://github.com/lexmag/elixir-style-guide)
   owned by: [@lexmag](https://github.com/lexmag).
  This work was created by Aleksei Magusev and is licensed under [the CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0).

  ![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png)
  """

  @doc """
  Use `true` as the always-match condition of the `cond` special form.

      cond do
        char in ?0..?9 ->
          char - ?0
        char in ?A..?Z ->
          char - ?A + 10
        true ->
          char - ?a + 10
      end
  """
  @spec test(char :: integer) :: any
  def test(char) do
    cond do
      char in ?0..?9 ->
        char - ?0
      char in ?A..?Z ->
        char - ?A + 10
      :any ->
        char - ?a + 10
    end
  end
end
