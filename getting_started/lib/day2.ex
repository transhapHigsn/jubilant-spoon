defmodule GettingStarted.Greeter do
  def hello() do
    "Hello World!"
  end

  def hello(name, lang_code \\ "en")

  def hello(name, lang_code) when is_binary(name) do
    phrase(lang_code) <> name
  end

  def hello(name, lang_code) when is_list(name) do
    name
    |> Enum.join(", ")
    |> hello(lang_code)
  end

  # def hello(first_name, last_name) do
  #   "Hello, " <> first_name <> " " <> last_name
  # end

  defp private_hello() do
    "This won't run."
  end

  defp phrase("en"), do: "Hello, "
  defp phrase("es"), do: "Hola, "

end
