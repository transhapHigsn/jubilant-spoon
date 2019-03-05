defmodule GettingStarted.Hello do
  defmacro __using__(opts) do
    quote do
      def hi(name), do: "Hi, " <> name
    end
  end
end
