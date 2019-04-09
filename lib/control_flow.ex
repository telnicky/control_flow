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

  # TODO: Rewrite using `case`
  def upto(number) when number > 0 do
    1..number |> Enum.map(&fizzbuzz/1)
  end

  defp fizzbuzz(number) do
    cond do
      rem(number, 3) == 0 and rem(number, 5) == 0 ->
        "fizzbuzz"
      rem(number, 3) == 0 ->
        "fizz"
      rem(number, 5) == 0 ->
        "buzz"
      true ->
        number
    end
  end
end
