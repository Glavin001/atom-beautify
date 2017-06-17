defmodule Lexmag2Syntax01FunParens do
  @moduledoc """
  Source: [fun-parens](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#fun-parens)
   from section: [Syntax](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#syntax)
   in: [Elixir Style Guide](https://github.com/lexmag/elixir-style-guide)
   owned by: [@lexmag](https://github.com/lexmag).
  This work was created by Aleksei Magusev and is licensed under [the CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0).

  ![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png)
  """

  @doc """
  Always use parentheses around `def` arguments, don't omit them even when a function has no arguments.

      # Bad
      def main arg1, arg2 do
        #...
      end

      def main do
        #...
      end

      # Good
      def main(arg1, arg2) do
        #...
      end

      def main() do
        #...
      end
  """
  @spec test(argument :: any) :: any
  def test(_argument) do
    # code here ...
  end

  @doc false
  @spec test_no_args() :: any
  def test_no_args() do
    # code here ...
  end
end
