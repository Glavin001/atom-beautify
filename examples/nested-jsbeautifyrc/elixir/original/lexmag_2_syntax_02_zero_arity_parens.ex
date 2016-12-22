defmodule Lexmag2Syntax02ZeroArityParens do
  @moduledoc """
  Source: [zero-arity-parens](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#zero-arity-parens)
   from section: [Syntax](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#syntax)
   in: [Elixir Style Guide](https://github.com/lexmag/elixir-style-guide)
   owned by: [@lexmag](https://github.com/lexmag).
  This work was created by Aleksei Magusev and is licensed under [the CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0).

  ![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png)
  """

  @doc """
  Parentheses are a must for __local__ zero-arity function calls and definitions.

      # Bad
      pid = self
      def new, do: %MapSet{}

      # Good
      pid = self()
      def new(), do: %MapSet{}
      config = IEx.Config.new

  The same applies to __local__ one-arity function calls in pipelines.

      String.strip(input) |> decode()
  """
  @spec test(argument :: any) :: any
  def test(_argument), do: _pid = self

  @spec test_not_local() :: any
  def test_not_local(), do: _config = IEx.Config.new

  @spec test_pipeline(input :: bitstring) :: any
  def test_pipeline(input) do
    input
    |> String.strip
    |> test
  end
end
