defmodule ControlFlow do
  @moduledoc """
  Documentation for ControlFlow.
  """

  ##
  # COND
  #
  def upto_cond(number) when number > 0 do
    1..number |> Enum.map(&fizzbuzz_cond/1)
  end

  defp fizzbuzz_cond(number) do
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

  ##
  # CASE
  #
  def upto_case(number) when number > 0 do
    1..number |> Enum.map(&fizzbuzz_case/1)
  end

  defp fizzbuzz_case(number) do
    case {rem(number, 3), rem(number, 5)} do
      {0, 0} -> "fizzbuzz"
      {0, _} -> "fizz"
      {_, 0} -> "buzz"
      _ -> number
    end
  end

  ##
  # Functional Pattern Match
  #
  def upto_func(number) when number > 0 do
    1..number |> Enum.map(&fizzbuzz_func/1)
  end

  defp fizzbuzz_func(n), do: fizzword_func(n, rem(n, 3), rem(n, 5))

  defp fizzword_func(_n, 0, 0), do: "fizzbuzz"
  defp fizzword_func(_n, 0, _), do: "fizz"
  defp fizzword_func(_n, _, 0), do: "fizz"

end
