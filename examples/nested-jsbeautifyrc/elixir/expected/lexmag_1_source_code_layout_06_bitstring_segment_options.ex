defmodule Lexmag1SourceCodeLayout06BitstringSegmentOptions do
  @moduledoc """
  Source: [bitstring-segment-options](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#bitstring-segment-options)
   from section: [Source Code Layout](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#source-code-layout)
   in: [Elixir Style Guide](https://github.com/lexmag/elixir-style-guide)
   owned by: [@lexmag](https://github.com/lexmag).
  This work was created by Aleksei Magusev and is licensed under [the CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0).

  ![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png)
  """

  @doc """
  Do not put spaces around segment options definition in bitstrings.

      # Bad
      <<102 :: unsigned-big-integer, rest :: binary>>
      <<102::unsigned - big - integer, rest::binary>>

      # Good
      <<102::unsigned-big-integer, rest::binary>>
  """
  @spec test() :: any
  def test() do
    rest = "example"
    <<102::unsigned-big-integer, rest::binary>>
    <<102::unsigned-big-integer, rest::binary>>
  end
end
