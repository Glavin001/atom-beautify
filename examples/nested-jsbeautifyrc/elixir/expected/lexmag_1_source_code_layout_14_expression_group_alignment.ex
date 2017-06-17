defmodule Lexmag1SourceCodeLayout14ExpressionGroupAlignment do
  @moduledoc """
  Source: [expression-group-alignment](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#expression-group-alignment)
   from section: [Source Code Layout](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#source-code-layout)
   in: [Elixir Style Guide](https://github.com/lexmag/elixir-style-guide)
   owned by: [@lexmag](https://github.com/lexmag).
  This work was created by Aleksei Magusev and is licensed under [the CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0).

  ![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png)
  """

  @doc """
  Avoid aligning expression groups:

      # Bad
      module = env.module
      arity  = length(args)

      def inspect(false), do: "false"
      def inspect(true),  do: "true"
      def inspect(nil),   do: "nil"

      # Good
      module = env.module
      arity = length(args)

      def inspect(false), do: "false"
      def inspect(true), do: "true"
      def inspect(nil), do: "nil"

  The same non-alignment rule applies to `<-` and `->` clauses as well.
  """
  @spec test() :: any
  def test() do
    args = []
    env = %{module: "something"}
    _module = env.module
    _arity = length(args)
  end

  @doc false
  @spec my_inspect(sample :: any) :: any
  def my_inspect(false), do: false
  def my_inspect(true), do: true
  def my_inspect(nil), do: nil
  def my_inspect(sample), do: inspect(sample)
end
