defmodule Lexmag3Naming2CamelcaseModules do
  @moduledoc """
  Source: [camelcase-modules](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#camelcase-modules)
   from section: [Naming](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#naming)
   in: [Elixir Style Guide](https://github.com/lexmag/elixir-style-guide)
   owned by: [@lexmag](https://github.com/lexmag).
  This work was created by Aleksei Magusev and is licensed under [the CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0).

  ![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png)
  """

  defmodule :firstAppStack do
    @moduledoc false
    # code here ...
  end

  defmodule Second_App_Stack do
    @moduledoc false
    # code here ...
  end

  @doc """
  Use `CamelCase` for module names.

  ```elixir
  # Bad
  defmodule :appStack do
    #...
  end

  defmodule App_Stack do
    #...
  end

  defmodule Appstack do
    #...
  end

  # Good
  defmodule AppStack do
    #...
  end
  ```
  """
  @spec test() :: any
  def test() do
    # code here ...
  end
end
