# all of these commands were ran in IEx
l = ["hello", "foo", "bat"]
# ["hello", "foo", "bat"]

Enum.all?(l, fn(s) -> String.length(s) == 3 end)
# false

Enum.all?(l, fn(s) -> String.length(s) >= 3 end)
# true

Enum.chunk_every(l, 2)
# [["hello", "foo"], ["bat"]]

Enum.chunk_by(l, fn(x) -> String.length(x) end)
# [["hello"], ["foo", "bat"]]

Enum.map_every(l, 2, fn(x) -> x <> " world")
# ** (SyntaxError) iex:6: unexpected token: ). The "fn" at line 6 is missing terminator "end"

Enum.map_every(l, 2, fn(x) -> x <> " world" end )
# ["hello world", "foo", "bat world"]

Enum.each(l, fn(s) -> IO.puts(s) end)
# hello
# foo
# bat
# :ok

# this is comments?
# nil

Enum.map(l, fn(s) -> String.length(s) end)
# [5, 3, 3]

Enum.min(l)
# "bat"

Enum.min(l, fn(s) -> String.length(s) end)
# ** (FunctionClauseError) no function clause matching in Enum.min/2

#     The following arguments were given to Enum.min/2:

#         # 1
#         ["hello", "foo", "bat"]

#         # 2
#         #Function<6.128620087/1 in :erl_eval.expr/5>

#     Attempted function clauses (showing 1 out of 1):

#         def min(enumerable, empty_fallback) when is_function(empty_fallback, 0)

#     (elixir) lib/enum.ex:1604: Enum.min/2

Enum.map(l, fn(s) -> :foo end)
# warning: variable "s" is unused (if the variable is not meant to be used, prefix it with an underscore)
#   iex:11

# [:foo, :foo, :foo]

Enum.map(l, fn(_s) -> :foo end)
# [:foo, :foo, :foo]

Enum.min(l, fn(s) -> :foo end)
# warning: variable "s" is unused (if the variable is not meant to be used, prefix it with an underscore)
#   iex:13

# ** (FunctionClauseError) no function clause matching in Enum.min/2

#     The following arguments were given to Enum.min/2:

#         # 1
#         ["hello", "foo", "bat"]

#         # 2
#         #Function<6.128620087/1 in :erl_eval.expr/5>

#     Attempted function clauses (showing 1 out of 1):

#         def min(enumerable, empty_fallback) when is_function(empty_fallback, 0)

#     (elixir) lib/enum.ex:1604: Enum.min/2

rem(2,2)
# 0

mod(2,2)
# ** (CompileError) iex:14: undefined function mod/2

divmod(2,2)
# ** (CompileError) iex:14: undefined function divmod/2

l1 = [1,1,1,1,2,2,2,4,2,3,4,3.4]
# [1, 1, 1, 1, 2, 2, 2, 4, 2, 3, 4, 3.4]

Enum.uniq_by(l1, fn(x) -> x end)
# [1, 2, 4, 3, 3.4]

Enum.uniq_by(l1, fn(x) -> x end) |> Enum.sort
# [1, 2, 3, 3.4, 4]

Enum.uniq_by(l1, fn(x) -> x end) |> Enum.sort |> Enum.min
# 1

Enum.uniq_by(l1, fn(x) -> x end) |> Enum.sort |> Enum.max
# 4

1 = x
# ** (CompileError) iex:19: undefined function x/0

x = 1
# 1

1 = x
# 1

if nil do
    Io.puts("Will not print")
else
    IO.puts("Print")
end
# Print
# :ok

unless false do
    IO.puts("this is false")
end
# this is false
# :ok

user = %{first: "Prashant", last: "Singh"}
# %{first: "Prashant", last: "Singh"}

with {:ok, first} <- Map.fetch(user, :first),
    {:ok, last} <- Map.fetch(user, :last),
    do: last <> ", " <> first
# "Singh, Prashant"

import Integer
# Integer
m = %{a: 1, c: 3}
# %{a: 1, c: 3}

a = with {:ok, number} <- Map.fetch(m, :a),
    true <- is_even(number) do
        IO.puts "#{number} divided by 2 is #{div(number, 2)}"
        :even
    else
        :error -> IO.puts("No such item in map")
        :error
    _ -> IO.puts "It is odd"
        :odd
    end
# It is odd
# :odd

iex(36)>
