defmodule Lexmag4Comments1NoNeedForComments do
  @moduledoc """
  Source: [no-need-for-comments](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#no-need-for-comments)
   from section: [Comments](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#comments)
   in: [Elixir Style Guide](https://github.com/lexmag/elixir-style-guide)
   owned by: [@lexmag](https://github.com/lexmag).
  This work was created by Aleksei Magusev and is licensed under [the CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0).

  ![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png)
  """

  @doc """
  Write self-documenting code and ignore the rest of this section. Seriously!
  """
  @spec test() :: any
  def test() do
    # code here ...
  end

  def doc_test(first_argument, {second, argument}) do
    {first_argument, second, argument}
  end
end
