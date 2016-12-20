defmodule Lexmag2Syntax03PipelineOperator do
  @moduledoc """
  Source: [pipeline-operator](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#pipeline-operator)
   from section: [Syntax](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#syntax)
   in: [Elixir Style Guide](https://github.com/lexmag/elixir-style-guide)
   owned by: [@lexmag](https://github.com/lexmag).
  This work was created by Aleksei Magusev and is licensed under [the CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0).

  ![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png)
  """

  @doc """
  Favor the pipeline operator `|>` to chain function calls together.

  ```elixir
  # Bad
  String.downcase(String.strip(input))

  # Good
  input |> String.strip |> String.downcase
  String.strip(input) |> String.downcase
  ```

  Use a single level of indentation for multi-line pipelines.

  ```elixir
  String.strip(input)
  |> String.downcase
  |> String.slice(1, 3)
  ```

  <a name="needless-pipeline"></a>
  Avoid needless pipelines like the plague.

  ```elixir
  # Bad
  result = input |> String.strip

  # Good
  result = String.strip(input)
  ```
  """
  @spec test() :: any
  def test() do
    " EXAMPLE "
    |> String.strip
    |> String.downcase
    String.upcase("example")
  end
end
