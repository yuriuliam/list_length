defmodule ListLength do
  def call(list), do: list_length(list, 0)

  def call_kernel(list), do: length(list)

  defp list_length([], acc), do: acc

  defp list_length([_head | tail], acc) do
    acc = acc + 1

    list_length(tail, acc)
  end
end
