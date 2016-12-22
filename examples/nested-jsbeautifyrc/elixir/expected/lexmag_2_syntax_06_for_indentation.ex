defmodule Lexmag2Syntax06ForIndentation do
  @moduledoc """
  Source: [for-indentation](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#for-indentation)
   from section: [Syntax](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#syntax)
   in: [Elixir Style Guide](https://github.com/lexmag/elixir-style-guide)
   owned by: [@lexmag](https://github.com/lexmag).
  This work was created by Aleksei Magusev and is licensed under [the CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0).

  ![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png)
  """

  @doc """
  Use the indentation shown below for the `for` special form:

      for {alias, _module} <- aliases_from_env(server),
          [name] = Module.split(alias),
          starts_with?(name, hint),
          into: [] do
        %{kind: :module, type: :alias, name: name}
      end

  If the body of the `do` block is short, the following indentation works as well:

      for partition <- 0..(partitions - 1),
          pair <- safe_lookup(registry, partition, key),
          into: [],
          do: pair
  """
  @spec test() :: any
  def test() do
    for element <- [],
        [name] = String.capitalize(element),
        String.starts_with?(name, "Jo"),
        into: [] do
      %{modifications: [:capitalize], validators: [starts_with: "Jo"], value: name}
    end

    indexes = 0..999
    max_size =
      indexes
      |> Enum.max
      |> Integer.to_string
      |> String.length
    for index <- indexes,
        padded_index = String.pad_leading("#{index}", max_size, "0"),
        into: %{},
        do: {index, padded_index}
  end
end
