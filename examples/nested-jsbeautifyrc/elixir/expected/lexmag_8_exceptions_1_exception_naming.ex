defmodule Lexmag8Exceptions1ExceptionNaming do
  @moduledoc """
  Source: [exception-naming](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#exception-naming)
   from section: [Exceptions](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#exceptions)
   in: [Elixir Style Guide](https://github.com/lexmag/elixir-style-guide)
   owned by: [@lexmag](https://github.com/lexmag).
  This work was created by Aleksei Magusev and is licensed under [the CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0).

  ![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png)
  """

  defmodule CustomError do
    defexception message: "default custom error message"
  end

  @doc """
  Make exception names end with a trailing `Error`.

  ```elixir
  # Bad
  BadResponse
  ResponseException

  # Good
  ResponseError
  ```
  """
  @spec test() :: any
  def test() do
    try do
      raise CustomError
    rescue
      error in CustomError -> error
    end
  end
end
