defmodule Lexmag5Modules1ModuleLayout do
  @moduledoc """
  Source: [module-layout](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#module-layout)
   from section: [Modules](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#modules)
   in: [Elixir Style Guide](https://github.com/lexmag/elixir-style-guide)
   owned by: [@lexmag](https://github.com/lexmag).
  This work was created by Aleksei Magusev and is licensed under [the CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0).

  ![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png)
  """

  alias Calendar.ISO
  import Enum
  require Logger
  use GenServer

  @doc """
  Use a consistent structure when calling `use`/`import`/`alias`/`require`: call
  them in this order and group multiple calls to each of them.

      use GenServer

      import Bitwise
      import Kernel, except: [length: 1]

      alias Mix.Utils
      alias MapSet, as: Set

      require Logger
  """
  @spec test() :: any
  def test() do
    ISO.day_of_week(2016, 12, 24)
    at([1, 2, 3], 1)
  end
end
