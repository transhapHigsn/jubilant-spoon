defmodule Greeter do
  def hello() do
    "Hello World!"
  end

  def hello(name) do
    "Hello, " <> name
  end

  def hello(first_name, last_name) do
    "Hello, " <> first_name <> " " <> last_name
  end

end
