defmodule Lexmag3Naming3PredicateFunsName do
  @moduledoc """
  Source: [predicate-funs-name](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#predicate-funs-name)
   from section: [Naming](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#naming)
   in: [Elixir Style Guide](https://github.com/lexmag/elixir-style-guide)
   owned by: [@lexmag](https://github.com/lexmag).
  This work was created by Aleksei Magusev and is licensed under [the CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0).

  ![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png)
  """

  @doc """
  The names of predicate functions (a function that return a boolean value) should have a trailing question mark `?` rather than a leading `has_` or similar.

  ```elixir
  def leap?(year) do
    #...
  end
  ```

  Always use a leading `is_` when naming guard-safe predicate macros.

  ```elixir
  defmacro is_date(month, day) do
    #...
  end
  ```
  """
  @spec is_ok?(sample :: any) :: boolean
  def is_ok?(:ok), do: true
  def is_ok?(_), do: false

  @spec ok?(sample :: any) :: boolean
  defmacro ok?(:ok), do: true
  defmacro ok?(_), do: false
end
