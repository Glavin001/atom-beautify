defmodule Lexmag6RegularExpressions1PatternMatchingOverRegexp do
  @moduledoc """
  Source: [pattern-matching-over-regexp](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#pattern-matching-over-regexp)
   from section: [Regular Expressions](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#regular-expressions)
   in: [Elixir Style Guide](https://github.com/lexmag/elixir-style-guide)
   owned by: [@lexmag](https://github.com/lexmag).
  This work was created by Aleksei Magusev and is licensed under [the CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0).

  ![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png)
  """

  @doc """
  Regular expressions are the last resort. Pattern matching and `String` module are things to start with.

  ```elixir
  # Bad
  Regex.run(~r/#(\d{2})(\d{2})(\d{2})/, color)
  Regex.match?(~r/(email|password)/, input)

  # Good
  <<?#, p1::2-bytes, p2::2-bytes, p3::2-bytes>> = color
  String.contains?(input, ["email", "password"])
  ```
  """
  @spec test(color :: bitstring, input :: bitstring) :: any
  def test(color, input) do
    Regex.run(~r/#(\d{2})(\d{2})(\d{2})/, color)
    Regex.match?(~r/(email|password)/, input)
  end
end
