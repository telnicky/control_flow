defmodule ControlFlow do
  @moduledoc """
  Documentation for ControlFlow.
  """

  ##
  # Public
  #

  def fizzbuzz(number) do
    case ApiClient.fetch(number) do
      {:ok, result} ->
        get_fizzbuzz(result)
      {:error, error} ->
        error
    end
  end

  ##
  # Private
  #

  defp get_fizzbuzz(response) do
    case response do
      %{fizzbuzz: true} -> "fizzbuzz"
      %{fizz: true} -> "fizz"
      %{buzz: true} -> "buzz"
      fizzbuzz -> fizzbuzz.number
    end
  end
end

