defmodule ControlFlow do
  @moduledoc """
  Documentation for ControlFlow.
  """

  def fizz(number) do
    if rem(number, 3) == 0 do
      "fizz"
    else
      number
    end
  end

  def upto(n) when n > 0, do: _upto(1, n, [])

  defp _upto(_current, 0, result), do: Enum.reverse(result)

  defp _upto(current, left, result) do
    next_answer =
      cond do
        rem(current, 3) == 0 and rem(current, 5) == 0 ->
          "fizzbuzz"
        rem(current, 3) == 0 ->
          "fizz"
        rem(current, 5) == 0 ->
          "buzz"
        true ->
          current
      end

    _upto(current + 1, left - 1, [ next_answer | result ])
  end
end
