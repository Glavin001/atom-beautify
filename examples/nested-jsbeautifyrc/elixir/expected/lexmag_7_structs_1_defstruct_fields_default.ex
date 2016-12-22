defmodule Lexmag7Structs1DefstructFieldsDefault do
  @moduledoc """
  Source: [defstruct-fields-default](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#defstruct-fields-default)
   from section: [Structs](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#structs)
   in: [Elixir Style Guide](https://github.com/lexmag/elixir-style-guide)
   owned by: [@lexmag](https://github.com/lexmag).
  This work was created by Aleksei Magusev and is licensed under [the CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0).

  ![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png)
  """

  defstruct [:first_name, :last_name, admin?: false]

  @doc """
  When calling `defstruct/1`, don't explicitly specify `nil` for fields that default to `nil`.

      # Bad
      defstruct first_name: nil, last_name: nil, admin?: false

      # Good
      defstruct [:first_name, :last_name, admin?: false]
  """
  @spec test() :: any
  def test() do
    # code here ...
  end
end
