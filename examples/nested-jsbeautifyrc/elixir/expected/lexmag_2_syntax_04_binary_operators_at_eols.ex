defmodule Lexmag2Syntax04BinaryOperatorsAtEols do
  @moduledoc """
  Source: [binary-operators-at-eols](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#binary-operators-at-eols)
   from section: [Syntax](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#syntax)
   in: [Elixir Style Guide](https://github.com/lexmag/elixir-style-guide)
   owned by: [@lexmag](https://github.com/lexmag).
  This work was created by Aleksei Magusev and is licensed under [the CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0).

  ![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png)
  """

  @doc """
  When making a multi-line expression, keep binary operators (the only exception is the `|>` operator) at the ends of the lines.

      # Bad
      "No matching message.\n"
      <> "Process mailbox:\n"
      <> mailbox

      # Good
      "No matching message.\n" <>
      "Process mailbox:\n" <>
      mailbox
  """
  @spec test() :: any
  def test() do
    "First line.\n" <>
    "Second line:\n" <>
    "Third line."
  end
end
