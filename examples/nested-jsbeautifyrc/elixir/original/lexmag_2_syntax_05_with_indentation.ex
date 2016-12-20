defmodule Lexmag2Syntax05WithIndentation do
  @moduledoc """
  Source: [with-indentation](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#with-indentation)
   from section: [Syntax](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#syntax)
   in: [Elixir Style Guide](https://github.com/lexmag/elixir-style-guide)
   owned by: [@lexmag](https://github.com/lexmag).
  This work was created by Aleksei Magusev and is licensed under [the CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0).

  ![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png)
  """

  @doc """
  Use the indentation shown below for the `with` special form:

  ```elixir
  with {year, ""} <- Integer.parse(year),
       {month, ""} <- Integer.parse(month),
       {day, ""} <- Integer.parse(day) do
    new(year, month, day)
  else
    _ ->
      {:error, :invalid_format}
  end
  ```

  Always use the indentation above if there's an `else` option. If there isn't, the following indentation works as well:

  ```elixir
  with {:ok, date} <- Calendar.ISO.date(year, month, day),
       {:ok, time} <- Time.new(hour, minute, second, microsecond),
       do: new(date, time)
  ```
  """
  @spec test() :: any
  def test() do
    with {year, ""} <- Integer.parse("2016"),
      {month, ""} <- Integer.parse("12"),
       {day, ""} <- Integer.parse("24") do
     {year, month, day}
      else
    _ ->
     {:error, :invalid_format}
    end

    with {:ok, date} <- Calendar.ISO.date(2016, 12, 24),
      {:ok, time} <- Time.new(0, 0, 0, 0),
    do: {date, time}
  end
end
