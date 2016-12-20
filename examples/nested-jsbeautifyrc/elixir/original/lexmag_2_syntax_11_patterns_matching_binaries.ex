defmodule Lexmag2Syntax11PatternsMatchingBinaries do
  @moduledoc """
  Source: [patterns-matching-binaries](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#patterns-matching-binaries)
   from section: [Syntax](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#syntax)
   in: [Elixir Style Guide](https://github.com/lexmag/elixir-style-guide)
   owned by: [@lexmag](https://github.com/lexmag).
  This work was created by Aleksei Magusev and is licensed under [the CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0).

  ![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png)
  """

  @doc """
  Favor the binary concatenation operator `<>` over bitstring syntax for patterns matching binaries.

  ```elixir
  # Bad
  <<"http://", _rest::bytes>> = input
  <<first::utf8, rest::bytes>> = input

  # Good
  "http://" <> _rest = input
  <<first::utf8>> <> rest = input
  ```
  """
  @spec test() :: any
  def test() do
    <<"http://", _rest::bytes>> = "http://elixir-lang.org/"
    <<_first::utf8, _rest::bytes>> = "Something"
  end
end
