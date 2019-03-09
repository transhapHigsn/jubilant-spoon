defmodule GettingStarted.Hello do
  defmacro __using__(opts) do
    quote do
      def hi(name), do: "Hi, " <> name
    end
  end
end


defmodule GettingStarted.MyMacro do
  defmacro unless(expr, do: block) do
    quote do
      if !unquote(expr), do: unquote(block)
    end
  end
end
