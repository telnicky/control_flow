defmodule ControlFlow do
  @moduledoc """
  Documentation for ControlFlow.
  """

  defmodule ApiError do
    defexception [:message]
  end

  ##
  # Public
  #

  def fizzbuzz(number) do
    case ApiClient.fetch(number) do
      {:ok, result} ->
        {:ok, get_fizzbuzz(result)}
      {:error, error} ->
        {:error, error}
    end
  end

  def fizzbuzz!(number) do
    fizzbuzz(number)
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

