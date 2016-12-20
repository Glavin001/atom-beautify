defmodule Lexmag3Naming1SnakeCaseAtomsFunsVarsAttrs do
  @moduledoc """
  Source: [snake-case-atoms-funs-vars-attrs](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#snake-case-atoms-funs-vars-attrs)
   from section: [Naming](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#naming)
   in: [Elixir Style Guide](https://github.com/lexmag/elixir-style-guide)
   owned by: [@lexmag](https://github.com/lexmag).
  This work was created by Aleksei Magusev and is licensed under [the CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0).

  ![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png)
  """

  @_VERSION "0.0.1"

  @doc """
  Use `snake_case` for atoms, functions, variables and module attributes.

  ```elixir
  # Bad
  :"no match"
  :Error
  :badReturn

  fileName = "sample.txt"

  @_VERSION "0.0.1"

  def readFile(path) do
    #...
  end

  # Good
  :no_match
  :error
  :bad_return

  file_name = "sample.txt"

  @version "0.0.1"

  def read_file(path) do
    #...
  end
  ```
  """
  @spec testMe() :: any
  def testMe() do
    :"no match"
    :Error
    :badReturn
    _fileName = "sample.txt"
  end
end
