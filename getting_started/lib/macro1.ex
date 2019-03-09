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

# puts same value two times
defmodule Example1 do
  defmacro double_puts(expr) do
    quote bind_quoted: [expr: expr] do
      IO.puts(expr)
      IO.puts(expr)
    end
  end
end


# puts two different values
defmodule Example2 do
  defmacro double_puts(expr) do
    quote do
      IO.puts(unquote(expr))
      IO.puts(unquote(expr))
    end
  end
end
