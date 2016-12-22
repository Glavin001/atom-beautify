defmodule Lexmag4Comments3NoSuperfluousComments do
  @moduledoc """
  Source: [no-superfluous-comments](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#no-superfluous-comments)
   from section: [Comments](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#comments)
   in: [Elixir Style Guide](https://github.com/lexmag/elixir-style-guide)
   owned by: [@lexmag](https://github.com/lexmag).
  This work was created by Aleksei Magusev and is licensed under [the CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0).

  ![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png)
  """

  @doc """
  Avoid superfluous comments.

      # Bad
      String.first(input) # Get first grapheme.
  """
  @spec test() :: any
  def test() do
    String.capitalize("example sentence is here.") # capitalize sentence
  end
end
