defmodule Lexmag1SourceCodeLayout07GuardClauses do
  @moduledoc """
  Source: [guard-clauses](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#guard-clauses)
   from section: [Source Code Layout](https://github.com/lexmag/elixir-style-guide/blob/master/README.md#source-code-layout)
   in: [Elixir Style Guide](https://github.com/lexmag/elixir-style-guide)
   owned by: [@lexmag](https://github.com/lexmag).
  This work was created by Aleksei Magusev and is licensed under [the CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0).

  ![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png)
  """

  @doc """
  Indent `when` guard clauses on the same level as the function/macro signature in the definition they're part of. Do this only if you cannot fit the `when` guard on the same line as the definition.

      def format_error({exception, stacktrace})
          when is_list(stacktrace) and stacktrace != [] do
        # ...
      end

      defmacro dngettext(domain, msgid, msgid_plural, count)
               when is_binary(msgid) and is_binary(msgid_plural) do
        # ...
      end
  """
  @spec test(stacktrace :: list) :: any
  def test(stacktrace)
    when is_list(stacktrace) do
      # code here ...
  end

  @doc false
  @spec macro_test(stacktrace :: list) :: any
  defmacro macro_test(stacktrace)
  when is_list(stacktrace) do
    # code here ...
  end
end
