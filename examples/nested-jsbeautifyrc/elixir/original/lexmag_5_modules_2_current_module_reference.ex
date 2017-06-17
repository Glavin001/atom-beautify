defmodule Lexmag5Modules2CurrentModuleReference do
  @moduledoc """
  Source: [current-module-reference](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#current-module-reference)
   from section: [Modules](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#modules)
   in: [Elixir Style Guide](https://github.com/lexmag/elixir-style-guide)
   owned by: [@lexmag](https://github.com/lexmag).
  This work was created by Aleksei Magusev and is licensed under [the CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0).

  ![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png)
  """

  @doc """
  Use `__MODULE__` pseudo variable to reference current module.

      # Bad
      :ets.new(Kernel.LexicalTracker, [:named_table])
      GenServer.start_link(Module.LocalsTracker, nil, [])

      # Good
      :ets.new(__MODULE__, [:named_table])
      GenServer.start_link(__MODULE__, nil, [])
  """
  @spec test() :: any
  def test() do
    :etc.new(Lexmag5Modules2CurrentModuleReference, [:named_table])
  end
end
