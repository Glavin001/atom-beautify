defmodule Lexmag8Exceptions2ExceptionMessage do
  @moduledoc """
  Source: [exception-message](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#exception-message)
   from section: [Exceptions](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#exceptions)
   in: [Elixir Style Guide](https://github.com/lexmag/elixir-style-guide)
   owned by: [@lexmag](https://github.com/lexmag).
  This work was created by Aleksei Magusev and is licensed under [the CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0).

  ![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png)
  """

  @doc """
  Use non-capitalized error messages when raising exceptions, with no trailing punctuation.

      # Bad
      raise ArgumentError, "Malformed payload."

      # Good
      raise ArgumentError, "malformed payload"

  There is one exception to the rule - always capitalize Mix error messages.

      Mix.raise "Could not find dependency"
  """
  @spec test() :: any
  def test() do
    try do
      if Enum.random(0..9) < 5 do
        raise RuntimeError, message: "an error occurred"
      else
        Mix.raise "An error occurred"
      end
    rescue
      error -> error
    end
  end
end
